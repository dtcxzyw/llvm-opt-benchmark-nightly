Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs_reader-20725db9c81728ed.glyphs_reader.109226b79a13bccd-cgu.06?download=true
inline.NumInlined: 752
inline.NumDeleted: 163
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs1_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_5Token3lex
define internal fastcc void @_RNvMs1_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_5Token3lex(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 11 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [40 x i8], align 8                ; 11 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 11 uses
  %i.h = alloca [8 x i8], align 8                 ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.36 = alloca [16 x i8], align 8           ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 18 uses
  %i.k = icmp ult i64 %3, %2
  br i1 %i.k, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.a
  %i.l = icmp eq i64 %3, %2
  br i1 %i.l, label %.thread.thread, label %.thread321

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0428 = phi i64 [ %i.o, %bb.b ], [ %3, %bb.a ] ; 18 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0428
  %i.n = load i8, ptr %i.m, align 1, !noundef !4  ; 13 uses
  switch i8 %i.n, label %bb.c [
    i8 32, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 10, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.o = add i64 %.sroa.0.0428, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %2
  br i1 %exitcond.not, label %.thread.thread, label %.lr.ph

.thread.thread:                                   ; preds = %bb.b, %.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.cc

bb.c:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0428 ; 4 uses
  switch i8 %i.n, label %bb.d [
    i8 123, label %bb.e
    i8 40, label %bb.f
    i8 60, label %bb.g
    i8 34, label %bb.h
  ]

.thread321:                                       ; preds = %.thread
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #20
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.r = add i8 %i.n, -48
  %or.cond.i259 = icmp ult i8 %i.r, 10
  %i.s = add i8 %i.n, -45
  %i.t = icmp ult i8 %i.s, 2
  %or.cond12.i = or i1 %or.cond.i259, %i.t
  %i.u = and i8 %i.n, -33
  %i.v = add i8 %i.u, -65
  %i.w = icmp ult i8 %i.v, 26
  %or.cond14.i = or i1 %or.cond12.i, %i.w
  br i1 %or.cond14.i, label %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit, label %switch.early.test10.i

switch.early.test10.i:                            ; preds = %bb.d
  switch i8 %i.n, label %bb.bv [
    i8 95, label %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit
    i8 58, label %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit
    i8 47, label %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit
    i8 46, label %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit
    i8 36, label %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit
    i8 45, label %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit
  ]

_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit: ; preds = %bb.d, %switch.early.test10.i, %switch.early.test10.i, %switch.early.test10.i, %switch.early.test10.i, %switch.early.test10.i, %switch.early.test10.i
  %.sroa.0159.0432 = add i64 %.sroa.0.0428, 1     ; 3 uses
  %i.x = icmp ult i64 %.sroa.0159.0432, %2
  br i1 %i.x, label %.lr.ph434, label %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit294.thread

bb.e:                                             ; preds = %bb.c
  %i.y = add nuw i64 %.sroa.0.0428, 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.z, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.y, ptr %.sroa.423.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.cc

bb.f:                                             ; preds = %bb.c
  %i.aa = add nuw i64 %.sroa.0.0428, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.ab, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.aa, ptr %.sroa.427.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.cc

bb.g:                                             ; preds = %bb.c
  %i.ac = add nuw i64 %.sroa.0.0428, 1            ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %gepdiff382 = sub nuw nsw i64 %2, %i.ac
  %i.af = icmp samesign eq i64 %i.ac, %2
  br i1 %i.af, label %.loopexit, label %.lr.ph.i

bb.h:                                             ; preds = %bb.c
  %i.ag = add nuw i64 %.sroa.0.0428, 1            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %.sroa.4175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 6 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4175.0..sroa_idx, align 8
  %.sroa.5176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 8 uses
  store i64 0, ptr %.sroa.5176.0..sroa_idx, align 8
  %i.ah = icmp ult i64 %i.ag, %2
  br i1 %i.ah, label %.lr.ph431, label %._crit_edge

.lr.ph431:                                        ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.494.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.595.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.4122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.552.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.25.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.26.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.36.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.r

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %.sroa.02.07.i = phi i64 [ %i.au, %bb.i ], [ 0, %bb.g ] ; 5 uses
  %i.ar = phi ptr [ %i.at, %bb.i ], [ %i.ad, %bb.g ] ; 2 uses
  %.val.i = load i8, ptr %i.ar, align 1, !noalias !1987, !noundef !4
  %i.as = icmp eq i8 %.val.i, 62
  br i1 %i.as, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader5plist5ErrorEBF_.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 2 uses
  %i.au = add nuw i64 %.sroa.02.07.i, 1
  %i.av = icmp eq ptr %i.at, %i.ae
  br i1 %i.av, label %.loopexit, label %.lr.ph.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader5plist5ErrorEBF_.exit: ; preds = %.lr.ph.i
  %i.aw = icmp ult i64 %.sroa.02.07.i, %gepdiff382
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add i64 %.sroa.02.07.i, %i.ac           ; 4 uses
  %i.ay = icmp ule i64 %i.ax, %.sroa.0.0428
  %.not247 = icmp ugt i64 %i.ax, %2
  %or.cond = or i1 %i.ay, %.not247
  br i1 %or.cond, label %bb.j, label %bb.k, !prof !1988

.loopexit:                                        ; preds = %bb.i, %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.az, align 8
  store i64 1, ptr %0, align 8
  br label %bb.cc

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader5plist5ErrorEBF_.exit
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ac, i64 noundef %i.ax, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #20
  unreachable

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader5plist5ErrorEBF_.exit
  %i.ba = and i64 %.sroa.02.07.i, 1
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.bc, align 8
  store i64 1, ptr %0, align 8
  br label %bb.cc

bb.m:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sroa.02.07.i
  call void @_RINvNtNtCsf3Ta7LF998c_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterAhj2_ENCNvMs1_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB1K_5Token3lexs_0EhINtNtB6_6result6ResultzNtB1K_5ErrorENCINvXso_B2J_IB2H_INtNtCsgCecv3eZDcN_5alloc3vec3VechEB33_EINtNtNtB4_6traits7collect12FromIteratorIB2H_hB33_EE9from_iterBQ_E0B3y_EB1M_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.i, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.bd)
  %i.be = load i32, ptr %i.i, align 8, !range !5, !noundef !4 ; 2 uses
  %.not248 = icmp eq i32 %i.be, -1
  br i1 %.not248, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.4197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.5198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.5198.0.copyload = load i64, ptr %.sroa.5198.0..sroa_idx, align 8
  %.sroa.4200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4200.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4197.0..sroa_idx, i64 28, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.be, ptr %i.bf, align 8
  %.sroa.5201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.5198.0.copyload, ptr %.sroa.5201.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.cc

bb.o:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.067.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.067.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false)
  %i.bh = add i64 %i.ax, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.bi, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bh, ptr %.sroa.468.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.cc

