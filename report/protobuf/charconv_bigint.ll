Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/charconv_bigint?download=true
inline.NumInlined: 240
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi:bb.a
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i6.epil.init ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = mul nuw i64 %i.au, %i.ao
  %i.aw = add nuw i64 %i.av, %.01418.i7.epil.init ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  store i32 %i.ax, ptr %i.as, align 4, !tbaa !3
  %i.ay = lshr i64 %i.aw, 32
  br label %._crit_edge.i10

._crit_edge.i10:                                  ; preds = %._crit_edge.i10.unr-lcssa, %.epil.preheader31
  %.lcssa = phi i64 [ %i.bo, %._crit_edge.i10.unr-lcssa ], [ %i.ay, %.epil.preheader31 ] ; 2 uses
  %.not.i11 = icmp ne i64 %.lcssa, 0
  %i.az = icmp samesign ult i32 %i.aj, 4
  %or.cond17.i12 = and i1 %i.az, %.not.i11
  br i1 %or.cond17.i12, label %._crit_edge.thread.sink.split.i, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit13

bb.g:                                             ; preds = %bb.g, %.lr.ph.i4.new
  %indvars.iv.i6 = phi i64 [ 0, %.lr.ph.i4.new ], [ %indvars.iv.next.i8.1, %bb.g ] ; 3 uses
  %.01418.i7 = phi i64 [ 0, %.lr.ph.i4.new ], [ %i.bo, %bb.g ]
  %niter37 = phi i64 [ 0, %.lr.ph.i4.new ], [ %niter37.next.1, %bb.g ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i6 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = zext i32 %i.bb to i64
  %i.bd = mul nuw i64 %i.bc, %i.ao
  %i.be = add nuw i64 %i.bd, %.01418.i7           ; 2 uses
  %i.bf = trunc i64 %i.be to i32
  store i32 %i.bf, ptr %i.ba, align 4, !tbaa !3
  %i.bg = lshr i64 %i.be, 32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i6
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = zext i32 %i.bj to i64
  %i.bl = mul nuw i64 %i.bk, %i.ao
  %i.bm = add nuw i64 %i.bl, %i.bg                ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  store i32 %i.bn, ptr %i.bi, align 4, !tbaa !3
  %i.bo = lshr i64 %i.bm, 32                      ; 3 uses
  %indvars.iv.next.i8.1 = add nuw nsw i64 %indvars.iv.i6, 2 ; 2 uses
  %niter37.next.1 = add i64 %niter37, 2           ; 2 uses
  %niter37.ncmp.1 = icmp eq i64 %niter37.next.1, %unroll_iter36
  br i1 %niter37.ncmp.1, label %._crit_edge.i10.unr-lcssa, label %bb.g, !llvm.loop !16

._crit_edge.thread.sink.split.i:                  ; preds = %._crit_edge.i10
  %i.bp = trunc nuw i64 %.lcssa to i32
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %wide.trip.count.i5
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !3
  %i.br = add nuw nsw i32 %i.aj, 1
  store i32 %i.br, ptr %0, align 4, !tbaa !7
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit13

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit13: ; preds = %._crit_edge.thread.sink.split.i, %._crit_edge.i10, %bb.f, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12FiveToTheNthEi(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::strings_internal::BigUnsigned") align 4 %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EEC1Em(ptr noundef nonnull align 4 dereferenceable(20) %0, i64 noundef 1)
  %i.a = icmp sgt i32 %1, 26
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit
  %.023 = phi i1 [ true, %.lr.ph ], [ false, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit ]
  %.01122 = phi i32 [ %1, %.lr.ph ], [ %i.dy, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit ] ; 2 uses
  %i.c = udiv i32 %.01122, 27
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.c, i32 20) ; 8 uses
  br i1 %.023, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit, label %bb.c

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit:              ; preds = %bb.b
  %i.d = add nsw i32 %.sroa.speculated, -1
  %i.e = mul nuw nsw i32 %i.d, %.sroa.speculated
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2025051216strings_internal12_GLOBAL__N_118kLargePowersOfFiveE, i64 %i.f
  %i.h = shl nuw nsw i32 %.sroa.speculated, 1
  %i.i = shl nuw nsw i32 %.sroa.speculated, 3
  %.idx.i.i = zext nneg i32 %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.b, ptr nonnull align 4 %i.g, i64 %.idx.i.i, i1 false)
  store i32 %i.h, ptr %0, align 4, !tbaa !7
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit

bb.c:                                             ; preds = %bb.b
  %i.j = shl nuw nsw i32 %.sroa.speculated, 1     ; 5 uses
  %i.k = add nsw i32 %.sroa.speculated, -1
  %i.l = mul nuw nsw i32 %i.k, %.sroa.speculated
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2025051216strings_internal12_GLOBAL__N_118kLargePowersOfFiveE, i64 %i.m ; 4 uses
  %i.o = load i32, ptr %0, align 4, !tbaa !7      ; 2 uses
  %i.p = add nsw i32 %i.o, %i.j                   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %select.unfold.preheader.i, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit

select.unfold.preheader.i:                        ; preds = %bb.c
  %i.r = add nsw i32 %i.o, -1
  %i.s = tail call i32 @llvm.umin.i32(i32 %i.p, i32 5)
  %umin = zext nneg i32 %i.s to i64
  %i.t = add nsw i64 %umin, -2
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit, %select.unfold.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit ], [ %i.t, %select.unfold.preheader.i ] ; 13 uses
  %i.u = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.r) ; 5 uses
  %i.v = sub i32 %i.u, %.sroa.speculated.i        ; 2 uses
  %i.w = icmp sgt i32 %.sroa.speculated.i, -1
  %i.x = icmp slt i32 %i.v, %i.j
  %i.y = and i1 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i12, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.thread.i

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.thread.i: ; preds = %select.unfold.i
  %i.z = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 0, ptr %i.z, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit

.lr.ph.i12:                                       ; preds = %select.unfold.i
  %i.aa = zext nneg i32 %.sroa.speculated.i to i64 ; 4 uses
  %i.ab = zext i32 %i.v to i64                    ; 4 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aa
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ab
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul nuw i64 %i.ah, %i.ae                ; 3 uses
  %i.aj = lshr i64 %i.ai, 32                      ; 2 uses
  %i.ak = and i64 %i.ai, 4294967295               ; 2 uses
  %indvars.iv.next38.i = add nuw nsw i64 %i.ab, 1 ; 2 uses
  %i.al = icmp ne i32 %.sroa.speculated.i, 0
  %i.am = trunc nuw i64 %indvars.iv.next38.i to i32
  %i.an = icmp sgt i32 %i.j, %i.am
  %i.ao = select i1 %i.al, i1 %i.an, i1 false
  br i1 %i.ao, label %bb.d, label %._crit_edge.i13

