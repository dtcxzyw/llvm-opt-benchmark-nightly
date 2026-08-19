inline.NumInlined: 41205
inline.NumDeleted: 6297
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyINS1_17counting_iteratorEEET_S6_:bb.a
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = add i64 %.sroa.05.0.lcssa.i.i133, 1
  %i.ay = add i64 %i.ax, %i.aw
  br label %bb.k

bb.j:                                             ; preds = %.peel.next
  %i.az = add i64 %.sroa.0186.2231, 4
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.0186.4 = phi i64 [ %i.ay, %bb.i ], [ %.sroa.05.0.lcssa.i.i133, %bb.h ], [ %i.az, %bb.j ] ; 2 uses
  %i.ba = add nuw nsw i32 %.0102233, 3            ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.e
  br i1 %i.bb, label %.peel.next, label %.loopexit229, !llvm.loop !3964

bb.l:                                             ; preds = %bb.d
  %i.bc = sext i32 %i.b to i64
  %.sroa.05.0.lcssa.i.i137 = add i64 %1, %i.bc    ; 2 uses
  %.not224 = icmp eq i32 %i.d, 0
  %i.bd = add nsw i32 %i.d, -1
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = add i64 %.sroa.05.0.lcssa.i.i137, 1
  %i.bg = add i64 %i.bf, %i.be
  %.sroa.02.0.lcssa.i.i.i138 = select i1 %.not224, i64 %.sroa.05.0.lcssa.i.i137, i64 %i.bg
  br label %.loopexit229

.loopexit229:                                     ; preds = %bb.k, %bb.l
  %.sroa.0186.5 = phi i64 [ %.sroa.02.0.lcssa.i.i.i138, %bb.l ], [ %.sroa.0186.4, %bb.k ] ; 3 uses
  %i.bh = and i32 %i.h, 536870912
  %.not123 = icmp eq i32 %i.bh, 0
  br i1 %.not123, label %.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit229
  %i.bi = load i32, ptr %i.f, align 8, !tbaa !3959
  %i.bj = sub nsw i32 %i.bi, %i.e                 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not124 = icmp eq i32 %i.i, 2
  %spec.select221.v = select i1 %.not124, i64 1, i64 2
  %spec.select221 = add i64 %.sroa.0186.5, %spec.select221.v
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.bl = add nsw i32 %i.bj, -1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = add i64 %.sroa.0186.5, 2
  %i.bo = add i64 %i.bn, %i.bm
  br label %.thread

bb.p:                                             ; preds = %bb.c
  %i.bp = icmp sgt i32 %i.e, 0
  br i1 %i.bp, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bq = and i32 %i.h, 16711680
  %i.br = icmp ne i32 %i.bq, 0
  %i.bs = icmp samesign ugt i32 %i.e, 3
  %or.cond5 = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond5, label %.peel.next243, label %bb.r