._crit_edge:                                      ; preds = %bb.bq, %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.bj, align 8
  store i64 1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit unwind label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bs, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.gl, %bb.bs ], [ %i.bk, %bb.p ], [ %lpad.loopexit.split-lp609, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %._crit_edge
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.cc

bb.r:                                             ; preds = %.lr.ph431, %bb.bq
  %i.bm = phi i64 [ 0, %.lr.ph431 ], [ %i.gj, %bb.bq ] ; 3 uses
  %.sroa.071.0430 = phi i64 [ %i.ag, %.lr.ph431 ], [ %.sroa.071.1, %bb.bq ] ; 15 uses
  %.sroa.0145.0429 = phi i64 [ %i.ag, %.lr.ph431 ], [ %.sroa.0145.1, %bb.bq ] ; 18 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.071.0430 ; 9 uses
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !4
  switch i8 %i.bo, label %bb.s [
    i8 34, label %bb.t
    i8 92, label %bb.u
  ]

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bk, %bb.bj, %bb.bc, %bb.bb, %bb.aw, %bb.au, %bb.ai, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit258, %.invoke559, %.invoke, %bb.ak, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit255
  %lpad.loopexit.split-lp609 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #17
          to label %common.resume unwind label %bb.bu

bb.s:                                             ; preds = %bb.r
  %i.bp = add i64 %.sroa.071.0430, 1
  br label %bb.bq

bb.t:                                             ; preds = %bb.r
  %i.bq = icmp sgt i64 %i.bm, -1
  call void @llvm.assume(i1 %i.bq)
  %i.br = icmp eq i64 %i.bm, 0
  %i.bs = icmp ugt i64 %.sroa.0145.0429, %.sroa.071.0430 ; 2 uses
  br i1 %i.br, label %bb.aa, label %bb.x

bb.u:                                             ; preds = %bb.r
  %i.bt = icmp ugt i64 %.sroa.0145.0429, %.sroa.071.0430
  br i1 %i.bt, label %.invoke559, label %bb.v, !prof !19

bb.v:                                             ; preds = %bb.u
  %i.bu = icmp eq i64 %.sroa.0145.0429, 0
  br i1 %i.bu, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit258, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0145.0429
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !1989, !noundef !4
  %i.bx = icmp sgt i8 %i.bw, -65
  br i1 %i.bx, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit258, label %.invoke559, !prof !20

bb.x:                                             ; preds = %bb.t
  br i1 %i.bs, label %.invoke559, label %bb.y, !prof !19

bb.y:                                             ; preds = %bb.x
  %i.by = icmp eq i64 %.sroa.0145.0429, 0
  br i1 %i.by, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit255, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0145.0429
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !1990, !noundef !4
  %i.cb = icmp sgt i8 %i.ca, -65
  br i1 %i.cb, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit255, label %.invoke559, !prof !20

bb.aa:                                            ; preds = %bb.t
  br i1 %i.bs, label %.invoke559, label %bb.ab, !prof !19

bb.ab:                                            ; preds = %bb.aa
  %i.cc = icmp eq i64 %.sroa.0145.0429, 0
  br i1 %i.cc, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit252, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0145.0429
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !1991, !noundef !4
  %i.cf = icmp sgt i8 %i.ce, -65
  br i1 %i.cf, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit252, label %.invoke559, !prof !20

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit255: ; preds = %bb.z, %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0145.0429
  %gepdiff246 = sub nuw nsw i64 %.sroa.071.0430, %.sroa.0145.0429 ; 3 uses
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %gepdiff246)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit255
  %i.ch = load i64, ptr %.sroa.5176.0..sroa_idx, align 8, !alias.scope !1992, !noundef !4 ; 3 uses
  %i.ci = icmp sgt i64 %i.ch, -1
  call void @llvm.assume(i1 %i.ci)
  %.not.i = icmp eq i64 %.sroa.071.0430, %.sroa.0145.0429
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.noexc
  %i.cj = load ptr, ptr %.sroa.4175.0..sroa_idx, align 8, !alias.scope !1992, !nonnull !4, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ch
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ck, ptr nonnull readonly align 1 %i.cg, i64 %gepdiff246, i1 false)
  %.pre.i = load i64, ptr %.sroa.5176.0..sroa_idx, align 8, !alias.scope !1992
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.noexc
  %i.cl = phi i64 [ %.pre.i, %bb.ad ], [ %i.ch, %.noexc ]
  %i.cm = add i64 %i.cl, %gepdiff246
  %.sroa.097.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.498.0.copyload = load ptr, ptr %.sroa.4175.0..sroa_idx, align 8
  %i.cn = add nuw i64 %.sroa.071.0430, 1
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.co, align 8
  %.sroa.0100.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.097.0.copyload, ptr %.sroa.0100.sroa.8.0..sroa_idx, align 8
  %.sroa.0100.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.498.0.copyload, ptr %.sroa.0100.sroa.10.0..sroa_idx, align 8
  %.sroa.0100.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.cm, ptr %.sroa.0100.sroa.12.0..sroa_idx, align 8
  %.sroa.8101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.cn, ptr %.sroa.8101.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.af

