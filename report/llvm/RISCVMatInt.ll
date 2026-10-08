Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVMatInt?download=true
inline.NumInlined: 631
inline.NumDeleted: 193
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm11RISCVMatInt15generateInstSeqElRKNS_15MCSubtargetInfoE:bb.a

bb.fo:                                            ; preds = %bb.fn
  %i.qe = lshr i64 %1, 32                         ; 2 uses
  %i.qf = trunc nuw i64 %i.qe to i32
  %i.qg = xor i32 %i.qf, -1
  %i.qh = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.qg, i1 false) ; 3 uses
  %i.qi = trunc i64 %1 to i32
  %i.qj = xor i32 %i.qi, -1
  %i.qk = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.qj, i1 false)
  %i.ql = icmp samesign ugt i32 %i.qh, 31
  %i.qm = add nuw nsw i32 %i.qh, %i.qk
  %i.qn = icmp samesign ult i32 %i.qm, 53
  %or.cond20.i.not309 = or i1 %i.ql, %i.qn
  %i.qo = sub nuw nsw i32 32, %i.qh
  %.not95 = icmp eq i64 %i.qe, 4294967295
  %or.cond298 = or i1 %.not95, %or.cond20.i.not309
  br i1 %or.cond298, label %_ZL17extractRotateInfol.exit.thread, label %"_ZN4llvm15SmallVectorImplINS_11RISCVMatInt4InstEE12emplace_backIJNS_5RISCV3$_0ERjEEERS2_DpOT_.exit258"

"_ZN4llvm15SmallVectorImplINS_11RISCVMatInt4InstEE12emplace_backIJNS_5RISCV3$_0ERjEEERS2_DpOT_.exit258": ; preds = %bb.fo, %_ZL17extractRotateInfol.exit.thread288
  %.1.i291 = phi i32 [ %i.qd, %_ZL17extractRotateInfol.exit.thread288 ], [ %i.qo, %bb.fo ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.qp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.qp, ptr %10, align 8, !tbaa !10
  %i.qq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.qr = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 8, ptr %i.qr, align 4, !tbaa !12
  %i.qs = zext nneg i32 %.1.i291 to i64
  %.0.i253 = call noundef i64 @llvm.fshl.i64(i64 %1, i64 %1, i64 %i.qs)
  store i32 13727, ptr %i.qp, align 8, !tbaa !17
  %i.qt = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.qu = trunc i64 %.0.i253 to i32
  store i32 %i.qu, ptr %i.qt, align 4, !tbaa !18
  %i.qv = select i1 %.not305, i32 16039, i32 15759
  %i.qw = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 %i.qv, ptr %i.qw, align 8, !tbaa !17
  %i.qx = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i32 %.1.i291, ptr %i.qx, align 4, !tbaa !18
  store i32 2, ptr %i.qq, align 8, !tbaa !11
  %i.qy = icmp eq ptr %0, %10
  br i1 %i.qy, label %_ZN4llvm11SmallVectorINS_11RISCVMatInt4InstELj8EED2Ev.exit273, label %_ZN4llvm11SmallVectorINS_11RISCVMatInt4InstELj8EEaSERKS3_.exit272

_ZN4llvm11SmallVectorINS_11RISCVMatInt4InstELj8EEaSERKS3_.exit272: ; preds = %"_ZN4llvm15SmallVectorImplINS_11RISCVMatInt4InstEE12emplace_backIJNS_5RISCV3$_0ERjEEERS2_DpOT_.exit258"
  %i.qz = load ptr, ptr %0, align 8, !tbaa !10
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qz, ptr noundef nonnull align 8 dereferenceable(16) %i.qp, i64 16, i1 false)
  store i32 2, ptr %i.e, align 8, !tbaa !11
  %.pre322 = load ptr, ptr %10, align 8, !tbaa !10 ; 2 uses
  %i.ra = icmp eq ptr %.pre322, %i.qp
  br i1 %i.ra, label %_ZN4llvm11SmallVectorINS_11RISCVMatInt4InstELj8EED2Ev.exit273, label %bb.fp

