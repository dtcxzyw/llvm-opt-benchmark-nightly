Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mvfst/original/browse?download=true
inline.NumInlined: 63
inline.NumDeleted: 35
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl" }
%"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_ = comdat any

$_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_ = comdat any

@.str = private unnamed_addr constant [12 x i8] c"ninja: pipe\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ninja: fork\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"ninja: dup2\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"python3\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"--ninja-command\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"ninja: %s is required for the browse tool\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"ninja: execvp\00", align 1
@_ZL9kBrowsePy = internal constant [7418 x i8] c"#!/usr/bin/env python3\0A#\0A# Copyright 2001 Google Inc. All Rights Reserved.\0A#\0A# Licensed under the Apache License, Version 2.0 (the \22License\22);\0A# you may not use this file except in compliance with the License.\0A# You may obtain a copy of the License at\0A#\0A#     http://www.apache.org/licenses/LICENSE-2.0\0A#\0A# Unless required by applicable law or agreed to in writing, software\0A# distributed under the License is distributed on an \22AS IS\22 BASIS,\0A# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\0A# See the License for the specific language governing permissions and\0A# limitations under the License.\0A\0A\22\22\22Simple web server for browsing dependency graph data.\0A\0AThis script is inlined into the final executable and spawned by\0Ait when needed.\0A\22\22\22\0A\0Atry:\0A    import http.server as httpserver\0A    import socketserver\0Aexcept ImportError:\0A    import BaseHTTPServer as httpserver\0A    import SocketServer as socketserver\0Aimport argparse\0Aimport os\0Aimport socket\0Aimport subprocess\0Aimport sys\0Aimport webbrowser\0Aif sys.version_info >= (3, 2):\0A    from html import escape\0Aelse:\0A    from cgi import escape\0Atry:\0A    from urllib.request import unquote\0Aexcept ImportError:\0A    from urllib2 import unquote\0Afrom collections import namedtuple\0A\0ANode = namedtuple('Node', ['inputs', 'rule', 'target', 'outputs'])\0A\0A# Ideally we'd allow you to navigate to a build edge or a build node,\0A# with appropriate views for each.  But there's no way to *name* a build\0A# edge so we can only display nodes.\0A#\0A# For a given node, it has at most one input edge, which has n\0A# different inputs.  This becomes node.inputs.  (We leave out the\0A# outputs of the input edge due to what follows.)  The node can have\0A# multiple dependent output edges.  Rather than attempting to display\0A# those, they are summarized by taking the union of all their outputs.\0A#\0A# This means there's no single view that shows you all inputs and outputs\0A# of an edge.  But I think it's less confusing than alternatives.\0A\0Adef match_strip(line, prefix):\0A    if not line.startswith(prefix):\0A        return (False, line)\0A    return (True, line[len(prefix):])\0A\0Adef html_escape(text):\0A    return escape(text, quote=True)\0A\0Adef parse(text):\0A    lines = iter(text.split('\\n'))\0A\0A    target = None\0A    rule = None\0A    inputs = []\0A    outputs = []\0A\0A    try:\0A        target = next(lines)[:-1]  # strip trailing colon\0A\0A        line = next(lines)\0A        (match, rule) = match_strip(line, '  input: ')\0A        if match:\0A            (match, line) = match_strip(next(lines), '    ')\0A            while match:\0A                type = None\0A                (match, line) = match_strip(line, '| ')\0A                if match:\0A                    type = 'implicit'\0A                (match, line) = match_strip(line, '|| ')\0A                if match:\0A                    type = 'order-only'\0A                inputs.append((line, type))\0A                (match, line) = match_strip(next(lines), '    ')\0A\0A        match, _ = match_strip(line, '  outputs:')\0A        if match:\0A            (match, line) = match_strip(next(lines), '    ')\0A            while match:\0A                outputs.append(line)\0A                (match, line) = match_strip(next(lines), '    ')\0A    except StopIteration:\0A        pass\0A\0A    return Node(inputs, rule, target, outputs)\0A\0Adef create_page(body):\0A    return '''<!DOCTYPE html>\0A<style>\0Abody {\0A    font-family: sans;\0A    font-size: 0.8em;\0A    margin: 4ex;\0A}\0Ah1 {\0A    font-weight: normal;\0A    font-size: 140%;\0A    text-align: center;\0A    margin: 0;\0A}\0Ah2 {\0A    font-weight: normal;\0A    font-size: 120%;\0A}\0Att {\0A    font-family: WebKitHack, monospace;\0A    white-space: nowrap;\0A}\0A.filelist {\0A  -webkit-columns: auto 2;\0A}\0A</style>\0A''' + body\0A\0Adef generate_html(node):\0A    document = ['<h1><tt>%s</tt></h1>' % html_escape(node.target)]\0A\0A    if node.inputs:\0A        document.append('<h2>target is built using rule <tt>%s</tt> of</h2>' %\0A                        html_escape(node.rule))\0A        if len(node.inputs) > 0:\0A            document.append('<div class=filelist>')\0A            for input, type in sorted(node.inputs):\0A                extra = ''\0A                if type:\0A                    extra = ' (%s)' % html_escape(type)\0A                document.append('<tt><a href=\22?%s\22>%s</a>%s</tt><br>' %\0A                                (html_escape(input), html_escape(input), extra))\0A            document.append('</div>')\0A\0A    if node.outputs:\0A        document.append('<h2>dependent edges build:</h2>')\0A        document.append('<div class=filelist>')\0A        for output in sorted(node.outputs):\0A            document.append('<tt><a href=\22?%s\22>%s</a></tt><br>' %\0A                            (html_escape(output), html_escape(output)))\0A        document.append('</div>')\0A\0A    return '\\n'.join(document)\0A\0Adef ninja_dump(target):\0A    cmd = [args.ninja_command, '-f', args.f, '-t', 'query', target]\0A    proc = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE,\0A                            universal_newlines=True)\0A    return proc.communicate() + (proc.returncode,)\0A\0Aclass RequestHandler(httpserver.BaseHTTPRequestHandler):\0A    def do_GET(self):\0A        assert self.path[0] == '/'\0A        target = unquote(self.path[1:])\0A\0A        if target == '':\0A            self.send_response(302)\0A            self.send_header('Location', '?' + args.initial_target)\0A            self.end_headers()\0A            return\0A\0A        if not target.startswith('?'):\0A            self.send_response(404)\0A            self.end_headers()\0A            return\0A        target = target[1:]\0A\0A        ninja_output, ninja_error, exit_code = ninja_dump(target)\0A        if exit_code == 0:\0A            page_body = generate_html(parse(ninja_output.strip()))\0A        else:\0A            # Relay ninja's error message.\0A            page_body = '<h1><tt>%s</tt></h1>' % html_escape(ninja_error)\0A\0A        self.send_response(200)\0A        self.end_headers()\0A        self.wfile.write(create_page(page_body).encode('utf-8'))\0A\0A    def log_message(self, format, *args):\0A        pass  # Swallow console spam.\0A\0Aparser = argparse.ArgumentParser(prog='ninja -t browse')\0Aparser.add_argument('--port', '-p', default=8000, type=int,\0A    help='Port number to use (default %(default)d)')\0Aparser.add_argument('--hostname', '-a', default='localhost', type=str,\0A    help='Hostname to bind to (default %(default)s)')\0Aparser.add_argument('--no-browser', action='store_true',\0A    help='Do not open a webbrowser on startup.')\0A\0Aparser.add_argument('--ninja-command', default='ninja',\0A    help='Path to ninja binary (default %(default)s)')\0Aparser.add_argument('-f', default='build.ninja',\0A    help='Path to build.ninja file (default %(default)s)')\0Aparser.add_argument('initial_target', default='all', nargs='?',\0A    help='Initial target to show (default %(default)s)')\0A\0Aclass HTTPServer(socketserver.ThreadingMixIn, httpserver.HTTPServer):\0A    # terminate server immediately when Python exits.\0A    daemon_threads = True\0A\0Aargs = parser.parse_args()\0Aport = args.port\0Ahostname = args.hostname\0Ahttpd = HTTPServer((hostname,port), RequestHandler)\0Atry:\0A    if hostname == \22\22:\0A        hostname = socket.gethostname()\0A    print('Web server running on %s:%d, ctl-C to abort...' % (hostname,port) )\0A    print('Web server pid %d' % os.getpid(), file=sys.stderr )\0A    if not args.no_browser:\0A        webbrowser.open_new('http://%s:%s' % (hostname, port) )\0A    httpd.serve_forever()\0Aexcept KeyboardInterrupt:\0A    print()\0A    pass  # Swallow console spam.\0A\0A\0A\00", align 16
@.str.9 = private unnamed_addr constant [13 x i8] c"ninja: write\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_Z15RunBrowsePythonP5StatePKcS2_iPPc(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca [2 x i32], align 4                ; 7 uses
  %5 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !12
  store ptr %2, ptr %i.b, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.i = call i32 @pipe(ptr noundef nonnull %i.c) #15
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call i32 @fork() #15                     ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !15
  %i.o = call i32 @close(i32 noundef %i.n) #15    ; 0 uses
  %i.p = load i32, ptr %i.c, align 4, !tbaa !15
  %i.q = call i32 @dup2(i32 noundef %i.p, i32 noundef 0) #15
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @perror(ptr noundef nonnull @.str.2) #16
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store ptr @.str.3, ptr %i.d, align 8, !tbaa !12
  call void @_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store ptr @.str.4, ptr %i.e, align 8, !tbaa !12
  call void @_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  store ptr @.str.5, ptr %i.f, align 8, !tbaa !12
  call void @_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  store ptr @.str.6, ptr %i.g, align 8, !tbaa !12
  call void @_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.s = icmp sgt i32 %3, 0
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  store ptr null, ptr %i.h, align 8, !tbaa !12
  call void @_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  %i.t = load ptr, ptr %5, align 8, !tbaa !16     ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12
  %i.v = call i32 @execvp(ptr noundef %i.u, ptr noundef nonnull %i.t) #15 ; 0 uses
  %i.w = tail call ptr @__errno_location() #17
  %i.x = load i32, ptr %i.w, align 4, !tbaa !15
  %i.y = icmp eq i32 %i.x, 2
  br i1 %i.y, label %bb.g, label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  call void @_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