bb.d:                                             ; preds = %.lr.ph.i12
  %i.ap = getelementptr [4 x i8], ptr %0, i64 %i.aa
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next38.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = mul nuw i64 %i.au, %i.ar
  %i.aw = add nuw i64 %i.av, %i.ak                ; 3 uses
  %i.ax = lshr i64 %i.aw, 32
  %i.ay = add nuw nsw i64 %i.ax, %i.aj            ; 2 uses
  %i.az = and i64 %i.aw, 4294967295               ; 2 uses
  %indvars.iv.next38.i.1 = add nuw nsw i64 %i.ab, 2 ; 2 uses
  %i.ba = icmp ne i32 %.sroa.speculated.i, 1
  %i.bb = trunc nuw i64 %indvars.iv.next38.i.1 to i32
  %i.bc = icmp sgt i32 %i.j, %i.bb
  %i.bd = select i1 %i.ba, i1 %i.bc, i1 false
  br i1 %i.bd, label %bb.e, label %._crit_edge.i13

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.1 = add nsw i64 %i.aa, -2    ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.1
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next38.i.1
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = zext i32 %i.bi to i64
  %i.bk = mul nuw i64 %i.bj, %i.bg
  %i.bl = add nuw i64 %i.bk, %i.az                ; 3 uses
  %i.bm = lshr i64 %i.bl, 32
  %i.bn = add nuw nsw i64 %i.bm, %i.ay            ; 2 uses
  %i.bo = and i64 %i.bl, 4294967295               ; 2 uses
  %indvars.iv.next38.i.2 = add nuw nsw i64 %i.ab, 3 ; 2 uses
  %i.bp = icmp ne i64 %indvars.iv.next.i.1, 0
  %i.bq = trunc nuw i64 %indvars.iv.next38.i.2 to i32
  %i.br = icmp sgt i32 %i.j, %i.bq
  %i.bs = select i1 %i.bp, i1 %i.br, i1 false
  br i1 %i.bs, label %bb.f, label %._crit_edge.i13

bb.f:                                             ; preds = %bb.e
  %i.bt = getelementptr [4 x i8], ptr %i.b, i64 %i.aa
  %i.bu = getelementptr i8, ptr %i.bt, i64 -12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next38.i.2
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = zext i32 %i.by to i64
  %i.ca = mul nuw i64 %i.bz, %i.bw
  %i.cb = add nuw i64 %i.ca, %i.bo                ; 3 uses
  %i.cc = lshr i64 %i.cb, 32
  %i.cd = add nuw nsw i64 %i.cc, %i.bn
  %i.ce = and i64 %i.cb, 4294967295
  br label %._crit_edge.i13

._crit_edge.i13:                                  ; preds = %bb.f, %bb.e, %bb.d, %.lr.ph.i12
  %.lcssa58 = phi i64 [ %i.ai, %.lr.ph.i12 ], [ %i.aw, %bb.d ], [ %i.bl, %bb.e ], [ %i.cb, %bb.f ]
  %.lcssa57 = phi i64 [ %i.aj, %.lr.ph.i12 ], [ %i.ay, %bb.d ], [ %i.bn, %bb.e ], [ %i.cd, %bb.f ] ; 3 uses
  %.lcssa56 = phi i64 [ %i.ak, %.lr.ph.i12 ], [ %i.az, %bb.d ], [ %i.bo, %bb.e ], [ %i.ce, %bb.f ]
  %i.cf = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.cg = icmp ne i64 %.lcssa57, 0
  %i.ch = icmp slt i64 %indvars.iv, 3
  %or.cond.i.i = and i1 %i.ch, %i.cg
  br i1 %or.cond.i.i, label %bb.g, label %._crit_edge.i13._ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i_crit_edge

._crit_edge.i13._ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i_crit_edge: ; preds = %._crit_edge.i13
  %.pre = load i32, ptr %0, align 4
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i

bb.g:                                             ; preds = %._crit_edge.i13
  %i.ci = lshr i64 %.lcssa57, 32                  ; 2 uses
  %i.cj = trunc nuw i64 %i.ci to i32              ; 2 uses
  %i.ck = trunc i64 %.lcssa57 to i32              ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cf ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = add i32 %i.cm, %i.ck                    ; 2 uses
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !3
  %i.co = icmp ult i32 %i.cn, %i.ck
  br i1 %i.co, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.cp = add i32 %i.cj, 1                        ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.i, label %.preheader.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.cr = icmp slt i64 %indvars.iv, 1
  %i.cs = trunc i64 %indvars.iv to i32
  %i.ct = add i32 %i.cs, 3                        ; 2 uses
  br i1 %i.cr, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.017.i.i.i = phi i32 [ %i.cz, %.lr.ph.i.i.i ], [ 1, %bb.i ] ; 2 uses
  %.0916.i.i.i = phi i32 [ %.110.i.i.i, %.lr.ph.i.i.i ], [ %i.ct, %bb.i ] ; 2 uses
  %i.cu = sext i32 %.0916.i.i.i to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = add i32 %i.cw, %.017.i.i.i              ; 2 uses
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !3
  %i.cy = icmp ugt i32 %.017.i.i.i, %i.cx         ; 2 uses
  %i.cz = zext i1 %i.cy to i32                    ; 2 uses
  %.110.i.i.i = add nsw i32 %.0916.i.i.i, %i.cz   ; 3 uses
  %i.da = icmp slt i32 %.110.i.i.i, 4
  %i.db = and i1 %i.cy, %i.da
  br i1 %i.db, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit.i.i, !llvm.loop !17

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.i
  %.09.lcssa.i.i.i = phi i32 [ %i.ct, %bb.i ], [ %.110.i.i.i, %.lr.ph.i.i.i ]
  %i.dc = add nsw i32 %.09.lcssa.i.i.i, 1
  br label %.sink.split.i.i