bb.fp:                                            ; preds = %_ZN4llvm11SmallVectorINS_11RISCVMatInt4InstELj8EEaSERKS3_.exit272
  call void @free(ptr noundef %.pre322) #12
  br label %_ZN4llvm11SmallVectorINS_11RISCVMatInt4InstELj8EED2Ev.exit273

_ZN4llvm11SmallVectorINS_11RISCVMatInt4InstELj8EED2Ev.exit273: ; preds = %"_ZN4llvm15SmallVectorImplINS_11RISCVMatInt4InstEE12emplace_backIJNS_5RISCV3$_0ERjEEERS2_DpOT_.exit258", %_ZN4llvm11SmallVectorINS_11RISCVMatInt4InstELj8EEaSERKS3_.exit272, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %_ZL17extractRotateInfol.exit.thread

_ZL17extractRotateInfol.exit.thread:              ; preds = %bb.ao, %.thread, %bb.cd, %bb.de, %bb.dw, %bb.fo, %_ZN4llvm11SmallVectorINS_11RISCVMatInt4InstELj8EED2Ev.exit273, %bb.u, %bb.fm, %bb.fl
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL19generateInstSeqImpllRKN4llvm15MCSubtargetInfoERNS_11SmallVectorINS_11RISCVMatInt4InstELj8EEE(i64 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = and i64 %i.f, 4
  %i.h = icmp ne i64 %i.g, 0                      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.j = load i64, ptr %i.i, align 8, !tbaa !14   ; 3 uses
  %i.k = and i64 %i.j, 9007199254740992
  %i.l = icmp ne i64 %i.k, 0
  %.not.i.i = icmp ne i64 %0, 0
  %or.cond.not172 = and i1 %.not.i.i, %i.l
  %i.m = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %0)
  %i.n = icmp samesign ult i64 %i.m, 2
  %or.cond154 = select i1 %or.cond.not172, i1 %i.n, i1 false
  br i1 %or.cond154, label %bb.b, label %_ZN4llvm13isPowerOf2_64Em.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.o = icmp ult i64 %0, 2147483648
  %i.p = icmp ne i64 %0, 2048
  %or.cond.not = and i1 %i.o, %i.p
  br i1 %or.cond.not, label %_ZN4llvm13isPowerOf2_64Em.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %0, i1 true)
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = xor i32 %i.r, 63                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !11   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !12
  %.not.i = icmp ult i32 %i.u, %i.w
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !15

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN4llvm23SmallVectorTemplateBaseINS_11RISCVMatInt4InstELb1EE18growAndEmplaceBackIJNS_5RISCV3$_0EjEEERS2_DpOT_"(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 14145, i32 %i.s)
  br label %.critedge46

bb.e:                                             ; preds = %bb.c
  %i.x = zext i32 %i.u to i64
  %i.y = load ptr, ptr %2, align 8, !tbaa !10
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x ; 2 uses
  store i32 14145, ptr %i.z, align 4, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.s, ptr %i.aa, align 4, !tbaa !18
  %i.ab = add nuw i32 %i.u, 1
  store i32 %i.ab, ptr %i.t, align 8, !tbaa !11
  br label %.critedge46

_ZN4llvm13isPowerOf2_64Em.exit.thread:            ; preds = %bb.b, %bb.a
  br i1 %i.h, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm13isPowerOf2_64Em.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !14
  %i.ae = and i64 %i.ad, 140737488355328
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = and i64 %0, 4095
  %i.ah = icmp eq i64 %i.ag, 0
  %or.cond156 = or i1 %i.ah, %i.af
  %i.ai = add i64 %0, 2048
  %i.aj = icmp ult i64 %i.ai, 4096
  %or.cond158 = or i1 %i.aj, %or.cond156
  br i1 %or.cond158, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = add i64 %0, 524288
  %i.al = icmp ult i64 %i.ak, 1048576
  br i1 %i.al, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !11 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !12
  %.not.i73 = icmp ult i32 %i.an, %i.ap
  br i1 %.not.i73, label %bb.j, label %bb.i, !prof !15