bb.af:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit282, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.cc

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit252: ; preds = %bb.ac, %bb.ab
  %i.cp = sub nuw i64 %.sroa.071.0430, %.sroa.0145.0429
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0145.0429
  %i.cr = add nuw i64 %.sroa.071.0430, 1
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.cs, align 8
  %.sroa.0100.sroa.8.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %.sroa.0100.sroa.8.0..sroa_idx114, align 8
  %.sroa.0100.sroa.10.0..sroa_idx116 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cq, ptr %.sroa.0100.sroa.10.0..sroa_idx116, align 8
  %.sroa.0100.sroa.12.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.cp, ptr %.sroa.0100.sroa.12.0..sroa_idx118, align 8
  %.sroa.8101.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.cr, ptr %.sroa.8101.0..sroa_idx102, align 8
  br label %bb.br

.invoke559:                                       ; preds = %bb.w, %bb.u, %bb.ac, %bb.aa, %bb.z, %bb.x
  %i.ct = phi ptr [ @21, %bb.ac ], [ @20, %bb.z ], [ @20, %bb.x ], [ @21, %bb.aa ], [ @22, %bb.u ], [ @22, %bb.w ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.0145.0429, i64 noundef %.sroa.071.0430, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #21
          to label %.cont560 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont560:                                         ; preds = %.invoke559
  unreachable

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit258: ; preds = %bb.w, %bb.v
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0145.0429
  %gepdiff = sub nuw nsw i64 %.sroa.071.0430, %.sroa.0145.0429 ; 3 uses
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %gepdiff)
          to label %.noexc264 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc264:                                        ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit258
  %i.cv = load i64, ptr %.sroa.5176.0..sroa_idx, align 8, !alias.scope !1993, !noundef !4 ; 3 uses
  %i.cw = icmp sgt i64 %i.cv, -1
  call void @llvm.assume(i1 %i.cw)
  %.not.i262 = icmp eq i64 %.sroa.071.0430, %.sroa.0145.0429
  br i1 %.not.i262, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.noexc264
  %i.cx = load ptr, ptr %.sroa.4175.0..sroa_idx, align 8, !alias.scope !1993, !nonnull !4, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cy, ptr nonnull readonly align 1 %i.cu, i64 %gepdiff, i1 false)
  %.pre.i263 = load i64, ptr %.sroa.5176.0..sroa_idx, align 8, !alias.scope !1993
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.noexc264
  %i.cz = phi i64 [ %.pre.i263, %bb.ag ], [ %i.cv, %.noexc264 ]
  %i.da = add i64 %i.cz, %gepdiff
  store i64 %i.da, ptr %.sroa.5176.0..sroa_idx, align 8, !alias.scope !1993
  %i.db = add i64 %.sroa.071.0430, 1
  %i.dc = icmp eq i64 %i.db, %2
  br i1 %i.dc, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.36)
  %i.dd = sub nuw i64 %2, %.sroa.071.0430         ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1994)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1995
  store i32 92, ptr %i.b, align 4, !noalias !1995
  %i.de = invoke noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.dd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
