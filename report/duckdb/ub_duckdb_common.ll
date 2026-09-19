Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common?download=true
inline.NumInlined: 29986
inline.NumDeleted: 10454
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 387
loop-unroll.NumUnrolled: 433
begin_hunk_0_@_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyINS1_17counting_iteratorEEET_S6_:bb.a
  %i.ai = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.b) ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %.sroa.05.0.lcssa.i.i133.peel = add i64 %1, %i.aj ; 3 uses
  %i.ak = icmp samesign ult i32 %i.b, %spec.select
  br i1 %i.ak, label %bb.g, label %.peel.next.preheader

bb.g:                                             ; preds = %bb.f
  %i.al = sub nsw i32 %spec.select, %i.ai         ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  %i.an = add nsw i32 %i.al, -1
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = add i64 %.sroa.05.0.lcssa.i.i133.peel, 1
  %i.aq = add i64 %i.ap, %i.ao
  %.sroa.02.0.lcssa.i.i.i134.peel = select i1 %i.am, i64 %i.aq, i64 %.sroa.05.0.lcssa.i.i133.peel
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0186.2231.ph = phi i64 [ %.sroa.02.0.lcssa.i.i.i134.peel, %bb.g ], [ %.sroa.05.0.lcssa.i.i133.peel, %bb.f ], [ %i.ah, %bb.e ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.k
  %.0102233 = phi i32 [ %i.ba, %bb.k ], [ %spec.select, %.peel.next.preheader ] ; 3 uses
  %.sroa.0186.2231 = phi i64 [ %.sroa.0186.4, %bb.k ], [ %.sroa.0186.2231.ph, %.peel.next.preheader ] ; 2 uses
  %i.ar = icmp slt i32 %.0102233, %i.b
  br i1 %i.ar, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.peel.next
  %spec.select220 = add i64 %.sroa.0186.2231, 1
  %i.as = sub nsw i32 %i.b, %.0102233             ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.as, i32 3) ; 2 uses
  %i.at = zext nneg i32 %.sroa.speculated to i64
  %.sroa.05.0.lcssa.i.i133 = add i64 %spec.select220, %i.at ; 2 uses
  %i.au = icmp slt i32 %i.as, 3
  br i1 %i.au, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.av = sub i32 2, %.sroa.speculated
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
  br i1 %i.bb, label %.peel.next, label %.loopexit229, !llvm.loop !6149

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
  %i.bi = load i32, ptr %i.f, align 8, !tbaa !1985
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
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !6150

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
  br i1 %i.cj, label %scalar.ph, label %.loopexit, !llvm.loop !6151

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
  %i.cn = load ptr, ptr %0, align 8, !tbaa !1980
  %i.co = zext nneg i32 %i.e to i64
  %i.cp = add i32 %i.b, -1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.cp)
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ %i.cm, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %i.cq = getelementptr i8, ptr %i.cn, i64 %indvars.iv
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !254
  %i.ct = icmp eq i8 %i.cs, 48
  br i1 %i.ct, label %bb.t, label %.critedge.split.loop.exit

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.cu = icmp sgt i64 %indvars.iv.next, %i.co
  br i1 %i.cu, label %bb.s, label %.critedge, !llvm.loop !6152

.critedge.split.loop.exit:                        ; preds = %bb.s
  %i.cv = trunc nsw i64 %indvars.iv to i32
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
  %gepdiff = sub nuw nsw i64 %i.cm, %i.da
  %i.db = add nsw i64 %gepdiff, 1
  %.sroa.05.0.lcssa.i.i152 = add i64 %i.db, %.sroa.0186.10 ; 2 uses
  %i.dc = load i32, ptr %i.f, align 8, !tbaa !1985 ; 2 uses
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
  %i.dm = load i32, ptr %i.f, align 8, !tbaa !1985 ; 2 uses
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
  %i.dr = load ptr, ptr %0, align 8, !tbaa !1980
  br label %bb.y

bb.y:                                             ; preds = %.preheader228, %bb.z
  %.0 = phi i32 [ %i.dx, %bb.z ], [ %i.b, %.preheader228 ] ; 4 uses
  %i.ds = zext nneg i32 %.0 to i64
  %i.dt = getelementptr i8, ptr %i.dr, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.dt, i64 -1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !254
  %i.dw = icmp eq i8 %i.dv, 48
  br i1 %i.dw, label %bb.z, label %.critedge7.thread

bb.z:                                             ; preds = %bb.y
  %i.dx = add nsw i32 %.0, -1
  %.old10 = icmp sgt i32 %.0, 1
  br i1 %.old10, label %bb.y, label %.critedge7

.critedge7:                                       ; preds = %bb.z, %.thread210
  %.0100214 = phi i32 [ %spec.select128, %.thread210 ], [ %i.dk, %bb.z ] ; 2 uses
  %.not225 = icmp eq i32 %.0100214, 0
  br i1 %.not225, label %.thread, label %.critedge7.thread