bb.i:                                             ; preds = %bb.h
  %i.aq = tail call fastcc noundef nonnull align 4 dereferenceable(8) ptr @"_ZN4llvm23SmallVectorTemplateBaseINS_11RISCVMatInt4InstELb1EE18growAndEmplaceBackIJNS_5RISCV3$_0ERlEEERS2_DpOT_"(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 15674, i64 %0) ; 0 uses
  br label %.critedge46

bb.j:                                             ; preds = %bb.h
  %i.ar = zext i32 %i.an to i64
  %i.as = load ptr, ptr %2, align 8, !tbaa !10
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar ; 2 uses
  store i32 15674, ptr %i.at, align 4, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = trunc nsw i64 %0 to i32
  store i32 %i.av, ptr %i.au, align 4, !tbaa !18
  %i.aw = add nuw i32 %i.an, 1
  store i32 %i.aw, ptr %i.am, align 8, !tbaa !11
  br label %.critedge46

bb.k:                                             ; preds = %bb.g
  %i.ax = add i64 %0, 2147483648
  %i.ay = icmp ult i64 %i.ax, 4294967296
  br i1 %i.ay, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @"_ZN4llvm15SmallVectorImplINS_11RISCVMatInt4InstEE12emplace_backIJNS_5RISCV3$_0ERlEEERS2_DpOT_"(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 15656, i64 %0)
  br label %.critedge46

.critedge:                                        ; preds = %bb.k, %bb.f, %_ZN4llvm13isPowerOf2_64Em.exit.thread
  %i.az = and i64 %i.f, 562949953421312
  %.not173 = icmp eq i64 %i.az, 0
  br i1 %.not173, label %.critedge..critedge51_crit_edge, label %bb.m

.critedge..critedge51_crit_edge:                  ; preds = %.critedge
  %.pre = add i64 %0, 2147483648
  br label %.critedge51

bb.m:                                             ; preds = %.critedge
  %i.ba = add i64 %0, 2048                        ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 4096
  br i1 %i.bb, label %.critedge51.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = add i64 %0, 2147483648                  ; 4 uses
  %i.bd = icmp ult i64 %i.bc, 4294967296
  %i.be = and i64 %0, 4095
  %i.bf = icmp eq i64 %i.be, 0
  %i.bg = and i1 %i.bd, %i.bf
  br i1 %i.bg, label %.critedge51.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = trunc i64 %0 to i32                     ; 5 uses
  %i.bi = lshr i64 %0, 32
  %i.bj = trunc nuw i64 %i.bi to i32
  %i.bk = icmp ne i32 %i.bj, %i.bh
  %or.cond162.not = select i1 %i.h, i1 %i.bk, i1 false
  br i1 %or.cond162.not, label %.critedge51, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = trunc i64 %0 to i16                     ; 3 uses
  %sext = shl i32 %i.bh, 16
  %.unshifted = xor i32 %sext, %i.bh
  %i.bm = icmp ult i32 %.unshifted, 65536
  br i1 %i.bm, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.bn = trunc i64 %0 to i8                      ; 2 uses
  %3 = lshr i16 %i.bl, 8
  %4 = zext nneg i16 %3 to i32
  %sext43 = shl nuw i32 %4, 24
  %5 = ashr exact i32 %sext43, 24                 ; 2 uses
  %6 = sext i8 %i.bn to i32
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !11 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !12
  %.not.i75 = icmp ult i32 %i.bp, %i.br
  br i1 %.not.i75, label %bb.t, label %bb.s, !prof !15

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @"_ZN4llvm23SmallVectorTemplateBaseINS_11RISCVMatInt4InstELb1EE18growAndEmplaceBackIJNS_5RISCV3$_0ERaEEERS2_DpOT_"(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 15175, i8 %i.bn)
  br label %.critedge46

