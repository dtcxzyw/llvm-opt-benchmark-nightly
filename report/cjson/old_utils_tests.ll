Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cjson/original/old_utils_tests?download=true
inline.NumInlined: 158
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@cJSON_ParseWithLengthOpts:bb.a
  %i.ad = add i64 %.pre, 1                        ; 2 uses
  %exitcond.not.i4190 = icmp eq i64 %i.ad, %.pre74
  br i1 %exitcond.not.i4190, label %.critedge.thread.i40, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph68.preheader, %.lr.ph68
  %i.ae = phi i64 [ %i.ai, %.lr.ph68 ], [ %i.ad, %.lr.ph68.preheader ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !40
  %i.ah = icmp ult i8 %i.ag, 33
  br i1 %i.ah, label %.lr.ph68, label %buffer_skip_whitespace.exit42.sink.split

.lr.ph68:                                         ; preds = %.lr.ph.i38
  %i.ai = add i64 %i.ae, 1                        ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %i.ai, %.pre74
  br i1 %exitcond.not.i41, label %.critedge.thread.i40, label %.lr.ph.i38

.critedge.thread.i40:                             ; preds = %.lr.ph68, %.lr.ph68.preheader
  %i.aj = add i64 %.pre74, -1
  br label %buffer_skip_whitespace.exit42.sink.split

buffer_skip_whitespace.exit42.sink.split:         ; preds = %.lr.ph.i38, %.lr.ph.i38.preheader, %.critedge.thread.i40
  %.lcssa66.sink = phi i64 [ %i.aj, %.critedge.thread.i40 ], [ %.pre, %.lr.ph.i38.preheader ], [ %i.ae, %.lr.ph.i38 ] ; 2 uses
  store i64 %.lcssa66.sink, ptr %.0.i.sroa.gep, align 8
  br label %buffer_skip_whitespace.exit42

buffer_skip_whitespace.exit42:                    ; preds = %buffer_skip_whitespace.exit42.sink.split, %bb.f
  %i.ak = phi i64 [ %.pre, %bb.f ], [ %.lcssa66.sink, %buffer_skip_whitespace.exit42.sink.split ] ; 2 uses
  %.not28 = icmp ult i64 %i.ak, %.pre74
  br i1 %.not28, label %bb.g, label %.thread55

bb.g:                                             ; preds = %buffer_skip_whitespace.exit42
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !40
  %.not29 = icmp eq i8 %i.am, 0
  br i1 %.not29, label %bb.h, label %.thread55

bb.h:                                             ; preds = %bb.g, %bb.e
  %.not30 = icmp eq ptr %2, null
  br i1 %.not30, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %4, align 8, !tbaa !33
  %i.ao = load i64, ptr %.0.i.sroa.gep, align 8, !tbaa !39
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  store ptr %i.ap, ptr %2, align 8, !tbaa !41
  br label %bb.l

.thread55:                                        ; preds = %bb.g, %buffer_skip_whitespace.exit42, %buffer_skip_whitespace.exit
  call void @cJSON_Delete(ptr noundef nonnull %i.d)
  br label %.thread

.thread:                                          ; preds = %bb.a, %.thread55
  br i1 %i.a, label %bb.l, label %.thread..thread.thread_crit_edge

.thread..thread.thread_crit_edge:                 ; preds = %.thread
  %.pre75 = load i64, ptr %.0.i.sroa.gep, align 8, !tbaa !39
  %.pre76 = load i64, ptr %.0.i.sroa.gep48, align 8, !tbaa !35
  br label %.thread.thread

.thread.thread:                                   ; preds = %.thread..thread.thread_crit_edge, %bb.b
  %i.aq = phi i64 [ %.pre76, %.thread..thread.thread_crit_edge ], [ %1, %bb.b ] ; 2 uses
  %i.ar = phi i64 [ %.pre75, %.thread..thread.thread_crit_edge ], [ 0, %bb.b ] ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %spec.select = call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 1)
  %.sroa.5.0 = select i1 %i.as, i64 %i.ar, i64 %spec.select ; 2 uses
  %.not34 = icmp eq ptr %2, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread.thread
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.5.0
  store ptr %i.at, ptr %2, align 8, !tbaa !41
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread.thread
  store ptr %0, ptr @global_error.0, align 8, !tbaa !41
  store i64 %.sroa.5.0, ptr @global_error.1, align 8, !tbaa !42
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k, %bb.h, %bb.i
  %.017 = phi ptr [ %i.d, %bb.h ], [ %i.d, %bb.i ], [ null, %bb.k ], [ null, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
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
  %i.c = load ptr, ptr %1, align 8, !tbaa !33     ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %parse_array.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 16 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39   ; 8 uses
  %i.g = add i64 %i.f, 4                          ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !35   ; 3 uses
  %.not = icmp ugt i64 %i.g, %i.i                 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.k = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(5) @.str.9, i64 noundef 4) #31
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 4, ptr %i.m, align 8, !tbaa !15
  store i64 %i.g, ptr %i.e, align 8, !tbaa !39
  br label %parse_array.exit

bb.f:                                             ; preds = %bb.c, %bb.d
  %i.n = add i64 %i.f, 5                          ; 2 uses
  %.not63 = icmp ugt i64 %i.n, %i.i
  br i1 %.not63, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.p = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(6) @.str.10, i64 noundef 5) #31
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.r, align 8, !tbaa !15
  store i64 %i.n, ptr %i.e, align 8, !tbaa !39
  br label %parse_array.exit

bb.i:                                             ; preds = %bb.f, %bb.g
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.t = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(5) @.str.11, i64 noundef 4) #31
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.v, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.w, align 8, !tbaa !30
  store i64 %i.g, ptr %i.e, align 8, !tbaa !39
  br label %parse_array.exit

bb.l:                                             ; preds = %bb.i, %bb.j
  %i.x = icmp ult i64 %i.f, %i.i
  br i1 %i.x, label %bb.m, label %parse_array.exit

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !40    ; 4 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store ptr null, ptr %i.a, align 8, !tbaa !41
  %i.ae = tail call ptr @localeconv() #30
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !40  ; 41 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %parse_number.exit, label %.preheader55.i

.preheader55.i:                                   ; preds = %bb.p
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !39  ; 3 uses
  %i.ak = load i64, ptr %i.h, align 8, !tbaa !35  ; 2 uses
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
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !40
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
  %2 = icmp ne i32 %.0.lcssa.ph.i, 0
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader55.i
  %.047.lcssa.i = phi i64 [ 0, %.preheader55.i ], [ %.047.lcssa.ph.i, %.critedge.loopexit.i ] ; 12 uses
  %.0.lcssa.i = phi i1 [ false, %.preheader55.i ], [ %2, %.critedge.loopexit.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !45
  %i.as = add i64 %.047.lcssa.i, 1
  %i.at = tail call ptr %i.ar(i64 noundef %i.as) #30, !inline_history !46 ; 48 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %parse_number.exit, label %bb.t

bb.t:                                             ; preds = %.critedge.i
  %i.av = load ptr, ptr %1, align 8, !tbaa !33
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !39
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr align 1 %i.ax, i64 %.047.lcssa.i, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 %.047.lcssa.i
  store i8 0, ptr %i.ay, align 1, !tbaa !40
  %i.az = icmp ne i64 %.047.lcssa.i, 0
  %or.cond.i = and i1 %.0.lcssa.i, %i.az
  br i1 %or.cond.i, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %bb.t
  %min.iters.check = icmp ult i64 %.047.lcssa.i, 8
  br i1 %min.iters.check, label %.lr.ph64.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check137 = icmp ult i64 %.047.lcssa.i, 32
  br i1 %min.iters.check137, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %.047.lcssa.i, 24
  %n.vec = and i64 %.047.lcssa.i, -32             ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue200, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue200 ] ; 33 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 %index ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <16 x i8>, ptr %i.bb, align 1, !tbaa !40
  %wide.load138 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !40
  %i.bd = icmp eq <16 x i8> %wide.load, splat (i8 46) ; 16 uses
  %i.be = icmp eq <16 x i8> %wide.load138, splat (i8 46) ; 16 uses
  %i.bf = extractelement <16 x i1> %i.bd, i64 0
  br i1 %i.bf, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 %i.ag, ptr %i.bb, align 1, !tbaa !40
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bg = extractelement <16 x i1> %i.bd, i64 1
  br i1 %i.bg, label %pred.store.if139, label %pred.store.continue140

pred.store.if139:                                 ; preds = %pred.store.continue
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 %index
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 %i.ag, ptr %i.bi, align 1, !tbaa !40
  br label %pred.store.continue140

pred.store.continue140:                           ; preds = %pred.store.if139, %pred.store.continue
  %i.bj = extractelement <16 x i1> %i.bd, i64 2
  br i1 %i.bj, label %pred.store.if141, label %pred.store.continue142

pred.store.if141:                                 ; preds = %pred.store.continue140
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 %index
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  store i8 %i.ag, ptr %i.bl, align 1, !tbaa !40
  br label %pred.store.continue142

pred.store.continue142:                           ; preds = %pred.store.if141, %pred.store.continue140
  %i.bm = extractelement <16 x i1> %i.bd, i64 3
  br i1 %i.bm, label %pred.store.if143, label %pred.store.continue144

pred.store.if143:                                 ; preds = %pred.store.continue142
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 %index
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  store i8 %i.ag, ptr %i.bo, align 1, !tbaa !40
  br label %pred.store.continue144

pred.store.continue144:                           ; preds = %pred.store.if143, %pred.store.continue142
  %i.bp = extractelement <16 x i1> %i.bd, i64 4
  br i1 %i.bp, label %pred.store.if145, label %pred.store.continue146

pred.store.if145:                                 ; preds = %pred.store.continue144
  %i.bq = getelementptr inbounds nuw i8, ptr %i.at, i64 %index
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i8 %i.ag, ptr %i.br, align 1, !tbaa !40
  br label %pred.store.continue146

pred.store.continue146:                           ; preds = %pred.store.if145, %pred.store.continue144
  %i.bs = extractelement <16 x i1> %i.bd, i64 5
  br i1 %i.bs, label %pred.store.if147, label %pred.store.continue148

pred.store.if147:                                 ; preds = %pred.store.continue146
  %i.bt = getelementptr inbounds nuw i8, ptr %i.at, i64 %index
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 5
  store i8 %i.ag, ptr %i.bu, align 1, !tbaa !40
  br label %pred.store.continue148

pred.store.continue148:                           ; preds = %pred.store.if147, %pred.store.continue146
  %i.bv = extractelement <16 x i1> %i.bd, i64 6
  br i1 %i.bv, label %pred.store.if149, label %pred.store.continue150

pred.store.if149:                                 ; preds = %pred.store.continue148
  %i.bw = getelementptr inbounds nuw i8, ptr %i.at, i64 %index
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 6
  store i8 %i.ag, ptr %i.bx, align 1, !tbaa !40
  br label %pred.store.continue150

pred.store.continue150:                           ; preds = %pred.store.if149, %pred.store.continue148
  %i.by = extractelement <16 x i1> %i.bd, i64 7
  br i1 %i.by, label %pred.store.if151, label %pred.store.continue152

pred.store.if151:                                 ; preds = %pred.store.continue150
  %i.bz = getelementptr inbounds nuw i8, ptr %i.at, i64 %index
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 7
  store i8 %i.ag, ptr %i.ca, align 1, !tbaa !40
  br label %pred.store.continue152

pred.store.continue152:                           ; preds = %pred.store.if151, %pred.store.continue150
  %i.cb = extractelement <16 x i1> %i.bd, i64 8
  br i1 %i.cb, label %pred.store.if153, label %pred.store.continue154

pred.store.if153:                                 ; preds = %pred.store.continue152
  %i.cc = getelementptr inbounds nuw i8, ptr %i.at, i64 %index
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i8 %i.ag, ptr %i.cd, align 1, !tbaa !40
  br label %pred.store.continue154

pred.store.continue154:                           ; preds = %pred.store.if153, %pred.store.continue152
  %i.ce = extractelement <16 x i1> %i.bd, i64 9
  br i1 %i.ce, label %pred.store.if155, label %pred.store.continue156

pred.store.if155:                                 ; preds = %pred.store.continue154
  %i.cf = getelementptr inbounds nuw i8, ptr %i.at, i64 %index
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 9
  store i8 %i.ag, ptr %i.cg, align 1, !tbaa !40
  br label %pred.store.continue156

pred.store.continue156:                           ; preds = %pred.store.if155, %pred.store.continue154
  %i.ch = extractelement <16 x i1> %i.bd, i64 10
  br i1 %i.ch, label %pred.store.if157, label %pred.store.continue158

pred.store.if157:                                 ; preds = %pred.store.continue156
  %i.ci = getelementptr inbounds nuw i8, ptr %i.at, i64 %index
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 10
  store i8 %i.ag, ptr %i.cj, align 1, !tbaa !40
  br label %pred.store.continue158

pred.store.continue158:                           ; preds = %pred.store.if157, %pred.store.continue156
  %i.ck = extractelement <16 x i1> %i.bd, i64 11
  br i1 %i.ck, label %pred.store.if159, label %pred.store.continue160

pred.store.if159:                                 ; preds = %pred.store.continue158
  %i.cl = getelementptr inbounds nuw i8, ptr %i.at, i64 %index
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 11
  store i8 %i.ag, ptr %i.cm, align 1, !tbaa !40
  br label %pred.store.continue160

pred.store.continue160:                           ; preds = %pred.store.if159, %pred.store.continue158
  %i.cn = extractelement <16 x i1> %i.bd, i64 12
  br i1 %i.cn, label %pred.store.if161, label %pred.store.continue162

pred.store.if161:                                 ; preds = %pred.store.continue160
  %i.co = getelementptr inbounds nuw i8, ptr %i.at, i64 %index
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store i8 %i.ag, ptr %i.cp, align 1, !tbaa !40
  br label %pred.store.continue162

pred.store.continue162:                           ; preds = %pred.store.if161, %pred.store.continue160
  %i.cq = extractelement <16 x i1> %i.bd, i64 13
  br i1 %i.cq, label %pred.store.if163, label %pred.store.continue164

pred.store.if163:                                 ; preds = %pred.store.continue162
  %i.cr = getelementptr inbounds nuw i8, ptr %i.at, i64 %index
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 13
  store i8 %i.ag, ptr %i.cs, align 1, !tbaa !40
  br label %pred.store.continue164

pred.store.continue164:                           ; preds = %pred.store.if163, %pred.store.continue162
  %i.ct = extractelement <16 x i1> %i.bd, i64 14
  br i1 %i.ct, label %pred.store.if165, label %pred.store.continue166

pred.store.if165:                                 ; preds = %pred.store.continue164
  %i.cu = getelementptr inbounds nuw i8, ptr %i.at, i64 %index
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 14
  store i8 %i.ag, ptr %i.cv, align 1, !tbaa !40
  br label %pred.store.continue166

pred.store.continue166:                           ; preds = %pred.store.if165, %pred.store.continue164
  %i.cw = extractelement <16 x i1> %i.bd, i64 15
  br i1 %i.cw, label %pred.store.if167, label %pred.store.continue168

pred.store.if167:                                 ; preds = %pred.store.continue166
  %i.cx = getelementptr inbounds nuw i8, ptr %i.at, i64 %index
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 15
  store i8 %i.ag, ptr %i.cy, align 1, !tbaa !40
  br label %pred.store.continue168

pred.store.continue168:                           ; preds = %pred.store.if167, %pred.store.continue166
  %i.cz = extractelement <16 x i1> %i.be, i64 0
  br i1 %i.cz, label %pred.store.if169, label %pred.store.continue170

end_hunk_0
begin_hunk_1_@parse_value:bb.a
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !40
  %i.gz = icmp eq i8 %i.gy, 93
  br i1 %i.gz, label %.thread74, label %bb.ad

.thread74:                                        ; preds = %bb.ab
  %i.ha = load i64, ptr %i.gn, align 8, !tbaa !54
  %i.hb = add i64 %i.ha, -1
  store i64 %i.hb, ptr %i.gn, align 8, !tbaa !54
  br label %bb.al

bb.ac:                                            ; preds = %bb.aa
  %i.hc = add i64 %i.gt, -1
  store i64 %i.hc, ptr %i.e, align 8, !tbaa !39
  br label %parse_array.exit

bb.ad:                                            ; preds = %bb.ab
  %i.hd = add i64 %i.gt, -1
  store i64 %i.hd, ptr %i.e, align 8, !tbaa !39
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aj, %bb.ad
  %.052.i = phi ptr [ null, %bb.ad ], [ %.153.i, %bb.aj ] ; 4 uses
  %.051.i65 = phi ptr [ null, %bb.ad ], [ %i.hf, %bb.aj ] ; 2 uses
  %.val.i = load ptr, ptr %i.he, align 8, !tbaa !21
  %i.hf = tail call ptr %.val.i(i64 noundef 64) #30, !inline_history !55 ; 8 uses
  %.not.i67 = icmp eq ptr %i.hf, null
  br i1 %.not.i67, label %.critedge.i66, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.hf, i8 0, i64 64, i1 false)
  %i.hg = icmp eq ptr %.052.i, null
  br i1 %i.hg, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %i.hf, ptr %.051.i65, align 8, !tbaa !27
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store ptr %.051.i65, ptr %i.hh, align 8, !tbaa !56
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.153.i = phi ptr [ %.052.i, %bb.ag ], [ %i.hf, %bb.af ] ; 6 uses
  %i.hi = load i64, ptr %i.e, align 8, !tbaa !39
  %i.hj = add i64 %i.hi, 1
  store i64 %i.hj, ptr %i.e, align 8, !tbaa !39
  tail call fastcc void @buffer_skip_whitespace(ptr noundef nonnull %1)
  %i.hk = tail call fastcc i32 @parse_value(ptr noundef %i.hf, ptr noundef nonnull %1), !inline_history !57
  %.not63.i = icmp eq i32 %i.hk, 0
  br i1 %.not63.i, label %.critedge.i66.thread87, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call fastcc void @buffer_skip_whitespace(ptr noundef nonnull %1)
  %i.hl = load i64, ptr %i.e, align 8, !tbaa !39  ; 3 uses
  %i.hm = load i64, ptr %i.h, align 8, !tbaa !35
  %i.hn = icmp ult i64 %i.hl, %i.hm
  br i1 %i.hn, label %bb.aj, label %.critedge.i66.thread87