bb.j:                                             ; preds = %bb.g
  %.not.i.i15 = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i15, label %bb.k, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.j, %bb.h
  %.031.i.i = phi i32 [ %i.cj, %bb.j ], [ %i.cp, %bb.h ]
  %i.dd = icmp slt i64 %indvars.iv, 2
  br i1 %i.dd, label %.lr.ph.i21.preheader.i.i, label %.sink.split.i.i

.lr.ph.i21.preheader.i.i:                         ; preds = %.preheader.i.i.i
  %i.de = trunc i64 %indvars.iv to i32
  %i.df = add i32 %i.de, 2
  br label %.lr.ph.i21.i.i

.lr.ph.i21.i.i:                                   ; preds = %.lr.ph.i21.i.i, %.lr.ph.i21.preheader.i.i
  %.017.i22.i.i = phi i32 [ %i.dl, %.lr.ph.i21.i.i ], [ %.031.i.i, %.lr.ph.i21.preheader.i.i ] ; 2 uses
  %.0916.i23.i.i = phi i32 [ %.110.i24.i.i, %.lr.ph.i21.i.i ], [ %i.df, %.lr.ph.i21.preheader.i.i ] ; 2 uses
  %i.dg = sext i32 %.0916.i23.i.i to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  %i.dj = add i32 %i.di, %.017.i22.i.i            ; 2 uses
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !3
  %i.dk = icmp ugt i32 %.017.i22.i.i, %i.dj       ; 2 uses
  %i.dl = zext i1 %i.dk to i32                    ; 2 uses
  %.110.i24.i.i = add nsw i32 %.0916.i23.i.i, %i.dl ; 3 uses
  %i.dm = icmp slt i32 %.110.i24.i.i, 4
  %i.dn = and i1 %i.dk, %i.dm
  br i1 %i.dn, label %.lr.ph.i21.i.i, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit25.loopexit.i.i, !llvm.loop !17

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit25.loopexit.i.i: ; preds = %.lr.ph.i21.i.i
  %i.do = add nsw i32 %.110.i24.i.i, 1
  br label %.sink.split.i.i

bb.k:                                             ; preds = %bb.j
  %i.dp = trunc i64 %indvars.iv to i32
  %i.dq = add i32 %i.dp, 2
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.k, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit25.loopexit.i.i, %.preheader.i.i.i, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit.i.i
  %.sink35.i.i = phi i32 [ %i.dc, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit.i.i ], [ %i.dq, %bb.k ], [ 5, %.preheader.i.i.i ], [ %i.do, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit25.loopexit.i.i ]
  %i.dr = load i32, ptr %0, align 4, !tbaa !3
  %i.ds = tail call i32 @llvm.smax.i32(i32 %.sink35.i.i, i32 %i.dr)
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ds, i32 4) ; 2 uses
  store i32 %.sroa.speculated.i.i.i, ptr %0, align 4, !tbaa !7
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i: ; preds = %._crit_edge.i13._ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i_crit_edge, %.sink.split.i.i
  %2 = phi i32 [ %.pre, %._crit_edge.i13._ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i_crit_edge ], [ %.sroa.speculated.i.i.i, %.sink.split.i.i ]
  %i.dt = trunc i64 %.lcssa58 to i32
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !3
  %.not.i14 = icmp eq i64 %.lcssa56, 0
  %i.dv = sext i32 %2 to i64
  %.not23.i = icmp slt i64 %indvars.iv, %i.dv
  %or.cond = select i1 %.not.i14, i1 true, i1 %.not23.i
  br i1 %or.cond, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i
  %i.dw = trunc nsw i64 %i.cf to i32
  store i32 %i.dw, ptr %0, align 4, !tbaa !7
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit: ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.thread.i, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i, %bb.l
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.dx = icmp eq i64 %indvars.iv, 0
  br i1 %i.dx, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit, label %select.unfold.i, !llvm.loop !32

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit: ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit, %bb.c, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit
  %.neg = mul nsw i32 %.sroa.speculated, -27
  %i.dy = add nsw i32 %.neg, %.01122              ; 3 uses
  %i.dz = icmp sgt i32 %i.dy, 26
  br i1 %i.dz, label %bb.b, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit, %bb.a
  %.011.lcssa = phi i32 [ %1, %bb.a ], [ %i.dy, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit ] ; 3 uses
  %i.ea = icmp sgt i32 %.011.lcssa, 12
  br i1 %i.ea, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %.promoted.i = load i32, ptr %0, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i, %.lr.ph.i
  %.015.i = phi i32 [ %.011.lcssa, %.lr.ph.i ], [ %i.fg, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i ] ; 2 uses
  %i.ec = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.ff, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i ] ; 8 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %wide.trip.count.i.i = zext nneg i32 %i.ec to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.ee = icmp eq i32 %i.ec, 1
  br i1 %i.ee, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.n

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.unr-lcssa ]
  %.01418.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.fb, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod61 = trunc i32 %i.ec to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !3
  %i.eh = zext i32 %i.eg to i64
  %i.ei = mul nuw nsw i64 %i.eh, 1220703125
  %i.ej = add nuw nsw i64 %i.ei, %.01418.i.i.epil.init ; 2 uses
  %i.ek = trunc i64 %i.ej to i32
  store i32 %i.ek, ptr %i.ef, align 4, !tbaa !3
  %i.el = lshr i64 %i.ej, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa54 = phi i64 [ %i.fb, %._crit_edge.i.i.unr-lcssa ], [ %i.el, %.epil.preheader ] ; 2 uses
  %.not.i.i = icmp ne i64 %.lcssa54, 0
  %i.em = icmp samesign ult i32 %i.ec, 4
  %or.cond17.i.i = and i1 %i.em, %.not.i.i
  br i1 %or.cond17.i.i, label %bb.o, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.n ] ; 3 uses
  %.01418.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.fb, %bb.n ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.n ]
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i.i ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  %i.ep = zext i32 %i.eo to i64
  %i.eq = mul nuw nsw i64 %i.ep, 1220703125
  %i.er = add nuw nsw i64 %i.eq, %.01418.i.i      ; 2 uses
  %i.es = trunc i64 %i.er to i32
  store i32 %i.es, ptr %i.en, align 4, !tbaa !3
  %i.et = lshr i64 %i.er, 32
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = zext i32 %i.ew to i64
  %i.ey = mul nuw nsw i64 %i.ex, 1220703125
  %i.ez = add nuw nsw i64 %i.ey, %i.et            ; 2 uses
  %i.fa = trunc i64 %i.ez to i32
  store i32 %i.fa, ptr %i.ev, align 4, !tbaa !3
  %i.fb = lshr i64 %i.ez, 32                      ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.n, !llvm.loop !16

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.fc = trunc nuw nsw i64 %.lcssa54 to i32
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %wide.trip.count.i.i
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !3
  %i.fe = add nuw nsw i32 %i.ec, 1                ; 2 uses
  store i32 %i.fe, ptr %0, align 4, !tbaa !7
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i: ; preds = %bb.o, %._crit_edge.i.i, %bb.m
  %i.ff = phi i32 [ %i.ec, %bb.m ], [ %i.ec, %._crit_edge.i.i ], [ %i.fe, %bb.o ]
  %i.fg = add nsw i32 %.015.i, -13                ; 2 uses
  %i.fh = icmp sgt i32 %.015.i, 25
  br i1 %i.fh, label %bb.m, label %._crit_edge.i, !llvm.loop !19