bb.t:                                             ; preds = %bb.r
  %i.bs = zext i32 %i.bp to i64
  %i.bt = load ptr, ptr %2, align 8, !tbaa !10
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bs ; 2 uses
  store i32 15175, ptr %i.bu, align 4, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 %5, ptr %i.bv, align 4, !tbaa !18
  %i.bw = add nuw i32 %i.bp, 1
  store i32 %i.bw, ptr %i.bo, align 8, !tbaa !11
  br label %.critedge46

bb.u:                                             ; preds = %bb.q
  %sext176.a = shl i64 %0, 48
  %i.bx = ashr exact i64 %sext176.a, 48
  %i.by = add nsw i64 %i.bx, 512
  %i.bz = icmp ult i64 %i.by, 1024
  br i1 %i.bz, label %bb.v, label %.critedge48

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @"_ZN4llvm15SmallVectorImplINS_11RISCVMatInt4InstEE12emplace_backIJNS_5RISCV3$_0ERsEEERS2_DpOT_"(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 15178, i16 %i.bl)
  br label %.critedge46

.critedge48:                                      ; preds = %bb.u
  %i.ca = and i64 %0, 63
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.w, label %.critedge51

bb.w:                                             ; preds = %.critedge48
  %i.cc = ashr exact i16 %i.bl, 6
  %i.cd = sext i16 %i.cc to i32
  tail call fastcc void @"_ZN4llvm15SmallVectorImplINS_11RISCVMatInt4InstEE12emplace_backIJNS_5RISCV3$_0EiEEERS2_DpOT_"(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 15181, i32 %i.cd)
  br label %.critedge46

bb.x:                                             ; preds = %bb.p
  %sext175 = shl i64 %0, 32
  %i.ce = ashr exact i64 %sext175, 32
  %i.cf = add nsw i64 %i.ce, 512
  %i.cg = icmp ult i64 %i.cf, 1024
  br i1 %i.cg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @"_ZN4llvm15SmallVectorImplINS_11RISCVMatInt4InstEE12emplace_backIJNS_5RISCV3$_0ERiEEERS2_DpOT_"(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 15179, i32 %i.bh)
  br label %.critedge46

bb.z:                                             ; preds = %bb.x
  %i.ch = and i64 %0, 4194303
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.aa, label %.critedge51

bb.aa:                                            ; preds = %bb.z
  %i.cj = ashr exact i32 %i.bh, 22
  tail call fastcc void @"_ZN4llvm15SmallVectorImplINS_11RISCVMatInt4InstEE12emplace_backIJNS_5RISCV3$_0EiEEERS2_DpOT_"(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 15182, i32 %i.cj)
  br label %.critedge46

.critedge51:                                      ; preds = %.critedge..critedge51_crit_edge, %bb.o, %.critedge48, %bb.z
  %.pre-phi = phi i64 [ %.pre, %.critedge..critedge51_crit_edge ], [ %i.bc, %bb.o ], [ %i.bc, %.critedge48 ], [ %i.bc, %bb.z ]
  %i.ck = icmp ult i64 %.pre-phi, 4294967296
  br i1 %i.ck, label %.critedge51..critedge51.thread_crit_edge, label %bb.ak

.critedge51..critedge51.thread_crit_edge:         ; preds = %.critedge51
  %.pre179 = add nsw i64 %0, 2048
  br label %.critedge51.thread