.peel.next243:                                    ; preds = %bb.q
  %i.bt = urem i32 %i.e, 3                        ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  %spec.select126 = select i1 %i.bu, i32 3, i32 %i.bt ; 4 uses
  %i.bv = zext nneg i32 %spec.select126 to i64
  %.sroa.05.0.lcssa.i.i144.peel = add i64 %1, %i.bv ; 2 uses
  %i.bw = add i32 %i.d, %i.b
  %i.bx = xor i32 %spec.select126, -1
  %i.by = add i32 %i.bw, %i.bx                    ; 2 uses
  %i.bz = udiv i32 %i.by, 3
  %i.ca = add nuw nsw i32 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.by, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.peel.next243
  %n.vec = and i32 %i.ca, 2147483644              ; 3 uses
  %i.cb = mul i32 %n.vec, 3
  %i.cc = or disjoint i32 %spec.select126, %i.cb
  %i.cd = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.05.0.lcssa.i.i144.peel, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ %i.cd, %vector.ph ], [ %i.ce, %vector.body ]
  %vec.phi260 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cf, %vector.body ]
  %i.ce = add <2 x i64> %vec.phi, splat (i64 4)   ; 2 uses
  %i.cf = add <2 x i64> %vec.phi260, splat (i64 4) ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.cg = icmp eq i32 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !3965

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cf, %i.ce
  %i.ch = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.ca, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.peel.next243, %middle.block
  %.0104235.ph = phi i32 [ %spec.select126, %.peel.next243 ], [ %i.cc, %middle.block ]
  %.sroa.0186.8234.ph = phi i64 [ %.sroa.05.0.lcssa.i.i144.peel, %.peel.next243 ], [ %i.ch, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0104235 = phi i32 [ %i.ci, %scalar.ph ], [ %.0104235.ph, %scalar.ph.preheader ]
  %.sroa.0186.8234 = phi i64 [ %.sroa.05.0.lcssa.i.i144, %scalar.ph ], [ %.sroa.0186.8234.ph, %scalar.ph.preheader ]
  %.sroa.05.0.lcssa.i.i144 = add i64 %.sroa.0186.8234, 4 ; 2 uses
  %i.ci = add nuw nsw i32 %.0104235, 3            ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %i.e
  br i1 %i.cj, label %scalar.ph, label %.loopexit, !llvm.loop !3966

bb.r:                                             ; preds = %bb.q
  %i.ck = zext nneg i32 %i.e to i64
  %.sroa.05.0.lcssa.i.i146 = add i64 %1, %i.ck
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.r
  %.sroa.0186.10 = phi i64 [ %.sroa.05.0.lcssa.i.i146, %bb.r ], [ %i.ch, %middle.block ], [ %.sroa.05.0.lcssa.i.i144, %scalar.ph ] ; 2 uses
  %i.cl = and i32 %i.h, 536870912
  %.not = icmp eq i32 %i.cl, 0
  %i.cm = sext i32 %i.b to i64                    ; 2 uses
  br i1 %.not, label %.lr.ph, label %bb.u

.lr.ph:                                           ; preds = %.loopexit
  %i.cn = load ptr, ptr %0, align 8, !tbaa !3950
  %i.co = zext nneg i32 %i.e to i64
  %i.cp = add i32 %i.b, -1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.cp)
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv.a = phi i64 [ %i.cm, %.lr.ph ], [ %indvars.iv.next.a, %bb.t ] ; 3 uses
  %i.cq = getelementptr i8, ptr %i.cn, i64 %indvars.iv.a
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !153
  %i.ct = icmp eq i8 %i.cs, 48
  br i1 %i.ct, label %bb.t, label %.critedge.split.loop.exit

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, -1 ; 2 uses
  %i.cu = icmp sgt i64 %indvars.iv.next.a, %i.co
  br i1 %i.cu, label %bb.s, label %.critedge, !llvm.loop !3967

.critedge.split.loop.exit:                        ; preds = %bb.s
  %i.cv = trunc nsw i64 %indvars.iv.a to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.t, %.critedge.split.loop.exit
  %.0105.lcssa.ph = phi i32 [ %i.cv, %.critedge.split.loop.exit ], [ %smin, %bb.t ] ; 3 uses
  %.not122 = icmp ne i32 %.0105.lcssa.ph, %i.e
  %i.cw = zext i1 %.not122 to i64
  %spec.select223 = add i64 %.sroa.0186.10, %i.cw
  %i.cx = zext nneg i32 %i.e to i64
  %i.cy = sext i32 %.0105.lcssa.ph to i64
  %.not7.i.i148 = icmp eq i32 %i.e, %.0105.lcssa.ph
  %gepdiff226 = sub nsw i64 %i.cy, %i.cx
  %i.cz = select i1 %.not7.i.i148, i64 0, i64 %gepdiff226
  %.sroa.05.0.lcssa.i.i149 = add i64 %spec.select223, %i.cz
  br label %.thread

bb.u:                                             ; preds = %.loopexit
  %i.da = zext nneg i32 %i.e to i64
  %gepdiff = sub nsw i64 %i.cm, %i.da
  %i.db = add nsw i64 %gepdiff, 1
  %.sroa.05.0.lcssa.i.i152 = add i64 %i.db, %.sroa.0186.10 ; 2 uses
  %i.dc = load i32, ptr %i.f, align 8, !tbaa !3959 ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, %i.b
  br i1 %i.dd, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.de = xor i32 %i.b, -1
  %i.df = add i32 %i.dc, %i.de
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = add i64 %.sroa.05.0.lcssa.i.i152, 1
  %i.di = add i64 %i.dh, %i.dg
  br label %.thread

bb.w:                                             ; preds = %bb.p
  %i.dj = add i64 %1, 1
  %i.dk = sub nsw i32 0, %i.e                     ; 5 uses
  %i.dl = icmp eq i32 %i.b, 0
  br i1 %i.dl, label %.thread210, label %bb.x

.thread210:                                       ; preds = %bb.w
  %i.dm = load i32, ptr %i.f, align 8, !tbaa !3959 ; 2 uses
  %i.dn = tail call i32 @llvm.smin.i32(i32 %i.dm, i32 %i.dk)
  %i.do = icmp slt i32 %i.dm, 0
  %spec.select128 = select i1 %i.do, i32 %i.dk, i32 %i.dn
  br label %.critedge7