bb.aj:                                            ; preds = %bb.ai
  %i.ho = load ptr, ptr %1, align 8, !tbaa !33
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hl
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !40
  switch i8 %i.hq, label %.critedge.i66.thread87 [
    i8 44, label %bb.ae
    i8 93, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.hr = load i64, ptr %i.gn, align 8, !tbaa !54
  %i.hs = add i64 %i.hr, -1
  store i64 %i.hs, ptr %i.gn, align 8, !tbaa !54
  %i.ht = getelementptr inbounds nuw i8, ptr %.153.i, i64 8
  store ptr %i.hf, ptr %i.ht, align 8, !tbaa !56
  br label %bb.al

bb.al:                                            ; preds = %.thread74, %bb.ak
  %i.hu = phi i64 [ %i.gt, %.thread74 ], [ %i.hl, %bb.ak ]
  %.355.i78 = phi ptr [ null, %.thread74 ], [ %.153.i, %bb.ak ]
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 32, ptr %i.hv, align 8, !tbaa !15
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.355.i78, ptr %i.hw, align 8, !tbaa !28
  %i.hx = add nuw i64 %i.hu, 1
  store i64 %i.hx, ptr %i.e, align 8, !tbaa !39
  br label %parse_array.exit

.critedge.i66:                                    ; preds = %bb.ae
  %.not66.i = icmp eq ptr %.052.i, null
  br i1 %.not66.i, label %parse_array.exit, label %.critedge.i66.thread87

.critedge.i66.thread87:                           ; preds = %bb.ai, %bb.ah, %bb.aj, %.critedge.i66
  %.4.i86 = phi ptr [ %.052.i, %.critedge.i66 ], [ %.153.i, %bb.aj ], [ %.153.i, %bb.ah ], [ %.153.i, %bb.ai ]
  tail call void @cJSON_Delete(ptr noundef nonnull %.4.i86), !inline_history !57
  br label %parse_array.exit

bb.am:                                            ; preds = %bb.x
  %i.hy = tail call fastcc i32 @parse_object(ptr noundef %0, ptr noundef %1)
  br label %parse_array.exit

parse_array.exit:                                 ; preds = %bb.x, %bb.ac, %bb.z, %bb.l, %.critedge.i66.thread87, %.critedge.i66, %bb.al, %bb.y, %bb.a, %bb.b, %bb.am, %parse_number.exit, %bb.n, %bb.k, %bb.h, %bb.e
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.e ], [ 1, %bb.h ], [ 1, %bb.k ], [ %i.ab, %bb.n ], [ %.051.i, %parse_number.exit ], [ 0, %bb.l ], [ %i.hy, %bb.am ], [ 0, %bb.b ], [ 0, %bb.x ], [ 0, %bb.y ], [ 1, %bb.al ], [ 0, %.critedge.i66.thread87 ], [ 0, %.critedge.i66 ], [ 0, %bb.z ], [ 0, %bb.ac ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @buffer_skip_whitespace(ptr nofree noundef captures(address_is_null, ret: address, provenance) %0) unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !35   ; 4 uses
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.i = phi i64 [ %i.m, %bb.d ], [ %i.e, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !40
  %i.l = icmp ult i8 %i.k, 33
  br i1 %i.l, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.m = add i64 %i.i, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !tbaa !39
  %exitcond.not = icmp eq i64 %i.m, %i.g
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.i, %i.g
  br i1 %i.n, label %.critedge.thread, label %bb.e

.critedge.thread:                                 ; preds = %bb.d, %.critedge
  %i.o = add i64 %i.g, -1
  store i64 %i.o, ptr %i.d, align 8, !tbaa !39
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %.critedge.thread, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_Parse(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %cJSON_ParseWithOpts.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #31
  %i.c = add i64 %i.b, 1
  %i.d = tail call ptr @cJSON_ParseWithLengthOpts(ptr noundef nonnull %0, i64 noundef %i.c, ptr noundef null, i32 noundef 0)
  br label %cJSON_ParseWithOpts.exit

cJSON_ParseWithOpts.exit:                         ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_ParseWithLength(ptr noundef %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call ptr @cJSON_ParseWithLengthOpts(ptr noundef %0, i64 noundef %1, ptr noundef null, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_Print(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call fastcc ptr @print(ptr noundef %0, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @print(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #8 {
bb.a:
  %2 = alloca [1 x %struct.printbuffer], align 16 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.c = tail call ptr %i.b(i64 noundef 256) #30  ; 2 uses
  store ptr %i.c, ptr %2, align 16, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 256, ptr %i.d, align 8, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 %1, ptr %i.e, align 4, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) @global_hooks, i64 24, i1 false), !tbaa.struct !36
  %i.g = icmp eq ptr %i.c, null
  br i1 %i.g, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call fastcc i32 @print_value(ptr noundef %0, ptr noundef %2)
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %2, align 16, !tbaa !58    ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %update_offset.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 16, !tbaa !62  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.n = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #31
  %i.o = add i64 %i.n, %i.l
  store i64 %i.o, ptr %i.k, align 16, !tbaa !62
  br label %update_offset.exit

update_offset.exit:                               ; preds = %bb.c, %bb.d
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !63 ; 2 uses
  %.not24 = icmp eq ptr %i.p, null
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %update_offset.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i64, ptr %i.q, align 16, !tbaa !62
  %i.s = add i64 %i.r, 1
  %i.t = call ptr %i.p(ptr noundef %i.i, i64 noundef %i.s) #30 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.h, label %bb.j

bb.f:                                             ; preds = %update_offset.exit
  %i.v = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 16, !tbaa !62
  %i.y = add i64 %i.x, 1
  %i.z = call ptr %i.v(i64 noundef %i.y) #30      ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %2, align 16, !tbaa !58
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !60
  %i.ad = load i64, ptr %i.w, align 16, !tbaa !62
  %i.ae = add i64 %i.ad, 1
  %i.af = call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.af, i1 false)
  %i.ag = load i64, ptr %i.w, align 16, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ag
  store i8 0, ptr %i.ah, align 1, !tbaa !40
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !25
  %i.aj = load ptr, ptr %2, align 16, !tbaa !58
  call void %i.ai(ptr noundef %i.aj) #30
  br label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  %i.ak = load ptr, ptr %2, align 16, !tbaa !58   ; 2 uses
  %.not25 = icmp eq ptr %i.ak, null
  br i1 %.not25, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !25
  call void %i.al(ptr noundef nonnull %i.ak) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.e, %bb.i, %bb.h
  %.017 = phi ptr [ null, %bb.i ], [ null, %bb.h ], [ %i.z, %bb.g ], [ %i.t, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.017
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_PrintUnformatted(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call fastcc ptr @print(ptr noundef %0, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_PrintBuffered(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.printbuffer, align 8        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %i.a, align 8
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.d = zext nneg i32 %1 to i64                  ; 2 uses
  %i.e = tail call ptr %i.c(i64 noundef %i.d) #30 ; 2 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !58
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.d, ptr %i.f, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.g, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.h, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %2, ptr %i.i, align 4, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) @global_hooks, i64 24, i1 false), !tbaa.struct !36
  %i.k = call fastcc i32 @print_value(ptr noundef %0, ptr noundef %3)
  %.not6 = icmp eq i32 %i.k, 0
  br i1 %.not6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !25
  %i.m = load ptr, ptr %3, align 8, !tbaa !58
  call void %i.l(ptr noundef %i.m) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %3, align 8, !tbaa !58
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e, %bb.d
  %.0 = phi ptr [ null, %bb.a ], [ %i.n, %bb.e ], [ null, %bb.d ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @print_value(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef nonnull %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 12 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %print_array.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15
  %i.f = and i32 %i.e, 255                        ; 2 uses
  %i.g = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.f)
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %.split, label %print_array.exit

.split:                                           ; preds = %bb.b
  %i.i = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.f, i1 true)
  switch i32 %i.i, label %default.unreachable133 [
    i32 2, label %bb.c
    i32 0, label %bb.r
    i32 1, label %bb.ag
    i32 3, label %bb.av
    i32 7, label %bb.bd
    i32 4, label %bb.bg
    i32 5, label %bb.bh
    i32 6, label %bb.bs
  ]

bb.c:                                             ; preds = %.split
  %i.j = load ptr, ptr %1, align 8, !tbaa !58     ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %print_array.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !60   ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !62
  %i.n = freeze i64 %.pre.i                       ; 3 uses
  %i.o = add i64 %i.m, -1
  %or.cond.not = icmp ult i64 %i.o, %i.n
  br i1 %or.cond.not, label %print_array.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = add i64 %i.n, 6                          ; 4 uses
  %.not53.i = icmp ugt i64 %i.q, %i.m
  br i1 %.not53.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.n
  br label %ensure.exit

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !64
  %.not54.i = icmp eq i32 %i.t, 0
  br i1 %.not54.i, label %bb.h, label %print_array.exit

bb.h:                                             ; preds = %bb.g
  %i.u = icmp ugt i64 %i.q, 1073741823
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = icmp ult i64 %i.q, 2147483648
  br i1 %i.v, label %bb.k, label %print_array.exit

bb.j:                                             ; preds = %bb.h
  %i.w = shl nuw nsw i64 %i.q, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i = phi i64 [ %i.w, %bb.j ], [ 2147483647, %bb.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !65   ; 2 uses
  %.not55.i = icmp eq ptr %i.y, null
  br i1 %.not55.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = tail call ptr %i.y(ptr noundef nonnull %i.j, i64 noundef %.0.i) #30, !inline_history !66 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !67
  %i.ad = load ptr, ptr %1, align 8, !tbaa !58
  tail call void %i.ac(ptr noundef %i.ad) #30, !inline_history !66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %print_array.exit

bb.n:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.ag = tail call ptr %i.af(i64 noundef %.0.i) #30, !inline_history !66 ; 3 uses
  %.not56.i = icmp eq ptr %i.ag, null
  br i1 %.not56.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !67
  %i.aj = load ptr, ptr %1, align 8, !tbaa !58
  tail call void %i.ai(ptr noundef %i.aj) #30, !inline_history !66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %print_array.exit

bb.p:                                             ; preds = %bb.n
  %i.ak = load ptr, ptr %1, align 8, !tbaa !58
  %i.al = load i64, ptr %i.p, align 8, !tbaa !62
  %i.am = add i64 %i.al, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %i.ak, i64 %i.am, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !67
  %i.ap = load ptr, ptr %1, align 8, !tbaa !58
  tail call void %i.ao(ptr noundef %i.ap) #30, !inline_history !66
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %.043.i = phi ptr [ %i.z, %bb.l ], [ %i.ag, %bb.p ] ; 2 uses
  store i64 %.0.i, ptr %i.l, align 8, !tbaa !60
  store ptr %.043.i, ptr %1, align 8, !tbaa !58
  %i.aq = load i64, ptr %i.p, align 8, !tbaa !62
  %i.ar = getelementptr inbounds nuw i8, ptr %.043.i, i64 %i.aq
  br label %ensure.exit

ensure.exit:                                      ; preds = %bb.q, %bb.f
  %.044.i = phi ptr [ %i.ar, %bb.q ], [ %i.r, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.044.i, ptr noundef nonnull align 1 dereferenceable(5) @.str.9, i64 5, i1 false) #30
  br label %print_array.exit

bb.r:                                             ; preds = %.split
  %i.as = load ptr, ptr %1, align 8, !tbaa !58    ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %print_array.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !60 ; 2 uses
  %.phi.trans.insert.i45 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre.i46 = load i64, ptr %.phi.trans.insert.i45, align 8, !tbaa !62
  %i.aw = freeze i64 %.pre.i46                    ; 3 uses
  %i.ax = add i64 %i.av, -1
  %or.cond138.not = icmp ult i64 %i.ax, %i.aw
  br i1 %or.cond138.not, label %print_array.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.az = add i64 %i.aw, 7                        ; 4 uses
  %.not53.i38 = icmp ugt i64 %i.az, %i.av
  br i1 %.not53.i38, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aw
  br label %ensure.exit47

bb.v:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !64
  %.not54.i40 = icmp eq i32 %i.bc, 0
  br i1 %.not54.i40, label %bb.w, label %print_array.exit

bb.w:                                             ; preds = %bb.v
  %i.bd = icmp ugt i64 %i.az, 1073741823
  br i1 %i.bd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.be = icmp ult i64 %i.az, 2147483648
  br i1 %i.be, label %bb.z, label %print_array.exit

bb.y:                                             ; preds = %bb.w
  %i.bf = shl nuw nsw i64 %i.az, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0.i41 = phi i64 [ %i.bf, %bb.y ], [ 2147483647, %bb.x ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !65 ; 2 uses
  %.not55.i42 = icmp eq ptr %i.bh, null
  br i1 %.not55.i42, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bi = tail call ptr %i.bh(ptr noundef nonnull %i.as, i64 noundef %.0.i41) #30, !inline_history !66 ; 2 uses
end_hunk_1
begin_hunk_2_@print_value:bb.a
  store ptr %.043.i55, ptr %1, align 8, !tbaa !58
  %i.di = load i64, ptr %i.ch, align 8, !tbaa !62
  %i.dj = getelementptr inbounds nuw i8, ptr %.043.i55, i64 %i.di
  br label %ensure.exit59

ensure.exit59:                                    ; preds = %bb.au, %bb.aj
  %.044.i51 = phi ptr [ %i.dj, %bb.au ], [ %i.cj, %bb.aj ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.044.i51, ptr noundef nonnull align 1 dereferenceable(5) @.str.11, i64 5, i1 false) #30
  br label %print_array.exit

bb.av:                                            ; preds = %.split
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !20 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.a, i8 0, i64 26, i1 false)
  %i.dm = tail call ptr @localeconv() #30
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !43
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !40  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !69
  %i.dp = fsub double %i.dl, %i.dl
  %or.cond44.i = fcmp uno double %i.dl, %i.dp
  br i1 %or.cond44.i, label %.thread.i, label %bb.aw

.thread.i:                                        ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.9, i64 5, i1 false)
  br label %bb.bc

bb.aw:                                            ; preds = %bb.av
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !30 ; 2 uses
  %i.ds = sitofp i32 %i.dr to double
  %i.dt = fcmp oeq double %i.dl, %i.ds
  br i1 %i.dt, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.du = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.dr) #30
  br label %bb.bb

bb.ay:                                            ; preds = %bb.aw
  %i.dv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %i.dl) #30
  %i.dw = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.b) #30
  %.not.i60 = icmp eq i32 %i.dw, 1
  br i1 %.not.i60, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.dx = load double, ptr %i.b, align 8, !tbaa !69 ; 2 uses
  %i.dy = call double @llvm.fabs.f64(double %i.dx) ; 2 uses
  %i.dz = call double @llvm.fabs.f64(double %i.dl) ; 2 uses
  %i.ea = fcmp ogt double %i.dy, %i.dz
  %..i.i = select i1 %i.ea, double %i.dy, double %i.dz
  %i.eb = fsub double %i.dx, %i.dl
  %i.ec = call double @llvm.fabs.f64(double %i.eb)
  %i.ed = fmul double %..i.i, f0x3CB0000000000000
  %i.ee = fcmp ugt double %i.ec, %i.ed
  br i1 %i.ee, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ef = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %i.dl) #30
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ax
  %.036.i = phi i32 [ %i.dv, %bb.az ], [ %i.du, %bb.ax ], [ %i.ef, %bb.ba ] ; 2 uses
  %or.cond.i = icmp ugt i32 %.036.i, 25
  br i1 %or.cond.i, label %print_number.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.thread.i
  %.03647.i = phi i32 [ 4, %.thread.i ], [ %.036.i, %bb.bb ] ; 3 uses
  %i.eg = zext nneg i32 %.03647.i to i64          ; 6 uses
  %i.eh = add nuw nsw i64 %i.eg, 1
  %i.ei = call fastcc ptr @ensure(ptr noundef nonnull %1, i64 noundef %i.eh) ; 6 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %print_number.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bc
  %.not49.i = icmp eq i32 %.03647.i, 0
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %min.iters.check = icmp samesign ult i32 %.03647.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader143, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.eg, 24                      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.do, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer ; 3 uses
  %wide.load = load <8 x i8>, ptr %i.a, align 16, !tbaa !40 ; 2 uses
  %i.ek = icmp eq <8 x i8> %wide.load, %broadcast.splat
  %i.el = select <8 x i1> %i.ek, <8 x i8> splat (i8 46), <8 x i8> %wide.load
  store <8 x i8> %i.el, ptr %i.ei, align 1, !tbaa !40
  %i.em = icmp eq i64 %n.vec, 8
  br i1 %i.em, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %wide.load.1 = load <8 x i8>, ptr %i.en, align 8, !tbaa !40 ; 2 uses
  %i.eo = icmp eq <8 x i8> %wide.load.1, %broadcast.splat
  %i.ep = select <8 x i1> %i.eo, <8 x i8> splat (i8 46), <8 x i8> %wide.load.1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store <8 x i8> %i.ep, ptr %i.eq, align 1, !tbaa !40
  %i.er = icmp eq i64 %n.vec, 16
  br i1 %i.er, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %wide.load.2 = load <8 x i8>, ptr %i.es, align 16, !tbaa !40 ; 2 uses
  %i.et = icmp eq <8 x i8> %wide.load.2, %broadcast.splat
  %i.eu = select <8 x i1> %i.et, <8 x i8> splat (i8 46), <8 x i8> %wide.load.2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store <8 x i8> %i.eu, ptr %i.ev, align 1, !tbaa !40
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.eg
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader143

.lr.ph.i.preheader143:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.048.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader143, %.lr.ph.i
  %.048.i = phi i64 [ %i.fa, %.lr.ph.i ], [ %.048.i.ph, %.lr.ph.i.preheader143 ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 %.048.i
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !40  ; 2 uses
  %i.ey = icmp eq i8 %i.ex, %i.do
  %spec.select.i = select i1 %i.ey, i8 46, i8 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.048.i
  store i8 %spec.select.i, ptr %i.ez, align 1, !tbaa !40
  %i.fa = add nuw nsw i64 %.048.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fa, %i.eg
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !70

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %.preheader.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eg
  store i8 0, ptr %i.fb, align 1, !tbaa !40
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !62
  %i.fe = add i64 %i.fd, %i.eg
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !62
  br label %print_number.exit

print_number.exit:                                ; preds = %bb.bb, %bb.bc, %._crit_edge.i
  %.037.i = phi i32 [ 1, %._crit_edge.i ], [ 0, %bb.bb ], [ 0, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %print_array.exit

bb.bd:                                            ; preds = %.split
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !19 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %print_array.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fi = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fg) #31
  %i.fj = add i64 %i.fi, 1                        ; 2 uses
  %i.fk = tail call fastcc ptr @ensure(ptr noundef %1, i64 noundef %i.fj) ; 2 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %print_array.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fm = load ptr, ptr %i.ff, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fk, ptr align 1 %i.fm, i64 %i.fj, i1 false)
  br label %print_array.exit

bb.bg:                                            ; preds = %.split
  %i.fn = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.fn, align 8, !tbaa !19
  %i.fo = tail call fastcc range(i32 0, 2) i32 @print_string_ptr(ptr noundef %.val, ptr noundef nonnull %1)
  br label %print_array.exit

bb.bh:                                            ; preds = %.split
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !28 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !71
  %i.ft = icmp ugt i64 %i.fs, 999
  br i1 %i.ft, label %print_array.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fu = tail call fastcc ptr @ensure(ptr noundef nonnull %1, i64 noundef 1), !inline_history !72 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %print_array.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i8 91, ptr %i.fu, align 1, !tbaa !40
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.fx = load <2 x i64>, ptr %i.fw, align 8, !tbaa !42
  %i.fy = add <2 x i64> %i.fx, splat (i64 1)
  store <2 x i64> %i.fy, ptr %i.fw, align 8, !tbaa !42
  %.not.i6283 = icmp eq ptr %i.fq, null
  br i1 %.not.i6283, label %._crit_edge87, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.bj
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph86, %bb.bq
  %.0.i6184 = phi ptr [ %i.fq, %.lr.ph86 ], [ %.pre, %bb.bq ] ; 3 uses
  %i.ga = tail call fastcc i32 @print_value(ptr noundef nonnull %.0.i6184, ptr noundef nonnull %1), !inline_history !72
  %.not35.i = icmp eq i32 %i.ga, 0
  br i1 %.not35.i, label %print_array.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gb = load ptr, ptr %1, align 8, !tbaa !58    ; 2 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %update_offset.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gd = load i64, ptr %i.fw, align 8, !tbaa !62 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gd
  %i.gf = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ge) #31
  %i.gg = add i64 %i.gf, %i.gd
  store i64 %i.gg, ptr %i.fw, align 8, !tbaa !62
  br label %update_offset.exit

update_offset.exit:                               ; preds = %bb.bl, %bb.bm
  %i.gh = load ptr, ptr %.0.i6184, align 8, !tbaa !27
  %.not36.i = icmp eq ptr %i.gh, null
  br i1 %.not36.i, label %._crit_edge87, label %bb.bn

bb.bn:                                            ; preds = %update_offset.exit
  %i.gi = load i32, ptr %i.fz, align 4, !tbaa !61
  %.not37.i = icmp eq i32 %i.gi, 0
  %i.gj = select i1 %.not37.i, i64 1, i64 2       ; 2 uses
  %i.gk = add nuw nsw i64 %i.gj, 1
  %i.gl = tail call fastcc ptr @ensure(ptr noundef nonnull %1, i64 noundef %i.gk), !inline_history !72 ; 4 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %print_array.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 1 ; 2 uses
  store i8 44, ptr %i.gl, align 1, !tbaa !40
  %i.go = load i32, ptr %i.fz, align 4, !tbaa !61
  %.not38.i = icmp eq i32 %i.go, 0
  br i1 %.not38.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 2
  store i8 32, ptr %i.gn, align 1, !tbaa !40
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %.029.i = phi ptr [ %i.gp, %bb.bp ], [ %i.gn, %bb.bo ]
  store i8 0, ptr %.029.i, align 1, !tbaa !40
  %i.gq = load i64, ptr %i.fw, align 8, !tbaa !62
  %i.gr = add i64 %i.gq, %i.gj
  store i64 %i.gr, ptr %i.fw, align 8, !tbaa !62
  %.pre = load ptr, ptr %.0.i6184, align 8, !tbaa !27 ; 2 uses
  %.not.i62 = icmp eq ptr %.pre, null
  br i1 %.not.i62, label %._crit_edge87, label %bb.bk

._crit_edge87:                                    ; preds = %update_offset.exit, %bb.bq, %bb.bj
  %i.gs = tail call fastcc ptr @ensure(ptr noundef nonnull %1, i64 noundef 2), !inline_history !72 ; 3 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %print_array.exit, label %bb.br

bb.br:                                            ; preds = %._crit_edge87
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  store i8 93, ptr %i.gs, align 1, !tbaa !40
  store i8 0, ptr %i.gu, align 1, !tbaa !40
  %i.gv = load i64, ptr %i.fr, align 8, !tbaa !71
  %i.gw = add i64 %i.gv, -1
  store i64 %i.gw, ptr %i.fr, align 8, !tbaa !71
  br label %print_array.exit

bb.bs:                                            ; preds = %.split
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !28 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 11 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !71
  %i.hb = icmp ugt i64 %i.ha, 999
  br i1 %i.hb, label %print_array.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 9 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !61
  %.not.i63 = icmp eq i32 %i.hd, 0
  %i.he = select i1 %.not.i63, i64 1, i64 2       ; 2 uses
  %i.hf = add nuw nsw i64 %i.he, 1
  %i.hg = tail call fastcc ptr @ensure(ptr noundef nonnull %1, i64 noundef %i.hf), !inline_history !73 ; 3 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %print_array.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store i8 123, ptr %i.hg, align 1, !tbaa !40
  %i.hi = load i64, ptr %i.gz, align 8, !tbaa !71
  %i.hj = add i64 %i.hi, 1
  store i64 %i.hj, ptr %i.gz, align 8, !tbaa !71
  %i.hk = load i32, ptr %i.hc, align 4, !tbaa !61
  %.not80.i = icmp eq i32 %i.hk, 0
  br i1 %.not80.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  store i8 10, ptr %i.hl, align 1, !tbaa !40
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !62
  %i.ho = add i64 %i.hn, %i.he
  store i64 %i.ho, ptr %i.hm, align 8, !tbaa !62
  %.not81.i74 = icmp eq ptr %i.gy, null
  br i1 %.not81.i74, label %._crit_edge78, label %.lr.ph77

.lr.ph77:                                         ; preds = %bb.bw, %bb.ck
  %.067.i75 = phi ptr [ %i.jl, %bb.ck ], [ %i.gy, %bb.bw ] ; 5 uses
  %i.hp = load i32, ptr %i.hc, align 4, !tbaa !61
  %.not84.i = icmp eq i32 %i.hp, 0
  br i1 %.not84.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph77
  %i.hq = load i64, ptr %i.gz, align 8, !tbaa !71
  %i.hr = tail call fastcc ptr @ensure(ptr noundef nonnull %1, i64 noundef %i.hq), !inline_history !73 ; 2 uses
  %.not85.i = icmp eq ptr %i.hr, null
  br i1 %.not85.i, label %print_array.exit, label %.preheader70

.preheader70:                                     ; preds = %bb.bx
  %i.hs = load i64, ptr %i.gz, align 8, !tbaa !71
  %.not = icmp eq i64 %i.hs, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader70, %.lr.ph
  %.065.i73 = phi i64 [ %i.hu, %.lr.ph ], [ 0, %.preheader70 ]
  %.068.i72 = phi ptr [ %i.ht, %.lr.ph ], [ %i.hr, %.preheader70 ] ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.068.i72, i64 1
  store i8 9, ptr %.068.i72, align 1, !tbaa !40
  %i.hu = add nuw i64 %.065.i73, 1                ; 2 uses
  %i.hv = load i64, ptr %i.gz, align 8, !tbaa !71 ; 2 uses
  %i.hw = icmp ult i64 %i.hu, %i.hv
  br i1 %i.hw, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader70
  %.lcssa = phi i64 [ 0, %.preheader70 ], [ %i.hv, %.lr.ph ]
  %i.hx = load i64, ptr %i.hm, align 8, !tbaa !62
  %i.hy = add i64 %i.hx, %.lcssa
  store i64 %i.hy, ptr %i.hm, align 8, !tbaa !62
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge, %.lr.ph77
  %i.hz = getelementptr inbounds nuw i8, ptr %.067.i75, i64 56
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !29
  %i.ib = tail call fastcc i32 @print_string_ptr(ptr noundef %i.ia, ptr noundef nonnull %1), !inline_history !73
  %.not86.i = icmp eq i32 %i.ib, 0
  br i1 %.not86.i, label %print_array.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ic = load ptr, ptr %1, align 8, !tbaa !58    ; 2 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %update_offset.exit66, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ie = load i64, ptr %i.hm, align 8, !tbaa !62 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ie
  %i.ig = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.if) #31
  %i.ih = add i64 %i.ig, %i.ie
  store i64 %i.ih, ptr %i.hm, align 8, !tbaa !62
  br label %update_offset.exit66

update_offset.exit66:                             ; preds = %bb.bz, %bb.ca
  %i.ii = load i32, ptr %i.hc, align 4, !tbaa !61
  %.not87.i = icmp eq i32 %i.ii, 0
  %i.ij = select i1 %.not87.i, i64 1, i64 2       ; 2 uses
  %i.ik = tail call fastcc ptr @ensure(ptr noundef nonnull %1, i64 noundef %i.ij), !inline_history !73 ; 3 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %print_array.exit, label %bb.cb

bb.cb:                                            ; preds = %update_offset.exit66
  store i8 58, ptr %i.ik, align 1, !tbaa !40
  %i.im = load i32, ptr %i.hc, align 4, !tbaa !61
  %.not88.i = icmp eq i32 %i.im, 0
  br i1 %.not88.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 1
  store i8 9, ptr %i.in, align 1, !tbaa !40
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.io = load i64, ptr %i.hm, align 8, !tbaa !62
  %i.ip = add i64 %i.io, %i.ij
  store i64 %i.ip, ptr %i.hm, align 8, !tbaa !62
  %i.iq = tail call fastcc i32 @print_value(ptr noundef nonnull %.067.i75, ptr noundef nonnull %1), !inline_history !73
  %.not89.i = icmp eq i32 %i.iq, 0
  br i1 %.not89.i, label %print_array.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ir = load ptr, ptr %1, align 8, !tbaa !58    ; 2 uses
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %update_offset.exit65, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.it = load i64, ptr %i.hm, align 8, !tbaa !62 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.it
  %i.iv = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.iu) #31
  %i.iw = add i64 %i.iv, %i.it
  store i64 %i.iw, ptr %i.hm, align 8, !tbaa !62
  br label %update_offset.exit65