._crit_edge.i:                                    ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i, %._crit_edge
  %.0.lcssa.i = phi i32 [ %.011.lcssa, %._crit_edge ], [ %i.fg, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i ] ; 2 uses
  %i.fi = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.fi, label %bb.p, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit

bb.p:                                             ; preds = %._crit_edge.i
  %i.fj = load i32, ptr %0, align 4, !tbaa !7     ; 7 uses
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fl = zext nneg i32 %.0.lcssa.i to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2025051216strings_internal10kFiveToNthE, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = zext i32 %i.fn to i64                   ; 3 uses
  %i.fp = icmp sgt i32 %i.fj, 0
  br i1 %i.fp, label %.lr.ph.i4.i, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit

.lr.ph.i4.i:                                      ; preds = %bb.q
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %wide.trip.count.i5.i = zext nneg i32 %i.fj to i64 ; 3 uses
  %xtraiter63 = and i64 %wide.trip.count.i5.i, 1
  %i.fr = icmp eq i32 %i.fj, 1
  br i1 %i.fr, label %.epil.preheader62, label %.lr.ph.i4.i.new

.lr.ph.i4.i.new:                                  ; preds = %.lr.ph.i4.i
  %unroll_iter67 = and i64 %wide.trip.count.i5.i, 2147483646
  br label %bb.r

._crit_edge.i10.i.unr-lcssa:                      ; preds = %bb.r
  %lcmp.mod64.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64.not, label %._crit_edge.i10.i, label %.epil.preheader62

.epil.preheader62:                                ; preds = %._crit_edge.i10.i.unr-lcssa, %.lr.ph.i4.i
  %indvars.iv.i6.i.epil.init = phi i64 [ 0, %.lr.ph.i4.i ], [ %indvars.iv.next.i8.i.1, %._crit_edge.i10.i.unr-lcssa ]
  %.01418.i7.i.epil.init = phi i64 [ 0, %.lr.ph.i4.i ], [ %i.go, %._crit_edge.i10.i.unr-lcssa ]
  %lcmp.mod66 = trunc i32 %i.fj to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv.i6.i.epil.init ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3
  %i.fu = zext i32 %i.ft to i64
  %i.fv = mul nuw i64 %i.fu, %i.fo
  %i.fw = add nuw i64 %i.fv, %.01418.i7.i.epil.init ; 2 uses
  %i.fx = trunc i64 %i.fw to i32
  store i32 %i.fx, ptr %i.fs, align 4, !tbaa !3
  %i.fy = lshr i64 %i.fw, 32
  br label %._crit_edge.i10.i

._crit_edge.i10.i:                                ; preds = %._crit_edge.i10.i.unr-lcssa, %.epil.preheader62
  %.lcssa = phi i64 [ %i.go, %._crit_edge.i10.i.unr-lcssa ], [ %i.fy, %.epil.preheader62 ] ; 2 uses
  %.not.i11.i = icmp ne i64 %.lcssa, 0
  %i.fz = icmp samesign ult i32 %i.fj, 4
  %or.cond17.i12.i = and i1 %i.fz, %.not.i11.i
  br i1 %or.cond17.i12.i, label %._crit_edge.thread.sink.split.i.i, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit

bb.r:                                             ; preds = %bb.r, %.lr.ph.i4.i.new
  %indvars.iv.i6.i = phi i64 [ 0, %.lr.ph.i4.i.new ], [ %indvars.iv.next.i8.i.1, %bb.r ] ; 3 uses
  %.01418.i7.i = phi i64 [ 0, %.lr.ph.i4.i.new ], [ %i.go, %bb.r ]
  %niter68 = phi i64 [ 0, %.lr.ph.i4.i.new ], [ %niter68.next.1, %bb.r ]
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv.i6.i ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !3
  %i.gc = zext i32 %i.gb to i64
  %i.gd = mul nuw i64 %i.gc, %i.fo
  %i.ge = add nuw i64 %i.gd, %.01418.i7.i         ; 2 uses
  %i.gf = trunc i64 %i.ge to i32
  store i32 %i.gf, ptr %i.ga, align 4, !tbaa !3
  %i.gg = lshr i64 %i.ge, 32
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv.i6.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !3
  %i.gk = zext i32 %i.gj to i64
  %i.gl = mul nuw i64 %i.gk, %i.fo
  %i.gm = add nuw i64 %i.gl, %i.gg                ; 2 uses
  %i.gn = trunc i64 %i.gm to i32
  store i32 %i.gn, ptr %i.gi, align 4, !tbaa !3
  %i.go = lshr i64 %i.gm, 32                      ; 3 uses
  %indvars.iv.next.i8.i.1 = add nuw nsw i64 %indvars.iv.i6.i, 2 ; 2 uses
  %niter68.next.1 = add i64 %niter68, 2           ; 2 uses
  %niter68.ncmp.1 = icmp eq i64 %niter68.next.1, %unroll_iter67
  br i1 %niter68.ncmp.1, label %._crit_edge.i10.i.unr-lcssa, label %bb.r, !llvm.loop !16