end_hunk_0
begin_hunk_1_@_RNvMs1_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_5Token3lex:bb.a
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  store i8 %i.fk, ptr %i.gd, align 1
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  store i8 %i.fv, ptr %i.fh, align 1
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  store i8 %i.fs, ptr %i.ge, align 1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  store i8 %i.fo, ptr %i.gf, align 1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fh, i64 3
  store i8 %i.fk, ptr %i.gg, align 1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bl, %.noexc280
  %.sroa.0.03.i = phi i64 [ 1, %.noexc280 ], [ 2, %bb.bl ], [ 3, %bb.bn ], [ 4, %bb.bo ]
  %i.gh = add nuw i64 %.sroa.0.03.i, %i.fb        ; 2 uses
  store i64 %i.gh, ptr %.sroa.5176.0..sroa_idx, align 8, !alias.scope !1998
  %i.gi = add i64 %.sroa.26.1347, %.sroa.071.0430 ; 2 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.s
  %i.gj = phi i64 [ %i.bm, %bb.s ], [ %i.gh, %bb.bp ]
  %.sroa.0145.1 = phi i64 [ %.sroa.0145.0429, %bb.s ], [ %i.gi, %bb.bp ]
  %.sroa.071.1 = phi i64 [ %i.bp, %bb.s ], [ %i.gi, %bb.bp ] ; 2 uses
  %i.gk = icmp ult i64 %.sroa.071.1, %2
  br i1 %i.gk, label %bb.r, label %._crit_edge