bb.x:                                             ; preds = %bb.w
  %i.dp = and i32 %i.h, 536870912
  %.not121 = icmp eq i32 %i.dp, 0
  %i.dq = icmp sgt i32 %i.b, 0
  %or.cond11 = select i1 %.not121, i1 %i.dq, i1 false
  br i1 %or.cond11, label %.preheader228, label %.critedge7.thread

.preheader228:                                    ; preds = %bb.x
  %i.dr = load ptr, ptr %0, align 8, !tbaa !3950
  %2 = zext nneg i32 %i.b to i64
  br label %bb.y

bb.y:                                             ; preds = %.preheader228, %bb.z
  %indvars.iv = phi i64 [ %2, %.preheader228 ], [ %indvars.iv.next, %bb.z ] ; 4 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 %indvars.iv
  %i.dt = getelementptr i8, ptr %i.ds, i64 -1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !153
  %i.dv = icmp eq i8 %i.du, 48
  br i1 %i.dv, label %bb.z, label %.critedge7.thread.loopexit

bb.z:                                             ; preds = %bb.y
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.old10 = icmp sgt i64 %indvars.iv, 1
  br i1 %.old10, label %bb.y, label %.critedge7

.critedge7:                                       ; preds = %bb.z, %.thread210
  %.0100214 = phi i32 [ %spec.select128, %.thread210 ], [ %i.dk, %bb.z ] ; 2 uses
  %.not225 = icmp eq i32 %.0100214, 0
  br i1 %.not225, label %.thread, label %.critedge7.thread

.critedge7.thread.loopexit:                       ; preds = %bb.y
  %3 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge7.thread

.critedge7.thread:                                ; preds = %.critedge7.thread.loopexit, %bb.x, %.critedge7
  %.1219 = phi i32 [ 0, %.critedge7 ], [ %i.b, %bb.x ], [ %3, %.critedge7.thread.loopexit ]
  %.0100214218 = phi i32 [ %.0100214, %.critedge7 ], [ %i.dk, %bb.x ], [ %i.dk, %.critedge7.thread.loopexit ] ; 2 uses
  %i.dw = add i64 %1, 2
  %i.dx = icmp sgt i32 %.0100214218, 0
  %i.dy = add nsw i32 %.0100214218, -1
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = add i64 %1, 3
  %i.eb = add i64 %i.ea, %i.dz
  %.sroa.02.0.lcssa.i.i.i156 = select i1 %i.dx, i64 %i.eb, i64 %i.dw
  %i.ec = sext i32 %.1219 to i64
  %.sroa.05.0.lcssa.i.i158 = add i64 %.sroa.02.0.lcssa.i.i.i156, %i.ec
  br label %.thread