.critedge51.thread:                               ; preds = %.critedge51..critedge51.thread_crit_edge, %bb.m, %bb.n
  %.pre-phi180 = phi i64 [ %.pre179, %.critedge51..critedge51.thread_crit_edge ], [ %i.ba, %bb.m ], [ %i.ba, %bb.n ]
  %i.cl = lshr i64 %.pre-phi180, 12               ; 2 uses
  %i.cm = and i64 %i.cl, 1048575                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.cn = shl i64 %0, 52                          ; 2 uses
  %i.co = ashr exact i64 %i.cn, 52                ; 3 uses
  store i64 %i.co, ptr %i.a, align 8, !tbaa !14
  %.not45.a = icmp eq i64 %i.cm, 0
  br i1 %.not45.a, label %.thread148, label %bb.ab

.thread148:                                       ; preds = %.critedge51.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  br label %.sink.split

bb.ab:                                            ; preds = %.critedge51.thread
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !11 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !12
  %.not.i77 = icmp ult i32 %i.cq, %i.cs
  br i1 %.not.i77, label %bb.ad, label %bb.ac, !prof !15

bb.ac:                                            ; preds = %bb.ab
  %i.ct = tail call fastcc noundef nonnull align 4 dereferenceable(8) ptr @"_ZN4llvm23SmallVectorTemplateBaseINS_11RISCVMatInt4InstELb1EE18growAndEmplaceBackIJNS_5RISCV3$_0ERlEEERS2_DpOT_"(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 14914, i64 %i.cm) ; 0 uses
  br label %"_ZN4llvm15SmallVectorImplINS_11RISCVMatInt4InstEE12emplace_backIJNS_5RISCV3$_0ERlEEERS2_DpOT_.exit79"

bb.ad:                                            ; preds = %bb.ab
  %i.cu = zext i32 %i.cq to i64
  %i.cv = load ptr, ptr %2, align 8, !tbaa !10
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cu ; 2 uses
  store i32 14914, ptr %i.cw, align 4, !tbaa !17
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = trunc nuw nsw i64 %i.cm to i32
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !18
  %i.cz = add nuw i32 %i.cq, 1
  store i32 %i.cz, ptr %i.cp, align 8, !tbaa !11
  br label %"_ZN4llvm15SmallVectorImplINS_11RISCVMatInt4InstEE12emplace_backIJNS_5RISCV3$_0ERlEEERS2_DpOT_.exit79"

"_ZN4llvm15SmallVectorImplINS_11RISCVMatInt4InstEE12emplace_backIJNS_5RISCV3$_0ERlEEERS2_DpOT_.exit79": ; preds = %bb.ad, %bb.ac
  %.not178 = icmp eq i64 %i.cn, 0
  br i1 %.not178, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %"_ZN4llvm15SmallVectorImplINS_11RISCVMatInt4InstEE12emplace_backIJNS_5RISCV3$_0ERlEEERS2_DpOT_.exit79"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 13727, ptr %i.b, align 4, !tbaa !20
  br i1 %i.h, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.da = shl i64 %i.cl, 44
  %i.db = ashr exact i64 %i.da, 32
  %i.dc = add nsw i64 %i.db, 2147483648
  %i.dd = add nsw i64 %i.dc, %i.co
  %i.de = icmp ult i64 %i.dd, 4294967296
  br i1 %i.de, label %bb.ag, label %.sink.split

.sink.split:                                      ; preds = %bb.af, %.thread148
  %.sink = phi i32 [ 13727, %.thread148 ], [ 13728, %bb.af ] ; 2 uses
  store i32 %.sink, ptr %i.b, align 4, !tbaa !20
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split, %bb.af, %bb.ae
  %i.df = phi i32 [ 13727, %bb.ae ], [ 13727, %bb.af ], [ %.sink, %.sink.split ]
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !11 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !12
  %.not.i80 = icmp ult i32 %i.dh, %i.dj
  br i1 %.not.i80, label %bb.ai, label %bb.ah, !prof !15

