Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cjson/original/misc_tests?download=true
inline.NumInlined: 403
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@cJSON_ParseWithLengthOpts:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread.thread
  store ptr %0, ptr @global_error.0, align 8, !tbaa !54
  store i64 %.sroa.5.0, ptr @global_error.1, align 8, !tbaa !55
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k, %bb.h, %bb.i
  %.017 = phi ptr [ %i.d, %bb.h ], [ %i.d, %bb.i ], [ null, %bb.k ], [ null, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret ptr %.017
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @parse_value(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef captures(address_is_null) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %parse_array.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !48     ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %parse_array.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 16 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !52   ; 8 uses
  %i.g = add i64 %i.f, 4                          ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !49   ; 3 uses
  %.not = icmp ugt i64 %i.g, %i.i                 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.k = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(5) @.str.34, i64 noundef 4) #30
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 4, ptr %i.m, align 8, !tbaa !36
  store i64 %i.g, ptr %i.e, align 8, !tbaa !52
  br label %parse_array.exit

bb.f:                                             ; preds = %bb.c, %bb.d
  %i.n = add i64 %i.f, 5                          ; 2 uses
  %.not63 = icmp ugt i64 %i.n, %i.i
  br i1 %.not63, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.p = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(6) @.str.35, i64 noundef 5) #30
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.r, align 8, !tbaa !36
  store i64 %i.n, ptr %i.e, align 8, !tbaa !52
  br label %parse_array.exit

bb.i:                                             ; preds = %bb.f, %bb.g
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.t = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(5) @.str.36, i64 noundef 4) #30
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.v, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.w, align 8, !tbaa !45
  store i64 %i.g, ptr %i.e, align 8, !tbaa !52
  br label %parse_array.exit

bb.l:                                             ; preds = %bb.i, %bb.j
  %i.x = icmp ult i64 %i.f, %i.i
  br i1 %i.x, label %bb.m, label %parse_array.exit

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !53    ; 4 uses
  %i.aa = icmp eq i8 %i.z, 34
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ab = tail call fastcc i32 @parse_string(ptr noundef %0, ptr noundef %1)
  br label %parse_array.exit

bb.o:                                             ; preds = %bb.m
  %i.ac = icmp eq i8 %i.z, 45
  %i.ad = add i8 %i.z, -48
  %or.cond = icmp ult i8 %i.ad, 10
  %or.cond91 = or i1 %i.ac, %or.cond
  br i1 %or.cond91, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store ptr null, ptr %i.a, align 8, !tbaa !54
  %i.ae = tail call ptr @localeconv() #29
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !57
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !53  ; 41 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !48    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %parse_number.exit, label %.preheader55.i