bb.br:                                            ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit252, %bb.aj, %bb.bh
  %.sink = phi i64 [ 0, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit252 ], [ 1, %bb.aj ], [ 1, %bb.bh ]
  store i64 %.sink, ptr %0, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit282 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit282: ; preds = %bb.br
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %bb.af

bb.bu:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.bv:                                            ; preds = %switch.early.test10.i
  %i.go = icmp eq i64 %.sroa.0.0428, 0
  %i.gp = icmp sgt i8 %i.n, -65
  %or.cond376 = or i1 %i.go, %i.gp
  br i1 %or.cond376, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.gq = icmp sgt i8 %i.n, -1
  br i1 %i.gq, label %bb.bx, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i: ; preds = %bb.bw
  %i.gr = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.gs = and i8 %i.n, 31
  %i.gt = zext nneg i8 %i.gs to i32               ; 3 uses
  %i.gu = add nuw nsw i64 %.sroa.0.0428, 1
  %i.gv = icmp samesign ne i64 %i.gu, %2
  tail call void @llvm.assume(i1 %i.gv)
  %i.gw = load i8, ptr %i.gr, align 1, !noalias !1999, !noundef !4
  %i.gx = shl nuw nsw i32 %i.gt, 6
  %i.gy = and i8 %i.gw, 63
  %i.gz = zext nneg i8 %i.gy to i32               ; 2 uses
  %i.ha = or disjoint i32 %i.gx, %i.gz
  %i.hb = icmp samesign ugt i8 %i.n, -33
  br i1 %i.hb, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.hc = zext nneg i8 %i.n to i32
  br label %bb.bz

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.he = add nuw nsw i64 %.sroa.0.0428, 2
  %i.hf = icmp samesign ne i64 %i.he, %2
  tail call void @llvm.assume(i1 %i.hf)
  %i.hg = load i8, ptr %i.hd, align 1, !noalias !1999, !noundef !4
  %i.hh = shl nuw nsw i32 %i.gz, 6
  %i.hi = and i8 %i.hg, 63
  %i.hj = zext nneg i8 %i.hi to i32
  %i.hk = or disjoint i32 %i.hh, %i.hj            ; 2 uses
  %i.hl = shl nuw nsw i32 %i.gt, 12
  %i.hm = or disjoint i32 %i.hk, %i.hl
  %i.hn = icmp samesign ugt i8 %i.n, -17
  br i1 %i.hn, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i, label %bb.bz

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.hp = add nuw nsw i64 %.sroa.0.0428, 3
  %i.hq = icmp samesign ne i64 %i.hp, %2
  tail call void @llvm.assume(i1 %i.hq)
  %i.hr = load i8, ptr %i.ho, align 1, !noalias !1999, !noundef !4
  %i.hs = shl nuw nsw i32 %i.gt, 18
  %i.ht = and i32 %i.hs, 1835008
  %i.hu = shl nuw nsw i32 %i.hk, 6
  %i.hv = and i8 %i.hr, 63
  %i.hw = zext nneg i8 %i.hv to i32
  %i.hx = or disjoint i32 %i.hu, %i.hw
  %i.hy = or disjoint i32 %i.hx, %i.ht
  br label %bb.bz