.thread:                                          ; preds = %bb.n, %.loopexit229, %bb.u, %bb.v, %.critedge7, %.critedge7.thread, %bb.o, %.critedge, %bb.b
  %.sroa.098.1 = phi i64 [ %i.z, %bb.b ], [ %.sroa.05.0.lcssa.i.i149, %.critedge ], [ %i.bo, %bb.o ], [ %i.di, %bb.v ], [ %.sroa.05.0.lcssa.i.i152, %bb.u ], [ %.sroa.05.0.lcssa.i.i158, %.critedge7.thread ], [ %i.dj, %.critedge7 ], [ %.sroa.0186.5, %.loopexit229 ], [ %spec.select221, %bb.n ]
  ret i64 %.sroa.098.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvSE_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %1, ptr noundef byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 3 uses
  %4 = alloca %"struct.duckdb_fmt::v6::internal::nonfinite_writer", align 8 ; 5 uses
  %5 = alloca %"class.duckdb_fmt::v6::basic_memory_buffer", align 8 ; 12 uses
  %6 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::str_writer", align 8 ; 6 uses
  %7 = alloca %"class.duckdb_fmt::v6::internal::float_writer", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %i.a = call i64 @_ZN10duckdb_fmt2v68internal21parse_float_type_specINS1_13error_handlerEcEENS1_11float_specsERKNS0_18basic_format_specsIT0_EEOT_(ptr noundef nonnull align 4 dereferenceable(17) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 3 uses
  %.sroa.8.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1               ; 3 uses
  %i.d = and i32 %.sroa.8.0.extract.trunc, -65281 ; 2 uses
  %i.e = bitcast double %1 to i64
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = or disjoint i32 %i.d, 256
  %i.h = fneg double %1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = lshr i8 %i.c, 4
  %i.j = and i8 %i.i, 7                           ; 2 uses
  %i.k = zext nneg i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 8
  %i.m = icmp eq i8 %i.j, 1
  %i.n = select i1 %i.m, i32 0, i32 %i.l
  %spec.select = or disjoint i32 %i.n, %i.d
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.8.0 = phi i32 [ %i.g, %bb.b ], [ %spec.select, %bb.c ] ; 7 uses
  %.0 = phi double [ %i.h, %bb.b ], [ %1, %bb.c ] ; 4 uses
  %i.o = fcmp ueq double %.0, +inf
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = fcmp oeq double %.0, +inf
  %i.q = and i32 %.sroa.8.0, 16777216
  %.not69 = icmp eq i32 %i.q, 0                   ; 2 uses
  %.str.401..str.368 = select i1 %.not69, ptr @.str.368, ptr @.str.401
  %.str.402..str.367 = select i1 %.not69, ptr @.str.367, ptr @.str.402
  %i.r = select i1 %i.p, ptr %.str.401..str.368, ptr %.str.402..str.367
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  %i.s = lshr i32 %.sroa.8.0, 8
  %i.t = and i32 %i.s, 255
  store i32 %i.t, ptr %4, align 8, !tbaa !3943
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.r, ptr %i.u, align 8, !tbaa !3945
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINS1_16nonfinite_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %bb.aj

bb.f:                                             ; preds = %bb.d
  %i.v = and i8 %i.c, 15
  switch i8 %i.v, label %bb.p [
    i8 0, label %.sink.split
    i8 4, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = lshr i32 %.sroa.8.0, 8
  %i.x = and i32 %i.w, 255                        ; 2 uses
  %.not70 = icmp eq i32 %i.x, 0
  br i1 %.not70, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE5signsE, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !153  ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2784 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2789
  %.not.i.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !153
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !2784
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !2784
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !2782 ; 4 uses
  %i.ai = ptrtoint ptr %i.ac to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 7 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.k, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.j
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.am = add i64 %.sroa.speculated.i.i.i.i.i, %i.ak ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.ak
  %i.ao = call i64 @llvm.umin.i64(i64 %i.am, i64 9223372036854775807)
  %i.ap = select i1 %i.an, i64 9223372036854775807, i64 %i.ao ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ap, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #48 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ak ; 2 uses
  store i8 %i.aa, ptr %i.ar, align 1, !tbaa !153
  %i.as = icmp sgt i64 %i.ak, 0
  br i1 %i.as, label %bb.l, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr align 1 %i.ah, i64 %i.ak, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %.not.i17.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ah) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.aq, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !2782
  store ptr %i.at, ptr %i.ab, align 8, !tbaa !2784
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store ptr %i.au, ptr %i.ad, align 8, !tbaa !2789
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit: ; preds = %bb.i, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i
  %i.av = and i32 %.sroa.8.0, -65281              ; 2 uses
  %i.aw = load i32, ptr %2, align 8, !tbaa !3514  ; 2 uses
  %.not71 = icmp eq i32 %i.aw, 0
  br i1 %.not71, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit
  %i.ax = add nsw i32 %i.aw, -1
  store i32 %i.ax, ptr %2, align 8, !tbaa !3514
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit, %bb.n, %bb.g
  %.sroa.8.1 = phi i32 [ %.sroa.8.0, %bb.g ], [ %i.av, %bb.n ], [ %i.av, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit ]
  %i.ay = load i8, ptr %i.b, align 1
  %i.az = and i8 %i.ay, -16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.o
  %.sink107 = phi i8 [ %i.az, %bb.o ], [ %i.c, %bb.f ]
  %.sroa.8.2.ph = phi i32 [ %.sroa.8.1, %bb.o ], [ %.sroa.8.0, %bb.f ]
  %i.ba = or disjoint i8 %.sink107, 2
  store i8 %i.ba, ptr %i.b, align 1
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.f
  %.sroa.8.2 = phi i32 [ %.sroa.8.0, %bb.f ], [ %.sroa.8.2.ph, %.sink.split ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store i64 0, ptr %i.bd, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %5, align 8, !tbaa !412
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !3946
  store i64 500, ptr %i.bc, align 8, !tbaa !3948
  %i.bf = trunc i32 %.sroa.8.2 to i8              ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 3
  br i1 %i.bg, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bh = lshr i32 %.sroa.8.2, 8
  %i.bi = and i32 %i.bh, 255                      ; 2 uses
  %.not79 = icmp eq i32 %i.bi, 0
  br i1 %.not79, label %bb.s, label %_ZN10duckdb_fmt2v68internal6bufferIcE9push_backERKc.exit

_ZN10duckdb_fmt2v68internal6bufferIcE9push_backERKc.exit: ; preds = %bb.q
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE5signsE, i64 %i.bj
end_hunk_0