bb.ah:                                            ; preds = %bb.ag
  %i.dk = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_11RISCVMatInt4InstELb1EE18growAndEmplaceBackIJRjRlEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_11RISCVMatInt4InstEE12emplace_backIJRjRlEEERS2_DpOT_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.dl = zext i32 %i.dh to i64
  %i.dm = load ptr, ptr %2, align 8, !tbaa !10
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dl ; 2 uses
  store i32 %i.df, ptr %i.dn, align 4, !tbaa !17
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dp = trunc nsw i64 %i.co to i32
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !18
  %i.dq = add nuw i32 %i.dh, 1
  store i32 %i.dq, ptr %i.dg, align 8, !tbaa !11
  br label %_ZN4llvm15SmallVectorImplINS_11RISCVMatInt4InstEE12emplace_backIJRjRlEEERS2_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_11RISCVMatInt4InstEE12emplace_backIJRjRlEEERS2_DpOT_.exit: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.aj

bb.aj:                                            ; preds = %"_ZN4llvm15SmallVectorImplINS_11RISCVMatInt4InstEE12emplace_backIJNS_5RISCV3$_0ERlEEERS2_DpOT_.exit79", %_ZN4llvm15SmallVectorImplINS_11RISCVMatInt4InstEE12emplace_backIJRjRlEEERS2_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.critedge46

bb.ak:                                            ; preds = %.critedge51
  %i.dr = shl i64 %0, 52                          ; 2 uses
  %i.ds = ashr exact i64 %i.dr, 52                ; 3 uses
  %i.dt = sub i64 %0, %i.ds                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 0, ptr %i.c, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 15885, ptr %i.d, align 4, !tbaa !20
  %i.du = add i64 %i.dt, 2147483648
  %i.dv = icmp ult i64 %i.du, 4294967296
  br i1 %i.dv, label %.thread, label %bb.al

.thread:                                          ; preds = %bb.ak
  tail call fastcc void @_ZL19generateInstSeqImpllRKN4llvm15MCSubtargetInfoERNS_11SmallVectorINS_11RISCVMatInt4InstELj8EEE(i64 noundef %i.dt, ptr noundef nonnull align 8 dereferenceable(320) %1, ptr noundef nonnull align 8 dereferenceable(80) %2)
  br label %_ZN4llvm15SmallVectorImplINS_11RISCVMatInt4InstEE12emplace_backIJRjS5_EEERS2_DpOT_.exit

bb.al:                                            ; preds = %bb.ak
  %i.dw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dt, i1 false) ; 3 uses
  %i.dx = trunc nuw nsw i64 %i.dw to i32          ; 5 uses
  store i32 %i.dx, ptr %i.c, align 4, !tbaa !20
  %i.dy = ashr exact i64 %i.dt, %i.dw             ; 5 uses
  %i.dz = icmp samesign ult i64 %i.dw, 13
  %i.ea = add i64 %i.dy, 2048
  %i.eb = icmp ult i64 %i.ea, 4096
  %or.cond164 = select i1 %i.dz, i1 true, i1 %i.eb
  br i1 %or.cond164, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ec = shl i64 %i.dy, 12                       ; 3 uses
  %i.ed = add i64 %i.ec, 2147483648
  %i.ee = icmp ult i64 %i.ed, 4294967296
  br i1 %i.ee, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ef = add nsw i32 %i.dx, -12                  ; 2 uses
  store i32 %i.ef, ptr %i.c, align 4, !tbaa !20
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.eg = icmp ult i64 %i.ec, 4294967296
  %i.eh = and i64 %i.j, 140737488355328
  %i.ei = icmp ne i64 %i.eh, 0
  %or.cond166 = and i1 %i.eg, %i.ei
  br i1 %or.cond166, label %.thread195, label %bb.ap

.thread195:                                       ; preds = %bb.ao
  %i.ej = add nsw i32 %i.dx, -12                  ; 2 uses
  store i32 %i.ej, ptr %i.c, align 4, !tbaa !20
  %i.ek = shl i64 %i.dy, 44
  %i.el = ashr exact i64 %i.ek, 32
end_hunk_0