bb.by:                                            ; preds = %bb.bv
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.0.0428, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #20
  unreachable

bb.bz:                                            ; preds = %bb.bx, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i
  %.sroa.4.0.i.ph = phi i32 [ %i.hm, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i ], [ %i.hy, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i ], [ %i.ha, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i ], [ %i.hc, %bb.bx ] ; 2 uses
  %i.hz = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.hz)
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ia, align 8
  %.sroa.4171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.4.0.i.ph, ptr %.sroa.4171.0..sroa_idx, align 4
  store i64 1, ptr %0, align 8
  br label %bb.cc

_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit294.thread: ; preds = %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit294, %switch.early.test10.i292, %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit
  %.sroa.0159.0.lcssa = phi i64 [ %.sroa.0159.0432, %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit ], [ %.sroa.0159.0433, %switch.early.test10.i292 ], [ %2, %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit294 ] ; 7 uses
  %i.ib = icmp ugt i64 %.sroa.0.0428, %.sroa.0159.0.lcssa
  %i.ic = icmp ugt i64 %.sroa.0159.0.lcssa, %2
  %or.cond.i = or i1 %i.ib, %i.ic
  br i1 %or.cond.i, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread, label %bb.ca, !prof !19

bb.ca:                                            ; preds = %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit294.thread
  %i.id = icmp eq i64 %.sroa.0.0428, 0
  %i.ie = icmp sgt i8 %i.n, -65
  %or.cond377 = or i1 %i.id, %i.ie
  br i1 %or.cond377, label %bb.cb, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread, !prof !2000

bb.cb:                                            ; preds = %bb.ca
  %i.if = icmp eq i64 %.sroa.0159.0.lcssa, %2
  br i1 %i.if, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread373, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit: ; preds = %bb.cb
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0159.0.lcssa
  %i.ih = load i8, ptr %i.ig, align 1, !alias.scope !2001, !noundef !4
  %i.ii = icmp sgt i8 %i.ih, -65
  br i1 %i.ii, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread373, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread, !prof !21

.lr.ph434:                                        ; preds = %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit, %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit294
  %.sroa.0159.0433 = phi i64 [ %.sroa.0159.0, %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit294 ], [ %.sroa.0159.0432, %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit ] ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0159.0433
  %i.ik = load i8, ptr %i.ij, align 1, !noundef !4 ; 4 uses
  %i.il = add i8 %i.ik, -48
  %or.cond.i289 = icmp ult i8 %i.il, 10
  %i.im = add i8 %i.ik, -45
  %i.in = icmp ult i8 %i.im, 2
  %or.cond12.i290 = or i1 %or.cond.i289, %i.in
  %i.io = and i8 %i.ik, -33
  %i.ip = add i8 %i.io, -65
  %i.iq = icmp ult i8 %i.ip, 26
  %or.cond14.i291 = or i1 %or.cond12.i290, %i.iq
  br i1 %or.cond14.i291, label %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit294, label %switch.early.test10.i292

switch.early.test10.i292:                         ; preds = %.lr.ph434
  switch i8 %i.ik, label %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit294.thread [
    i8 95, label %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit294
    i8 58, label %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit294
    i8 47, label %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit294
    i8 46, label %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit294
    i8 36, label %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit294
    i8 45, label %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit294
  ]