update_offset.exit65:                             ; preds = %bb.ce, %bb.cf
  %i.ix = load i32, ptr %i.hc, align 4, !tbaa !61
  %.not90.i = icmp ne i32 %i.ix, 0
  %i.iy = zext i1 %.not90.i to i64
  %i.iz = load ptr, ptr %.067.i75, align 8, !tbaa !27
  %.not91.i = icmp ne ptr %i.iz, null
  %i.ja = zext i1 %.not91.i to i64
  %i.jb = add nuw nsw i64 %i.ja, %i.iy            ; 2 uses
  %i.jc = add nuw nsw i64 %i.jb, 1
  %i.jd = tail call fastcc ptr @ensure(ptr noundef nonnull %1, i64 noundef %i.jc), !inline_history !73 ; 4 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %print_array.exit, label %bb.cg

bb.cg:                                            ; preds = %update_offset.exit65
  %i.jf = load ptr, ptr %.067.i75, align 8, !tbaa !27
  %.not92.i = icmp eq ptr %i.jf, null
  br i1 %.not92.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 1
  store i8 44, ptr %i.jd, align 1, !tbaa !40
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.1.i = phi ptr [ %i.jg, %bb.ch ], [ %i.jd, %bb.cg ] ; 3 uses
  %i.jh = load i32, ptr %i.hc, align 4, !tbaa !61
  %.not93.i = icmp eq i32 %i.jh, 0
  br i1 %.not93.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ji = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  store i8 10, ptr %.1.i, align 1, !tbaa !40
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.2.i = phi ptr [ %i.ji, %bb.cj ], [ %.1.i, %bb.ci ]
  store i8 0, ptr %.2.i, align 1, !tbaa !40
  %i.jj = load i64, ptr %i.hm, align 8, !tbaa !62
  %i.jk = add i64 %i.jj, %i.jb
  store i64 %i.jk, ptr %i.hm, align 8, !tbaa !62
  %i.jl = load ptr, ptr %.067.i75, align 8, !tbaa !27 ; 2 uses
  %.not81.i = icmp eq ptr %i.jl, null
  br i1 %.not81.i, label %._crit_edge78, label %.lr.ph77

._crit_edge78:                                    ; preds = %bb.ck, %bb.bw
  %i.jm = load i32, ptr %i.hc, align 4, !tbaa !61
  %.not82.i = icmp eq i32 %i.jm, 0
  br i1 %.not82.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %._crit_edge78
  %i.jn = load i64, ptr %i.gz, align 8, !tbaa !71
  %i.jo = add i64 %i.jn, 1
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %._crit_edge78
  %i.jp = phi i64 [ %i.jo, %bb.cl ], [ 2, %._crit_edge78 ]
  %i.jq = tail call fastcc ptr @ensure(ptr noundef nonnull %1, i64 noundef %i.jp), !inline_history !73 ; 4 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %print_array.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.js = load i32, ptr %i.hc, align 4, !tbaa !61
  %.not83.i = icmp eq i32 %i.js, 0
  br i1 %.not83.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.cn
  %i.jt = load i64, ptr %i.gz, align 8, !tbaa !71
  %.not88 = icmp eq i64 %i.jt, 1
  br i1 %.not88, label %.loopexit, label %.lr.ph81