._crit_edge.thread.sink.split.i.i:                ; preds = %._crit_edge.i10.i
  %i.gp = trunc nuw i64 %.lcssa to i32
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %wide.trip.count.i5.i
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !3
  %i.gr = add nuw nsw i32 %i.fj, 1
  store i32 %i.gr, ptr %0, align 4, !tbaa !7
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi:bb.a
  %i.ae = add nuw nsw i32 %i.c, 1                 ; 2 uses
  store i32 %i.ae, ptr %0, align 4, !tbaa !44
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit: ; preds = %bb.b, %._crit_edge.i, %bb.d
  %i.af = phi i32 [ %i.c, %bb.b ], [ %i.c, %._crit_edge.i ], [ %i.ae, %bb.d ]
  %i.ag = add nsw i32 %.015, -13                  ; 2 uses
  %i.ah = icmp sgt i32 %.015, 25
  br i1 %i.ah, label %bb.b, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit, %bb.a
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.ag, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit ] ; 2 uses
  %i.ai = icmp sgt i32 %.0.lcssa, 0
  br i1 %i.ai, label %bb.e, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit13

bb.e:                                             ; preds = %._crit_edge
  %i.aj = load i32, ptr %0, align 4, !tbaa !44    ; 7 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit13, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = zext nneg i32 %.0.lcssa to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2025051216strings_internal10kFiveToNthE, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = zext i32 %i.an to i64                   ; 3 uses
  %i.ap = icmp sgt i32 %i.aj, 0
  br i1 %i.ap, label %.lr.ph.i4, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit13

.lr.ph.i4:                                        ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %wide.trip.count.i5 = zext nneg i32 %i.aj to i64 ; 3 uses
  %xtraiter32 = and i64 %wide.trip.count.i5, 1
  %i.ar = icmp eq i32 %i.aj, 1
  br i1 %i.ar, label %.epil.preheader31, label %.lr.ph.i4.new

.lr.ph.i4.new:                                    ; preds = %.lr.ph.i4
  %unroll_iter36 = and i64 %wide.trip.count.i5, 2147483646
  br label %bb.g

._crit_edge.i10.unr-lcssa:                        ; preds = %bb.g
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %._crit_edge.i10, label %.epil.preheader31

.epil.preheader31:                                ; preds = %._crit_edge.i10.unr-lcssa, %.lr.ph.i4
  %indvars.iv.i6.epil.init = phi i64 [ 0, %.lr.ph.i4 ], [ %indvars.iv.next.i8.1, %._crit_edge.i10.unr-lcssa ]
  %.01418.i7.epil.init = phi i64 [ 0, %.lr.ph.i4 ], [ %i.bo, %._crit_edge.i10.unr-lcssa ]
  %lcmp.mod35 = trunc i32 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i6.epil.init ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = mul nuw i64 %i.au, %i.ao
  %i.aw = add nuw i64 %i.av, %.01418.i7.epil.init ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  store i32 %i.ax, ptr %i.as, align 4, !tbaa !3
  %i.ay = lshr i64 %i.aw, 32
  br label %._crit_edge.i10

._crit_edge.i10:                                  ; preds = %._crit_edge.i10.unr-lcssa, %.epil.preheader31
  %.lcssa = phi i64 [ %i.bo, %._crit_edge.i10.unr-lcssa ], [ %i.ay, %.epil.preheader31 ] ; 2 uses
  %.not.i11 = icmp ne i64 %.lcssa, 0
  %i.az = icmp samesign ult i32 %i.aj, 84
  %or.cond17.i12 = and i1 %i.az, %.not.i11
  br i1 %or.cond17.i12, label %._crit_edge.thread.sink.split.i, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit13

bb.g:                                             ; preds = %bb.g, %.lr.ph.i4.new
  %indvars.iv.i6 = phi i64 [ 0, %.lr.ph.i4.new ], [ %indvars.iv.next.i8.1, %bb.g ] ; 3 uses
  %.01418.i7 = phi i64 [ 0, %.lr.ph.i4.new ], [ %i.bo, %bb.g ]
  %niter37 = phi i64 [ 0, %.lr.ph.i4.new ], [ %niter37.next.1, %bb.g ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i6 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = zext i32 %i.bb to i64
  %i.bd = mul nuw i64 %i.bc, %i.ao
  %i.be = add nuw i64 %i.bd, %.01418.i7           ; 2 uses
  %i.bf = trunc i64 %i.be to i32
  store i32 %i.bf, ptr %i.ba, align 4, !tbaa !3
  %i.bg = lshr i64 %i.be, 32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i6
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = zext i32 %i.bj to i64
  %i.bl = mul nuw i64 %i.bk, %i.ao
  %i.bm = add nuw i64 %i.bl, %i.bg                ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  store i32 %i.bn, ptr %i.bi, align 4, !tbaa !3
  %i.bo = lshr i64 %i.bm, 32                      ; 3 uses
  %indvars.iv.next.i8.1 = add nuw nsw i64 %indvars.iv.i6, 2 ; 2 uses
  %niter37.next.1 = add i64 %niter37, 2           ; 2 uses
  %niter37.ncmp.1 = icmp eq i64 %niter37.next.1, %unroll_iter36
  br i1 %niter37.ncmp.1, label %._crit_edge.i10.unr-lcssa, label %bb.g, !llvm.loop !49

._crit_edge.thread.sink.split.i:                  ; preds = %._crit_edge.i10
  %i.bp = trunc nuw i64 %.lcssa to i32
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %wide.trip.count.i5
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !3
  %i.br = add nuw nsw i32 %i.aj, 1
  store i32 %i.br, ptr %0, align 4, !tbaa !44
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit13

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit13: ; preds = %._crit_edge.thread.sink.split.i, %._crit_edge.i10, %bb.f, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12FiveToTheNthEi(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::strings_internal::BigUnsigned.0") align 4 %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EEC1Em(ptr noundef nonnull align 4 dereferenceable(340) %0, i64 noundef 1)
  %i.a = icmp sgt i32 %1, 26
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEiPKj.exit
  %.023 = phi i1 [ true, %.lr.ph ], [ false, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEiPKj.exit ]
  %.01122 = phi i32 [ %1, %.lr.ph ], [ %i.ck, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEiPKj.exit ] ; 2 uses
  %i.c = udiv i32 %.01122, 27
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.c, i32 20) ; 8 uses
  br i1 %.023, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit, label %bb.c

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit:              ; preds = %bb.b
  %i.d = add nsw i32 %.sroa.speculated, -1
  %i.e = mul nuw nsw i32 %i.d, %.sroa.speculated
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2025051216strings_internal12_GLOBAL__N_118kLargePowersOfFiveE, i64 %i.f
  %i.h = shl nuw nsw i32 %.sroa.speculated, 1
  %i.i = shl nuw nsw i32 %.sroa.speculated, 3
  %.idx.i.i = zext nneg i32 %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.b, ptr nonnull align 4 %i.g, i64 %.idx.i.i, i1 false)
  store i32 %i.h, ptr %0, align 4, !tbaa !44
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEiPKj.exit