_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit294: ; preds = %.lr.ph434, %switch.early.test10.i292, %switch.early.test10.i292, %switch.early.test10.i292, %switch.early.test10.i292, %switch.early.test10.i292, %switch.early.test10.i292
  %.sroa.0159.0 = add nuw i64 %.sroa.0159.0433, 1 ; 2 uses
  %exitcond481.not = icmp eq i64 %.sroa.0159.0, %2
  br i1 %exitcond481.not, label %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit294.thread, label %.lr.ph434

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread: ; preds = %bb.ca, %_RNvNtCs1qcNTItuk7F_13glyphs_reader5plist8is_alnum.exit294.thread, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.0.0428, i64 noundef %.sroa.0159.0.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #20
  unreachable

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread373: ; preds = %bb.cb, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit
  %i.ir = sub nuw i64 %.sroa.0159.0.lcssa, %.sroa.0.0428
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.is, align 8
  %.sroa.0164.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %.sroa.0164.sroa.4.0..sroa_idx, align 8
  %.sroa.0164.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ir, ptr %.sroa.0164.sroa.5.0..sroa_idx, align 8
  %.sroa.4165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0159.0.lcssa, ptr %.sroa.4165.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.bz, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread373, %.thread.thread, %bb.l, %bb.n, %.loopexit, %bb.af, %bb.e, %bb.f, %bb.o, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvMsb_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_9Tokenizer3eat(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i8 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %.lr.ph.i, label %_RNvMs1_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_5Token6expect.exit.thread

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.0.09.i = phi i64 [ %i.i, %bb.b ], [ %i.e, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.09.i
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !2004, !noundef !4 ; 2 uses
  switch i8 %i.h, label %_RNvMs1_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_5Token6expect.exit [
    i8 32, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 10, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.i = add i64 %.sroa.0.09.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %i.c
  br i1 %exitcond.not.i, label %_RNvMs1_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_5Token6expect.exit.thread, label %.lr.ph.i

_RNvMs1_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_5Token6expect.exit: ; preds = %.lr.ph.i
  %i.j = icmp eq i8 %i.h, %2
  br i1 %i.j, label %bb.c, label %_RNvMs1_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_5Token6expect.exit.thread

bb.c:                                             ; preds = %_RNvMs1_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_5Token6expect.exit
  %i.k = add nuw i64 %.sroa.0.09.i, 1
  store i64 %i.k, ptr %i.d, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.d

_RNvMs1_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_5Token6expect.exit.thread: ; preds = %bb.b, %bb.a, %_RNvMs1_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_5Token6expect.exit
  %i.l = zext i8 %2 to i32
  store i32 14, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.l, ptr %.sroa.4.0..sroa_idx, align 4
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs1_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_5Token6expect.exit.thread, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsb_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_9Tokenizer3lex(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 4), (8, 40)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [32 x i8], align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  call fastcc void @_RNvMs1_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_5Token3lex(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, i64 noundef %i.f)
  %i.g = load i64, ptr %i.a, align 8, !range !12, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.411.0.copyload = load i64, ptr %.sroa.411.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.411.0.copyload, ptr %.sroa.413.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store i64 %.sroa.411.0.copyload, ptr %i.e, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsb_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_9Tokenizer4peek(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 4), (8, 40)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.5 = alloca [32 x i8], align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  call fastcc void @_RNvMs1_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_5Token3lex(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, i64 noundef %i.f)
  %i.g = load i64, ptr %i.a, align 8, !range !12, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.411.0.copyload = load i64, ptr %.sroa.411.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.411.0.copyload, ptr %.sroa.413.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store i32 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsb_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_9Tokenizer8skip_rec(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 12 uses
  %i.b = alloca [48 x i8], align 8                ; 15 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [40 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2054)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2055
  %i.m = load ptr, ptr %1, align 8, !alias.scope !2054, !nonnull !4, !noundef !4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !2054, !noundef !4 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 13 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !2054, !noundef !4 ; 2 uses
  call fastcc void @_RNvMs1_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_5Token3lex(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o, i64 noundef %i.q), !noalias !2055
  %i.r = load i64, ptr %i.b, align 8, !range !12, !noalias !2055, !noundef !4
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.i.sroa.0.0.copyload213 = load i32, ptr %i.t, align 8, !noalias !2055 ; 3 uses
  %.sroa.5.i.sroa.7.0..sroa_idx215 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.5.i.sroa.7.sroa.0.0.copyload223 = load i32, ptr %.sroa.5.i.sroa.7.0..sroa_idx215, align 4, !noalias !2055 ; 2 uses
  %.sroa.5.i.sroa.7.sroa.7.0..sroa.5.i.sroa.7.0..sroa_idx215.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.s, label %_RNvMsb_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_9Tokenizer3lex.exit, label %_RNvMsb_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_9Tokenizer3lex.exit.thread

_RNvMsb_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_9Tokenizer3lex.exit.thread: ; preds = %bb.a
  %.sroa.5.i.sroa.7.sroa.7.0.copyload = load i64, ptr %.sroa.5.i.sroa.7.sroa.7.0..sroa.5.i.sroa.7.0..sroa_idx215.sroa_idx, align 8, !noalias !2055
  %.sroa.5.i.sroa.7.sroa.9.0..sroa.5.i.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.i.sroa.7.sroa.9.0.copyload = load i64, ptr %.sroa.5.i.sroa.7.sroa.9.0..sroa.5.i.sroa.7.0..sroa_idx.sroa_idx, align 8, !noalias !2055
  %.sroa.5.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.5.i.sroa.8.0.copyload = load i64, ptr %.sroa.5.i.sroa.8.0..sroa_idx, align 8, !noalias !2055
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.47.0.copyload.i = load i64, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !2055 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2055
  store i64 %.sroa.47.0.copyload.i, ptr %i.p, align 8, !alias.scope !2054
  br label %bb.c

_RNvMsb_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_9Tokenizer3lex.exit: ; preds = %bb.a
  %.sroa.5.i.sroa.7.sroa.7.0.copyload225 = load i32, ptr %.sroa.5.i.sroa.7.sroa.7.0..sroa.5.i.sroa.7.0..sroa_idx215.sroa_idx, align 8, !noalias !2055 ; 2 uses
  %.sroa.5.i.sroa.7.sroa.8.0..sroa.5.i.sroa.7.0..sroa_idx215.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.5.i.sroa.7.sroa.8.0.copyload227 = load i32, ptr %.sroa.5.i.sroa.7.sroa.8.0..sroa.5.i.sroa.7.0..sroa_idx215.sroa_idx, align 4, !noalias !2055 ; 2 uses
  %.sroa.5.i.sroa.7.sroa.9.0..sroa.5.i.sroa.7.0..sroa_idx215.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.i.sroa.7.sroa.9.0.copyload229 = load i64, ptr %.sroa.5.i.sroa.7.sroa.9.0..sroa.5.i.sroa.7.0..sroa_idx215.sroa_idx, align 8, !noalias !2055 ; 2 uses
  %.sroa.5.i.sroa.8.0..sroa_idx216 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.5.i.sroa.8.0.copyload217 = load i64, ptr %.sroa.5.i.sroa.8.0..sroa_idx216, align 8, !noalias !2055 ; 2 uses
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.411.0.copyload.i = load i64, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !2055 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2055
  %.not = icmp eq i32 %.sroa.5.i.sroa.0.0.copyload213, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvMsb_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_9Tokenizer3lex.exit
  store i32 %.sroa.5.i.sroa.0.0.copyload213, ptr %0, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5.i.sroa.7.sroa.0.0.copyload223, ptr %.sroa.433.0..sroa_idx, align 4
  %.sroa.433.sroa.0.sroa.4.0..sroa.433.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.5.i.sroa.7.sroa.7.0.copyload225, ptr %.sroa.433.sroa.0.sroa.4.0..sroa.433.0..sroa_idx.sroa_idx, align 8
  %.sroa.433.sroa.0.sroa.5.0..sroa.433.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.5.i.sroa.7.sroa.8.0.copyload227, ptr %.sroa.433.sroa.0.sroa.5.0..sroa.433.0..sroa_idx.sroa_idx, align 4
end_hunk_1