.preheader55.i:                                   ; preds = %bb.p
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !52  ; 3 uses
  %i.ak = load i64, ptr %i.h, align 8, !tbaa !49  ; 2 uses
  %i.al = icmp ult i64 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.preheader55.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aj
  %i.an = sub nuw i64 %i.ak, %i.aj                ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.i
  %.058.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.s ] ; 15 uses
  %.04757.i = phi i64 [ 0, %.lr.ph.i ], [ %.148.i, %bb.s ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %.04757.i
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !53
  switch i8 %i.ap, label %.critedge.loopexit.i [
    i8 48, label %bb.s
    i8 49, label %bb.s
    i8 50, label %bb.s
    i8 51, label %bb.s
    i8 52, label %bb.s
    i8 53, label %bb.s
    i8 54, label %bb.s
    i8 55, label %bb.s
    i8 56, label %bb.s
    i8 57, label %bb.s
    i8 43, label %bb.s
    i8 45, label %bb.s
    i8 101, label %bb.s
    i8 69, label %bb.s
    i8 46, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  %.1.i = phi i32 [ 1, %bb.r ], [ %.058.i, %bb.q ], [ %.058.i, %bb.q ], [ %.058.i, %bb.q ], [ %.058.i, %bb.q ], [ %.058.i, %bb.q ], [ %.058.i, %bb.q ], [ %.058.i, %bb.q ], [ %.058.i, %bb.q ], [ %.058.i, %bb.q ], [ %.058.i, %bb.q ], [ %.058.i, %bb.q ], [ %.058.i, %bb.q ], [ %.058.i, %bb.q ], [ %.058.i, %bb.q ] ; 2 uses
  %.148.i = add nuw i64 %.04757.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %.148.i, %i.an
  br i1 %exitcond.not.i, label %.critedge.loopexit.i, label %bb.q

.critedge.loopexit.i:                             ; preds = %bb.s, %bb.q
  %.047.lcssa.ph.i = phi i64 [ %.04757.i, %bb.q ], [ %i.an, %bb.s ]
  %.0.lcssa.ph.i = phi i32 [ %.058.i, %bb.q ], [ %.1.i, %bb.s ]
  %i.aq = icmp ne i32 %.0.lcssa.ph.i, 0
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader55.i
  %.047.lcssa.i = phi i64 [ 0, %.preheader55.i ], [ %.047.lcssa.ph.i, %.critedge.loopexit.i ] ; 12 uses
  %.0.lcssa.i = phi i1 [ false, %.preheader55.i ], [ %i.aq, %.critedge.loopexit.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !58
  %i.at = add i64 %.047.lcssa.i, 1
  %i.au = tail call ptr %i.as(i64 noundef %i.at) #29, !inline_history !84 ; 48 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %parse_number.exit, label %bb.t

bb.t:                                             ; preds = %.critedge.i
  %i.aw = load ptr, ptr %1, align 8, !tbaa !48
  %i.ax = load i64, ptr %i.e, align 8, !tbaa !52
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr align 1 %i.ay, i64 %.047.lcssa.i, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 %.047.lcssa.i
  store i8 0, ptr %i.az, align 1, !tbaa !53
  %i.ba = icmp ne i64 %.047.lcssa.i, 0
  %or.cond.i = and i1 %.0.lcssa.i, %i.ba
  br i1 %or.cond.i, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %bb.t
  %min.iters.check = icmp ult i64 %.047.lcssa.i, 8
  br i1 %min.iters.check, label %.lr.ph64.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check137 = icmp ult i64 %.047.lcssa.i, 32
  br i1 %min.iters.check137, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bb = and i64 %.047.lcssa.i, 24
  %n.vec = and i64 %.047.lcssa.i, -32             ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue200, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue200 ] ; 33 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 %index ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <16 x i8>, ptr %i.bc, align 1, !tbaa !53
  %wide.load138 = load <16 x i8>, ptr %i.bd, align 1, !tbaa !53
  %i.be = icmp eq <16 x i8> %wide.load, splat (i8 46) ; 16 uses
  %i.bf = icmp eq <16 x i8> %wide.load138, splat (i8 46) ; 16 uses
  %i.bg = extractelement <16 x i1> %i.be, i64 0
  br i1 %i.bg, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 %i.ag, ptr %i.bc, align 1, !tbaa !53
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bh = extractelement <16 x i1> %i.be, i64 1
  br i1 %i.bh, label %pred.store.if139, label %pred.store.continue140

pred.store.if139:                                 ; preds = %pred.store.continue
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 %index
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store i8 %i.ag, ptr %i.bj, align 1, !tbaa !53
  br label %pred.store.continue140

pred.store.continue140:                           ; preds = %pred.store.if139, %pred.store.continue
  %i.bk = extractelement <16 x i1> %i.be, i64 2
  br i1 %i.bk, label %pred.store.if141, label %pred.store.continue142

pred.store.if141:                                 ; preds = %pred.store.continue140
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 %index
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  store i8 %i.ag, ptr %i.bm, align 1, !tbaa !53
  br label %pred.store.continue142

pred.store.continue142:                           ; preds = %pred.store.if141, %pred.store.continue140
  %i.bn = extractelement <16 x i1> %i.be, i64 3
  br i1 %i.bn, label %pred.store.if143, label %pred.store.continue144

pred.store.if143:                                 ; preds = %pred.store.continue142
  %i.bo = getelementptr inbounds nuw i8, ptr %i.au, i64 %index
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  store i8 %i.ag, ptr %i.bp, align 1, !tbaa !53
  br label %pred.store.continue144

pred.store.continue144:                           ; preds = %pred.store.if143, %pred.store.continue142
  %i.bq = extractelement <16 x i1> %i.be, i64 4
  br i1 %i.bq, label %pred.store.if145, label %pred.store.continue146

pred.store.if145:                                 ; preds = %pred.store.continue144
  %i.br = getelementptr inbounds nuw i8, ptr %i.au, i64 %index
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i8 %i.ag, ptr %i.bs, align 1, !tbaa !53
  br label %pred.store.continue146

pred.store.continue146:                           ; preds = %pred.store.if145, %pred.store.continue144
  %i.bt = extractelement <16 x i1> %i.be, i64 5
  br i1 %i.bt, label %pred.store.if147, label %pred.store.continue148

pred.store.if147:                                 ; preds = %pred.store.continue146
  %i.bu = getelementptr inbounds nuw i8, ptr %i.au, i64 %index
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 5
  store i8 %i.ag, ptr %i.bv, align 1, !tbaa !53
  br label %pred.store.continue148

pred.store.continue148:                           ; preds = %pred.store.if147, %pred.store.continue146
  %i.bw = extractelement <16 x i1> %i.be, i64 6
  br i1 %i.bw, label %pred.store.if149, label %pred.store.continue150

pred.store.if149:                                 ; preds = %pred.store.continue148
  %i.bx = getelementptr inbounds nuw i8, ptr %i.au, i64 %index
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 6
  store i8 %i.ag, ptr %i.by, align 1, !tbaa !53
  br label %pred.store.continue150

pred.store.continue150:                           ; preds = %pred.store.if149, %pred.store.continue148
  %i.bz = extractelement <16 x i1> %i.be, i64 7
  br i1 %i.bz, label %pred.store.if151, label %pred.store.continue152

pred.store.if151:                                 ; preds = %pred.store.continue150
  %i.ca = getelementptr inbounds nuw i8, ptr %i.au, i64 %index
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 7
  store i8 %i.ag, ptr %i.cb, align 1, !tbaa !53
  br label %pred.store.continue152

pred.store.continue152:                           ; preds = %pred.store.if151, %pred.store.continue150
  %i.cc = extractelement <16 x i1> %i.be, i64 8
  br i1 %i.cc, label %pred.store.if153, label %pred.store.continue154

pred.store.if153:                                 ; preds = %pred.store.continue152
  %i.cd = getelementptr inbounds nuw i8, ptr %i.au, i64 %index
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i8 %i.ag, ptr %i.ce, align 1, !tbaa !53
  br label %pred.store.continue154

pred.store.continue154:                           ; preds = %pred.store.if153, %pred.store.continue152
  %i.cf = extractelement <16 x i1> %i.be, i64 9
  br i1 %i.cf, label %pred.store.if155, label %pred.store.continue156

pred.store.if155:                                 ; preds = %pred.store.continue154
  %i.cg = getelementptr inbounds nuw i8, ptr %i.au, i64 %index
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 9
  store i8 %i.ag, ptr %i.ch, align 1, !tbaa !53
  br label %pred.store.continue156

pred.store.continue156:                           ; preds = %pred.store.if155, %pred.store.continue154
  %i.ci = extractelement <16 x i1> %i.be, i64 10
  br i1 %i.ci, label %pred.store.if157, label %pred.store.continue158

pred.store.if157:                                 ; preds = %pred.store.continue156
  %i.cj = getelementptr inbounds nuw i8, ptr %i.au, i64 %index
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 10
  store i8 %i.ag, ptr %i.ck, align 1, !tbaa !53
  br label %pred.store.continue158

pred.store.continue158:                           ; preds = %pred.store.if157, %pred.store.continue156
  %i.cl = extractelement <16 x i1> %i.be, i64 11
  br i1 %i.cl, label %pred.store.if159, label %pred.store.continue160

pred.store.if159:                                 ; preds = %pred.store.continue158
  %i.cm = getelementptr inbounds nuw i8, ptr %i.au, i64 %index
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 11
  store i8 %i.ag, ptr %i.cn, align 1, !tbaa !53
  br label %pred.store.continue160

pred.store.continue160:                           ; preds = %pred.store.if159, %pred.store.continue158
  %i.co = extractelement <16 x i1> %i.be, i64 12
  br i1 %i.co, label %pred.store.if161, label %pred.store.continue162

pred.store.if161:                                 ; preds = %pred.store.continue160
  %i.cp = getelementptr inbounds nuw i8, ptr %i.au, i64 %index
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store i8 %i.ag, ptr %i.cq, align 1, !tbaa !53
  br label %pred.store.continue162

pred.store.continue162:                           ; preds = %pred.store.if161, %pred.store.continue160
  %i.cr = extractelement <16 x i1> %i.be, i64 13
  br i1 %i.cr, label %pred.store.if163, label %pred.store.continue164

pred.store.if163:                                 ; preds = %pred.store.continue162
  %i.cs = getelementptr inbounds nuw i8, ptr %i.au, i64 %index
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 13
  store i8 %i.ag, ptr %i.ct, align 1, !tbaa !53
  br label %pred.store.continue164

pred.store.continue164:                           ; preds = %pred.store.if163, %pred.store.continue162
  %i.cu = extractelement <16 x i1> %i.be, i64 14
  br i1 %i.cu, label %pred.store.if165, label %pred.store.continue166

pred.store.if165:                                 ; preds = %pred.store.continue164
  %i.cv = getelementptr inbounds nuw i8, ptr %i.au, i64 %index
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 14
  store i8 %i.ag, ptr %i.cw, align 1, !tbaa !53
  br label %pred.store.continue166

pred.store.continue166:                           ; preds = %pred.store.if165, %pred.store.continue164
  %i.cx = extractelement <16 x i1> %i.be, i64 15
  br i1 %i.cx, label %pred.store.if167, label %pred.store.continue168

pred.store.if167:                                 ; preds = %pred.store.continue166
  %i.cy = getelementptr inbounds nuw i8, ptr %i.au, i64 %index
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 15
  store i8 %i.ag, ptr %i.cz, align 1, !tbaa !53
  br label %pred.store.continue168

pred.store.continue168:                           ; preds = %pred.store.if167, %pred.store.continue166
  %i.da = extractelement <16 x i1> %i.bf, i64 0
  br i1 %i.da, label %pred.store.if169, label %pred.store.continue170

pred.store.if169:                                 ; preds = %pred.store.continue168
  %i.db = getelementptr inbounds nuw i8, ptr %i.au, i64 %index
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i8 %i.ag, ptr %i.dc, align 1, !tbaa !53
  br label %pred.store.continue170

pred.store.continue170:                           ; preds = %pred.store.if169, %pred.store.continue168
  %i.dd = extractelement <16 x i1> %i.bf, i64 1
  br i1 %i.dd, label %pred.store.if171, label %pred.store.continue172

pred.store.if171:                                 ; preds = %pred.store.continue170
  %i.de = getelementptr inbounds nuw i8, ptr %i.au, i64 %index
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 17
  store i8 %i.ag, ptr %i.df, align 1, !tbaa !53
  br label %pred.store.continue172

pred.store.continue172:                           ; preds = %pred.store.if171, %pred.store.continue170
  %i.dg = extractelement <16 x i1> %i.bf, i64 2
  br i1 %i.dg, label %pred.store.if173, label %pred.store.continue174

pred.store.if173:                                 ; preds = %pred.store.continue172
  %i.dh = getelementptr inbounds nuw i8, ptr %i.au, i64 %index
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 18
  store i8 %i.ag, ptr %i.di, align 1, !tbaa !53
  br label %pred.store.continue174

pred.store.continue174:                           ; preds = %pred.store.if173, %pred.store.continue172
  %i.dj = extractelement <16 x i1> %i.bf, i64 3
  br i1 %i.dj, label %pred.store.if175, label %pred.store.continue176

pred.store.if175:                                 ; preds = %pred.store.continue174
  %i.dk = getelementptr inbounds nuw i8, ptr %i.au, i64 %index
end_hunk_0