bb.c:                                             ; preds = %bb.b
  %i.j = shl nuw nsw i32 %.sroa.speculated, 1     ; 3 uses
  %i.k = add nsw i32 %.sroa.speculated, -1
  %i.l = mul nuw nsw i32 %i.k, %.sroa.speculated
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2025051216strings_internal12_GLOBAL__N_118kLargePowersOfFiveE, i64 %i.m
  %i.o = load i32, ptr %0, align 4, !tbaa !44     ; 2 uses
  %i.p = add nsw i32 %i.o, %i.j                   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %select.unfold.preheader.i, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEiPKj.exit

select.unfold.preheader.i:                        ; preds = %bb.c
  %i.r = add nsw i32 %i.o, -1
  %i.s = tail call i32 @llvm.umin.i32(i32 %i.p, i32 85)
  %umin = zext nneg i32 %i.s to i64
  %i.t = add nsw i64 %umin, -2
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12MultiplyStepEiPKjii.exit, %select.unfold.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12MultiplyStepEiPKjii.exit ], [ %i.t, %select.unfold.preheader.i ] ; 13 uses
  %i.u = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.r) ; 3 uses
  %i.v = sub i32 %i.u, %.sroa.speculated.i        ; 2 uses
  %i.w = icmp sgt i32 %.sroa.speculated.i, -1
  %i.x = icmp slt i32 %i.v, %i.j
  %i.y = and i1 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i12, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12AddWithCarryEim.exit.thread.i

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12AddWithCarryEim.exit.thread.i: ; preds = %select.unfold.i
  %i.z = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 0, ptr %i.z, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12MultiplyStepEiPKjii.exit