bb.g:                                             ; preds = %._crit_edge
  %i.aa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull @.str.3) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  call void @perror(ptr noundef nonnull @.str.8) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdlPv(ptr noundef nonnull %i.ab) #18
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit:                ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit, %bb.e
  call void @_exit(i32 noundef 1) #19
  unreachable

bb.l:                                             ; preds = %bb.c
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !15
  %i.ad = call i32 @close(i32 noundef %i.ac) #15  ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !15
  %i.ag = call i64 @write(i32 noundef %i.af, ptr noundef nonnull @_ZL9kBrowsePy, i64 noundef 7417) #15
  %i.ah = icmp slt i64 %i.ag, 7417
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @perror(ptr noundef nonnull @.str.9) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ai = load i32, ptr %i.ae, align 4, !tbaa !15
  %i.aj = call i32 @close(i32 noundef %i.ai) #15  ; 0 uses
  call void @exit(i32 noundef 0) #19
  unreachable

bb.o:                                             ; preds = %bb.b, %bb.a
  %.str.1.sink = phi ptr [ @.str, %bb.a ], [ @.str.1, %bb.b ]
  call void @perror(ptr noundef nonnull %.str.1.sink) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @pipe(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #4

declare i32 @close(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !12
  store ptr %i.e, ptr %i.b, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !22
  br label %_ZNSt6vectorIPKcSaIS1_EE12emplace_backIJS1_EEEvDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #19
  unreachable

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #20 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !12
  store ptr %i.t, ptr %i.s, align 8, !tbaa !12
  %i.u = icmp sgt i64 %i.j, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #18
  br label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !16
  store ptr %i.v, ptr %i.a, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.w, ptr %i.c, align 8, !tbaa !23
  br label %_ZNSt6vectorIPKcSaIS1_EE12emplace_backIJS1_EEEvDpOT_.exit

_ZNSt6vectorIPKcSaIS1_EE12emplace_backIJS1_EEEvDpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !12
  store ptr %i.e, ptr %i.b, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !22
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #19
  unreachable

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i, %i.l  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #20 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !12
  store ptr %i.t, ptr %i.s, align 8, !tbaa !12
  %i.u = icmp sgt i64 %i.j, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i

_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i: ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i, label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #18
  br label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit

_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit: ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i, %bb.f
  store ptr %i.r, ptr %0, align 8, !tbaa !16
  store ptr %i.v, ptr %i.a, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.w, ptr %i.c, align 8, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { cold }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!9, !9, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIPKcSaIS1_EE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!18 = !{!"p2 omnipotent char", !19, i64 0}
!19 = !{!"any p2 pointer", !14, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!17, !18, i64 8}
!23 = !{!17, !18, i64 16}
end_hunk_0