.critedge7.thread:                                ; preds = %bb.y, %bb.x, %.critedge7
  %.1219 = phi i32 [ 0, %.critedge7 ], [ %i.b, %bb.x ], [ %.0, %bb.y ]
  %.0100214218 = phi i32 [ %.0100214, %.critedge7 ], [ %i.dk, %bb.x ], [ %i.dk, %bb.y ] ; 2 uses
  %i.dy = add i64 %1, 2
  %i.dz = icmp sgt i32 %.0100214218, 0
  %i.ea = add nsw i32 %.0100214218, -1
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = add i64 %1, 3
  %i.ed = add i64 %i.ec, %i.eb
  %.sroa.02.0.lcssa.i.i.i156 = select i1 %i.dz, i64 %i.ed, i64 %i.dy
  %i.ee = sext i32 %.1219 to i64
  %.sroa.05.0.lcssa.i.i158 = add i64 %.sroa.02.0.lcssa.i.i.i156, %i.ee
  br label %.thread

.thread:                                          ; preds = %bb.n, %.loopexit229, %bb.u, %bb.v, %.critedge7, %.critedge7.thread, %bb.o, %.critedge, %bb.b
  %.sroa.098.1 = phi i64 [ %i.z, %bb.b ], [ %.sroa.05.0.lcssa.i.i149, %.critedge ], [ %i.bo, %bb.o ], [ %i.di, %bb.v ], [ %.sroa.05.0.lcssa.i.i152, %bb.u ], [ %.sroa.05.0.lcssa.i.i158, %.critedge7.thread ], [ %i.dj, %.critedge7 ], [ %.sroa.0186.5, %.loopexit229 ], [ %spec.select221, %bb.n ]
  ret i64 %.sroa.098.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %1, ptr noundef byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 3 uses
  %4 = alloca %"struct.duckdb_fmt::v6::internal::nonfinite_writer", align 8 ; 5 uses
  %5 = alloca %"class.duckdb_fmt::v6::basic_memory_buffer", align 8 ; 12 uses
  %6 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::str_writer", align 8 ; 6 uses
  %7 = alloca %"class.duckdb_fmt::v6::internal::float_writer", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  %i.a = call i64 @_ZN10duckdb_fmt2v68internal21parse_float_type_specINS1_13error_handlerEcEENS1_11float_specsERKNS0_18basic_format_specsIT0_EEOT_(ptr noundef nonnull align 4 dereferenceable(17) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 3 uses
  %.sroa.8.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
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
  %.str.2113..str.2114 = select i1 %.not69, ptr @.str.2114, ptr @.str.2113
  %.str.2115..str.2116 = select i1 %.not69, ptr @.str.2116, ptr @.str.2115
  %i.r = select i1 %i.p, ptr %.str.2113..str.2114, ptr %.str.2115..str.2116
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  %i.s = lshr i32 %.sroa.8.0, 8
  %i.t = and i32 %i.s, 255
  store i32 %i.t, ptr %4, align 8, !tbaa !1975
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.r, ptr %i.u, align 8, !tbaa !1976
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS1_16nonfinite_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br label %bb.af

bb.f:                                             ; preds = %bb.d
  %i.v = and i8 %i.c, 15
  switch i8 %i.v, label %bb.l [
    i8 0, label %.sink.split
    i8 4, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = lshr i32 %.sroa.8.0, 8
  %i.x = and i32 %i.w, 255                        ; 2 uses
  %.not70 = icmp eq i32 %i.x, 0
  br i1 %.not70, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !983  ; 2 uses
  %i.aa = add i64 %i.z, 1                         ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !978
  %i.ad = icmp ugt i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !234
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, i64 noundef %i.aa), !inline_history !154
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit: ; preds = %bb.h, %bb.i
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !983
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !977
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  %i.aj = zext nneg i32 %i.x to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE5signsE, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !254
  store i8 %i.al, ptr %i.ai, align 1, !tbaa !254
  %i.am = and i32 %.sroa.8.0, -65281              ; 2 uses
  %i.an = load i32, ptr %2, align 8, !tbaa !1726  ; 2 uses
  %.not71 = icmp eq i32 %i.an, 0
  br i1 %.not71, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit
  %i.ao = add nsw i32 %i.an, -1
  store i32 %i.ao, ptr %2, align 8, !tbaa !1726
  br label %bb.k

bb.k:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit, %bb.j, %bb.g
  %.sroa.8.1 = phi i32 [ %.sroa.8.0, %bb.g ], [ %i.am, %bb.j ], [ %i.am, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit ]
  %i.ap = load i8, ptr %i.b, align 1
  %i.aq = and i8 %i.ap, -16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.k
  %.sink102 = phi i8 [ %i.aq, %bb.k ], [ %i.c, %bb.f ]
  %.sroa.8.2.ph = phi i32 [ %.sroa.8.1, %bb.k ], [ %.sroa.8.0, %bb.f ]
  %i.ar = or disjoint i8 %.sink102, 2
  store i8 %i.ar, ptr %i.b, align 1
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.f
  %.sroa.8.2 = phi i32 [ %.sroa.8.0, %bb.f ], [ %.sroa.8.2.ph, %.sink.split ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 24
end_hunk_0