.lr.ph.i12:                                       ; preds = %select.unfold.i
  %i.aa = zext nneg i32 %.sroa.speculated.i to i64
  %i.ab = zext i32 %i.v to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i12
  %indvars.iv37.i = phi i64 [ %i.ab, %.lr.ph.i12 ], [ %indvars.iv.next38.i, %bb.d ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.aa, %.lr.ph.i12 ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.01933.i = phi i64 [ 0, %.lr.ph.i12 ], [ %i.al, %bb.d ]
  %.02032.i = phi i64 [ 0, %.lr.ph.i12 ], [ %i.am, %bb.d ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv37.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul nuw i64 %i.ah, %i.ae
  %i.aj = add nuw i64 %i.ai, %.02032.i            ; 3 uses
  %i.ak = lshr i64 %i.aj, 32
  %i.al = add i64 %i.ak, %.01933.i                ; 4 uses
  %i.am = and i64 %i.aj, 4294967295               ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %i.an = icmp ne i64 %indvars.iv.i, 0
  %i.ao = trunc nuw i64 %indvars.iv.next38.i to i32
  %i.ap = icmp sgt i32 %i.j, %i.ao
  %i.aq = select i1 %i.an, i1 %i.ap, i1 false
  br i1 %i.aq, label %bb.d, label %._crit_edge.i13, !llvm.loop !55

._crit_edge.i13:                                  ; preds = %bb.d
  %i.ar = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.as = icmp ne i64 %i.al, 0
  %i.at = icmp slt i64 %indvars.iv, 83
  %or.cond.i.i = and i1 %i.at, %i.as
  br i1 %or.cond.i.i, label %bb.e, label %._crit_edge.i13._ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12AddWithCarryEim.exit.i_crit_edge

._crit_edge.i13._ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12AddWithCarryEim.exit.i_crit_edge: ; preds = %._crit_edge.i13
  %.pre = load i32, ptr %0, align 4
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12AddWithCarryEim.exit.i

bb.e:                                             ; preds = %._crit_edge.i13
  %i.au = lshr i64 %i.al, 32                      ; 2 uses
  %i.av = trunc nuw i64 %i.au to i32              ; 2 uses
  %i.aw = trunc i64 %i.al to i32                  ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ar ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = add i32 %i.ay, %i.aw                    ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !3
  %i.ba = icmp ult i32 %i.az, %i.aw
  br i1 %i.ba, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bb = add i32 %i.av, 1                        ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %.preheader.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.bd = icmp slt i64 %indvars.iv, 81
  %i.be = trunc i64 %indvars.iv to i32
  %i.bf = add i32 %i.be, 3                        ; 2 uses
  br i1 %i.bd, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.017.i.i.i = phi i32 [ %i.bl, %.lr.ph.i.i.i ], [ 1, %bb.g ] ; 2 uses
  %.0916.i.i.i = phi i32 [ %.110.i.i.i, %.lr.ph.i.i.i ], [ %i.bf, %bb.g ] ; 2 uses
  %i.bg = sext i32 %.0916.i.i.i to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = add i32 %i.bi, %.017.i.i.i              ; 2 uses
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !3
  %i.bk = icmp ugt i32 %.017.i.i.i, %i.bj         ; 2 uses
  %i.bl = zext i1 %i.bk to i32                    ; 2 uses
  %.110.i.i.i = add nsw i32 %.0916.i.i.i, %i.bl   ; 3 uses
  %i.bm = icmp slt i32 %.110.i.i.i, 84
  %i.bn = and i1 %i.bk, %i.bm
  br i1 %i.bn, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit.i.i, !llvm.loop !50

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.g
  %.09.lcssa.i.i.i = phi i32 [ %i.bf, %bb.g ], [ %.110.i.i.i, %.lr.ph.i.i.i ]
  %i.bo = add nsw i32 %.09.lcssa.i.i.i, 1
  br label %.sink.split.i.i

bb.h:                                             ; preds = %bb.e
  %.not.i.i15 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i15, label %bb.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.h, %bb.f
  %.031.i.i = phi i32 [ %i.av, %bb.h ], [ %i.bb, %bb.f ]
  %i.bp = icmp slt i64 %indvars.iv, 82
  br i1 %i.bp, label %.lr.ph.i21.preheader.i.i, label %.sink.split.i.i

.lr.ph.i21.preheader.i.i:                         ; preds = %.preheader.i.i.i
  %i.bq = trunc i64 %indvars.iv to i32
  %i.br = add i32 %i.bq, 2
  br label %.lr.ph.i21.i.i

.lr.ph.i21.i.i:                                   ; preds = %.lr.ph.i21.i.i, %.lr.ph.i21.preheader.i.i
  %.017.i22.i.i = phi i32 [ %i.bx, %.lr.ph.i21.i.i ], [ %.031.i.i, %.lr.ph.i21.preheader.i.i ] ; 2 uses
  %.0916.i23.i.i = phi i32 [ %.110.i24.i.i, %.lr.ph.i21.i.i ], [ %i.br, %.lr.ph.i21.preheader.i.i ] ; 2 uses
  %i.bs = sext i32 %.0916.i23.i.i to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = add i32 %i.bu, %.017.i22.i.i            ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !3
  %i.bw = icmp ugt i32 %.017.i22.i.i, %i.bv       ; 2 uses
  %i.bx = zext i1 %i.bw to i32                    ; 2 uses
  %.110.i24.i.i = add nsw i32 %.0916.i23.i.i, %i.bx ; 3 uses
  %i.by = icmp slt i32 %.110.i24.i.i, 84
  %i.bz = and i1 %i.bw, %i.by
  br i1 %i.bz, label %.lr.ph.i21.i.i, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit25.loopexit.i.i, !llvm.loop !50

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit25.loopexit.i.i: ; preds = %.lr.ph.i21.i.i
  %i.ca = add nsw i32 %.110.i24.i.i, 1
  br label %.sink.split.i.i

bb.i:                                             ; preds = %bb.h
  %i.cb = trunc i64 %indvars.iv to i32
  %i.cc = add i32 %i.cb, 2
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.i, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit25.loopexit.i.i, %.preheader.i.i.i, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit.i.i
  %.sink35.i.i = phi i32 [ %i.bo, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit.i.i ], [ %i.cc, %bb.i ], [ 85, %.preheader.i.i.i ], [ %i.ca, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit25.loopexit.i.i ]
  %i.cd = load i32, ptr %0, align 4, !tbaa !3
  %i.ce = tail call i32 @llvm.smax.i32(i32 %.sink35.i.i, i32 %i.cd)
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ce, i32 84) ; 2 uses
  store i32 %.sroa.speculated.i.i.i, ptr %0, align 4, !tbaa !44
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12AddWithCarryEim.exit.i

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12AddWithCarryEim.exit.i: ; preds = %._crit_edge.i13._ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12AddWithCarryEim.exit.i_crit_edge, %.sink.split.i.i
  %2 = phi i32 [ %.pre, %._crit_edge.i13._ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12AddWithCarryEim.exit.i_crit_edge ], [ %.sroa.speculated.i.i.i, %.sink.split.i.i ]
  %i.cf = trunc i64 %i.aj to i32
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !3
  %.not.i14 = icmp eq i64 %i.am, 0
  %i.ch = sext i32 %2 to i64
  %.not23.i = icmp slt i64 %indvars.iv, %i.ch
  %or.cond = select i1 %.not.i14, i1 true, i1 %.not23.i
  br i1 %or.cond, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12MultiplyStepEiPKjii.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12AddWithCarryEim.exit.i
  %i.ci = trunc nsw i64 %i.ar to i32
  store i32 %i.ci, ptr %0, align 4, !tbaa !44
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12MultiplyStepEiPKjii.exit

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12MultiplyStepEiPKjii.exit: ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12AddWithCarryEim.exit.thread.i, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12AddWithCarryEim.exit.i, %bb.j
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.cj = icmp eq i64 %indvars.iv, 0
  br i1 %i.cj, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEiPKj.exit, label %select.unfold.i, !llvm.loop !54

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEiPKj.exit: ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12MultiplyStepEiPKjii.exit, %bb.c, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit
  %.neg = mul nsw i32 %.sroa.speculated, -27
  %i.ck = add nsw i32 %.neg, %.01122              ; 3 uses
  %i.cl = icmp sgt i32 %i.ck, 26
  br i1 %i.cl, label %bb.b, label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEiPKj.exit, %bb.a
  %.011.lcssa = phi i32 [ %1, %bb.a ], [ %i.ck, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEiPKj.exit ] ; 3 uses
  %i.cm = icmp sgt i32 %.011.lcssa, 12
  br i1 %i.cm, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %.promoted.i = load i32, ptr %0, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.i, %.lr.ph.i
  %.015.i = phi i32 [ %.011.lcssa, %.lr.ph.i ], [ %i.ds, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.i ] ; 2 uses
  %i.co = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.dr, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.i ] ; 8 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %wide.trip.count.i.i = zext nneg i32 %i.co to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.cq = icmp eq i32 %i.co, 1
  br i1 %i.cq, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.l

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.unr-lcssa ]
  %.01418.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dn, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod61 = trunc i32 %i.co to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = zext i32 %i.cs to i64
  %i.cu = mul nuw nsw i64 %i.ct, 1220703125
  %i.cv = add nuw nsw i64 %i.cu, %.01418.i.i.epil.init ; 2 uses
  %i.cw = trunc i64 %i.cv to i32
  store i32 %i.cw, ptr %i.cr, align 4, !tbaa !3
  %i.cx = lshr i64 %i.cv, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa54 = phi i64 [ %i.dn, %._crit_edge.i.i.unr-lcssa ], [ %i.cx, %.epil.preheader ] ; 2 uses
  %.not.i.i = icmp ne i64 %.lcssa54, 0
  %i.cy = icmp samesign ult i32 %i.co, 84
  %or.cond17.i.i = and i1 %i.cy, %.not.i.i
  br i1 %or.cond17.i.i, label %bb.m, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.i

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.l ] ; 3 uses
  %.01418.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.dn, %bb.l ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.l ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i.i ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3
  %i.db = zext i32 %i.da to i64
  %i.dc = mul nuw nsw i64 %i.db, 1220703125
  %i.dd = add nuw nsw i64 %i.dc, %.01418.i.i      ; 2 uses
  %i.de = trunc i64 %i.dd to i32
  store i32 %i.de, ptr %i.cz, align 4, !tbaa !3
  %i.df = lshr i64 %i.dd, 32
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  %i.dj = zext i32 %i.di to i64
  %i.dk = mul nuw nsw i64 %i.dj, 1220703125
  %i.dl = add nuw nsw i64 %i.dk, %i.df            ; 2 uses
  %i.dm = trunc i64 %i.dl to i32
  store i32 %i.dm, ptr %i.dh, align 4, !tbaa !3
  %i.dn = lshr i64 %i.dl, 32                      ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.l, !llvm.loop !49

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.do = trunc nuw nsw i64 %.lcssa54 to i32
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %wide.trip.count.i.i
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !3
  %i.dq = add nuw nsw i32 %i.co, 1                ; 2 uses
  store i32 %i.dq, ptr %0, align 4, !tbaa !44
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.i

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.i: ; preds = %bb.m, %._crit_edge.i.i, %bb.k
  %i.dr = phi i32 [ %i.co, %bb.k ], [ %i.co, %._crit_edge.i.i ], [ %i.dq, %bb.m ]
  %i.ds = add nsw i32 %.015.i, -13                ; 2 uses
  %i.dt = icmp sgt i32 %.015.i, 25
  br i1 %i.dt, label %bb.k, label %._crit_edge.i, !llvm.loop !52