.lr.ph81:                                         ; preds = %.preheader, %.lr.ph81
  %.0.i6480 = phi i64 [ %i.jv, %.lr.ph81 ], [ 0, %.preheader ]
  %.3.i79 = phi ptr [ %i.ju, %.lr.ph81 ], [ %i.jq, %.preheader ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.3.i79, i64 1 ; 2 uses
  store i8 9, ptr %.3.i79, align 1, !tbaa !40
  %i.jv = add nuw i64 %.0.i6480, 1                ; 2 uses
  %i.jw = load i64, ptr %i.gz, align 8, !tbaa !71
  %i.jx = add i64 %i.jw, -1
  %i.jy = icmp ult i64 %i.jv, %i.jx
  br i1 %i.jy, label %.lr.ph81, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph81, %.preheader, %bb.cn
  %.4.i = phi ptr [ %i.jq, %bb.cn ], [ %i.jq, %.preheader ], [ %i.ju, %.lr.ph81 ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.4.i, i64 1
  store i8 125, ptr %.4.i, align 1, !tbaa !40
  store i8 0, ptr %i.jz, align 1, !tbaa !40
  %i.ka = load i64, ptr %i.gz, align 8, !tbaa !71
  %i.kb = add i64 %i.ka, -1
  store i64 %i.kb, ptr %i.gz, align 8, !tbaa !71
  br label %print_array.exit

default.unreachable133:                           ; preds = %.split
  unreachable

print_array.exit:                                 ; preds = %update_offset.exit65, %bb.cd, %update_offset.exit66, %bb.by, %bb.bx, %bb.bn, %bb.bk, %bb.ah, %bb.s, %bb.d, %bb.as, %bb.aq, %bb.am, %bb.ag, %bb.ak, %bb.ad, %bb.ab, %bb.x, %bb.r, %bb.v, %bb.o, %bb.m, %bb.i, %bb.c, %bb.g, %.loopexit, %bb.cm, %bb.bt, %bb.bs, %bb.br, %._crit_edge87, %bb.bi, %bb.bh, %bb.b, %bb.bf, %bb.bd, %bb.be, %bb.a, %bb.bg, %print_number.exit, %ensure.exit59, %ensure.exit47, %ensure.exit
  %.1 = phi i32 [ 0, %._crit_edge87 ], [ 0, %bb.be ], [ 0, %bb.a ], [ 1, %ensure.exit ], [ 0, %bb.ah ], [ 1, %ensure.exit47 ], [ 0, %bb.am ], [ 1, %ensure.exit59 ], [ %.037.i, %print_number.exit ], [ 0, %bb.aq ], [ %i.fo, %bb.bg ], [ 0, %bb.ad ], [ 1, %bb.bf ], [ 0, %bb.bd ], [ 0, %bb.b ], [ 0, %bb.r ], [ 0, %bb.o ], [ 1, %bb.br ], [ 0, %bb.ak ], [ 0, %bb.bh ], [ 0, %bb.ag ], [ 0, %bb.bi ], [ 1, %.loopexit ], [ 0, %bb.s ], [ 0, %bb.bs ], [ 0, %bb.x ], [ 0, %bb.ab ], [ 0, %bb.bn ], [ 0, %bb.cm ], [ 0, %bb.as ], [ 0, %bb.bt ], [ 0, %bb.g ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.i ], [ 0, %bb.m ], [ 0, %bb.v ], [ 0, %bb.bk ], [ 0, %bb.bx ], [ 0, %bb.by ], [ 0, %update_offset.exit66 ], [ 0, %bb.cd ], [ 0, %update_offset.exit65 ]
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @cJSON_PrintPreallocated(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.printbuffer, align 8        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.a, align 8
  %i.b = icmp slt i32 %2, 0
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %4, align 8, !tbaa !58
  %i.d = zext nneg i32 %2 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.f, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 1, ptr %i.g, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 %3, ptr %i.h, align 4, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) @global_hooks, i64 24, i1 false), !tbaa.struct !36
  %i.j = call fastcc i32 @print_value(ptr noundef %0, ptr noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @cJSON_GetArraySize(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.06.in = phi ptr [ %i.b, %bb.b ], [ %.06, %bb.c ]
  %.0 = phi i32 [ 0, %bb.b ], [ %i.c, %bb.c ]     ; 2 uses
  %.06 = load ptr, ptr %.06.in, align 8, !tbaa !74 ; 2 uses
  %.not = icmp eq ptr %.06, null
  %i.c = add i32 %.0, 1
  br i1 %.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.07 = phi i32 [ 0, %bb.a ], [ %.0, %bb.c ]
  ret i32 %.07
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @cJSON_GetArrayItem(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %get_array_item.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.07.i = phi i64 [ %i.c, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %.0.in.i = phi ptr [ %i.d, %bb.b ], [ %.0.i, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !74 ; 3 uses
  %i.e = icmp ne ptr %.0.i, null
  %i.f = icmp ne i64 %.07.i, 0
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  %i.h = add nsw i64 %.07.i, -1
  br i1 %i.g, label %bb.c, label %get_array_item.exit

get_array_item.exit:                              ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.0.i, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @cJSON_GetObjectItem(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #16 {
end_hunk_2
begin_hunk_3_@cJSON_AddItemReferenceToArray:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15
  %i.f = or i32 %i.e, 256
  store i32 %i.f, ptr %i.d, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.g = icmp eq ptr %0, %i.c
  br i1 %i.g, label %add_item_to_array.exit, label %bb.c

bb.c:                                             ; preds = %create_reference.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.c, ptr %i.h, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.c, ptr %i.k, align 8, !tbaa !56
  br label %add_item_to_array.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56   ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %add_item_to_array.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.c, ptr %i.m, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !56
  store ptr %i.c, ptr %i.l, align 8, !tbaa !56
  br label %add_item_to_array.exit

add_item_to_array.exit:                           ; preds = %bb.b, %bb.f, %bb.e, %bb.d, %create_reference.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %create_reference.exit ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.d ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @cJSON_AddItemReferenceToObject(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond12 = or i1 %or.cond, %i.c
  br i1 %or.cond12, label %add_item_to_object.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.d = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !80 ; 14 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %add_item_to_object.exit, label %create_reference.exit

create_reference.exit:                            ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, i8 0, i64 64, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(64) %2, i64 56, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !15
  %i.h = or i32 %i.g, 256
  store i32 %i.h, ptr %i.f, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.i = icmp eq ptr %0, %i.d
  br i1 %i.i, label %add_item_to_object.exit, label %bb.c

bb.c:                                             ; preds = %create_reference.exit
  %i.j = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.k = add i64 %i.j, 1                          ; 2 uses
  %i.l = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.m = tail call ptr %i.l(i64 noundef %i.k) #30, !inline_history !78 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %add_item_to_object.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %1, i64 %i.k, i1 false)
  %i.o = load i32, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %i.p = and i32 %i.o, -513
  %i.q = and i32 %i.o, 512
  %.not32.i = icmp eq i32 %i.q, 0
  br i1 %.not32.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %.not33.i = icmp eq ptr %i.r, null
  br i1 %.not33.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !25
  tail call void %i.s(ptr noundef nonnull %i.r) #30, !inline_history !79
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  store ptr %i.m, ptr %i.e, align 8, !tbaa !29
  store i32 %i.p, ptr %i.f, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28   ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.d, ptr %i.t, align 8, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.d, ptr %i.w, align 8, !tbaa !56
  store ptr null, ptr %i.d, align 8, !tbaa !27
  br label %add_item_to_object.exit

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !56   ; 3 uses
  %.not.i.i9 = icmp eq ptr %i.y, null
  br i1 %.not.i.i9, label %add_item_to_object.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.d, ptr %i.y, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !56
  store ptr %i.d, ptr %i.x, align 8, !tbaa !56
  br label %add_item_to_object.exit

add_item_to_object.exit:                          ; preds = %bb.b, %bb.j, %bb.i, %bb.h, %bb.c, %create_reference.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %create_reference.exit ], [ 1, %bb.j ], [ 1, %bb.h ], [ 1, %bb.i ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_AddNullToObject(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !81 ; 17 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateNull.exit.thread, label %cJSON_CreateNull.exit

cJSON_CreateNull.exit:                            ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i32 4, ptr %i.b, align 8, !tbaa !15
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.c, %i.d
  %i.e = icmp eq ptr %0, %i.a
  %or.cond34.i = or i1 %or.cond.i, %i.e
  br i1 %or.cond34.i, label %cJSON_CreateNull.exit.thread, label %bb.b

bb.b:                                             ; preds = %cJSON_CreateNull.exit
  %i.f = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.g = add i64 %i.f, 1                          ; 2 uses
  %i.h = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.i = tail call ptr %i.h(i64 noundef %i.g) #30, !inline_history !78 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %cJSON_CreateNull.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %1, i64 %i.g, i1 false)
  %i.k = load i32, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.l = and i32 %i.k, -513
  %i.m = and i32 %i.k, 512
  %.not32.i = icmp eq i32 %i.m, 0
  br i1 %.not32.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 2 uses
  %.not33.i = icmp eq ptr %i.o, null
  br i1 %.not33.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !25
  tail call void %i.p(ptr noundef nonnull %i.o) #30, !inline_history !79
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %i.q, align 8, !tbaa !29
  store i32 %i.l, ptr %i.b, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.a, ptr %i.r, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.a, ptr %i.u, align 8, !tbaa !56
  store ptr null, ptr %i.a, align 8, !tbaa !27
  br label %add_item_to_object.exit

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !56   ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.w, null
  br i1 %.not.i.i6, label %add_item_to_object.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.a, ptr %i.w, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !56
  store ptr %i.a, ptr %i.v, align 8, !tbaa !56
  br label %add_item_to_object.exit

cJSON_CreateNull.exit.thread:                     ; preds = %bb.a, %cJSON_CreateNull.exit, %bb.b
  tail call void @cJSON_Delete(ptr noundef %i.a)
  br label %add_item_to_object.exit

add_item_to_object.exit:                          ; preds = %bb.i, %bb.h, %bb.g, %cJSON_CreateNull.exit.thread
  %.0 = phi ptr [ null, %cJSON_CreateNull.exit.thread ], [ %i.a, %bb.g ], [ %i.a, %bb.h ], [ %i.a, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_CreateNull() local_unnamed_addr #8 {
bb.a:
  %global_hooks.val = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.a = tail call ptr %global_hooks.val(i64 noundef 64) #30, !inline_history !38 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %cJSON_New_Item.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 4, ptr %i.b, align 8, !tbaa !15
  br label %cJSON_New_Item.exit.thread

cJSON_New_Item.exit.thread:                       ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_AddTrueToObject(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !82 ; 17 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateTrue.exit.thread, label %cJSON_CreateTrue.exit

cJSON_CreateTrue.exit:                            ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i32 2, ptr %i.b, align 8, !tbaa !15
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.c, %i.d
  %i.e = icmp eq ptr %0, %i.a
  %or.cond34.i = or i1 %or.cond.i, %i.e
  br i1 %or.cond34.i, label %cJSON_CreateTrue.exit.thread, label %bb.b

bb.b:                                             ; preds = %cJSON_CreateTrue.exit
  %i.f = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.g = add i64 %i.f, 1                          ; 2 uses
  %i.h = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.i = tail call ptr %i.h(i64 noundef %i.g) #30, !inline_history !78 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %cJSON_CreateTrue.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %1, i64 %i.g, i1 false)
  %i.k = load i32, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.l = and i32 %i.k, -513
  %i.m = and i32 %i.k, 512
  %.not32.i = icmp eq i32 %i.m, 0
  br i1 %.not32.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 2 uses
  %.not33.i = icmp eq ptr %i.o, null
  br i1 %.not33.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !25
  tail call void %i.p(ptr noundef nonnull %i.o) #30, !inline_history !79
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %i.q, align 8, !tbaa !29
  store i32 %i.l, ptr %i.b, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.a, ptr %i.r, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.a, ptr %i.u, align 8, !tbaa !56
  store ptr null, ptr %i.a, align 8, !tbaa !27
  br label %add_item_to_object.exit

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !56   ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.w, null
  br i1 %.not.i.i6, label %add_item_to_object.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.a, ptr %i.w, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !56
  store ptr %i.a, ptr %i.v, align 8, !tbaa !56
  br label %add_item_to_object.exit

cJSON_CreateTrue.exit.thread:                     ; preds = %bb.a, %cJSON_CreateTrue.exit, %bb.b
  tail call void @cJSON_Delete(ptr noundef %i.a)
  br label %add_item_to_object.exit

add_item_to_object.exit:                          ; preds = %bb.i, %bb.h, %bb.g, %cJSON_CreateTrue.exit.thread
  %.0 = phi ptr [ null, %cJSON_CreateTrue.exit.thread ], [ %i.a, %bb.g ], [ %i.a, %bb.h ], [ %i.a, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_CreateTrue() local_unnamed_addr #8 {
bb.a:
  %global_hooks.val = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.a = tail call ptr %global_hooks.val(i64 noundef 64) #30, !inline_history !38 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %cJSON_New_Item.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.b, align 8, !tbaa !15
  br label %cJSON_New_Item.exit.thread

cJSON_New_Item.exit.thread:                       ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_AddFalseToObject(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !83 ; 17 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateFalse.exit.thread, label %cJSON_CreateFalse.exit

cJSON_CreateFalse.exit:                           ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i32 1, ptr %i.b, align 8, !tbaa !15
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.c, %i.d
  %i.e = icmp eq ptr %0, %i.a
  %or.cond34.i = or i1 %or.cond.i, %i.e
  br i1 %or.cond34.i, label %cJSON_CreateFalse.exit.thread, label %bb.b

bb.b:                                             ; preds = %cJSON_CreateFalse.exit
  %i.f = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.g = add i64 %i.f, 1                          ; 2 uses
  %i.h = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.i = tail call ptr %i.h(i64 noundef %i.g) #30, !inline_history !78 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %cJSON_CreateFalse.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %1, i64 %i.g, i1 false)
  %i.k = load i32, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.l = and i32 %i.k, -513
  %i.m = and i32 %i.k, 512
  %.not32.i = icmp eq i32 %i.m, 0
  br i1 %.not32.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 2 uses
  %.not33.i = icmp eq ptr %i.o, null
  br i1 %.not33.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !25
  tail call void %i.p(ptr noundef nonnull %i.o) #30, !inline_history !79
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %i.q, align 8, !tbaa !29
  store i32 %i.l, ptr %i.b, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.a, ptr %i.r, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.a, ptr %i.u, align 8, !tbaa !56
  store ptr null, ptr %i.a, align 8, !tbaa !27
  br label %add_item_to_object.exit

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !56   ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.w, null
  br i1 %.not.i.i6, label %add_item_to_object.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.a, ptr %i.w, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !56
  store ptr %i.a, ptr %i.v, align 8, !tbaa !56
  br label %add_item_to_object.exit

cJSON_CreateFalse.exit.thread:                    ; preds = %bb.a, %cJSON_CreateFalse.exit, %bb.b
  tail call void @cJSON_Delete(ptr noundef %i.a)
  br label %add_item_to_object.exit

add_item_to_object.exit:                          ; preds = %bb.i, %bb.h, %bb.g, %cJSON_CreateFalse.exit.thread
  %.0 = phi ptr [ null, %cJSON_CreateFalse.exit.thread ], [ %i.a, %bb.g ], [ %i.a, %bb.h ], [ %i.a, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_CreateFalse() local_unnamed_addr #8 {
bb.a:
  %global_hooks.val = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.a = tail call ptr %global_hooks.val(i64 noundef 64) #30, !inline_history !38 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %cJSON_New_Item.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 1, ptr %i.b, align 8, !tbaa !15
  br label %cJSON_New_Item.exit.thread

cJSON_New_Item.exit.thread:                       ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_AddBoolToObject(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !84 ; 17 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateBool.exit.thread, label %cJSON_CreateBool.exit

cJSON_CreateBool.exit:                            ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %.not3.i = icmp eq i32 %2, 0
  %i.b = select i1 %.not3.i, i32 1, i32 2
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i32 %i.b, ptr %i.c, align 8, !tbaa !15
  %i.d = icmp eq ptr %0, null
  %i.e = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.d, %i.e
  %i.f = icmp eq ptr %0, %i.a
  %or.cond34.i = or i1 %or.cond.i, %i.f
  br i1 %or.cond34.i, label %cJSON_CreateBool.exit.thread, label %bb.b

bb.b:                                             ; preds = %cJSON_CreateBool.exit
  %i.g = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.h = add i64 %i.g, 1                          ; 2 uses
  %i.i = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.j = tail call ptr %i.i(i64 noundef %i.h) #30, !inline_history !78 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %cJSON_CreateBool.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %1, i64 %i.h, i1 false)
  %i.l = load i32, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.m = and i32 %i.l, -513
  %i.n = and i32 %i.l, 512
  %.not32.i = icmp eq i32 %i.n, 0
  br i1 %.not32.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 2 uses
  %.not33.i = icmp eq ptr %i.p, null
  br i1 %.not33.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !25
  tail call void %i.q(ptr noundef nonnull %i.p) #30, !inline_history !79
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.j, ptr %i.r, align 8, !tbaa !29
  store i32 %i.m, ptr %i.c, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.a, ptr %i.s, align 8, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.a, ptr %i.v, align 8, !tbaa !56
  store ptr null, ptr %i.a, align 8, !tbaa !27
  br label %add_item_to_object.exit

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !56   ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.x, null
  br i1 %.not.i.i6, label %add_item_to_object.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.a, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !56
  store ptr %i.a, ptr %i.w, align 8, !tbaa !56
  br label %add_item_to_object.exit

cJSON_CreateBool.exit.thread:                     ; preds = %bb.a, %cJSON_CreateBool.exit, %bb.b
  tail call void @cJSON_Delete(ptr noundef %i.a)
  br label %add_item_to_object.exit

add_item_to_object.exit:                          ; preds = %bb.i, %bb.h, %bb.g, %cJSON_CreateBool.exit.thread
  %.0 = phi ptr [ null, %cJSON_CreateBool.exit.thread ], [ %i.a, %bb.g ], [ %i.a, %bb.h ], [ %i.a, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_CreateBool(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  %global_hooks.val = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.a = tail call ptr %global_hooks.val(i64 noundef 64) #30, !inline_history !38 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %cJSON_New_Item.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %.not3 = icmp eq i32 %0, 0
  %i.b = select i1 %.not3, i32 1, i32 2
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.b, ptr %i.c, align 8, !tbaa !15
  br label %cJSON_New_Item.exit.thread

cJSON_New_Item.exit.thread:                       ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_AddNumberToObject(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1, double noundef %2) local_unnamed_addr #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !85 ; 19 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateNumber.exit.thread, label %cJSON_CreateNumber.exit

cJSON_CreateNumber.exit:                          ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i32 8, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store double %2, ptr %i.c, align 8, !tbaa !20
  %i.d = fcmp ult double %2, f0x41DFFFFFFFC00000
  %.inv.i = fcmp ole double %2, f0xC1E0000000000000
  %spec.select14.i = select i1 %.inv.i, double f0xC1E0000000000000, double %2
  %spec.select.i = fptosi double %spec.select14.i to i32
  %.sink.i = select i1 %i.d, i32 %spec.select.i, i32 2147483647
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %.sink.i, ptr %i.e, align 8, !tbaa !30
  %i.f = icmp eq ptr %0, null
  %i.g = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.f, %i.g
  %i.h = icmp eq ptr %0, %i.a
  %or.cond34.i = or i1 %or.cond.i, %i.h
  br i1 %or.cond34.i, label %cJSON_CreateNumber.exit.thread, label %bb.b

bb.b:                                             ; preds = %cJSON_CreateNumber.exit
  %i.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.j = add i64 %i.i, 1                          ; 2 uses
  %i.k = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.l = tail call ptr %i.k(i64 noundef %i.j) #30, !inline_history !78 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %cJSON_CreateNumber.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %i.j, i1 false)
  %i.n = load i32, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.o = and i32 %i.n, -513
  %i.p = and i32 %i.n, 512
  %.not32.i = icmp eq i32 %i.p, 0
  br i1 %.not32.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29   ; 2 uses
  %.not33.i = icmp eq ptr %i.r, null
  br i1 %.not33.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !25
  tail call void %i.s(ptr noundef nonnull %i.r) #30, !inline_history !79
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.l, ptr %i.t, align 8, !tbaa !29
  store i32 %i.o, ptr %i.b, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !28   ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.a, ptr %i.u, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.a, ptr %i.x, align 8, !tbaa !56
  store ptr null, ptr %i.a, align 8, !tbaa !27
  br label %add_item_to_object.exit

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !56   ; 3 uses
  %.not.i.i7 = icmp eq ptr %i.z, null
  br i1 %.not.i.i7, label %add_item_to_object.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.a, ptr %i.z, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !56
  store ptr %i.a, ptr %i.y, align 8, !tbaa !56
  br label %add_item_to_object.exit

cJSON_CreateNumber.exit.thread:                   ; preds = %bb.a, %cJSON_CreateNumber.exit, %bb.b
  tail call void @cJSON_Delete(ptr noundef %i.a)
  br label %add_item_to_object.exit

add_item_to_object.exit:                          ; preds = %bb.i, %bb.h, %bb.g, %cJSON_CreateNumber.exit.thread
  %.0 = phi ptr [ null, %cJSON_CreateNumber.exit.thread ], [ %i.a, %bb.g ], [ %i.a, %bb.h ], [ %i.a, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_CreateNumber(double noundef %0) local_unnamed_addr #8 {
bb.a:
  %global_hooks.val = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.a = tail call ptr %global_hooks.val(i64 noundef 64) #30, !inline_history !38 ; 6 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %cJSON_New_Item.exit.thread, label %cJSON_New_Item.exit.thread.sink.split

cJSON_New_Item.exit.thread.sink.split:            ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 8, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store double %0, ptr %i.c, align 8, !tbaa !20
  %i.d = fcmp ult double %0, f0x41DFFFFFFFC00000
  %.inv = fcmp ole double %0, f0xC1E0000000000000
  %spec.select14 = select i1 %.inv, double f0xC1E0000000000000, double %0
  %spec.select = fptosi double %spec.select14 to i32
  %.sink = select i1 %i.d, i32 %spec.select, i32 2147483647
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %.sink, ptr %i.e, align 8, !tbaa !30
  br label %cJSON_New_Item.exit.thread

cJSON_New_Item.exit.thread:                       ; preds = %cJSON_New_Item.exit.thread.sink.split, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_AddStringToObject(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !86 ; 7 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateString.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 16, ptr %i.b, align 8, !tbaa !15
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #31
  %i.e = add i64 %i.d, 1                          ; 2 uses
  %i.f = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.g = tail call ptr %i.f(i64 noundef %i.e) #30, !inline_history !87 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %cJSON_strdup.exit.i

cJSON_strdup.exit.i:                              ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull readonly align 1 %2, i64 %i.e, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.g, ptr %i.i, align 8, !tbaa !19
  br label %cJSON_CreateString.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.j, align 8, !tbaa !19
  tail call void @cJSON_Delete(ptr noundef nonnull %i.a)
  br label %cJSON_CreateString.exit

cJSON_CreateString.exit:                          ; preds = %bb.a, %cJSON_strdup.exit.i, %bb.d
  %.0.i = phi ptr [ null, %bb.d ], [ %i.a, %cJSON_strdup.exit.i ], [ null, %bb.a ] ; 16 uses
  %i.k = icmp eq ptr %0, null
  %i.l = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.k, %i.l
  %i.m = icmp eq ptr %.0.i, null
  %or.cond3.i = or i1 %or.cond.i, %i.m
  %i.n = icmp eq ptr %0, %.0.i
  %or.cond34.i = or i1 %i.n, %or.cond3.i
  br i1 %or.cond34.i, label %add_item_to_object.exit, label %bb.e

bb.e:                                             ; preds = %cJSON_CreateString.exit
  %i.o = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.p = add i64 %i.o, 1                          ; 2 uses
  %i.q = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.r = tail call ptr %i.q(i64 noundef %i.p) #30, !inline_history !78 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %add_item_to_object.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %1, i64 %i.p, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !15   ; 2 uses
  %i.v = and i32 %i.u, -513
  %i.w = and i32 %i.u, 512
  %.not32.i = icmp eq i32 %i.w, 0
  br i1 %.not32.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29   ; 2 uses
  %.not33.i = icmp eq ptr %i.y, null
  br i1 %.not33.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !25
  tail call void %i.z(ptr noundef nonnull %i.y) #30, !inline_history !79
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  store ptr %i.r, ptr %i.aa, align 8, !tbaa !29
  store i32 %i.v, ptr %i.t, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !28 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %.0.i, ptr %i.ab, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %.0.i, ptr %i.ae, align 8, !tbaa !56
  store ptr null, ptr %.0.i, align 8, !tbaa !27
  br label %add_item_to_object.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !56 ; 3 uses
  %.not.i.i8 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i8, label %add_item_to_object.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %.0.i, ptr %i.ag, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !56
  store ptr %.0.i, ptr %i.af, align 8, !tbaa !56
  br label %add_item_to_object.exit.thread

add_item_to_object.exit:                          ; preds = %bb.e, %cJSON_CreateString.exit
  tail call void @cJSON_Delete(ptr noundef %.0.i)
  br label %add_item_to_object.exit.thread

add_item_to_object.exit.thread:                   ; preds = %bb.k, %bb.j, %bb.l, %add_item_to_object.exit
  %.0 = phi ptr [ null, %add_item_to_object.exit ], [ %.0.i, %bb.l ], [ %.0.i, %bb.j ], [ %.0.i, %bb.k ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_CreateString(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %global_hooks.val = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.a = tail call ptr %global_hooks.val(i64 noundef 64) #30, !inline_history !38 ; 7 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %cJSON_New_Item.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 16, ptr %i.b, align 8, !tbaa !15
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #31
  %i.e = add i64 %i.d, 1                          ; 2 uses
  %i.f = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.g = tail call ptr %i.f(i64 noundef %i.e) #30, !inline_history !31 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %cJSON_strdup.exit

cJSON_strdup.exit:                                ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull readonly align 1 %0, i64 %i.e, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.g, ptr %i.i, align 8, !tbaa !19
  br label %cJSON_New_Item.exit.thread

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.j, align 8, !tbaa !19
  tail call void @cJSON_Delete(ptr noundef nonnull %i.a)
  br label %cJSON_New_Item.exit.thread

cJSON_New_Item.exit.thread:                       ; preds = %bb.a, %cJSON_strdup.exit, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %i.a, %cJSON_strdup.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_AddRawToObject(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !88 ; 7 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateRaw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 128, ptr %i.b, align 8, !tbaa !15
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #31
  %i.e = add i64 %i.d, 1                          ; 2 uses
end_hunk_3
begin_hunk_4_@cJSON_AddRawToObject:bb.a
  br label %cJSON_CreateRaw.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.j, align 8, !tbaa !19
  tail call void @cJSON_Delete(ptr noundef nonnull %i.a)
  br label %cJSON_CreateRaw.exit

cJSON_CreateRaw.exit:                             ; preds = %bb.a, %cJSON_strdup.exit.i, %bb.d
  %.0.i = phi ptr [ null, %bb.d ], [ %i.a, %cJSON_strdup.exit.i ], [ null, %bb.a ] ; 16 uses
  %i.k = icmp eq ptr %0, null
  %i.l = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.k, %i.l
  %i.m = icmp eq ptr %.0.i, null
  %or.cond3.i = or i1 %or.cond.i, %i.m
  %i.n = icmp eq ptr %0, %.0.i
  %or.cond34.i = or i1 %i.n, %or.cond3.i
  br i1 %or.cond34.i, label %add_item_to_object.exit, label %bb.e

bb.e:                                             ; preds = %cJSON_CreateRaw.exit
  %i.o = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.p = add i64 %i.o, 1                          ; 2 uses
  %i.q = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.r = tail call ptr %i.q(i64 noundef %i.p) #30, !inline_history !78 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %add_item_to_object.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %1, i64 %i.p, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !15   ; 2 uses
  %i.v = and i32 %i.u, -513
  %i.w = and i32 %i.u, 512
  %.not32.i = icmp eq i32 %i.w, 0
  br i1 %.not32.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29   ; 2 uses
  %.not33.i = icmp eq ptr %i.y, null
  br i1 %.not33.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !25
  tail call void %i.z(ptr noundef nonnull %i.y) #30, !inline_history !79
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  store ptr %i.r, ptr %i.aa, align 8, !tbaa !29
  store i32 %i.v, ptr %i.t, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !28 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %.0.i, ptr %i.ab, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %.0.i, ptr %i.ae, align 8, !tbaa !56
  store ptr null, ptr %.0.i, align 8, !tbaa !27
  br label %add_item_to_object.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !56 ; 3 uses
  %.not.i.i8 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i8, label %add_item_to_object.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %.0.i, ptr %i.ag, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !56
  store ptr %.0.i, ptr %i.af, align 8, !tbaa !56
  br label %add_item_to_object.exit.thread

add_item_to_object.exit:                          ; preds = %bb.e, %cJSON_CreateRaw.exit
  tail call void @cJSON_Delete(ptr noundef %.0.i)
  br label %add_item_to_object.exit.thread

add_item_to_object.exit.thread:                   ; preds = %bb.k, %bb.j, %bb.l, %add_item_to_object.exit
  %.0 = phi ptr [ null, %add_item_to_object.exit ], [ %.0.i, %bb.l ], [ %.0.i, %bb.j ], [ %.0.i, %bb.k ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_CreateRaw(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %global_hooks.val = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.a = tail call ptr %global_hooks.val(i64 noundef 64) #30, !inline_history !38 ; 7 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %cJSON_New_Item.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 128, ptr %i.b, align 8, !tbaa !15
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #31
  %i.e = add i64 %i.d, 1                          ; 2 uses
  %i.f = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.g = tail call ptr %i.f(i64 noundef %i.e) #30, !inline_history !31 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %cJSON_strdup.exit

cJSON_strdup.exit:                                ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull readonly align 1 %0, i64 %i.e, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.g, ptr %i.i, align 8, !tbaa !19
  br label %cJSON_New_Item.exit.thread

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.j, align 8, !tbaa !19
  tail call void @cJSON_Delete(ptr noundef nonnull %i.a)
  br label %cJSON_New_Item.exit.thread

cJSON_New_Item.exit.thread:                       ; preds = %bb.a, %cJSON_strdup.exit, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %i.a, %cJSON_strdup.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_AddObjectToObject(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !90 ; 17 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateObject.exit.thread, label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i32 64, ptr %i.b, align 8, !tbaa !15
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.c, %i.d
  %i.e = icmp eq ptr %0, %i.a
  %or.cond34.i = or i1 %or.cond.i, %i.e
  br i1 %or.cond34.i, label %cJSON_CreateObject.exit.thread, label %bb.b

bb.b:                                             ; preds = %cJSON_CreateObject.exit
  %i.f = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.g = add i64 %i.f, 1                          ; 2 uses
  %i.h = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.i = tail call ptr %i.h(i64 noundef %i.g) #30, !inline_history !78 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %cJSON_CreateObject.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %1, i64 %i.g, i1 false)
  %i.k = load i32, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.l = and i32 %i.k, -513
  %i.m = and i32 %i.k, 512
  %.not32.i = icmp eq i32 %i.m, 0
  br i1 %.not32.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 2 uses
  %.not33.i = icmp eq ptr %i.o, null
  br i1 %.not33.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !25
  tail call void %i.p(ptr noundef nonnull %i.o) #30, !inline_history !79
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %i.q, align 8, !tbaa !29
  store i32 %i.l, ptr %i.b, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.a, ptr %i.r, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.a, ptr %i.u, align 8, !tbaa !56
  store ptr null, ptr %i.a, align 8, !tbaa !27
  br label %add_item_to_object.exit

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !56   ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.w, null
  br i1 %.not.i.i6, label %add_item_to_object.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.a, ptr %i.w, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !56
  store ptr %i.a, ptr %i.v, align 8, !tbaa !56
  br label %add_item_to_object.exit

cJSON_CreateObject.exit.thread:                   ; preds = %bb.a, %cJSON_CreateObject.exit, %bb.b
  tail call void @cJSON_Delete(ptr noundef %i.a)
  br label %add_item_to_object.exit

add_item_to_object.exit:                          ; preds = %bb.i, %bb.h, %bb.g, %cJSON_CreateObject.exit.thread
  %.0 = phi ptr [ null, %cJSON_CreateObject.exit.thread ], [ %i.a, %bb.g ], [ %i.a, %bb.h ], [ %i.a, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_CreateObject() local_unnamed_addr #8 {
bb.a:
  %global_hooks.val = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.a = tail call ptr %global_hooks.val(i64 noundef 64) #30, !inline_history !38 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %cJSON_New_Item.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !15
  br label %cJSON_New_Item.exit.thread

cJSON_New_Item.exit.thread:                       ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_AddArrayToObject(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !91 ; 17 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateArray.exit.thread, label %cJSON_CreateArray.exit

cJSON_CreateArray.exit:                           ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i32 32, ptr %i.b, align 8, !tbaa !15
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.c, %i.d
  %i.e = icmp eq ptr %0, %i.a
  %or.cond34.i = or i1 %or.cond.i, %i.e
  br i1 %or.cond34.i, label %cJSON_CreateArray.exit.thread, label %bb.b

bb.b:                                             ; preds = %cJSON_CreateArray.exit
  %i.f = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.g = add i64 %i.f, 1                          ; 2 uses
  %i.h = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.i = tail call ptr %i.h(i64 noundef %i.g) #30, !inline_history !78 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %cJSON_CreateArray.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %1, i64 %i.g, i1 false)
  %i.k = load i32, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.l = and i32 %i.k, -513
  %i.m = and i32 %i.k, 512
  %.not32.i = icmp eq i32 %i.m, 0
  br i1 %.not32.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 2 uses
  %.not33.i = icmp eq ptr %i.o, null
  br i1 %.not33.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !25
  tail call void %i.p(ptr noundef nonnull %i.o) #30, !inline_history !79
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %i.q, align 8, !tbaa !29
  store i32 %i.l, ptr %i.b, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.a, ptr %i.r, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.a, ptr %i.u, align 8, !tbaa !56
  store ptr null, ptr %i.a, align 8, !tbaa !27
  br label %add_item_to_object.exit

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !56   ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.w, null
  br i1 %.not.i.i6, label %add_item_to_object.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.a, ptr %i.w, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !56
  store ptr %i.a, ptr %i.v, align 8, !tbaa !56
  br label %add_item_to_object.exit

cJSON_CreateArray.exit.thread:                    ; preds = %bb.a, %cJSON_CreateArray.exit, %bb.b
  tail call void @cJSON_Delete(ptr noundef %i.a)
  br label %add_item_to_object.exit

add_item_to_object.exit:                          ; preds = %bb.i, %bb.h, %bb.g, %cJSON_CreateArray.exit.thread
  %.0 = phi ptr [ null, %cJSON_CreateArray.exit.thread ], [ %i.a, %bb.g ], [ %i.a, %bb.h ], [ %i.a, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_CreateArray() local_unnamed_addr #8 {
bb.a:
  %global_hooks.val = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.a = tail call ptr %global_hooks.val(i64 noundef 64) #30, !inline_history !38 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %cJSON_New_Item.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 32, ptr %i.b, align 8, !tbaa !15
  br label %cJSON_New_Item.exit.thread

cJSON_New_Item.exit.thread:                       ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @cJSON_DetachItemViaPointer(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address, ret: address, provenance) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %.not = icmp eq ptr %1, %i.d
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56   ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.g, label %.thread.thread

.thread:                                          ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !27     ; 3 uses
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %bb.d, label %.thread30

.thread.thread:                                   ; preds = %bb.c
  %i.i = load ptr, ptr %1, align 8, !tbaa !27     ; 3 uses
  store ptr %i.i, ptr %i.f, align 8, !tbaa !27
  %.not2932 = icmp eq ptr %i.i, null
  br i1 %.not2932, label %bb.e, label %.thread31

.thread30:                                        ; preds = %.thread
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !56
  br label %bb.d

.thread31:                                        ; preds = %.thread.thread
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.f, ptr %i.m, align 8, !tbaa !56
  br label %bb.f

bb.d:                                             ; preds = %.thread30, %.thread
  store ptr %i.h, ptr %i.c, align 8, !tbaa !28
  br label %bb.f

bb.e:                                             ; preds = %.thread.thread
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.f, ptr %i.n, align 8, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %.thread31, %bb.e, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.c, %bb.f
  %.0 = phi ptr [ %1, %bb.f ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @cJSON_DetachItemFromArray(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %cJSON_DetachItemViaPointer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.07.i = phi i64 [ %i.c, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %.0.in.i = phi ptr [ %i.d, %bb.b ], [ %.0.i, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !74 ; 10 uses
  %i.e = icmp ne ptr %.0.i, null
  %i.f = icmp ne i64 %.07.i, 0
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  %i.h = add nsw i64 %.07.i, -1
  br i1 %i.g, label %bb.c, label %get_array_item.exit

get_array_item.exit:                              ; preds = %bb.c
  %i.i = icmp eq ptr %.0.i, null
  br i1 %i.i, label %cJSON_DetachItemViaPointer.exit, label %bb.d

bb.d:                                             ; preds = %get_array_item.exit
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %i.j
  br i1 %.not.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56   ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %cJSON_DetachItemViaPointer.exit, label %.thread.thread.i

.thread.i:                                        ; preds = %bb.d
  %i.n = load ptr, ptr %.0.i, align 8, !tbaa !27  ; 3 uses
  %.not29.i = icmp eq ptr %i.n, null
  br i1 %.not29.i, label %bb.f, label %.thread30.i

.thread.thread.i:                                 ; preds = %bb.e
  %i.o = load ptr, ptr %.0.i, align 8, !tbaa !27  ; 3 uses
  store ptr %i.o, ptr %i.l, align 8, !tbaa !27
  %.not2932.i = icmp eq ptr %i.o, null
  br i1 %.not2932.i, label %bb.g, label %.thread31.i

.thread30.i:                                      ; preds = %.thread.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !56
  br label %bb.f

.thread31.i:                                      ; preds = %.thread.thread.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.l, ptr %i.s, align 8, !tbaa !56
  br label %bb.h

bb.f:                                             ; preds = %.thread30.i, %.thread.i
  store ptr %i.n, ptr %i.d, align 8, !tbaa !28
  br label %bb.h

bb.g:                                             ; preds = %.thread.thread.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.l, ptr %i.t, align 8, !tbaa !56
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread31.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i, i8 0, i64 16, i1 false)
  br label %cJSON_DetachItemViaPointer.exit

cJSON_DetachItemViaPointer.exit:                  ; preds = %bb.h, %bb.e, %get_array_item.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.0.i, %bb.h ], [ null, %bb.e ], [ null, %get_array_item.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @cJSON_DeleteItemFromArray(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = icmp eq ptr %0, null
  %or.cond.i = or i1 %i.b, %i.a
  br i1 %or.cond.i, label %cJSON_DetachItemFromArray.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.07.i.i = phi i64 [ %i.c, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %.0.in.i.i = phi ptr [ %i.d, %bb.b ], [ %.0.i.i, %bb.c ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !74 ; 10 uses
  %i.e = icmp ne ptr %.0.i.i, null
  %i.f = icmp ne i64 %.07.i.i, 0
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  %i.h = add nsw i64 %.07.i.i, -1
  br i1 %i.g, label %bb.c, label %get_array_item.exit.i

get_array_item.exit.i:                            ; preds = %bb.c
  %i.i = icmp eq ptr %.0.i.i, null
  br i1 %i.i, label %cJSON_DetachItemFromArray.exit, label %bb.d

bb.d:                                             ; preds = %get_array_item.exit.i
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, %i.j
  br i1 %.not.i.i, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56   ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %cJSON_DetachItemFromArray.exit, label %.thread.thread.i.i

.thread.i.i:                                      ; preds = %bb.d
end_hunk_4
begin_hunk_5_@cJSON_ReplaceItemViaPointer:bb.a
bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56
  %i.o = icmp eq ptr %i.n, %1
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %2, ptr %i.h, align 8, !tbaa !56
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr %2, ptr %i.b, align 8, !tbaa !28
  br label %bb.n

bb.j:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !56   ; 2 uses
  %.not39 = icmp eq ptr %i.p, null
  br i1 %.not39, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %2, ptr %i.p, align 8, !tbaa !27
  %.pre = load ptr, ptr %2, align 8, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.q = phi ptr [ %.pre, %bb.k ], [ %i.j, %bb.j ]
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.s, align 8, !tbaa !56
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  tail call void @cJSON_Delete(ptr noundef nonnull %1)
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.n
  %.0 = phi i32 [ 1, %bb.n ], [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @cJSON_ReplaceItemInArray(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %cJSON_ReplaceItemViaPointer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.07.i = phi i64 [ %i.c, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %.0.in.i = phi ptr [ %i.d, %bb.b ], [ %.0.i, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !74 ; 10 uses
  %i.e = icmp ne ptr %.0.i, null
  %i.f = icmp ne i64 %.07.i, 0
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  %i.h = add nsw i64 %.07.i, -1
  br i1 %i.g, label %bb.c, label %get_array_item.exit

get_array_item.exit:                              ; preds = %bb.c
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !28   ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = icmp eq ptr %2, null
  %or.cond.i = or i1 %i.k, %i.j
  %i.l = icmp eq ptr %.0.i, null
  %or.cond3.i = or i1 %i.l, %or.cond.i
  br i1 %or.cond3.i, label %cJSON_ReplaceItemViaPointer.exit, label %bb.d

bb.d:                                             ; preds = %get_array_item.exit
  %i.m = icmp eq ptr %2, %.0.i
  br i1 %i.m, label %cJSON_ReplaceItemViaPointer.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = load <2 x ptr>, ptr %.0.i, align 8, !tbaa !74
  %i.p = load ptr, ptr %.0.i, align 8, !tbaa !27  ; 3 uses
  store <2 x ptr> %i.o, ptr %2, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !56
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = icmp eq ptr %i.i, %.0.i
  br i1 %i.r, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !56
  %i.u = icmp eq ptr %i.t, %.0.i
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %2, ptr %i.n, align 8, !tbaa !56
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %2, ptr %i.d, align 8, !tbaa !28
  br label %bb.o

bb.k:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !56   ; 2 uses
  %.not39.i = icmp eq ptr %i.v, null
  br i1 %.not39.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %2, ptr %i.v, align 8, !tbaa !27
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = phi ptr [ %.pre.i, %bb.l ], [ %i.p, %bb.k ]
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %i.y, align 8, !tbaa !56
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i, i8 0, i64 16, i1 false)
  tail call void @cJSON_Delete(ptr noundef nonnull %.0.i)
  br label %cJSON_ReplaceItemViaPointer.exit

cJSON_ReplaceItemViaPointer.exit:                 ; preds = %bb.o, %bb.d, %get_array_item.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.o ], [ 1, %bb.d ], [ 0, %get_array_item.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @cJSON_ReplaceItemInObject(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call fastcc i32 @replace_item_in_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @replace_item_in_object(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %cJSON_ReplaceItemViaPointer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !15
  %i.e = and i32 %i.d, 512
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %.not18 = icmp eq ptr %i.g, null
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !25
  tail call void %i.h(ptr noundef nonnull %i.g) #30, !inline_history !32
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.j = add i64 %i.i, 1                          ; 2 uses
  %i.k = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.l = tail call ptr %i.k(i64 noundef %i.j) #30, !inline_history !31 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %cJSON_strdup.exit.thread, label %bb.f

cJSON_strdup.exit.thread:                         ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.n, align 8, !tbaa !29
  br label %cJSON_ReplaceItemViaPointer.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %i.j, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.l, ptr %i.o, align 8, !tbaa !29
  %i.p = load i32, ptr %i.c, align 8, !tbaa !15
  %i.q = and i32 %i.p, -513
  store i32 %i.q, ptr %i.c, align 8, !tbaa !15
  %i.r = icmp eq ptr %0, null
  br i1 %i.r, label %cJSON_ReplaceItemViaPointer.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28   ; 7 uses
  %.not.i = icmp eq i32 %3, 0
  %.not2349.i = icmp eq ptr %i.t, null            ; 3 uses
  br i1 %.not.i, label %.preheader.i, label %.preheader41.i

.preheader41.i:                                   ; preds = %bb.g
  br i1 %.not2349.i, label %cJSON_ReplaceItemViaPointer.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.g
  br i1 %.not2349.i, label %cJSON_ReplaceItemViaPointer.exit, label %.lr.ph51.i

.lr.ph.i:                                         ; preds = %.preheader41.i, %bb.i
  %.048.i = phi ptr [ %i.x, %bb.i ], [ %i.t, %.preheader41.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.048.i, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29   ; 2 uses
  %.not26.i = icmp eq ptr %i.v, null
  br i1 %.not26.i, label %cJSON_ReplaceItemViaPointer.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.w = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.v) #31
  %.not27.i = icmp eq i32 %i.w, 0
  br i1 %.not27.i, label %get_object_item.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %.048.i, align 8, !tbaa !27 ; 2 uses
  %.not25.i = icmp eq ptr %i.x, null
  br i1 %.not25.i, label %cJSON_ReplaceItemViaPointer.exit, label %.lr.ph.i

.lr.ph51.i:                                       ; preds = %.preheader.i, %case_insensitive_strcmp.exit.thread30.i
  %.150.i = phi ptr [ %i.ba, %case_insensitive_strcmp.exit.thread30.i ], [ %i.t, %.preheader.i ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.150.i, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29   ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %case_insensitive_strcmp.exit.thread30.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph51.i
  %i.ab = icmp eq ptr %1, %i.z
  br i1 %i.ab, label %get_object_item.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.j
  %i.ac = tail call ptr @__ctype_tolower_loc() #32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !75 ; 4 uses
  %i.ae = load i8, ptr %1, align 1, !tbaa !40     ; 2 uses
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !77
  %i.ai = load i8, ptr %i.z, align 1, !tbaa !40
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !77
  %i.am = icmp eq i32 %i.ah, %i.al
  br i1 %i.am, label %.lr.ph.i.i, label %case_insensitive_strcmp.exit.thread30.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.k
  %i.an = phi i8 [ %i.ar, %bb.k ], [ %i.ae, %.preheader.i.i ]
  %.02030.i.i = phi ptr [ %i.ap, %bb.k ], [ %1, %.preheader.i.i ]
  %.02129.i.i = phi ptr [ %i.aq, %bb.k ], [ %i.z, %.preheader.i.i ]
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %get_object_item.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.02030.i.i, i64 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02129.i.i, i64 1 ; 2 uses
  %i.ar = load i8, ptr %i.ap, align 1, !tbaa !40  ; 2 uses
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !77
  %i.av = load i8, ptr %i.aq, align 1, !tbaa !40
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !77
  %i.az = icmp eq i32 %i.au, %i.ay
  br i1 %i.az, label %.lr.ph.i.i, label %case_insensitive_strcmp.exit.thread30.i

case_insensitive_strcmp.exit.thread30.i:          ; preds = %bb.k, %.preheader.i.i, %.lr.ph51.i
  %i.ba = load ptr, ptr %.150.i, align 8, !tbaa !27 ; 2 uses
  %.not23.i = icmp eq ptr %i.ba, null
  br i1 %.not23.i, label %cJSON_ReplaceItemViaPointer.exit, label %.lr.ph51.i

get_object_item.exit:                             ; preds = %bb.h, %bb.j, %.lr.ph.i.i
  %.019.i = phi ptr [ %.150.i, %.lr.ph.i.i ], [ %.150.i, %bb.j ], [ %.048.i, %bb.h ] ; 6 uses
  br i1 %.not2349.i, label %cJSON_ReplaceItemViaPointer.exit, label %bb.l

bb.l:                                             ; preds = %get_object_item.exit
  %i.bb = icmp eq ptr %2, %.019.i
  br i1 %i.bb, label %cJSON_ReplaceItemViaPointer.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bd = load <2 x ptr>, ptr %.019.i, align 8, !tbaa !74
  %i.be = load ptr, ptr %.019.i, align 8, !tbaa !27 ; 3 uses
  store <2 x ptr> %i.bd, ptr %2, align 8, !tbaa !74
  %.not.i20 = icmp eq ptr %i.be, null
  br i1 %.not.i20, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %2, ptr %i.bf, align 8, !tbaa !56
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bg = icmp eq ptr %i.t, %.019.i
  br i1 %i.bg, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !56
  %i.bj = icmp eq ptr %i.bi, %i.t
  br i1 %i.bj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %2, ptr %i.bc, align 8, !tbaa !56
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store ptr %2, ptr %i.s, align 8, !tbaa !28
  br label %bb.w

bb.s:                                             ; preds = %bb.o
  %i.bk = load ptr, ptr %i.bc, align 8, !tbaa !56 ; 2 uses
  %.not39.i = icmp eq ptr %i.bk, null
  br i1 %.not39.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %2, ptr %i.bk, align 8, !tbaa !27
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !27
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bl = phi ptr [ %.pre.i, %bb.t ], [ %i.be, %bb.s ]
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %2, ptr %i.bn, align 8, !tbaa !56
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.r
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.019.i, i8 0, i64 16, i1 false)
  tail call void @cJSON_Delete(ptr noundef nonnull %.019.i)
  br label %cJSON_ReplaceItemViaPointer.exit

cJSON_ReplaceItemViaPointer.exit:                 ; preds = %bb.i, %.lr.ph.i, %case_insensitive_strcmp.exit.thread30.i, %.preheader41.i, %.preheader.i, %bb.f, %bb.w, %bb.l, %get_object_item.exit, %cJSON_strdup.exit.thread, %bb.a
  %.0 = phi i32 [ 0, %cJSON_strdup.exit.thread ], [ 0, %bb.a ], [ 1, %bb.w ], [ 0, %.preheader41.i ], [ 0, %get_object_item.exit ], [ 1, %bb.l ], [ 0, %bb.f ], [ 0, %.preheader.i ], [ 0, %case_insensitive_strcmp.exit.thread30.i ], [ 0, %.lr.ph.i ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @cJSON_ReplaceItemInObjectCaseSensitive(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call fastcc i32 @replace_item_in_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_CreateStringReference(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %global_hooks.val = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.a = tail call ptr %global_hooks.val(i64 noundef 64) #30, !inline_history !38 ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %cJSON_New_Item.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 272, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %0, ptr %i.c, align 8, !tbaa !19
  br label %cJSON_New_Item.exit.thread

cJSON_New_Item.exit.thread:                       ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_CreateObjectReference(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %global_hooks.val = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.a = tail call ptr %global_hooks.val(i64 noundef 64) #30, !inline_history !38 ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %cJSON_New_Item.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 320, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.c, align 8, !tbaa !28
  br label %cJSON_New_Item.exit.thread

cJSON_New_Item.exit.thread:                       ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_CreateArrayReference(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %global_hooks.val = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.a = tail call ptr %global_hooks.val(i64 noundef 64) #30, !inline_history !38 ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %cJSON_New_Item.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 288, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.c, align 8, !tbaa !28
  br label %cJSON_New_Item.exit.thread

cJSON_New_Item.exit.thread:                       ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @cJSON_CreateIntArray(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %._crit_edge.split.us, label %bb.b

bb.b:                                             ; preds = %bb.a
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.c = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !91
  %.fr41 = freeze ptr %i.c                        ; 8 uses
  %.not.i.i = icmp eq ptr %.fr41, null
  br i1 %.not.i.i, label %._crit_edge.split.us, label %cJSON_CreateArray.exit

cJSON_CreateArray.exit:                           ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.fr41, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %.fr41, i64 24
  store i32 32, ptr %i.d, align 8, !tbaa !15
  %i.e = zext nneg i32 %1 to i64
  %.not59 = icmp eq i32 %1, 0
  br i1 %.not59, label %._crit_edge.thread, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %cJSON_CreateArray.exit
  %i.f = load i32, ptr %0, align 4, !tbaa !77     ; 2 uses
  %global_hooks.val.i32.peel = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.g = tail call ptr %global_hooks.val.i32.peel(i64 noundef 64) #30, !inline_history !85 ; 8 uses
  %.not.i.i33.peel = icmp eq ptr %i.g, null
  br i1 %.not.i.i33.peel, label %.split.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %.fr41, i64 16
  %i.i = sitofp i32 %i.f to double
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i8 0, i64 64, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 8, ptr %i.j, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store double %i.i, ptr %i.k, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 %i.f, ptr %i.l, align 8, !tbaa !30
  store ptr %i.g, ptr %i.h, align 8, !tbaa !28
  %exitcond.peel.not = icmp eq i32 %1, 1
  br i1 %exitcond.peel.not, label %._crit_edge.thread, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %bb.c, %bb.d
  %.038 = phi ptr [ %i.o, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %.02337 = phi i64 [ %i.u, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02337
  %i.n = load i32, ptr %i.m, align 4, !tbaa !77   ; 2 uses
  %global_hooks.val.i32 = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.o = tail call ptr %global_hooks.val.i32(i64 noundef 64) #30, !inline_history !85 ; 9 uses
  %.not.i.i33 = icmp eq ptr %i.o, null
  br i1 %.not.i.i33, label %.split.us, label %bb.d

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.preheader
  tail call void @cJSON_Delete(ptr noundef nonnull %.fr41)
  br label %._crit_edge.split.us

bb.d:                                             ; preds = %.lr.ph.split
  %i.p = sitofp i32 %i.n to double
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, i8 0, i64 64, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i32 8, ptr %i.q, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store double %i.p, ptr %i.r, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i32 %i.n, ptr %i.s, align 8, !tbaa !30
  store ptr %i.o, ptr %.038, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.038, ptr %i.t, align 8, !tbaa !56
  %i.u = add nuw nsw i64 %.02337, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.e
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph.split, !llvm.loop !92

._crit_edge.thread:                               ; preds = %bb.d, %cJSON_CreateArray.exit, %bb.c
  %.0.lcssa54 = phi ptr [ null, %cJSON_CreateArray.exit ], [ %i.g, %bb.c ], [ %i.o, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %.fr41, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28   ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %._crit_edge.split.us, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.0.lcssa54, ptr %i.x, align 8, !tbaa !56
  br label %._crit_edge.split.us

._crit_edge.split.us:                             ; preds = %bb.b, %._crit_edge.thread, %bb.e, %bb.a, %.split.us
  %.024 = phi ptr [ null, %bb.a ], [ null, %.split.us ], [ %.fr41, %bb.e ], [ %.fr41, %._crit_edge.thread ], [ null, %bb.b ]
  ret ptr %.024
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @cJSON_CreateFloatArray(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %._crit_edge.split.us, label %bb.b

bb.b:                                             ; preds = %bb.a
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.c = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !91
  %.fr40 = freeze ptr %i.c                        ; 8 uses
  %.not.i.i = icmp eq ptr %.fr40, null
  br i1 %.not.i.i, label %._crit_edge.split.us, label %cJSON_CreateArray.exit

cJSON_CreateArray.exit:                           ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.fr40, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %.fr40, i64 24
  store i32 32, ptr %i.d, align 8, !tbaa !15
  %i.e = zext nneg i32 %1 to i64
  %.not58 = icmp eq i32 %1, 0
  br i1 %.not58, label %._crit_edge.thread, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %cJSON_CreateArray.exit
  %i.f = load float, ptr %0, align 4, !tbaa !94
  %global_hooks.val.i32.peel = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.g = tail call ptr %global_hooks.val.i32.peel(i64 noundef 64) #30, !inline_history !85 ; 8 uses
  %.not.i.i33.peel = icmp eq ptr %i.g, null
  br i1 %.not.i.i33.peel, label %.split.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %.fr40, i64 16
  %i.i = fpext float %i.f to double               ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i8 0, i64 64, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 8, ptr %i.j, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store double %i.i, ptr %i.k, align 8, !tbaa !20
  %i.l = fcmp ult double %i.i, f0x41DFFFFFFFC00000
end_hunk_5
begin_hunk_6_@cJSON_IsTrue
define dso_local range(i32 0, 2) i32 @cJSON_IsTrue(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15
  %i.d = and i32 %i.c, 255
  %i.e = icmp eq i32 %i.d, 2
  %i.f = zext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @cJSON_IsBool(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15
  %i.d = and i32 %i.c, 3
  %i.e = icmp ne i32 %i.d, 0
  %i.f = zext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @cJSON_IsNull(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15
  %i.d = and i32 %i.c, 255
  %i.e = icmp eq i32 %i.d, 4
  %i.f = zext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @cJSON_IsArray(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15
  %i.d = and i32 %i.c, 255
  %i.e = icmp eq i32 %i.d, 32
  %i.f = zext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @cJSON_IsObject(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15
  %i.d = and i32 %i.c, 255
  %i.e = icmp eq i32 %i.d, 64
  %i.f = zext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @cJSON_IsRaw(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15
  %i.d = and i32 %i.c, 255
  %i.e = icmp eq i32 %i.d, 128
  %i.f = zext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @cJSON_Compare(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %get_object_item.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !15
  %i.e = and i32 %i.d, 255                        ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !15
  %i.h = and i32 %i.g, 255
  %.not = icmp eq i32 %i.e, %i.h
  %i.i = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.e)
  %i.j = icmp eq i32 %i.i, 1
  %or.cond70 = select i1 %.not, i1 %i.j, i1 false
  br i1 %or.cond70, label %.split, label %get_object_item.exit.thread

.split:                                           ; preds = %bb.b
  %i.k = icmp eq ptr %0, %1
  br i1 %i.k, label %get_object_item.exit.thread, label %.split2

.split2:                                          ; preds = %.split
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.e, i1 true)
  switch i32 %i.l, label %default.unreachable169 [
    i32 0, label %get_object_item.exit.thread
    i32 1, label %get_object_item.exit.thread
    i32 2, label %get_object_item.exit.thread
    i32 3, label %bb.c
    i32 4, label %bb.d
    i32 7, label %bb.d
    i32 5, label %bb.g
    i32 6, label %bb.k
  ]

bb.c:                                             ; preds = %.split2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load double, ptr %i.m, align 8, !tbaa !20 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load double, ptr %i.o, align 8, !tbaa !20 ; 2 uses
  %i.q = tail call double @llvm.fabs.f64(double %i.n) ; 2 uses
  %i.r = tail call double @llvm.fabs.f64(double %i.p) ; 2 uses
  %i.s = fcmp ogt double %i.q, %i.r
  %..i = select i1 %i.s, double %i.q, double %i.r
  %i.t = fsub double %i.n, %i.p
  %i.u = tail call double @llvm.fabs.f64(double %i.t)
  %i.v = fmul double %..i, f0x3CB0000000000000
  %i.w = fcmp ole double %i.u, %i.v
  br label %get_object_item.exit.thread

bb.d:                                             ; preds = %.split2, %.split2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19   ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %get_object_item.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %get_object_item.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) %i.ab) #31
  %i.ae = icmp eq i32 %i.ad, 0
  br label %get_object_item.exit.thread

bb.g:                                             ; preds = %.split2
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.051.in = phi ptr [ %i.af, %bb.g ], [ %.051, %bb.i ]
  %.050.in = phi ptr [ %i.ag, %bb.g ], [ %.050, %bb.i ]
  %.050 = load ptr, ptr %.050.in, align 8, !tbaa !74 ; 4 uses
  %.051 = load ptr, ptr %.051.in, align 8, !tbaa !74 ; 4 uses
  %i.ah = icmp ne ptr %.051, null
  %i.ai = icmp ne ptr %.050, null
  %i.aj = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = tail call i32 @cJSON_Compare(ptr noundef nonnull %.051, ptr noundef nonnull %.050, i32 noundef %2)
  %.not65 = icmp eq i32 %i.ak, 0
  br i1 %.not65, label %get_object_item.exit.thread, label %bb.h

bb.j:                                             ; preds = %bb.h
  %.not64 = icmp eq ptr %.051, %.050
  br label %get_object_item.exit.thread

bb.k:                                             ; preds = %.split2
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.not.i = icmp eq i32 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.split121.us, label %.split121

.split121.us:                                     ; preds = %bb.k, %get_object_item.exit.us
  %.049.in.us = phi ptr [ %.049.us, %get_object_item.exit.us ], [ %i.al, %bb.k ]
  %.049.us = load ptr, ptr %.049.in.us, align 8, !tbaa !74 ; 4 uses
  %.not60.us = icmp eq ptr %.049.us, null
  br i1 %.not60.us, label %.split123.us, label %bb.l

bb.l:                                             ; preds = %.split121.us
  %i.an = getelementptr inbounds nuw i8, ptr %.049.us, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !29 ; 4 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %get_object_item.exit.thread, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %bb.l
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !28 ; 2 uses
  %.not2349.i.us = icmp eq ptr %i.aq, null
  br i1 %.not2349.i.us, label %get_object_item.exit.thread, label %.lr.ph51.i.us

.lr.ph51.i.us:                                    ; preds = %.preheader.i.us, %case_insensitive_strcmp.exit.thread30.i.us
  %.150.i.us = phi ptr [ %i.bt, %case_insensitive_strcmp.exit.thread30.i.us ], [ %i.aq, %.preheader.i.us ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.150.i.us, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !29 ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %case_insensitive_strcmp.exit.thread30.i.us, label %bb.m

bb.m:                                             ; preds = %.lr.ph51.i.us
  %i.au = icmp eq ptr %i.ao, %i.as
  br i1 %i.au, label %get_object_item.exit.us, label %.preheader.i.i.us

.preheader.i.i.us:                                ; preds = %bb.m
  %i.av = tail call ptr @__ctype_tolower_loc() #32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !75 ; 4 uses
  %i.ax = load i8, ptr %i.ao, align 1, !tbaa !40  ; 2 uses
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !77
  %i.bb = load i8, ptr %i.as, align 1, !tbaa !40
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !77
  %i.bf = icmp eq i32 %i.ba, %i.be
  br i1 %i.bf, label %.lr.ph.i.i.us, label %case_insensitive_strcmp.exit.thread30.i.us

.lr.ph.i.i.us:                                    ; preds = %.preheader.i.i.us, %bb.n
  %i.bg = phi i8 [ %i.bk, %bb.n ], [ %i.ax, %.preheader.i.i.us ]
  %.02030.i.i.us = phi ptr [ %i.bi, %bb.n ], [ %i.ao, %.preheader.i.i.us ]
  %.02129.i.i.us = phi ptr [ %i.bj, %bb.n ], [ %i.as, %.preheader.i.i.us ]
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %get_object_item.exit.us, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.us
  %i.bi = getelementptr inbounds nuw i8, ptr %.02030.i.i.us, i64 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02129.i.i.us, i64 1 ; 2 uses
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !40  ; 2 uses
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !77
  %i.bo = load i8, ptr %i.bj, align 1, !tbaa !40
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !77
  %i.bs = icmp eq i32 %i.bn, %i.br
  br i1 %i.bs, label %.lr.ph.i.i.us, label %case_insensitive_strcmp.exit.thread30.i.us

case_insensitive_strcmp.exit.thread30.i.us:       ; preds = %bb.n, %.preheader.i.i.us, %.lr.ph51.i.us
  %i.bt = load ptr, ptr %.150.i.us, align 8, !tbaa !27 ; 2 uses
  %.not23.i.us = icmp eq ptr %i.bt, null
  br i1 %.not23.i.us, label %get_object_item.exit.thread, label %.lr.ph51.i.us

get_object_item.exit.us:                          ; preds = %bb.m, %.lr.ph.i.i.us
  %i.bu = tail call i32 @cJSON_Compare(ptr noundef nonnull %.049.us, ptr noundef nonnull %.150.i.us, i32 noundef 0)
  %.not63.us = icmp eq i32 %i.bu, 0
  br i1 %.not63.us, label %get_object_item.exit.thread, label %.split121.us

.split121:                                        ; preds = %bb.k, %get_object_item.exit.loopexit111
  %.049.in = phi ptr [ %.049, %get_object_item.exit.loopexit111 ], [ %i.al, %bb.k ]
  %.049 = load ptr, ptr %.049.in, align 8, !tbaa !74 ; 4 uses
  %.not60 = icmp eq ptr %.049, null
  br i1 %.not60, label %.split123.us, label %bb.o

bb.o:                                             ; preds = %.split121
  %i.bv = getelementptr inbounds nuw i8, ptr %.049, i64 56
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !29 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %get_object_item.exit.thread, label %.preheader41.i

.preheader41.i:                                   ; preds = %bb.o
  %i.by = load ptr, ptr %i.am, align 8, !tbaa !28 ; 2 uses
  %.not2349.i = icmp eq ptr %i.by, null
  br i1 %.not2349.i, label %get_object_item.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader41.i, %bb.q
  %.048.i = phi ptr [ %i.cc, %bb.q ], [ %i.by, %.preheader41.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.048.i, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !29 ; 2 uses
  %.not26.i = icmp eq ptr %i.ca, null
  br i1 %.not26.i, label %get_object_item.exit.thread, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.cb = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bw, ptr noundef nonnull dereferenceable(1) %i.ca) #31
  %.not27.i = icmp eq i32 %i.cb, 0
  br i1 %.not27.i, label %get_object_item.exit.loopexit111, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = load ptr, ptr %.048.i, align 8, !tbaa !27 ; 2 uses
  %.not25.i = icmp eq ptr %i.cc, null
  br i1 %.not25.i, label %get_object_item.exit.thread, label %.lr.ph.i

get_object_item.exit.loopexit111:                 ; preds = %bb.p
  %i.cd = tail call i32 @cJSON_Compare(ptr noundef nonnull %.049, ptr noundef nonnull %.048.i, i32 noundef %2)
  %.not63 = icmp eq i32 %i.cd, 0
  br i1 %.not63, label %get_object_item.exit.thread, label %.split121

.split123.us:                                     ; preds = %.split121, %.split121.us
  br i1 %.not.i, label %.split124.us, label %.split124

.split124.us:                                     ; preds = %.split123.us, %get_object_item.exit93.us
  %.0.in.us = phi ptr [ %.0.us, %get_object_item.exit93.us ], [ %i.am, %.split123.us ]
  %.0.us = load ptr, ptr %.0.in.us, align 8, !tbaa !74 ; 4 uses
  %.not61.us = icmp eq ptr %.0.us, null           ; 5 uses
  br i1 %.not61.us, label %get_object_item.exit.thread, label %bb.r

bb.r:                                             ; preds = %.split124.us
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.us, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !29 ; 4 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %get_object_item.exit.thread, label %.preheader.i84.us

.preheader.i84.us:                                ; preds = %bb.r
  %i.ch = load ptr, ptr %i.al, align 8, !tbaa !28 ; 2 uses
  %.not2349.i73.us = icmp eq ptr %i.ch, null
  br i1 %.not2349.i73.us, label %get_object_item.exit.thread, label %.lr.ph51.i85.us

.lr.ph51.i85.us:                                  ; preds = %.preheader.i84.us, %case_insensitive_strcmp.exit.thread30.i88.us
  %.150.i86.us = phi ptr [ %i.dk, %case_insensitive_strcmp.exit.thread30.i88.us ], [ %i.ch, %.preheader.i84.us ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.150.i86.us, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !29 ; 4 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %case_insensitive_strcmp.exit.thread30.i88.us, label %bb.s

bb.s:                                             ; preds = %.lr.ph51.i85.us
  %i.cl = icmp eq ptr %i.cf, %i.cj
  br i1 %i.cl, label %get_object_item.exit93.us, label %.preheader.i.i87.us

.preheader.i.i87.us:                              ; preds = %bb.s
  %i.cm = tail call ptr @__ctype_tolower_loc() #32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !75 ; 4 uses
  %i.co = load i8, ptr %i.cf, align 1, !tbaa !40  ; 2 uses
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !77
  %i.cs = load i8, ptr %i.cj, align 1, !tbaa !40
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !77
  %i.cw = icmp eq i32 %i.cr, %i.cv
  br i1 %i.cw, label %.lr.ph.i.i90.us, label %case_insensitive_strcmp.exit.thread30.i88.us

.lr.ph.i.i90.us:                                  ; preds = %.preheader.i.i87.us, %bb.t
  %i.cx = phi i8 [ %i.db, %bb.t ], [ %i.co, %.preheader.i.i87.us ]
  %.02030.i.i91.us = phi ptr [ %i.cz, %bb.t ], [ %i.cf, %.preheader.i.i87.us ]
  %.02129.i.i92.us = phi ptr [ %i.da, %bb.t ], [ %i.cj, %.preheader.i.i87.us ]
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %get_object_item.exit93.us, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i90.us
  %i.cz = getelementptr inbounds nuw i8, ptr %.02030.i.i91.us, i64 1 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.02129.i.i92.us, i64 1 ; 2 uses
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !40  ; 2 uses
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !77
  %i.df = load i8, ptr %i.da, align 1, !tbaa !40
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !77
  %i.dj = icmp eq i32 %i.de, %i.di
  br i1 %i.dj, label %.lr.ph.i.i90.us, label %case_insensitive_strcmp.exit.thread30.i88.us

case_insensitive_strcmp.exit.thread30.i88.us:     ; preds = %bb.t, %.preheader.i.i87.us, %.lr.ph51.i85.us
  %i.dk = load ptr, ptr %.150.i86.us, align 8, !tbaa !27 ; 2 uses
  %.not23.i89.us = icmp eq ptr %i.dk, null
  br i1 %.not23.i89.us, label %get_object_item.exit.thread, label %.lr.ph51.i85.us

get_object_item.exit93.us:                        ; preds = %bb.s, %.lr.ph.i.i90.us
  %i.dl = tail call i32 @cJSON_Compare(ptr noundef nonnull %.0.us, ptr noundef nonnull %.150.i86.us, i32 noundef 0)
  %.not62.us = icmp eq i32 %i.dl, 0
  br i1 %.not62.us, label %get_object_item.exit.thread, label %.split124.us

.split124:                                        ; preds = %.split123.us, %get_object_item.exit93.loopexit106
  %.0.in = phi ptr [ %.0, %get_object_item.exit93.loopexit106 ], [ %i.am, %.split123.us ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !74  ; 4 uses
  %.not61 = icmp eq ptr %.0, null                 ; 5 uses
  br i1 %.not61, label %get_object_item.exit.thread, label %bb.u

bb.u:                                             ; preds = %.split124
  %i.dm = getelementptr inbounds nuw i8, ptr %.0, i64 56
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !29 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %get_object_item.exit.thread, label %.preheader41.i74

.preheader41.i74:                                 ; preds = %bb.u
  %i.dp = load ptr, ptr %i.al, align 8, !tbaa !28 ; 2 uses
  %.not2349.i73 = icmp eq ptr %i.dp, null
  br i1 %.not2349.i73, label %get_object_item.exit.thread, label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %.preheader41.i74, %bb.w
  %.048.i76 = phi ptr [ %i.dt, %bb.w ], [ %i.dp, %.preheader41.i74 ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.048.i76, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !29 ; 2 uses
  %.not26.i77 = icmp eq ptr %i.dr, null
  br i1 %.not26.i77, label %get_object_item.exit.thread, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i75
  %i.ds = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dn, ptr noundef nonnull dereferenceable(1) %i.dr) #31
  %.not27.i78 = icmp eq i32 %i.ds, 0
  br i1 %.not27.i78, label %get_object_item.exit93.loopexit106, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dt = load ptr, ptr %.048.i76, align 8, !tbaa !27 ; 2 uses
  %.not25.i79 = icmp eq ptr %i.dt, null
  br i1 %.not25.i79, label %get_object_item.exit.thread, label %.lr.ph.i75

get_object_item.exit93.loopexit106:               ; preds = %bb.v
  %i.du = tail call i32 @cJSON_Compare(ptr noundef nonnull %.0, ptr noundef nonnull %.048.i76, i32 noundef %2)
  %.not62 = icmp eq i32 %i.du, 0
  br i1 %.not62, label %get_object_item.exit.thread, label %.split124

default.unreachable169:                           ; preds = %.split2
  unreachable

get_object_item.exit.thread:                      ; preds = %get_object_item.exit.loopexit111, %bb.o, %.preheader41.i, %.lr.ph.i, %bb.q, %get_object_item.exit.us, %.preheader.i.us, %bb.l, %case_insensitive_strcmp.exit.thread30.i.us, %.split124, %get_object_item.exit93.loopexit106, %bb.u, %.preheader41.i74, %.lr.ph.i75, %bb.w, %get_object_item.exit93.us, %.preheader.i84.us, %bb.r, %.split124.us, %case_insensitive_strcmp.exit.thread30.i88.us, %bb.i, %bb.j, %bb.f, %bb.d, %bb.e, %bb.c, %.split2, %.split2, %.split2, %.split, %bb.a, %bb.b
  %.2.shrunk = phi i1 [ %.not64, %bb.j ], [ false, %bb.a ], [ false, %.lr.ph.i ], [ false, %case_insensitive_strcmp.exit.thread30.i88.us ], [ true, %.split ], [ %i.w, %bb.c ], [ true, %.split2 ], [ true, %.split2 ], [ %i.ae, %bb.f ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.b ], [ true, %.split2 ], [ false, %bb.i ], [ %.not61.us, %get_object_item.exit93.us ], [ false, %case_insensitive_strcmp.exit.thread30.i.us ], [ false, %get_object_item.exit.us ], [ false, %.lr.ph.i75 ], [ %.not61, %.split124 ], [ %.not61.us, %.split124.us ], [ %.not61.us, %bb.r ], [ %.not61.us, %.preheader.i84.us ], [ false, %bb.w ], [ %.not61, %.preheader41.i74 ], [ %.not61, %bb.u ], [ %.not61, %get_object_item.exit93.loopexit106 ], [ false, %bb.l ], [ false, %.preheader.i.us ], [ false, %bb.q ], [ false, %.preheader41.i ], [ false, %bb.o ], [ false, %get_object_item.exit.loopexit111 ]
  %.2 = zext i1 %.2.shrunk to i32
  ret i32 %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_malloc(i64 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.b = tail call ptr %i.a(i64 noundef %0) #30
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @reset(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not13 = icmp eq ptr %i.b, null
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @cJSON_Delete(ptr noundef nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %.not14 = icmp eq ptr %i.d, null
  br i1 %.not14, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !15
  %i.g = and i32 %i.f, 256
  %.not15 = icmp eq i32 %i.g, 0
  br i1 %.not15, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !25
  tail call void %i.h(ptr noundef nonnull %i.d) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %.not16 = icmp eq ptr %i.j, null
  br i1 %.not16, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !15
  %i.m = and i32 %i.l, 512
  %.not17 = icmp eq i32 %i.m, 0
  br i1 %.not17, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !25
  tail call void %i.n(ptr noundef nonnull %i.j) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef ptr @read_file(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.1) ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef 0, i32 noundef 2)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @ftell(ptr noundef nonnull %i.a) ; 5 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef 0, i32 noundef 0)
  %.not23 = icmp eq i32 %i.f, 0
  br i1 %.not23, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.g = add nuw i64 %i.d, 1
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #33 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i64 @fread(ptr noundef nonnull %i.h, i64 noundef 1, i64 noundef %i.d, ptr noundef nonnull %i.a)
  %.not24 = icmp eq i64 %i.j, %i.d
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.h) #30
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  store i8 0, ptr %i.k, align 1, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.h, %bb.g
  %.0.ph = phi ptr [ %i.h, %bb.h ], [ null, %bb.g ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  %i.l = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.028 = phi ptr [ %.0.ph, %bb.i ], [ null, %bb.a ]
  ret ptr %.028
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @main() local_unnamed_addr #8 {
bb.a:
  tail call void @UnityBegin(ptr noundef nonnull @.str.2) #30
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @json_pointer_tests, ptr noundef nonnull @.str.3, i32 noundef 218) #30
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @misc_tests, ptr noundef nonnull @.str.4, i32 noundef 219) #30
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @sort_tests, ptr noundef nonnull @.str.5, i32 noundef 220) #30
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @merge_tests, ptr noundef nonnull @.str.6, i32 noundef 221) #30
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @generate_merge_tests, ptr noundef nonnull @.str.7, i32 noundef 222) #30
  %i.a = tail call i32 @UnityEnd() #30
  ret i32 %i.a
}

declare void @UnityBegin(ptr noundef) local_unnamed_addr #22

declare void @UnityDefaultTestRun(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define internal void @json_pointer_tests() #8 {
bb.a:
  %i.a = tail call ptr @cJSON_ParseWithLengthOpts(ptr noundef nonnull @.str.18, i64 noundef 102, ptr noundef null, i32 noundef 0) ; 19 uses
  %i.b = tail call ptr @cJSONUtils_GetPointer(ptr noundef %i.a, ptr noundef nonnull @.str.19) #30
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64
  tail call void @UnityAssertEqualNumber(i64 noundef %i.c, i64 noundef %i.d, ptr noundef null, i64 noundef 71, i32 noundef 72) #30
  %i.e = tail call ptr @cJSONUtils_GetPointer(ptr noundef %i.a, ptr noundef nonnull @.str.20) #30
  %i.f = ptrtoint ptr %i.e to i64
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %cJSON_GetObjectItem.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %.not2349.i.i = icmp eq ptr %i.h, null
  br i1 %.not2349.i.i, label %cJSON_GetObjectItem.exit, label %.lr.ph51.i.i

.lr.ph51.i.i:                                     ; preds = %bb.b, %case_insensitive_strcmp.exit.thread30.i.i
  %.150.i.i = phi ptr [ %i.aq, %case_insensitive_strcmp.exit.thread30.i.i ], [ %i.h, %bb.b ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.150.i.i, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %case_insensitive_strcmp.exit.thread30.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph51.i.i
  %i.l = icmp eq ptr %i.j, @.str.21
  br i1 %i.l, label %cJSON_GetObjectItem.exit.loopexit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.m = tail call ptr @__ctype_tolower_loc() #32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !75   ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 408
  %i.p = load i32, ptr %i.o, align 4, !tbaa !77
  %i.q = load i8, ptr %i.j, align 1, !tbaa !40
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.r
end_hunk_6
begin_hunk_7_@parse_string:bb.a
  %i.dg = or i64 %.lcssa, %.045.i
  %i.dh = zext nneg i32 %.048.i to i64
  br label %utf16_literal_to_utf8.exit

bb.ak:                                            ; preds = %bb.af, %bb.aa, %bb.x, %bb.u, %bb.r
  %.167.shrunk.ph.i = phi i32 [ 0, %bb.x ], [ 0, %bb.aa ], [ 0, %bb.u ], [ 0, %bb.r ], [ %.1.3.i.i, %bb.af ]
  %.16795.i = zext nneg i32 %.167.shrunk.ph.i to i64
  br label %utf16_literal_to_utf8.exit

utf16_literal_to_utf8.exit:                       ; preds = %bb.aj, %bb.ak
  %.16795.sink.i = phi i64 [ %.16795.i, %bb.ak ], [ %i.dg, %bb.aj ]
  %.0466998108.i = phi i64 [ 6, %bb.ak ], [ %.04669.i, %bb.aj ]
  %.04899106.i = phi i64 [ 1, %bb.ak ], [ %i.dh, %bb.aj ]
  %i.di = trunc i64 %.16795.sink.i to i8
  store i8 %i.di, ptr %.090119, align 1, !tbaa !40
  %i.dj = getelementptr inbounds nuw i8, ptr %.090119, i64 %.04899106.i
  br label %bb.al

bb.al:                                            ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %utf16_literal_to_utf8.exit
  %.191 = phi ptr [ %i.af, %bb.i ], [ %i.ag, %bb.j ], [ %i.ah, %bb.k ], [ %i.ai, %bb.l ], [ %i.aj, %bb.m ], [ %i.ak, %bb.n ], [ %i.dj, %utf16_literal_to_utf8.exit ]
  %.0 = phi i64 [ 2, %bb.i ], [ 2, %bb.j ], [ 2, %bb.k ], [ 2, %bb.l ], [ 2, %bb.m ], [ 2, %bb.n ], [ %.0466998108.i, %utf16_literal_to_utf8.exit ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.065120, i64 %.0
  br label %.critedge

.critedge:                                        ; preds = %bb.al, %bb.f
  %.393 = phi ptr [ %.191, %bb.al ], [ %i.z, %bb.f ] ; 2 uses
  %.2 = phi ptr [ %i.dk, %bb.al ], [ %i.y, %bb.f ] ; 2 uses
  %i.dl = icmp ult ptr %.2, %.063116.ptr.le
  br i1 %i.dl, label %.lr.ph123, label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge, %.critedge.preheader
  %.090.lcssa = phi ptr [ %i.u, %.critedge.preheader ], [ %.393, %.critedge ]
  store i8 0, ptr %.090.lcssa, align 1, !tbaa !40
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 16, ptr %i.dm, align 8, !tbaa !15
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.u, ptr %i.dn, align 8, !tbaa !19
  %i.do = load ptr, ptr %1, align 8, !tbaa !33
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = add i64 %i.o, 1
  %i.dr = sub i64 %i.dq, %i.dp
  br label %bb.am

utf16_literal_to_utf8.exit.thread:                ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %parse_hex4.exit.i, %bb.ai, %bb.o, %bb.h, %bb.g
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !53
  tail call void %i.dt(ptr noundef nonnull %i.u) #30
  br label %.thread103

.thread103:                                       ; preds = %bb.b, %bb.d, %.preheader, %bb.e, %bb.a, %utf16_literal_to_utf8.exit.thread
  %.3107 = phi ptr [ %.065120, %utf16_literal_to_utf8.exit.thread ], [ %.ptr, %bb.a ], [ %.ptr, %.preheader ], [ %.ptr, %bb.e ], [ %.ptr, %bb.d ], [ %.ptr, %bb.b ]
  %i.du = load ptr, ptr %1, align 8, !tbaa !33
  %i.dv = ptrtoint ptr %.3107 to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  br label %bb.am

bb.am:                                            ; preds = %.thread103, %.critedge._crit_edge
  %storemerge = phi i64 [ %i.dr, %.critedge._crit_edge ], [ %i.dx, %.thread103 ]
  %.067 = phi i32 [ 1, %.critedge._crit_edge ], [ 0, %.thread103 ]
  store i64 %storemerge, ptr %i.b, align 8, !tbaa !39
  ret i32 %.067
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef range(i32 0, 2) i32 @parse_object(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull captures(address_is_null) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = icmp ugt i64 %i.b, 999
  br i1 %i.c, label %.critedge.thread119, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %i.b, 1
  store i64 %i.d, ptr %i.a, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 20 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !35   ; 6 uses
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %.critedge.thread119

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %1, align 8, !tbaa !33     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.l = load i8, ptr %i.k, align 1, !tbaa !40
  %.not = icmp eq i8 %i.l, 123
  br i1 %.not, label %bb.d, label %.critedge.thread119

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw i64 %i.f, 1                      ; 4 uses
  store i64 %i.m, ptr %i.e, align 8, !tbaa !39
  %i.n = icmp ult i64 %i.m, %i.h
  br i1 %i.n, label %.lr.ph.i, label %buffer_skip_whitespace.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %i.o = phi i64 [ %i.s, %bb.e ], [ %i.m, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !40
  %i.r = icmp ult i8 %i.q, 33
  br i1 %i.r, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.s = add i64 %i.o, 1                          ; 3 uses
  store i64 %i.s, ptr %i.e, align 8, !tbaa !39
  %exitcond.not.i = icmp eq i64 %i.s, %i.h
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %.lr.ph.i

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.t = icmp eq i64 %i.o, %i.h
  br i1 %i.t, label %.critedge.thread.i, label %buffer_skip_whitespace.exit

.critedge.thread.i:                               ; preds = %bb.e, %.critedge.i
  %i.u = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.u, ptr %i.e, align 8, !tbaa !39
  br label %buffer_skip_whitespace.exit

buffer_skip_whitespace.exit:                      ; preds = %bb.d, %.critedge.i, %.critedge.thread.i
  %i.v = phi i64 [ %i.m, %bb.d ], [ %i.o, %.critedge.i ], [ %i.u, %.critedge.thread.i ] ; 5 uses
  %i.w = icmp ult i64 %i.v, %i.h
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %buffer_skip_whitespace.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.v
  %i.y = load i8, ptr %i.x, align 1, !tbaa !40
  %i.z = icmp eq i8 %i.y, 125
  br i1 %i.z, label %.thread114, label %bb.h

.thread114:                                       ; preds = %bb.f
  store i64 %i.b, ptr %i.a, align 8, !tbaa !54
  br label %bb.x

bb.g:                                             ; preds = %buffer_skip_whitespace.exit
  %i.aa = add i64 %i.v, -1
  store i64 %i.aa, ptr %i.e, align 8, !tbaa !39
  br label %.critedge.thread119

bb.h:                                             ; preds = %bb.f
  %i.ab = add i64 %i.v, -1
  store i64 %i.ab, ptr %i.e, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.i

bb.i:                                             ; preds = %bb.v, %bb.h
  %.071 = phi ptr [ null, %bb.h ], [ %.172, %bb.v ] ; 4 uses
  %.070 = phi ptr [ null, %bb.h ], [ %i.ad, %bb.v ] ; 2 uses
  %.val = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.ad = tail call ptr %.val(i64 noundef 64) #30, !inline_history !38 ; 11 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, i8 0, i64 64, i1 false)
  %i.ae = icmp eq ptr %.071, null
  br i1 %i.ae, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.ad, ptr %.070, align 8, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.070, ptr %i.af, align 8, !tbaa !56
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.172 = phi ptr [ %.071, %bb.k ], [ %i.ad, %bb.j ] ; 10 uses
  %i.ag = load i64, ptr %i.e, align 8, !tbaa !39
  %i.ah = add i64 %i.ag, 1                        ; 3 uses
  %i.ai = load i64, ptr %i.g, align 8, !tbaa !35  ; 4 uses
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.m, label %.critedge.thread123

bb.m:                                             ; preds = %bb.l
  store i64 %i.ah, ptr %i.e, align 8, !tbaa !39
  %i.ak = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %buffer_skip_whitespace.exit97, label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %bb.m, %bb.n
  %i.am = phi i64 [ %i.aq, %bb.n ], [ %i.ah, %bb.m ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !40
  %i.ap = icmp ult i8 %i.ao, 33
  br i1 %i.ap, label %bb.n, label %.critedge.i94

bb.n:                                             ; preds = %.lr.ph.i93
  %i.aq = add i64 %i.am, 1                        ; 3 uses
  store i64 %i.aq, ptr %i.e, align 8, !tbaa !39
  %exitcond.not.i96 = icmp eq i64 %i.aq, %i.ai
  br i1 %exitcond.not.i96, label %.critedge.thread.i95, label %.lr.ph.i93

.critedge.i94:                                    ; preds = %.lr.ph.i93
  %i.ar = icmp eq i64 %i.am, %i.ai
  br i1 %i.ar, label %.critedge.thread.i95, label %buffer_skip_whitespace.exit97

.critedge.thread.i95:                             ; preds = %bb.n, %.critedge.i94
  %i.as = add i64 %i.ai, -1
  store i64 %i.as, ptr %i.e, align 8, !tbaa !39
  br label %buffer_skip_whitespace.exit97

buffer_skip_whitespace.exit97:                    ; preds = %bb.m, %.critedge.i94, %.critedge.thread.i95
  %i.at = tail call fastcc i32 @parse_string(ptr noundef %i.ad, ptr noundef %1)
  %.not86 = icmp eq i32 %i.at, 0
  br i1 %.not86, label %.critedge.thread123, label %bb.o

bb.o:                                             ; preds = %buffer_skip_whitespace.exit97
  %i.au = load ptr, ptr %1, align 8, !tbaa !33    ; 4 uses
  %i.av = icmp ne ptr %i.au, null
  %.pre = load i64, ptr %i.e, align 8, !tbaa !39  ; 3 uses
  %.pre159 = load i64, ptr %i.g, align 8, !tbaa !35 ; 9 uses
  %i.aw = icmp ult i64 %.pre, %.pre159
  %or.cond = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond, label %.lr.ph.i99, label %buffer_skip_whitespace.exit103

.lr.ph.i99:                                       ; preds = %bb.o, %bb.p
  %i.ax = phi i64 [ %i.bb, %bb.p ], [ %.pre, %bb.o ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !40
  %i.ba = icmp ult i8 %i.az, 33
  br i1 %i.ba, label %bb.p, label %.critedge.i100

bb.p:                                             ; preds = %.lr.ph.i99
  %i.bb = add i64 %i.ax, 1                        ; 3 uses
  store i64 %i.bb, ptr %i.e, align 8, !tbaa !39
  %exitcond.not.i102 = icmp eq i64 %i.bb, %.pre159
  br i1 %exitcond.not.i102, label %.critedge.thread.i101, label %.lr.ph.i99

.critedge.i100:                                   ; preds = %.lr.ph.i99
  %i.bc = icmp eq i64 %i.ax, %.pre159
  br i1 %i.bc, label %.critedge.thread.i101, label %buffer_skip_whitespace.exit103

.critedge.thread.i101:                            ; preds = %bb.p, %.critedge.i100
  %i.bd = add i64 %.pre159, -1                    ; 2 uses
  store i64 %i.bd, ptr %i.e, align 8, !tbaa !39
  br label %buffer_skip_whitespace.exit103

buffer_skip_whitespace.exit103:                   ; preds = %bb.o, %.critedge.i100, %.critedge.thread.i101
  %i.be = phi i64 [ %.pre, %bb.o ], [ %i.bd, %.critedge.thread.i101 ], [ %i.ax, %.critedge.i100 ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !29
  store ptr null, ptr %i.bf, align 8, !tbaa !19
  %i.bi = icmp ult i64 %i.be, %.pre159
  br i1 %i.bi, label %bb.q, label %.critedge.thread123

bb.q:                                             ; preds = %buffer_skip_whitespace.exit103
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.be
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !40
  %.not87 = icmp eq i8 %i.bk, 58
  br i1 %.not87, label %bb.r, label %.critedge.thread123

bb.r:                                             ; preds = %bb.q
  %i.bl = add nuw i64 %i.be, 1                    ; 3 uses
  store i64 %i.bl, ptr %i.e, align 8, !tbaa !39
  %i.bm = icmp ult i64 %i.bl, %.pre159
  br i1 %i.bm, label %.lr.ph.i105, label %buffer_skip_whitespace.exit109

.lr.ph.i105:                                      ; preds = %bb.r, %bb.s
  %i.bn = phi i64 [ %i.br, %bb.s ], [ %i.bl, %bb.r ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !40
  %i.bq = icmp ult i8 %i.bp, 33
  br i1 %i.bq, label %bb.s, label %.critedge.i106

bb.s:                                             ; preds = %.lr.ph.i105
  %i.br = add i64 %i.bn, 1                        ; 3 uses
  store i64 %i.br, ptr %i.e, align 8, !tbaa !39
  %exitcond.not.i108 = icmp eq i64 %i.br, %.pre159
  br i1 %exitcond.not.i108, label %.critedge.thread.i107, label %.lr.ph.i105

.critedge.i106:                                   ; preds = %.lr.ph.i105
  %i.bs = icmp eq i64 %i.bn, %.pre159
  br i1 %i.bs, label %.critedge.thread.i107, label %buffer_skip_whitespace.exit109

.critedge.thread.i107:                            ; preds = %bb.s, %.critedge.i106
  %i.bt = add i64 %.pre159, -1
  store i64 %i.bt, ptr %i.e, align 8, !tbaa !39
  br label %buffer_skip_whitespace.exit109

buffer_skip_whitespace.exit109:                   ; preds = %bb.r, %.critedge.i106, %.critedge.thread.i107
  %i.bu = tail call fastcc i32 @parse_value(ptr noundef %i.ad, ptr noundef nonnull %1)
  %.not88 = icmp eq i32 %i.bu, 0
  br i1 %.not88, label %.critedge.thread123, label %bb.t

bb.t:                                             ; preds = %buffer_skip_whitespace.exit109
  %i.bv = load ptr, ptr %1, align 8, !tbaa !33    ; 3 uses
  %i.bw = icmp ne ptr %i.bv, null
  %.pre232 = load i64, ptr %i.e, align 8, !tbaa !39 ; 3 uses
  %.pre233 = load i64, ptr %i.g, align 8, !tbaa !35 ; 5 uses
  %i.bx = icmp ult i64 %.pre232, %.pre233
  %or.cond272 = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond272, label %.lr.ph.i195, label %buffer_skip_whitespace.exit199

.lr.ph.i195:                                      ; preds = %bb.t, %bb.u
  %i.by = phi i64 [ %i.cc, %bb.u ], [ %.pre232, %bb.t ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !40
  %i.cb = icmp ult i8 %i.ca, 33
  br i1 %i.cb, label %bb.u, label %.critedge.i196

bb.u:                                             ; preds = %.lr.ph.i195
  %i.cc = add i64 %i.by, 1                        ; 3 uses
  store i64 %i.cc, ptr %i.e, align 8, !tbaa !39
  %exitcond.not.i198 = icmp eq i64 %i.cc, %.pre233
  br i1 %exitcond.not.i198, label %.critedge.thread.i197, label %.lr.ph.i195

.critedge.i196:                                   ; preds = %.lr.ph.i195
  %i.cd = icmp eq i64 %i.by, %.pre233
  br i1 %i.cd, label %.critedge.thread.i197, label %buffer_skip_whitespace.exit199

.critedge.thread.i197:                            ; preds = %bb.u, %.critedge.i196
  %i.ce = add i64 %.pre233, -1                    ; 2 uses
  store i64 %i.ce, ptr %i.e, align 8, !tbaa !39
  br label %buffer_skip_whitespace.exit199

buffer_skip_whitespace.exit199:                   ; preds = %bb.t, %.critedge.i196, %.critedge.thread.i197
  %i.cf = phi i64 [ %.pre232, %bb.t ], [ %i.ce, %.critedge.thread.i197 ], [ %i.by, %.critedge.i196 ] ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %.pre233
  br i1 %i.cg, label %bb.v, label %.critedge.thread123

bb.v:                                             ; preds = %buffer_skip_whitespace.exit199
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cf
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !40
  switch i8 %i.ci, label %.critedge.thread123 [
    i8 44, label %bb.i
    i8 125, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !54
  %i.ck = add i64 %i.cj, -1
  store i64 %i.ck, ptr %i.a, align 8, !tbaa !54
  %i.cl = getelementptr inbounds nuw i8, ptr %.172, i64 8
  store ptr %i.ad, ptr %i.cl, align 8, !tbaa !56
  br label %bb.x

bb.x:                                             ; preds = %.thread114, %bb.w
  %i.cm = phi i64 [ %i.v, %.thread114 ], [ %i.cf, %bb.w ]
  %.374118 = phi ptr [ null, %.thread114 ], [ %.172, %bb.w ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 64, ptr %i.cn, align 8, !tbaa !15
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.374118, ptr %i.co, align 8, !tbaa !28
  %i.cp = add nuw i64 %i.cm, 1
  store i64 %i.cp, ptr %i.e, align 8, !tbaa !39
  br label %.critedge.thread119

.critedge:                                        ; preds = %bb.i
  %.not91 = icmp eq ptr %.071, null
  br i1 %.not91, label %.critedge.thread119, label %.critedge.thread123

.critedge.thread123:                              ; preds = %bb.v, %buffer_skip_whitespace.exit97, %buffer_skip_whitespace.exit103, %bb.l, %bb.q, %buffer_skip_whitespace.exit109, %buffer_skip_whitespace.exit199, %.critedge
  %.4126 = phi ptr [ %.071, %.critedge ], [ %.172, %buffer_skip_whitespace.exit199 ], [ %.172, %buffer_skip_whitespace.exit109 ], [ %.172, %bb.q ], [ %.172, %bb.l ], [ %.172, %buffer_skip_whitespace.exit103 ], [ %.172, %buffer_skip_whitespace.exit97 ], [ %.172, %bb.v ]
  tail call void @cJSON_Delete(ptr noundef nonnull %.4126)
  br label %.critedge.thread119

.critedge.thread119:                              ; preds = %bb.b, %bb.g, %bb.c, %.critedge, %.critedge.thread123, %bb.a, %bb.x
  %.075 = phi i32 [ 0, %bb.a ], [ 1, %bb.x ], [ 0, %.critedge.thread123 ], [ 0, %.critedge ], [ 0, %bb.c ], [ 0, %bb.g ], [ 0, %bb.b ]
  ret i32 %.075
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 0, 65536) i32 @parse_hex4(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !40      ; 4 uses
  %i.b = zext i8 %i.a to i32
  %i.c = add i8 %i.a, -48
  %or.cond = icmp ult i8 %i.c, 10
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i8 %i.a, -65
  %or.cond31 = icmp ult i8 %i.d, 6
  br i1 %or.cond31, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i8 %i.a, -97
  %or.cond32 = icmp ult i8 %i.e, 6
  br i1 %or.cond32, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -48, %bb.a ], [ -55, %bb.b ], [ -87, %bb.c ]
  %i.f = add nsw i32 %.sink, %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !40    ; 4 uses
  %i.i = zext i8 %i.h to i32
  %i.j = add i8 %i.h, -48
  %or.cond.1 = icmp ult i8 %i.j, 10
  br i1 %or.cond.1, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add i8 %i.h, -65
  %or.cond31.1 = icmp ult i8 %i.k, 6
  br i1 %or.cond31.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = add i8 %i.h, -97
  %or.cond32.1 = icmp ult i8 %i.l, 6
  br i1 %or.cond32.1, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.sink35 = phi i32 [ -55, %bb.e ], [ -87, %bb.f ], [ -48, %bb.d ]
  %i.m = add nsw i32 %.sink35, %i.i
end_hunk_7