._crit_edge.i:                                    ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.i, %._crit_edge
  %.0.lcssa.i = phi i32 [ %.011.lcssa, %._crit_edge ], [ %i.ds, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.i ] ; 2 uses
  %i.du = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.du, label %bb.n, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.dv = load i32, ptr %0, align 4, !tbaa !44    ; 7 uses
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dx = zext nneg i32 %.0.lcssa.i to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2025051216strings_internal10kFiveToNthE, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = zext i32 %i.dz to i64                   ; 3 uses
  %i.eb = icmp sgt i32 %i.dv, 0
  br i1 %i.eb, label %.lr.ph.i4.i, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi.exit

.lr.ph.i4.i:                                      ; preds = %bb.o
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %wide.trip.count.i5.i = zext nneg i32 %i.dv to i64 ; 3 uses
  %xtraiter63 = and i64 %wide.trip.count.i5.i, 1
  %i.ed = icmp eq i32 %i.dv, 1
  br i1 %i.ed, label %.epil.preheader62, label %.lr.ph.i4.i.new

.lr.ph.i4.i.new:                                  ; preds = %.lr.ph.i4.i
  %unroll_iter67 = and i64 %wide.trip.count.i5.i, 2147483646
  br label %bb.p

._crit_edge.i10.i.unr-lcssa:                      ; preds = %bb.p
  %lcmp.mod64.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64.not, label %._crit_edge.i10.i, label %.epil.preheader62

.epil.preheader62:                                ; preds = %._crit_edge.i10.i.unr-lcssa, %.lr.ph.i4.i
  %indvars.iv.i6.i.epil.init = phi i64 [ 0, %.lr.ph.i4.i ], [ %indvars.iv.next.i8.i.1, %._crit_edge.i10.i.unr-lcssa ]
  %.01418.i7.i.epil.init = phi i64 [ 0, %.lr.ph.i4.i ], [ %i.fa, %._crit_edge.i10.i.unr-lcssa ]
  %lcmp.mod66 = trunc i32 %i.dv to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.i6.i.epil.init ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !3
  %i.eg = zext i32 %i.ef to i64
  %i.eh = mul nuw i64 %i.eg, %i.ea
  %i.ei = add nuw i64 %i.eh, %.01418.i7.i.epil.init ; 2 uses
  %i.ej = trunc i64 %i.ei to i32
  store i32 %i.ej, ptr %i.ee, align 4, !tbaa !3
  %i.ek = lshr i64 %i.ei, 32
  br label %._crit_edge.i10.i

._crit_edge.i10.i:                                ; preds = %._crit_edge.i10.i.unr-lcssa, %.epil.preheader62
  %.lcssa = phi i64 [ %i.fa, %._crit_edge.i10.i.unr-lcssa ], [ %i.ek, %.epil.preheader62 ] ; 2 uses
  %.not.i11.i = icmp ne i64 %.lcssa, 0
  %i.el = icmp samesign ult i32 %i.dv, 84
  %or.cond17.i12.i = and i1 %i.el, %.not.i11.i
  br i1 %or.cond17.i12.i, label %._crit_edge.thread.sink.split.i.i, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi.exit

bb.p:                                             ; preds = %bb.p, %.lr.ph.i4.i.new
  %indvars.iv.i6.i = phi i64 [ 0, %.lr.ph.i4.i.new ], [ %indvars.iv.next.i8.i.1, %bb.p ] ; 3 uses
  %.01418.i7.i = phi i64 [ 0, %.lr.ph.i4.i.new ], [ %i.fa, %bb.p ]
  %niter68 = phi i64 [ 0, %.lr.ph.i4.i.new ], [ %niter68.next.1, %bb.p ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.i6.i ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3
  %i.eo = zext i32 %i.en to i64
  %i.ep = mul nuw i64 %i.eo, %i.ea
  %i.eq = add nuw i64 %i.ep, %.01418.i7.i         ; 2 uses
  %i.er = trunc i64 %i.eq to i32
  store i32 %i.er, ptr %i.em, align 4, !tbaa !3
  %i.es = lshr i64 %i.eq, 32
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.i6.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !3
  %i.ew = zext i32 %i.ev to i64
  %i.ex = mul nuw i64 %i.ew, %i.ea
  %i.ey = add nuw i64 %i.ex, %i.es                ; 2 uses
  %i.ez = trunc i64 %i.ey to i32
  store i32 %i.ez, ptr %i.eu, align 4, !tbaa !3
  %i.fa = lshr i64 %i.ey, 32                      ; 3 uses
  %indvars.iv.next.i8.i.1 = add nuw nsw i64 %indvars.iv.i6.i, 2 ; 2 uses
  %niter68.next.1 = add i64 %niter68, 2           ; 2 uses
  %niter68.ncmp.1 = icmp eq i64 %niter68.next.1, %unroll_iter67
  br i1 %niter68.ncmp.1, label %._crit_edge.i10.i.unr-lcssa, label %bb.p, !llvm.loop !49

._crit_edge.thread.sink.split.i.i:                ; preds = %._crit_edge.i10.i
  %i.fb = trunc nuw i64 %.lcssa to i32
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %wide.trip.count.i5.i
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !3
  %i.fd = add nuw nsw i32 %i.dv, 1
  store i32 %i.fd, ptr %0, align 4, !tbaa !44
end_hunk_1
