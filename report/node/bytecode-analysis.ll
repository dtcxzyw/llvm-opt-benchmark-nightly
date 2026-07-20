inline.NumInlined: 6812
inline.NumDeleted: 2456
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 25
begin_hunk_0
@_ZTVN2v88internal12StdoutStreamE = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr null, ptr @_ZN2v88internal12StdoutStreamD1Ev, ptr @_ZN2v88internal12StdoutStreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr null, ptr @_ZTv0_n24_N2v88internal12StdoutStreamD1Ev, ptr @_ZTv0_n24_N2v88internal12StdoutStreamD0Ev] }, comdat, align 8
@_ZTTN2v88internal12StdoutStreamE = linkonce_odr hidden unnamed_addr constant [6 x ptr] [ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVN2v88internal12StdoutStreamE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_So, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_So, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVN2v88internal12StdoutStreamE, i32 0, i32 1, i32 3)], comdat, align 8
@_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr null, ptr @_ZN2v88internal8OFStreamD1Ev, ptr @_ZN2v88internal8OFStreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr null, ptr @_ZTv0_n24_N2v88internal8OFStreamD1Ev, ptr @_ZTv0_n24_N2v88internal8OFStreamD0Ev] }, comdat, align 8
@_ZTCN2v88internal12StdoutStreamE0_So = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr null, ptr @_ZNSoD1Ev, ptr @_ZNSoD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr null, ptr @_ZTv0_n24_NSoD1Ev, ptr @_ZTv0_n24_NSoD0Ev] }, comdat, align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTVN2v88internal8OFStreamE = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 80 to ptr), ptr null, ptr null, ptr @_ZN2v88internal8OFStreamD1Ev, ptr @_ZN2v88internal8OFStreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -80 to ptr), ptr inttoptr (i64 -80 to ptr), ptr null, ptr @_ZTv0_n24_N2v88internal8OFStreamD1Ev, ptr @_ZTv0_n24_N2v88internal8OFStreamD0Ev] }, comdat, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.6 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1

@_ZN2v88internal8compiler23BytecodeLoopAssignmentsC1EiiPNS0_4ZoneE = hidden unnamed_addr alias void (ptr, i32, i32, ptr), ptr @_ZN2v88internal8compiler23BytecodeLoopAssignmentsC2EiiPNS0_4ZoneE
@_ZN2v88internal8compiler16ResumeJumpTargetC1Eiii = hidden unnamed_addr alias void (ptr, i32, i32, i32), ptr @_ZN2v88internal8compiler16ResumeJumpTargetC2Eiii
@_ZN2v88internal8compiler16BytecodeAnalysisC1ENS0_6HandleINS0_13BytecodeArrayEEEPNS0_4ZoneENS0_14BytecodeOffsetEb = hidden unnamed_addr alias void (ptr, ptr, ptr, i32, i1), ptr @_ZN2v88internal8compiler16BytecodeAnalysisC2ENS0_6HandleINS0_13BytecodeArrayEEEPNS0_4ZoneENS0_14BytecodeOffsetEb

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler23BytecodeLoopAssignmentsC2EiiPNS0_4ZoneE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  store i32 %1, ptr %0, align 8
  %i.a = add nsw i32 %2, %1                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.f, 32
  br i1 %i.g, label %bb.b, label %_ZN2v88internal4Zone8AllocateINS0_9BitVectorEEEPvm.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef 32) #23
  %.pre.i.i = load i64, ptr %i.d, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_9BitVectorEEEPvm.exit.i

_ZN2v88internal4Zone8AllocateINS0_9BitVectorEEEPvm.exit.i: ; preds = %bb.b, %bb.a
  %i.h = phi i64 [ %.pre.i.i, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 5 uses
  %i.j = add i64 %i.h, 32
  store i64 %i.j, ptr %i.d, align 8
  store i32 %i.a, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8
  %i.n = add nsw i32 %i.a, 63
  %i.o = ashr i32 %i.n, 6                         ; 2 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.c, label %_ZN2v88internal4Zone3NewINS0_9BitVectorEJiRPS1_EEEPT_DpOT0_.exit

bb.c:                                             ; preds = %_ZN2v88internal4Zone8AllocateINS0_9BitVectorEEEPvm.exit.i
  %i.q = zext nneg i32 %i.o to i64                ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 3                  ; 4 uses
  %i.s = load i64, ptr %i.b, align 8
  %i.t = load i64, ptr %i.d, align 8              ; 2 uses
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp ugt i64 %i.r, %i.u
  br i1 %i.v, label %bb.d, label %.lr.ph.i.i.i.i.i.i, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef %i.r) #23
  %.pre.i.i.i.i = load i64, ptr %i.d, align 8
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %bb.c
  %i.w = phi i64 [ %.pre.i.i.i.i, %bb.d ], [ %i.t, %bb.c ] ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = add i64 %i.w, %i.r
  store i64 %i.y, ptr %i.d, align 8
  store ptr %i.x, ptr %i.k, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.x, i8 0, i64 %i.r, i1 false)
  %i.z = load ptr, ptr %i.k, align 8              ; 2 uses
  store ptr %i.z, ptr %i.l, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.q
  store ptr %i.aa, ptr %i.m, align 8
  br label %_ZN2v88internal4Zone3NewINS0_9BitVectorEJiRPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_9BitVectorEJiRPS1_EEEPT_DpOT0_.exit: ; preds = %_ZN2v88internal4Zone8AllocateINS0_9BitVectorEEEPvm.exit.i, %.lr.ph.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.ab, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_ZN2v88internal8compiler23BytecodeLoopAssignments3AddENS0_11interpreter8RegisterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw nsw i32 -9, %1                   ; 2 uses
  %i.e = and i32 %i.d, 63
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp samesign ult i32 %1, -8
  tail call void @llvm.assume(i1 %i.j)
  %i.k = lshr i32 %i.d, 6
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.l ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = or i64 %i.n, %i.g
  store i64 %i.o, ptr %i.m, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = load i32, ptr %0, align 8
  %i.q = add nsw i32 %i.p, %1                     ; 3 uses
  %i.r = and i32 %i.q, 63
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw i64 1, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp sgt i32 %i.q, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = lshr i32 %i.q, 6
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = or i64 %i.t, %i.aa
  store i64 %i.ab, ptr %i.z, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_ZN2v88internal8compiler23BytecodeLoopAssignments7AddListENS0_11interpreter8RegisterEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %.not16 = icmp eq i32 %2, 0                     ; 2 uses
  br i1 %i.a, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.a
  br i1 %.not16, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %xtraiter = and i32 %2, 1
  %i.c = icmp eq i32 %2, 1
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %2, -2
  br label %bb.c

.preheader:                                       ; preds = %bb.a
  br i1 %.not16, label %.loopexit, label %.lr.ph15

.lr.ph15:                                         ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %xtraiter26 = and i32 %2, 1
  %i.e = icmp eq i32 %2, 1
  br i1 %i.e, label %.epil.preheader25, label %.lr.ph15.new

.lr.ph15.new:                                     ; preds = %.lr.ph15
  %unroll_iter29 = and i32 %2, -2
  %invariant.op = sub i32 -9, %1
  %invariant.op32 = sub i32 -9, %1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph15.new
  %.0814 = phi i32 [ 0, %.lr.ph15.new ], [ %i.ac, %bb.b ] ; 3 uses
  %niter30 = phi i32 [ 0, %.lr.ph15.new ], [ %niter30.next.1, %bb.b ]
  %i.f = load ptr, ptr %i.d, align 8
  %.reass.reass.reass = add i32 %.0814, %invariant.op ; 2 uses
  %i.g = and i32 %.reass.reass.reass, 63
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw i64 1, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = lshr i32 %.reass.reass.reass, 6
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.m ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = or i64 %i.o, %i.i
  store i64 %i.p, ptr %i.n, align 8
  %i.q = or disjoint i32 %.0814, 1
  %i.r = load ptr, ptr %i.d, align 8
  %.reass.reass.1.reass = add i32 %i.q, %invariant.op32 ; 2 uses
  %i.s = and i32 %.reass.reass.1.reass, 63
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw i64 1, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i32 %.reass.reass.1.reass, 6
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = or i64 %i.aa, %i.u
  store i64 %i.ab, ptr %i.z, align 8
  %i.ac = add nuw i32 %.0814, 2                   ; 2 uses
  %niter30.next.1 = add nuw i32 %niter30, 2       ; 2 uses
  %niter30.ncmp.1 = icmp eq i32 %niter30.next.1, %unroll_iter29
  br i1 %niter30.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !6

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %.013 = phi i32 [ 0, %.lr.ph.new ], [ %i.bi, %bb.c ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.ad = load ptr, ptr %i.b, align 8
  %i.ae = load i32, ptr %0, align 8
  %i.af = add i32 %.013, %1
  %i.ag = add i32 %i.af, %i.ae                    ; 3 uses
  %i.ah = and i32 %i.ag, 63
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp sgt i32 %i.ag, -1
  tail call void @llvm.assume(i1 %i.am)
  %i.an = lshr i32 %i.ag, 6
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ao ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = or i64 %i.aj, %i.aq
  store i64 %i.ar, ptr %i.ap, align 8
  %i.as = or disjoint i32 %.013, 1
  %i.at = load ptr, ptr %i.b, align 8
  %i.au = load i32, ptr %0, align 8
  %i.av = add i32 %i.as, %1
  %i.aw = add i32 %i.av, %i.au                    ; 3 uses
  %i.ax = and i32 %i.aw, 63
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp sgt i32 %i.aw, -1
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = lshr i32 %i.aw, 6
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.be ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = or i64 %i.az, %i.bg
  store i64 %i.bh, ptr %i.bf, align 8
  %i.bi = add nuw i32 %.013, 2                    ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit23.unr-lcssa, label %bb.c, !llvm.loop !8

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod27.not = icmp eq i32 %xtraiter26, 0
  br i1 %lcmp.mod27.not, label %.loopexit, label %.epil.preheader25

.epil.preheader25:                                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph15
  %.0814.epil.init = phi i32 [ 0, %.lr.ph15 ], [ %i.ac, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod28 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.bj = load ptr, ptr %i.d, align 8
  %reass.sub.epil = sub i32 %.0814.epil.init, %1
  %.reass.reass.epil = add i32 %reass.sub.epil, -9 ; 2 uses
  %i.bk = and i32 %.reass.reass.epil, 63
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = lshr i32 %.reass.reass.epil, 6
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bq ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = or i64 %i.bs, %i.bm
  store i64 %i.bt, ptr %i.br, align 8
  br label %.loopexit

.loopexit.loopexit23.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit23.unr-lcssa, %.lr.ph
  %.013.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.bi, %.loopexit.loopexit23.unr-lcssa ]
  %lcmp.mod24 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.bu = load ptr, ptr %i.b, align 8
  %i.bv = load i32, ptr %0, align 8
  %i.bw = add i32 %.013.epil.init, %1
  %i.bx = add i32 %i.bw, %i.bv                    ; 3 uses
  %i.by = and i32 %i.bx, 63
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = shl nuw i64 1, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp sgt i32 %i.bx, -1
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = lshr i32 %i.bx, 6
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cf ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = or i64 %i.ca, %i.ch
  store i64 %i.ci, ptr %i.cg, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit23.unr-lcssa, %.epil.preheader25, %.loopexit.loopexit.unr-lcssa, %.preheader11, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal8compiler23BytecodeLoopAssignments5UnionERKS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = trunc i64 %i.j to i32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %_ZN2v88internal9BitVector5UnionERKS1_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.p = phi ptr [ %i.f, %.lr.ph.i ], [ %i.x, %bb.b ]
  %i.q = load ptr, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = or i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.w = load ptr, ptr %i.c, align 8
  %i.x = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %sext.i = shl i64 %i.aa, 29
  %i.ab = ashr i64 %sext.i, 32
  %i.ac = icmp slt i64 %indvars.iv.next.i, %i.ab
  br i1 %i.ac, label %bb.b, label %_ZN2v88internal9BitVector5UnionERKS1_.exit, !llvm.loop !9

_ZN2v88internal9BitVector5UnionERKS1_.exit:       ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal8compiler23BytecodeLoopAssignments17ContainsParameterEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp sgt i32 %1, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = lshr i32 %1, 6
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i32 %1, 63
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw i64 1, %i.k
  %i.m = and i64 %i.i, %i.l
  %i.n = icmp ne i64 %i.m, 0
  ret i1 %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal8compiler23BytecodeLoopAssignments13ContainsLocalEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i32, ptr %0, align 8
  %i.d = add nsw i32 %i.c, %1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp sgt i32 %i.d, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = lshr i32 %i.d, 6
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i32 %i.d, 63
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw i64 1, %i.m
  %i.o = and i64 %i.n, %i.k
  %i.p = icmp ne i64 %i.o, 0
  ret i1 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal8compiler16ResumeJumpTargetC2Eiii(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 align 2 {
bb.a:
  store i32 %1, ptr %0, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i64, i32 } @_ZN2v88internal8compiler16ResumeJumpTarget4LeafEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %.sroa.2.0.insert.ext = zext i32 %1 to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %1, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i64, i32 } @_ZN2v88internal8compiler16ResumeJumpTarget12AtLoopHeaderEiRKS2_(i32 noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %.sroa.2.0.insert.ext = zext i32 %0 to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.a to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %i.c, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler16BytecodeAnalysis20BytecodeAnalysisImpl7AnalyzeEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"class.v8::internal::HandlerTable", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.v8::internal::HandlerTable", align 8 ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler16BytecodeAnalysis20BytecodeAnalysisImpl7AnalyzeEv:bb.a
  %i.tf = ptrtoint ptr %i.td to i64
  %i.tg = ptrtoint ptr %i.te to i64
  %i.th = sub i64 %i.tf, %i.tg
  %i.ti = ashr exact i64 %i.th, 3
  %i.tj = icmp ne ptr %i.td, null
  %.neg.i.i.i = sext i1 %i.tj to i64
  %i.tk = add nsw i64 %i.ti, %.neg.i.i.i
  %i.tl = shl nsw i64 %i.tk, 6
  %i.tm = load ptr, ptr %i.pf, align 8            ; 2 uses
  %i.tn = load ptr, ptr %i.rj, align 8            ; 2 uses
  %i.to = ptrtoint ptr %i.tm to i64
  %i.tp = ptrtoint ptr %i.tn to i64
  %i.tq = sub i64 %i.to, %i.tp
  %i.tr = ashr exact i64 %i.tq, 3
  %i.ts = add nsw i64 %i.tl, %i.tr
  %i.tt = load ptr, ptr %i.rk, align 8
  %i.tu = load ptr, ptr %i.rg, align 8
  %i.tv = ptrtoint ptr %i.tt to i64
  %i.tw = ptrtoint ptr %i.tu to i64
  %i.tx = sub i64 %i.tv, %i.tw
  %i.ty = ashr exact i64 %i.tx, 3
  %i.tz = add nsw i64 %i.ts, %i.ty
  %i.ua = icmp ugt i64 %i.tz, 1
  br i1 %i.ua, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  br i1 %i.rz, label %bb.q, label %.critedge514

bb.q:                                             ; preds = %bb.p
  %i.ub = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator19GetJumpTargetOffsetEv(ptr noundef nonnull align 8 dereferenceable(48) %i.os) #23
  %i.uc = icmp eq i32 %i.ub, %i.ry
  br i1 %i.uc, label %..critedge514_crit_edge, label %.critedge.thread

..critedge514_crit_edge:                          ; preds = %bb.q
  %.pre = load ptr, ptr %i.pf, align 8, !noalias !14
  %.pre5947 = load ptr, ptr %i.rj, align 8, !noalias !14
  br label %.critedge514

.critedge514:                                     ; preds = %..critedge514_crit_edge, %bb.p
  %i.ud = phi ptr [ %.pre5947, %..critedge514_crit_edge ], [ %i.tn, %bb.p ]
  %i.ue = phi ptr [ %.pre, %..critedge514_crit_edge ], [ %i.tm, %bb.p ] ; 2 uses
  %i.uf = icmp eq ptr %i.ue, %i.ud
  br i1 %i.uf, label %bb.r, label %_ZNSt5stackIN2v88internal8compiler16BytecodeAnalysis20BytecodeAnalysisImpl14LoopStackEntryENS1_9ZoneDequeIS5_EEE3topEv.exit

bb.r:                                             ; preds = %.critedge514
  %i.ug = load ptr, ptr %i.rh, align 8, !noalias !14
  %i.uh = getelementptr inbounds i8, ptr %i.ug, i64 -8
  %i.ui = load ptr, ptr %i.uh, align 8
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 512
  br label %_ZNSt5stackIN2v88internal8compiler16BytecodeAnalysis20BytecodeAnalysisImpl14LoopStackEntryENS1_9ZoneDequeIS5_EEE3topEv.exit

_ZNSt5stackIN2v88internal8compiler16BytecodeAnalysis20BytecodeAnalysisImpl14LoopStackEntryENS1_9ZoneDequeIS5_EEE3topEv.exit: ; preds = %.critedge514, %bb.r
  %i.uk = phi ptr [ %i.uj, %bb.r ], [ %i.ue, %.critedge514 ] ; 2 uses
  %i.ul = getelementptr inbounds i8, ptr %i.uk, i64 -8
  %i.um = getelementptr inbounds i8, ptr %i.uk, i64 -4
  %i.un = load i32, ptr %i.um, align 4
  %i.uo = sext i32 %i.un to i64
  %i.up = load ptr, ptr %i.rl, align 8
  %i.uq = getelementptr inbounds nuw [64 x i8], ptr %i.up, i64 %i.uo ; 14 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 16 ; 10 uses
  %i.us = icmp ult i8 %i.rq, -44
  call void @llvm.assume(i1 %i.us)
  %i.ut = zext i8 %i.rq to i64                    ; 3 uses
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandCountE, i64 %i.ut
  %i.uv = load i32, ptr %i.uu, align 4            ; 2 uses
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandTypesE, i64 %i.ut
  %i.ux = load ptr, ptr %i.uw, align 8
  %i.uy = icmp sgt i32 %i.uv, 0
  br i1 %i.uy, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNSt5stackIN2v88internal8compiler16BytecodeAnalysis20BytecodeAnalysisImpl14LoopStackEntryENS1_9ZoneDequeIS5_EEE3topEv.exit
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uq, i64 24 ; 15 uses
  br label %bb.s

._crit_edge.i:                                    ; preds = %_ZN2v88internal8compiler23BytecodeLoopAssignments3AddENS0_11interpreter8RegisterE.exit.i, %_ZNSt5stackIN2v88internal8compiler16BytecodeAnalysis20BytecodeAnalysisImpl14LoopStackEntryENS1_9ZoneDequeIS5_EEE3topEv.exit
  %i.va = getelementptr inbounds nuw i8, ptr @_ZN2v88internal11interpreter9Bytecodes20kImplicitRegisterUseE, i64 %i.ut
  %i.vb = load i8, ptr %i.va, align 1
  %i.vc = and i8 %i.vb, 8
  %.not.i = icmp eq i8 %i.vc, 0
  br i1 %.not.i, label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateAssignmentsENS0_11interpreter8BytecodeEPNS1_23BytecodeLoopAssignmentsERKNS3_21BytecodeArrayIteratorE.exit, label %bb.z

bb.s:                                             ; preds = %_ZN2v88internal8compiler23BytecodeLoopAssignments3AddENS0_11interpreter8RegisterE.exit.i, %.lr.ph.i
  %.059.i = phi i32 [ 0, %.lr.ph.i ], [ %i.aes, %_ZN2v88internal8compiler23BytecodeLoopAssignments3AddENS0_11interpreter8RegisterE.exit.i ] ; 13 uses
  %i.vd = sext i32 %.059.i to i64
  %i.ve = getelementptr inbounds i8, ptr %i.ux, i64 %i.vd
  %i.vf = load i8, ptr %i.ve, align 1
  switch i8 %i.vf, label %_ZN2v88internal8compiler23BytecodeLoopAssignments3AddENS0_11interpreter8RegisterE.exit.i [
    i8 17, label %bb.t
    i8 13, label %bb.t
    i8 14, label %bb.w
    i8 15, label %bb.x
    i8 16, label %bb.y
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.vg = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef %.059.i) #23 ; 4 uses
  %i.vh = icmp slt i32 %i.vg, 0
  %i.vi = load ptr, ptr %i.uz, align 8            ; 2 uses
  br i1 %i.vh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.vj = sub nuw nsw i32 -9, %i.vg               ; 2 uses
  %i.vk = and i32 %i.vj, 63
  %i.vl = zext nneg i32 %i.vk to i64
  %i.vm = shl nuw i64 1, %i.vl
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  %i.vo = load ptr, ptr %i.vn, align 8
  %i.vp = icmp samesign ult i32 %i.vg, -8
  call void @llvm.assume(i1 %i.vp)
  %i.vq = lshr i32 %i.vj, 6
  %i.vr = zext nneg i32 %i.vq to i64
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.vo, i64 %i.vr ; 2 uses
  %i.vt = load i64, ptr %i.vs, align 8
  %i.vu = or i64 %i.vt, %i.vm
  store i64 %i.vu, ptr %i.vs, align 8
  br label %_ZN2v88internal8compiler23BytecodeLoopAssignments3AddENS0_11interpreter8RegisterE.exit.i

bb.v:                                             ; preds = %bb.t
  %i.vv = load i32, ptr %i.ur, align 8
  %i.vw = add nsw i32 %i.vv, %i.vg                ; 3 uses
  %i.vx = and i32 %i.vw, 63
  %i.vy = zext nneg i32 %i.vx to i64
  %i.vz = shl nuw i64 1, %i.vy
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  %i.wb = load ptr, ptr %i.wa, align 8
  %i.wc = icmp sgt i32 %i.vw, -1
  call void @llvm.assume(i1 %i.wc)
  %i.wd = lshr i32 %i.vw, 6
  %i.we = zext nneg i32 %i.wd to i64
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.wb, i64 %i.we ; 2 uses
  %i.wg = load i64, ptr %i.wf, align 8
  %i.wh = or i64 %i.vz, %i.wg
  store i64 %i.wh, ptr %i.wf, align 8
  br label %_ZN2v88internal8compiler23BytecodeLoopAssignments3AddENS0_11interpreter8RegisterE.exit.i

bb.w:                                             ; preds = %bb.s
  %i.wi = add nsw i32 %.059.i, 1                  ; 7 uses
  %i.wj = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef %.059.i) #23 ; 7 uses
  %i.wk = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator23GetRegisterCountOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef %i.wi) #23 ; 9 uses
  %i.wl = icmp slt i32 %i.wj, 0
  %.not16.i.i = icmp eq i32 %i.wk, 0              ; 2 uses
  br i1 %i.wl, label %.preheader.i.i, label %.preheader11.i.i

.preheader11.i.i:                                 ; preds = %bb.w
  br i1 %.not16.i.i, label %_ZN2v88internal8compiler23BytecodeLoopAssignments3AddENS0_11interpreter8RegisterE.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader11.i.i
  %xtraiter = and i32 %i.wk, 1
  %i.wm = icmp eq i32 %i.wk, 1
  br i1 %i.wm, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.wk, -2
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.w
  br i1 %.not16.i.i, label %_ZN2v88internal8compiler23BytecodeLoopAssignments3AddENS0_11interpreter8RegisterE.exit.i, label %.lr.ph15.i.i.preheader

.lr.ph15.i.i.preheader:                           ; preds = %.preheader.i.i
  %xtraiter7415 = and i32 %i.wk, 1
  %i.wn = icmp eq i32 %i.wk, 1
  br i1 %i.wn, label %.lr.ph15.i.i.epil.preheader, label %.lr.ph15.i.i.preheader.new

.lr.ph15.i.i.preheader.new:                       ; preds = %.lr.ph15.i.i.preheader
  %unroll_iter7418 = and i32 %i.wk, -2
  %invariant.op = sub i32 -9, %i.wj
  %invariant.op7520 = sub i32 -9, %i.wj
  br label %.lr.ph15.i.i

.lr.ph15.i.i:                                     ; preds = %.lr.ph15.i.i, %.lr.ph15.i.i.preheader.new
  %.0814.i.i = phi i32 [ 0, %.lr.ph15.i.i.preheader.new ], [ %i.xl, %.lr.ph15.i.i ] ; 3 uses
  %niter7419 = phi i32 [ 0, %.lr.ph15.i.i.preheader.new ], [ %niter7419.next.1, %.lr.ph15.i.i ]
  %i.wo = load ptr, ptr %i.uz, align 8
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i32 %.0814.i.i, %invariant.op ; 2 uses
  %i.wp = and i32 %.reass.reass.i.reass.reass.i.reass.reass.reass, 63
  %i.wq = zext nneg i32 %i.wp to i64
  %i.wr = shl nuw i64 1, %i.wq
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  %i.wt = load ptr, ptr %i.ws, align 8
  %i.wu = lshr i32 %.reass.reass.i.reass.reass.i.reass.reass.reass, 6
  %i.wv = zext nneg i32 %i.wu to i64
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.wt, i64 %i.wv ; 2 uses
  %i.wx = load i64, ptr %i.ww, align 8
  %i.wy = or i64 %i.wr, %i.wx
  store i64 %i.wy, ptr %i.ww, align 8
  %i.wz = or disjoint i32 %.0814.i.i, 1
  %i.xa = load ptr, ptr %i.uz, align 8
  %.reass.reass.i.reass.reass.i.reass.reass.1.reass = add i32 %i.wz, %invariant.op7520 ; 2 uses
  %i.xb = and i32 %.reass.reass.i.reass.reass.i.reass.reass.1.reass, 63
  %i.xc = zext nneg i32 %i.xb to i64
  %i.xd = shl nuw i64 1, %i.xc
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xa, i64 16
  %i.xf = load ptr, ptr %i.xe, align 8
  %i.xg = lshr i32 %.reass.reass.i.reass.reass.i.reass.reass.1.reass, 6
  %i.xh = zext nneg i32 %i.xg to i64
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %i.xh ; 2 uses
  %i.xj = load i64, ptr %i.xi, align 8
  %i.xk = or i64 %i.xd, %i.xj
  store i64 %i.xk, ptr %i.xi, align 8
  %i.xl = add nuw i32 %.0814.i.i, 2               ; 2 uses
  %niter7419.next.1 = add nuw i32 %niter7419, 2   ; 2 uses
  %niter7419.ncmp.1 = icmp eq i32 %niter7419.next.1, %unroll_iter7418
  br i1 %niter7419.ncmp.1, label %_ZN2v88internal8compiler23BytecodeLoopAssignments3AddENS0_11interpreter8RegisterE.exit.i.loopexit.unr-lcssa, label %.lr.ph15.i.i, !llvm.loop !6

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.013.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.yr, %.lr.ph.i.i ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.xm = load ptr, ptr %i.uz, align 8
  %i.xn = load i32, ptr %i.ur, align 8
  %i.xo = add i32 %.013.i.i, %i.wj
  %i.xp = add i32 %i.xo, %i.xn                    ; 3 uses
  %i.xq = and i32 %i.xp, 63
  %i.xr = zext nneg i32 %i.xq to i64
  %i.xs = shl nuw i64 1, %i.xr
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xm, i64 16
  %i.xu = load ptr, ptr %i.xt, align 8
  %i.xv = icmp sgt i32 %i.xp, -1
  call void @llvm.assume(i1 %i.xv)
  %i.xw = lshr i32 %i.xp, 6
  %i.xx = zext nneg i32 %i.xw to i64
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %i.xx ; 2 uses
  %i.xz = load i64, ptr %i.xy, align 8
  %i.ya = or i64 %i.xs, %i.xz
  store i64 %i.ya, ptr %i.xy, align 8
  %i.yb = or disjoint i32 %.013.i.i, 1
  %i.yc = load ptr, ptr %i.uz, align 8
  %i.yd = load i32, ptr %i.ur, align 8
  %i.ye = add i32 %i.yb, %i.wj
  %i.yf = add i32 %i.ye, %i.yd                    ; 3 uses
  %i.yg = and i32 %i.yf, 63
  %i.yh = zext nneg i32 %i.yg to i64
  %i.yi = shl nuw i64 1, %i.yh
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yc, i64 16
  %i.yk = load ptr, ptr %i.yj, align 8
  %i.yl = icmp sgt i32 %i.yf, -1
  call void @llvm.assume(i1 %i.yl)
  %i.ym = lshr i32 %i.yf, 6
  %i.yn = zext nneg i32 %i.ym to i64
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.yk, i64 %i.yn ; 2 uses
  %i.yp = load i64, ptr %i.yo, align 8
  %i.yq = or i64 %i.yi, %i.yp
  store i64 %i.yq, ptr %i.yo, align 8
  %i.yr = add nuw i32 %.013.i.i, 2                ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2v88internal8compiler23BytecodeLoopAssignments3AddENS0_11interpreter8RegisterE.exit.i.loopexit7412.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !8

bb.x:                                             ; preds = %bb.s
  %i.ys = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef %.059.i) #23 ; 5 uses
  %i.yt = icmp slt i32 %i.ys, 0
  %i.yu = load ptr, ptr %i.uz, align 8            ; 2 uses
  br i1 %i.yt, label %.preheader.i33.i, label %.preheader11.i29.preheader.i

.preheader11.i29.preheader.i:                     ; preds = %bb.x
  %i.yv = load i32, ptr %i.ur, align 8
  %i.yw = add i32 %i.yv, %i.ys                    ; 3 uses
  %i.yx = and i32 %i.yw, 63
  %i.yy = zext nneg i32 %i.yx to i64
  %i.yz = shl nuw i64 1, %i.yy
  %i.za = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  %i.zb = load ptr, ptr %i.za, align 8
  %i.zc = icmp sgt i32 %i.yw, -1
  call void @llvm.assume(i1 %i.zc)
  %i.zd = lshr i32 %i.yw, 6
  %i.ze = zext nneg i32 %i.zd to i64
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %i.zb, i64 %i.ze ; 2 uses
  %i.zg = load i64, ptr %i.zf, align 8
  %i.zh = or i64 %i.yz, %i.zg
  store i64 %i.zh, ptr %i.zf, align 8
  %i.zi = load ptr, ptr %i.uz, align 8
  %i.zj = load i32, ptr %i.ur, align 8
  %i.zk = add nuw i32 %i.ys, 1
  %i.zl = add i32 %i.zk, %i.zj                    ; 3 uses
  %i.zm = and i32 %i.zl, 63
  %i.zn = zext nneg i32 %i.zm to i64
  %i.zo = shl nuw i64 1, %i.zn
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zi, i64 16
  %i.zq = load ptr, ptr %i.zp, align 8
  %i.zr = icmp sgt i32 %i.zl, -1
  call void @llvm.assume(i1 %i.zr)
  %i.zs = lshr i32 %i.zl, 6
  %i.zt = zext nneg i32 %i.zs to i64
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %i.zq, i64 %i.zt ; 2 uses
  %i.zv = load i64, ptr %i.zu, align 8
  %i.zw = or i64 %i.zo, %i.zv
  store i64 %i.zw, ptr %i.zu, align 8
  br label %_ZN2v88internal8compiler23BytecodeLoopAssignments3AddENS0_11interpreter8RegisterE.exit.i

.preheader.i33.i:                                 ; preds = %bb.x
  %.reass.reass.i37.reass.i = sub nsw i32 -9, %i.ys ; 2 uses
  %i.zx = and i32 %.reass.reass.i37.reass.i, 63
  %i.zy = zext nneg i32 %i.zx to i64
  %i.zz = shl nuw i64 1, %i.zy
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  %i.aab = load ptr, ptr %i.aaa, align 8
  %i.aac = lshr i32 %.reass.reass.i37.reass.i, 6
  %i.aad = zext nneg i32 %i.aac to i64
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.aab, i64 %i.aad ; 2 uses
  %i.aaf = load i64, ptr %i.aae, align 8
  %i.aag = or i64 %i.aaf, %i.zz
  store i64 %i.aag, ptr %i.aae, align 8
  %i.aah = load ptr, ptr %i.uz, align 8
  %.reass.reass.i37.reass.1.i = sub nsw i32 -8, %i.ys ; 2 uses
  %i.aai = and i32 %.reass.reass.i37.reass.1.i, 63
  %i.aaj = zext nneg i32 %i.aai to i64
  %i.aak = shl nuw i64 1, %i.aaj
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aah, i64 16
  %i.aam = load ptr, ptr %i.aal, align 8
  %i.aan = lshr i32 %.reass.reass.i37.reass.1.i, 6
  %i.aao = zext nneg i32 %i.aan to i64
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.aam, i64 %i.aao ; 2 uses
  %i.aaq = load i64, ptr %i.aap, align 8
  %i.aar = or i64 %i.aaq, %i.aak
  store i64 %i.aar, ptr %i.aap, align 8
  br label %_ZN2v88internal8compiler23BytecodeLoopAssignments3AddENS0_11interpreter8RegisterE.exit.i

bb.y:                                             ; preds = %bb.s
  %i.aas = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef %.059.i) #23 ; 7 uses
  %i.aat = icmp slt i32 %i.aas, 0
  %i.aau = load ptr, ptr %i.uz, align 8           ; 2 uses
  br i1 %i.aat, label %.preheader.i44.i, label %.preheader11.i40.preheader.i

.preheader11.i40.preheader.i:                     ; preds = %bb.y
  %i.aav = load i32, ptr %i.ur, align 8
  %i.aaw = add i32 %i.aav, %i.aas                 ; 3 uses
  %i.aax = and i32 %i.aaw, 63
  %i.aay = zext nneg i32 %i.aax to i64
  %i.aaz = shl nuw i64 1, %i.aay
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aau, i64 16
  %i.abb = load ptr, ptr %i.aba, align 8
  %i.abc = icmp sgt i32 %i.aaw, -1
  call void @llvm.assume(i1 %i.abc)
  %i.abd = lshr i32 %i.aaw, 6
  %i.abe = zext nneg i32 %i.abd to i64
  %i.abf = getelementptr inbounds nuw [8 x i8], ptr %i.abb, i64 %i.abe ; 2 uses
  %i.abg = load i64, ptr %i.abf, align 8
  %i.abh = or i64 %i.aaz, %i.abg
  store i64 %i.abh, ptr %i.abf, align 8
  %i.abi = load ptr, ptr %i.uz, align 8
  %i.abj = load i32, ptr %i.ur, align 8
  %i.abk = add nuw i32 %i.aas, 1
  %i.abl = add i32 %i.abk, %i.abj                 ; 3 uses
  %i.abm = and i32 %i.abl, 63
  %i.abn = zext nneg i32 %i.abm to i64
  %i.abo = shl nuw i64 1, %i.abn
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abi, i64 16
  %i.abq = load ptr, ptr %i.abp, align 8
  %i.abr = icmp sgt i32 %i.abl, -1
  call void @llvm.assume(i1 %i.abr)
  %i.abs = lshr i32 %i.abl, 6
  %i.abt = zext nneg i32 %i.abs to i64
  %i.abu = getelementptr inbounds nuw [8 x i8], ptr %i.abq, i64 %i.abt ; 2 uses
  %i.abv = load i64, ptr %i.abu, align 8
  %i.abw = or i64 %i.abo, %i.abv
  store i64 %i.abw, ptr %i.abu, align 8
  %i.abx = load ptr, ptr %i.uz, align 8
  %i.aby = load i32, ptr %i.ur, align 8
  %i.abz = add nuw i32 %i.aas, 2
  %i.aca = add i32 %i.abz, %i.aby                 ; 3 uses
  %i.acb = and i32 %i.aca, 63
  %i.acc = zext nneg i32 %i.acb to i64
  %i.acd = shl nuw i64 1, %i.acc
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abx, i64 16
  %i.acf = load ptr, ptr %i.ace, align 8
  %i.acg = icmp sgt i32 %i.aca, -1
  call void @llvm.assume(i1 %i.acg)
  %i.ach = lshr i32 %i.aca, 6
  %i.aci = zext nneg i32 %i.ach to i64
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %i.acf, i64 %i.aci ; 2 uses
  %i.ack = load i64, ptr %i.acj, align 8
  %i.acl = or i64 %i.acd, %i.ack
  store i64 %i.acl, ptr %i.acj, align 8
  br label %_ZN2v88internal8compiler23BytecodeLoopAssignments3AddENS0_11interpreter8RegisterE.exit.i

.preheader.i44.i:                                 ; preds = %bb.y
  %.reass.reass.i48.reass.i = sub nsw i32 -9, %i.aas ; 2 uses
  %i.acm = and i32 %.reass.reass.i48.reass.i, 63
  %i.acn = zext nneg i32 %i.acm to i64
  %i.aco = shl nuw i64 1, %i.acn
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aau, i64 16
  %i.acq = load ptr, ptr %i.acp, align 8
  %i.acr = lshr i32 %.reass.reass.i48.reass.i, 6
  %i.acs = zext nneg i32 %i.acr to i64
  %i.act = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.acs ; 2 uses
  %i.acu = load i64, ptr %i.act, align 8
  %i.acv = or i64 %i.acu, %i.aco
  store i64 %i.acv, ptr %i.act, align 8
  %i.acw = load ptr, ptr %i.uz, align 8
  %.reass.reass.i48.reass.1.i = sub nsw i32 -8, %i.aas ; 2 uses
  %i.acx = and i32 %.reass.reass.i48.reass.1.i, 63
  %i.acy = zext nneg i32 %i.acx to i64
  %i.acz = shl nuw i64 1, %i.acy
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acw, i64 16
  %i.adb = load ptr, ptr %i.ada, align 8
  %i.adc = lshr i32 %.reass.reass.i48.reass.1.i, 6
  %i.add = zext nneg i32 %i.adc to i64
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %i.add ; 2 uses
  %i.adf = load i64, ptr %i.ade, align 8
  %i.adg = or i64 %i.adf, %i.acz
  store i64 %i.adg, ptr %i.ade, align 8
  %i.adh = load ptr, ptr %i.uz, align 8
  %.reass.reass.i48.reass.2.i = sub nsw i32 -7, %i.aas ; 2 uses
  %i.adi = and i32 %.reass.reass.i48.reass.2.i, 63
  %i.adj = zext nneg i32 %i.adi to i64
  %i.adk = shl nuw i64 1, %i.adj
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adh, i64 16
  %i.adm = load ptr, ptr %i.adl, align 8
  %i.adn = lshr i32 %.reass.reass.i48.reass.2.i, 6
  %i.ado = zext nneg i32 %i.adn to i64
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %i.adm, i64 %i.ado ; 2 uses
  %i.adq = load i64, ptr %i.adp, align 8
  %i.adr = or i64 %i.adq, %i.adk
  store i64 %i.adr, ptr %i.adp, align 8
  br label %_ZN2v88internal8compiler23BytecodeLoopAssignments3AddENS0_11interpreter8RegisterE.exit.i

_ZN2v88internal8compiler23BytecodeLoopAssignments3AddENS0_11interpreter8RegisterE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph15.i.i
  %lcmp.mod7416.not = icmp eq i32 %xtraiter7415, 0
  br i1 %lcmp.mod7416.not, label %_ZN2v88internal8compiler23BytecodeLoopAssignments3AddENS0_11interpreter8RegisterE.exit.i, label %.lr.ph15.i.i.epil.preheader

.lr.ph15.i.i.epil.preheader:                      ; preds = %_ZN2v88internal8compiler23BytecodeLoopAssignments3AddENS0_11interpreter8RegisterE.exit.i.loopexit.unr-lcssa, %.lr.ph15.i.i.preheader
  %.0814.i.i.epil.init = phi i32 [ 0, %.lr.ph15.i.i.preheader ], [ %i.xl, %_ZN2v88internal8compiler23BytecodeLoopAssignments3AddENS0_11interpreter8RegisterE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod7417 = trunc i32 %i.wk to i1
  call void @llvm.assume(i1 %lcmp.mod7417)
  %i.ads = load ptr, ptr %i.uz, align 8
  %reass.sub.epil = sub i32 %.0814.i.i.epil.init, %i.wj
  %.reass.reass.i.reass.reass.i.reass.reass.epil = add i32 %reass.sub.epil, -9 ; 2 uses
  %i.adt = and i32 %.reass.reass.i.reass.reass.i.reass.reass.epil, 63
  %i.adu = zext nneg i32 %i.adt to i64
  %i.adv = shl nuw i64 1, %i.adu
  %i.adw = getelementptr inbounds nuw i8, ptr %i.ads, i64 16
  %i.adx = load ptr, ptr %i.adw, align 8
  %i.ady = lshr i32 %.reass.reass.i.reass.reass.i.reass.reass.epil, 6
  %i.adz = zext nneg i32 %i.ady to i64
  %i.aea = getelementptr inbounds nuw [8 x i8], ptr %i.adx, i64 %i.adz ; 2 uses
  %i.aeb = load i64, ptr %i.aea, align 8
  %i.aec = or i64 %i.adv, %i.aeb
  store i64 %i.aec, ptr %i.aea, align 8
  br label %_ZN2v88internal8compiler23BytecodeLoopAssignments3AddENS0_11interpreter8RegisterE.exit.i

_ZN2v88internal8compiler23BytecodeLoopAssignments3AddENS0_11interpreter8RegisterE.exit.i.loopexit7412.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal8compiler23BytecodeLoopAssignments3AddENS0_11interpreter8RegisterE.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN2v88internal8compiler23BytecodeLoopAssignments3AddENS0_11interpreter8RegisterE.exit.i.loopexit7412.unr-lcssa, %.lr.ph.i.i.preheader
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler16BytecodeAnalysis20BytecodeAnalysisImpl7AnalyzeEv:bb.a
  %i.oyn = icmp ugt i64 %i.oyj, %i.oym
  br i1 %i.oyn, label %bb.ahu, label %.lr.ph.i.i.i.i.i.i.i.i.i2025, !prof !5

bb.ahu:                                           ; preds = %bb.aht
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, i64 noundef %i.oyj) #23
  %.pre.i.i.i.i.i.i.i2026 = load i64, ptr %i.oxt, align 8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i2025

.lr.ph.i.i.i.i.i.i.i.i.i2025:                     ; preds = %bb.ahu, %bb.aht
  %i.oyo = phi i64 [ %.pre.i.i.i.i.i.i.i2026, %bb.ahu ], [ %i.oyl, %bb.aht ] ; 2 uses
  %i.oyp = inttoptr i64 %i.oyo to ptr             ; 2 uses
  %i.oyq = add i64 %i.oyo, %i.oyj
  store i64 %i.oyq, ptr %i.oxt, align 8
  store ptr %i.oyp, ptr %i.oyc, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.oyp, i8 0, i64 %i.oyj, i1 false)
  %i.oyr = load ptr, ptr %i.oyc, align 8          ; 2 uses
  store ptr %i.oyr, ptr %i.oyd, align 8
  %i.oys = getelementptr inbounds nuw [8 x i8], ptr %i.oyr, i64 %i.oyi
  store ptr %i.oys, ptr %i.oye, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i2011

_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i2011: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i2025, %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i2024, %bb.ahq
  %.sink.i.i2012 = phi ptr [ %.053425864, %bb.ahq ], [ %i.oxy, %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i2024 ], [ %i.oxy, %.lr.ph.i.i.i.i.i.i.i.i.i2025 ]
  %i.oyt = getelementptr inbounds nuw i8, ptr %i.anb, i64 8 ; 6 uses
  store ptr %.sink.i.i2012, ptr %i.oyt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #23
  %i.oyu = load i64, ptr %.sroa.0.0.copyload.i536, align 8
  call void @_ZN2v88internal12HandlerTableC1ENS0_6TaggedINS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(16) %77, i64 %i.oyu) #23
  %i.oyv = load ptr, ptr %i.qy, align 8
  %i.oyw = load ptr, ptr %i.qz, align 8
  %i.oyx = ptrtoint ptr %i.oyv to i64
  %i.oyy = ptrtoint ptr %i.oyw to i64
  %i.oyz = load i32, ptr %i.ra, align 4
  %i.oza = zext i32 %i.oyz to i64
  %i.ozb = add i64 %i.oyy, %i.oza
  %i.ozc = sub i64 %i.oyx, %i.ozb
  %i.ozd = trunc i64 %i.ozc to i32
  %i.oze = call noundef i32 @_ZNK2v88internal12HandlerTable26LookupHandlerIndexForRangeEi(ptr noundef nonnull align 8 dereferenceable(16) %77, i32 noundef %i.ozd) #23 ; 3 uses
  %.not16.i.i2013 = icmp eq i32 %i.oze, -1
  br i1 %.not16.i.i2013, label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE100EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i, label %bb.ahv

bb.ahv:                                           ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i2011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu)
  store ptr %i.anc, ptr %i.fu, align 8
  %i.ozf = load ptr, ptr %i.oyt, align 8          ; 2 uses
  %i.ozg = icmp eq ptr %i.ozf, %.053425864
  br i1 %i.ozg, label %bb.ahw, label %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i2014

bb.ahw:                                           ; preds = %bb.ahv
  %i.ozh = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJRS4_RPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, ptr noundef nonnull align 8 dereferenceable(40) %.053425864, ptr noundef nonnull align 8 dereferenceable(8) %i.fu) ; 2 uses
  store ptr %i.ozh, ptr %i.oyt, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i2014

_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i2014: ; preds = %bb.ahw, %bb.ahv
  %i.ozi = phi ptr [ %i.ozf, %bb.ahv ], [ %i.ozh, %bb.ahw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu)
  %i.ozj = getelementptr inbounds nuw i8, ptr %i.ozi, i64 24 ; 3 uses
  %i.ozk = load ptr, ptr %i.ozj, align 8
  %i.ozl = load i64, ptr %i.ozk, align 8
  %i.ozm = trunc i64 %i.ozl to i1
  %i.ozn = call noundef i32 @_ZNK2v88internal12HandlerTable15GetRangeHandlerEi(ptr noundef nonnull align 8 dereferenceable(16) %77, i32 noundef %i.oze) #23
  %i.ozo = getelementptr inbounds nuw i8, ptr %i.ozi, i64 32 ; 2 uses
  %i.ozp = load ptr, ptr %i.ozo, align 8
  %i.ozq = load ptr, ptr %i.ozj, align 8          ; 2 uses
  %i.ozr = ptrtoint ptr %i.ozp to i64
  %i.ozs = ptrtoint ptr %i.ozq to i64
  %i.ozt = sub i64 %i.ozr, %i.ozs
  %i.ozu = lshr exact i64 %i.ozt, 3
  %i.ozv = trunc i64 %i.ozu to i32
  %i.ozw = icmp sgt i32 %i.ozv, 0
  br i1 %i.ozw, label %.lr.ph.i.i.i.i2020, label %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i2015

.lr.ph.i.i.i.i2020:                               ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i2014
  %i.ozx = load ptr, ptr %i.amy, align 8
  %i.ozy = sext i32 %i.ozn to i64
  %i.ozz = getelementptr inbounds [16 x i8], ptr %i.ozx, i64 %i.ozy
  %i.paa = load ptr, ptr %i.ozz, align 8
  %i.pab = getelementptr inbounds nuw i8, ptr %i.paa, i64 24
  br label %bb.ahx

bb.ahx:                                           ; preds = %bb.ahx, %.lr.ph.i.i.i.i2020
  %indvars.iv.i.i.i.i2021 = phi i64 [ 0, %.lr.ph.i.i.i.i2020 ], [ %indvars.iv.next.i.i.i.i2022, %bb.ahx ] ; 3 uses
  %i.pac = phi ptr [ %i.ozq, %.lr.ph.i.i.i.i2020 ], [ %i.pak, %bb.ahx ]
  %i.pad = load ptr, ptr %i.pab, align 8
  %i.pae = getelementptr inbounds nuw [8 x i8], ptr %i.pad, i64 %indvars.iv.i.i.i.i2021
  %i.paf = load i64, ptr %i.pae, align 8
  %i.pag = getelementptr inbounds nuw [8 x i8], ptr %i.pac, i64 %indvars.iv.i.i.i.i2021 ; 2 uses
  %i.pah = load i64, ptr %i.pag, align 8
  %i.pai = or i64 %i.pah, %i.paf
  store i64 %i.pai, ptr %i.pag, align 8
  %indvars.iv.next.i.i.i.i2022 = add nuw nsw i64 %indvars.iv.i.i.i.i2021, 1 ; 2 uses
  %i.paj = load ptr, ptr %i.ozo, align 8
  %i.pak = load ptr, ptr %i.ozj, align 8          ; 2 uses
  %i.pal = ptrtoint ptr %i.paj to i64
  %i.pam = ptrtoint ptr %i.pak to i64
  %i.pan = sub i64 %i.pal, %i.pam
  %sext.i.i.i.i2023 = shl i64 %i.pan, 29
  %i.pao = ashr i64 %sext.i.i.i.i2023, 32
  %i.pap = icmp slt i64 %indvars.iv.next.i.i.i.i2022, %i.pao
  br i1 %i.pap, label %bb.ahx, label %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i2015, !llvm.loop !9

_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i2015: ; preds = %bb.ahx, %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i2014
  %i.paq = load ptr, ptr %i.oyt, align 8
  %i.par = call noundef i32 @_ZNK2v88internal12HandlerTable12GetRangeDataEi(ptr noundef nonnull align 8 dereferenceable(16) %77, i32 noundef %i.oze) #23
  %i.pas = add nsw i32 %i.par, 1                  ; 2 uses
  %i.pat = and i32 %i.pas, 63
  %i.pau = zext nneg i32 %i.pat to i64
  %i.pav = shl nuw i64 1, %i.pau
  %i.paw = getelementptr inbounds nuw i8, ptr %i.paq, i64 24
  %i.pax = load ptr, ptr %i.paw, align 8
  %i.pay = lshr i32 %i.pas, 6
  %i.paz = zext nneg i32 %i.pay to i64
  %i.pba = getelementptr inbounds nuw [8 x i8], ptr %i.pax, i64 %i.paz ; 2 uses
  %i.pbb = load i64, ptr %i.pba, align 8
  %i.pbc = or i64 %i.pav, %i.pbb
  store i64 %i.pbc, ptr %i.pba, align 8
  br i1 %i.ozm, label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE100EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i, label %bb.ahy

bb.ahy:                                           ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i2015
  %i.pbd = load ptr, ptr %i.oyt, align 8
  %i.pbe = getelementptr inbounds nuw i8, ptr %i.pbd, i64 24
  %i.pbf = load ptr, ptr %i.pbe, align 8          ; 2 uses
  %i.pbg = load i64, ptr %i.pbf, align 8
  %i.pbh = and i64 %i.pbg, -2
  store i64 %i.pbh, ptr %i.pbf, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE100EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i

_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE100EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i: ; preds = %bb.ahy, %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i2015, %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i2011
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #23
  %i.pbi = load ptr, ptr %i.oyt, align 8
  %i.pbj = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJRS4_RPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, ptr noundef nonnull align 8 dereferenceable(40) %i.pbi, ptr noundef nonnull align 8 dereferenceable(8) %i.fv) ; 2 uses
  store ptr %i.pbj, ptr %i.anb, align 8
  %i.pbk = getelementptr inbounds nuw i8, ptr %i.pbj, i64 24 ; 5 uses
  %i.pbl = load ptr, ptr %i.pbk, align 8          ; 2 uses
  %i.pbm = load i64, ptr %i.pbl, align 8
  %i.pbn = and i64 %i.pbm, -2
  store i64 %i.pbn, ptr %i.pbl, align 8
  %i.pbo = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 0) #23 ; 2 uses
  %i.pbp = icmp slt i32 %i.pbo, 0
  br i1 %i.pbp, label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE100ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i, label %bb.ahz

bb.ahz:                                           ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE100EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i
  %i.pbq = add nuw nsw i32 %i.pbo, 1              ; 2 uses
  %i.pbr = and i32 %i.pbq, 63
  %i.pbs = zext nneg i32 %i.pbr to i64
  %i.pbt = shl nuw i64 1, %i.pbs
  %i.pbu = load ptr, ptr %i.pbk, align 8
  %i.pbv = lshr i32 %i.pbq, 6
  %i.pbw = zext nneg i32 %i.pbv to i64
  %i.pbx = getelementptr inbounds nuw [8 x i8], ptr %i.pbu, i64 %i.pbw ; 2 uses
  %i.pby = load i64, ptr %i.pbx, align 8
  %i.pbz = or i64 %i.pby, %i.pbt
  store i64 %i.pbz, ptr %i.pbx, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE100ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i

_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE100ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i: ; preds = %bb.ahz, %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE100EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i
  %i.pca = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 1) #23 ; 2 uses
  %i.pcb = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator23GetRegisterCountOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 2) #23 ; 5 uses
  %i.pcc = icmp sgt i32 %i.pca, -1
  %i.pcd = icmp ne i32 %i.pcb, 0
  %or.cond.i.i.i.i2016 = and i1 %i.pcc, %i.pcd
  br i1 %or.cond.i.i.i.i2016, label %.lr.ph.i.i.i11.i2017, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE100ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

.lr.ph.i.i.i11.i2017:                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE100ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i
  %i.pce = add nuw i32 %i.pca, 1                  ; 3 uses
  %xtraiter7456 = and i32 %i.pcb, 1
  %i.pcf = icmp eq i32 %i.pcb, 1
  br i1 %i.pcf, label %.epil.preheader7455, label %.lr.ph.i.i.i11.i2017.new

.lr.ph.i.i.i11.i2017.new:                         ; preds = %.lr.ph.i.i.i11.i2017
  %unroll_iter7459 = and i32 %i.pcb, -2
  br label %bb.aia

bb.aia:                                           ; preds = %bb.aia, %.lr.ph.i.i.i11.i2017.new
  %.07.i.i.i.i2018 = phi i32 [ 0, %.lr.ph.i.i.i11.i2017.new ], [ %i.pdb, %bb.aia ] ; 3 uses
  %niter7460 = phi i32 [ 0, %.lr.ph.i.i.i11.i2017.new ], [ %niter7460.next.1, %bb.aia ]
  %i.pcg = add i32 %i.pce, %.07.i.i.i.i2018       ; 2 uses
  %i.pch = and i32 %i.pcg, 63
  %i.pci = zext nneg i32 %i.pch to i64
  %i.pcj = shl nuw i64 1, %i.pci
  %i.pck = load ptr, ptr %i.pbk, align 8
  %i.pcl = lshr i32 %i.pcg, 6
  %i.pcm = zext nneg i32 %i.pcl to i64
  %i.pcn = getelementptr inbounds nuw [8 x i8], ptr %i.pck, i64 %i.pcm ; 2 uses
  %i.pco = load i64, ptr %i.pcn, align 8
  %i.pcp = or i64 %i.pcj, %i.pco
  store i64 %i.pcp, ptr %i.pcn, align 8
  %i.pcq = or disjoint i32 %.07.i.i.i.i2018, 1
  %i.pcr = add i32 %i.pce, %i.pcq                 ; 2 uses
  %i.pcs = and i32 %i.pcr, 63
  %i.pct = zext nneg i32 %i.pcs to i64
  %i.pcu = shl nuw i64 1, %i.pct
  %i.pcv = load ptr, ptr %i.pbk, align 8
  %i.pcw = lshr i32 %i.pcr, 6
  %i.pcx = zext nneg i32 %i.pcw to i64
  %i.pcy = getelementptr inbounds nuw [8 x i8], ptr %i.pcv, i64 %i.pcx ; 2 uses
  %i.pcz = load i64, ptr %i.pcy, align 8
  %i.pda = or i64 %i.pcu, %i.pcz
  store i64 %i.pda, ptr %i.pcy, align 8
  %i.pdb = add nuw i32 %.07.i.i.i.i2018, 2        ; 2 uses
  %niter7460.next.1 = add nuw i32 %niter7460, 2   ; 2 uses
  %niter7460.ncmp.1 = icmp eq i32 %niter7460.next.1, %unroll_iter7459
  br i1 %niter7460.ncmp.1, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE100ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa, label %bb.aia, !llvm.loop !18

_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE100ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa: ; preds = %bb.aia
  %lcmp.mod7457.not = icmp eq i32 %xtraiter7456, 0
  br i1 %lcmp.mod7457.not, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE100ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit, label %.epil.preheader7455

.epil.preheader7455:                              ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE100ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i11.i2017
  %.07.i.i.i.i2018.epil.init = phi i32 [ 0, %.lr.ph.i.i.i11.i2017 ], [ %i.pdb, %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE100ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa ]
  %lcmp.mod7458 = trunc i32 %i.pcb to i1
  call void @llvm.assume(i1 %lcmp.mod7458)
  %i.pdc = add i32 %i.pce, %.07.i.i.i.i2018.epil.init ; 2 uses
  %i.pdd = and i32 %i.pdc, 63
  %i.pde = zext nneg i32 %i.pdd to i64
  %i.pdf = shl nuw i64 1, %i.pde
  %i.pdg = load ptr, ptr %i.pbk, align 8
  %i.pdh = lshr i32 %i.pdc, 6
  %i.pdi = zext nneg i32 %i.pdh to i64
  %i.pdj = getelementptr inbounds nuw [8 x i8], ptr %i.pdg, i64 %i.pdi ; 2 uses
  %i.pdk = load i64, ptr %i.pdj, align 8
  %i.pdl = or i64 %i.pdf, %i.pdk
  store i64 %i.pdl, ptr %i.pdj, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE100ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE100ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit: ; preds = %.epil.preheader7455, %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE100ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa, %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE100ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i
  %i.pdm = load ptr, ptr %i.anb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

bb.aib:                                           ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx)
  store ptr %i.anc, ptr %i.fx, align 8
  %.not.i.i1992 = icmp eq ptr %.053425864, null
  br i1 %.not.i.i1992, label %bb.aic, label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1993

bb.aic:                                           ; preds = %bb.aib
  %i.pdn = load i64, ptr %.sroa.0.0.copyload.i536, align 8
  %i.pdo = add i64 %i.pdn, 47
  %i.pdp = inttoptr i64 %i.pdo to ptr
  %i.pdq = load i32, ptr %i.pdp, align 4
  %i.pdr = sdiv i32 %i.pdq, 8                     ; 2 uses
  %i.pds = getelementptr inbounds nuw i8, ptr %i.anc, i64 24 ; 2 uses
  %i.pdt = load i64, ptr %i.pds, align 8
  %i.pdu = getelementptr inbounds nuw i8, ptr %i.anc, i64 16 ; 6 uses
  %i.pdv = load i64, ptr %i.pdu, align 8          ; 2 uses
  %i.pdw = sub i64 %i.pdt, %i.pdv
  %i.pdx = icmp ult i64 %i.pdw, 40
  br i1 %i.pdx, label %bb.aid, label %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i2006, !prof !5

bb.aid:                                           ; preds = %bb.aic
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, i64 noundef 40) #23
  %.pre.i.i.i.i2009 = load i64, ptr %i.pdu, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i2006

_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i2006: ; preds = %bb.aid, %bb.aic
  %i.pdy = phi i64 [ %.pre.i.i.i.i2009, %bb.aid ], [ %i.pdv, %bb.aic ] ; 2 uses
  %i.pdz = inttoptr i64 %i.pdy to ptr             ; 6 uses
  %i.pea = add i64 %i.pdy, 40
  store i64 %i.pea, ptr %i.pdu, align 8
  %i.peb = getelementptr inbounds nuw i8, ptr %i.pdz, i64 8
  %i.pec = add nsw i32 %i.pdr, 1
  store i32 %i.pec, ptr %i.peb, align 8
  %i.ped = getelementptr inbounds nuw i8, ptr %i.pdz, i64 16 ; 4 uses
  store i64 0, ptr %i.ped, align 8
  %i.pee = getelementptr inbounds nuw i8, ptr %i.pdz, i64 24 ; 3 uses
  store ptr %i.ped, ptr %i.pee, align 8
  %i.pef = getelementptr inbounds nuw i8, ptr %i.pdz, i64 32 ; 2 uses
  store ptr %i.pee, ptr %i.pef, align 8
  %i.peg = add nsw i32 %i.pdr, 64
  %i.peh = ashr i32 %i.peg, 6                     ; 2 uses
  %i.pei = icmp sgt i32 %i.peh, 1
  br i1 %i.pei, label %bb.aie, label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1993

bb.aie:                                           ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i2006
  %i.pej = zext nneg i32 %i.peh to i64            ; 2 uses
  %i.pek = shl nuw nsw i64 %i.pej, 3              ; 4 uses
  %i.pel = load i64, ptr %i.pds, align 8
  %i.pem = load i64, ptr %i.pdu, align 8          ; 2 uses
  %i.pen = sub i64 %i.pel, %i.pem
  %i.peo = icmp ugt i64 %i.pek, %i.pen
  br i1 %i.peo, label %bb.aif, label %.lr.ph.i.i.i.i.i.i.i.i.i2007, !prof !5

bb.aif:                                           ; preds = %bb.aie
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, i64 noundef %i.pek) #23
  %.pre.i.i.i.i.i.i.i2008 = load i64, ptr %i.pdu, align 8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i2007

.lr.ph.i.i.i.i.i.i.i.i.i2007:                     ; preds = %bb.aif, %bb.aie
  %i.pep = phi i64 [ %.pre.i.i.i.i.i.i.i2008, %bb.aif ], [ %i.pem, %bb.aie ] ; 2 uses
  %i.peq = inttoptr i64 %i.pep to ptr             ; 2 uses
  %i.per = add i64 %i.pep, %i.pek
  store i64 %i.per, ptr %i.pdu, align 8
  store ptr %i.peq, ptr %i.ped, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.peq, i8 0, i64 %i.pek, i1 false)
  %i.pes = load ptr, ptr %i.ped, align 8          ; 2 uses
  store ptr %i.pes, ptr %i.pee, align 8
  %i.pet = getelementptr inbounds nuw [8 x i8], ptr %i.pes, i64 %i.pej
  store ptr %i.pet, ptr %i.pef, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1993

_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1993: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i2007, %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i2006, %bb.aib
  %.sink.i.i1994 = phi ptr [ %.053425864, %bb.aib ], [ %i.pdz, %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i2006 ], [ %i.pdz, %.lr.ph.i.i.i.i.i.i.i.i.i2007 ]
  %i.peu = getelementptr inbounds nuw i8, ptr %i.anb, i64 8 ; 6 uses
  store ptr %.sink.i.i1994, ptr %i.peu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #23
  %i.pev = load i64, ptr %.sroa.0.0.copyload.i536, align 8
  call void @_ZN2v88internal12HandlerTableC1ENS0_6TaggedINS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(16) %78, i64 %i.pev) #23
  %i.pew = load ptr, ptr %i.qy, align 8
  %i.pex = load ptr, ptr %i.qz, align 8
  %i.pey = ptrtoint ptr %i.pew to i64
  %i.pez = ptrtoint ptr %i.pex to i64
  %i.pfa = load i32, ptr %i.ra, align 4
  %i.pfb = zext i32 %i.pfa to i64
  %i.pfc = add i64 %i.pez, %i.pfb
  %i.pfd = sub i64 %i.pey, %i.pfc
  %i.pfe = trunc i64 %i.pfd to i32
  %i.pff = call noundef i32 @_ZNK2v88internal12HandlerTable26LookupHandlerIndexForRangeEi(ptr noundef nonnull align 8 dereferenceable(16) %78, i32 noundef %i.pfe) #23 ; 3 uses
  %.not16.i.i1995 = icmp eq i32 %i.pff, -1
  br i1 %.not16.i.i1995, label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE101EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i, label %bb.aig

bb.aig:                                           ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1993
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw)
  store ptr %i.anc, ptr %i.fw, align 8
  %i.pfg = load ptr, ptr %i.peu, align 8          ; 2 uses
  %i.pfh = icmp eq ptr %i.pfg, %.053425864
  br i1 %i.pfh, label %bb.aih, label %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1996

bb.aih:                                           ; preds = %bb.aig
  %i.pfi = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJRS4_RPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, ptr noundef nonnull align 8 dereferenceable(40) %.053425864, ptr noundef nonnull align 8 dereferenceable(8) %i.fw) ; 2 uses
  store ptr %i.pfi, ptr %i.peu, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1996

_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1996: ; preds = %bb.aih, %bb.aig
  %i.pfj = phi ptr [ %i.pfg, %bb.aig ], [ %i.pfi, %bb.aih ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw)
  %i.pfk = getelementptr inbounds nuw i8, ptr %i.pfj, i64 24 ; 3 uses
  %i.pfl = load ptr, ptr %i.pfk, align 8
  %i.pfm = load i64, ptr %i.pfl, align 8
  %i.pfn = trunc i64 %i.pfm to i1
  %i.pfo = call noundef i32 @_ZNK2v88internal12HandlerTable15GetRangeHandlerEi(ptr noundef nonnull align 8 dereferenceable(16) %78, i32 noundef %i.pff) #23
  %i.pfp = getelementptr inbounds nuw i8, ptr %i.pfj, i64 32 ; 2 uses
  %i.pfq = load ptr, ptr %i.pfp, align 8
  %i.pfr = load ptr, ptr %i.pfk, align 8          ; 2 uses
  %i.pfs = ptrtoint ptr %i.pfq to i64
  %i.pft = ptrtoint ptr %i.pfr to i64
  %i.pfu = sub i64 %i.pfs, %i.pft
  %i.pfv = lshr exact i64 %i.pfu, 3
  %i.pfw = trunc i64 %i.pfv to i32
  %i.pfx = icmp sgt i32 %i.pfw, 0
  br i1 %i.pfx, label %.lr.ph.i.i.i.i2002, label %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1997

.lr.ph.i.i.i.i2002:                               ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1996
  %i.pfy = load ptr, ptr %i.amy, align 8
  %i.pfz = sext i32 %i.pfo to i64
  %i.pga = getelementptr inbounds [16 x i8], ptr %i.pfy, i64 %i.pfz
  %i.pgb = load ptr, ptr %i.pga, align 8
  %i.pgc = getelementptr inbounds nuw i8, ptr %i.pgb, i64 24
  br label %bb.aii

bb.aii:                                           ; preds = %bb.aii, %.lr.ph.i.i.i.i2002
  %indvars.iv.i.i.i.i2003 = phi i64 [ 0, %.lr.ph.i.i.i.i2002 ], [ %indvars.iv.next.i.i.i.i2004, %bb.aii ] ; 3 uses
  %i.pgd = phi ptr [ %i.pfr, %.lr.ph.i.i.i.i2002 ], [ %i.pgl, %bb.aii ]
  %i.pge = load ptr, ptr %i.pgc, align 8
  %i.pgf = getelementptr inbounds nuw [8 x i8], ptr %i.pge, i64 %indvars.iv.i.i.i.i2003
  %i.pgg = load i64, ptr %i.pgf, align 8
  %i.pgh = getelementptr inbounds nuw [8 x i8], ptr %i.pgd, i64 %indvars.iv.i.i.i.i2003 ; 2 uses
  %i.pgi = load i64, ptr %i.pgh, align 8
  %i.pgj = or i64 %i.pgi, %i.pgg
  store i64 %i.pgj, ptr %i.pgh, align 8
  %indvars.iv.next.i.i.i.i2004 = add nuw nsw i64 %indvars.iv.i.i.i.i2003, 1 ; 2 uses
  %i.pgk = load ptr, ptr %i.pfp, align 8
  %i.pgl = load ptr, ptr %i.pfk, align 8          ; 2 uses
  %i.pgm = ptrtoint ptr %i.pgk to i64
  %i.pgn = ptrtoint ptr %i.pgl to i64
  %i.pgo = sub i64 %i.pgm, %i.pgn
  %sext.i.i.i.i2005 = shl i64 %i.pgo, 29
  %i.pgp = ashr i64 %sext.i.i.i.i2005, 32
  %i.pgq = icmp slt i64 %indvars.iv.next.i.i.i.i2004, %i.pgp
  br i1 %i.pgq, label %bb.aii, label %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1997, !llvm.loop !9

_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1997: ; preds = %bb.aii, %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1996
  %i.pgr = load ptr, ptr %i.peu, align 8
  %i.pgs = call noundef i32 @_ZNK2v88internal12HandlerTable12GetRangeDataEi(ptr noundef nonnull align 8 dereferenceable(16) %78, i32 noundef %i.pff) #23
  %i.pgt = add nsw i32 %i.pgs, 1                  ; 2 uses
  %i.pgu = and i32 %i.pgt, 63
  %i.pgv = zext nneg i32 %i.pgu to i64
  %i.pgw = shl nuw i64 1, %i.pgv
  %i.pgx = getelementptr inbounds nuw i8, ptr %i.pgr, i64 24
  %i.pgy = load ptr, ptr %i.pgx, align 8
  %i.pgz = lshr i32 %i.pgt, 6
  %i.pha = zext nneg i32 %i.pgz to i64
  %i.phb = getelementptr inbounds nuw [8 x i8], ptr %i.pgy, i64 %i.pha ; 2 uses
  %i.phc = load i64, ptr %i.phb, align 8
  %i.phd = or i64 %i.pgw, %i.phc
  store i64 %i.phd, ptr %i.phb, align 8
  br i1 %i.pfn, label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE101EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i, label %bb.aij

bb.aij:                                           ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1997
  %i.phe = load ptr, ptr %i.peu, align 8
  %i.phf = getelementptr inbounds nuw i8, ptr %i.phe, i64 24
  %i.phg = load ptr, ptr %i.phf, align 8          ; 2 uses
  %i.phh = load i64, ptr %i.phg, align 8
  %i.phi = and i64 %i.phh, -2
  store i64 %i.phi, ptr %i.phg, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE101EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i

_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE101EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i: ; preds = %bb.aij, %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1997, %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1993
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #23
  %i.phj = load ptr, ptr %i.peu, align 8
  %i.phk = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJRS4_RPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, ptr noundef nonnull align 8 dereferenceable(40) %i.phj, ptr noundef nonnull align 8 dereferenceable(8) %i.fx) ; 2 uses
  store ptr %i.phk, ptr %i.anb, align 8
  %i.phl = getelementptr inbounds nuw i8, ptr %i.phk, i64 24 ; 5 uses
  %i.phm = load ptr, ptr %i.phl, align 8          ; 2 uses
  %i.phn = load i64, ptr %i.phm, align 8
  %i.pho = and i64 %i.phn, -2
  store i64 %i.pho, ptr %i.phm, align 8
  %i.php = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 0) #23 ; 2 uses
  %i.phq = icmp slt i32 %i.php, 0
  br i1 %i.phq, label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE101ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i, label %bb.aik

bb.aik:                                           ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE101EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i
  %i.phr = add nuw nsw i32 %i.php, 1              ; 2 uses
  %i.phs = and i32 %i.phr, 63
  %i.pht = zext nneg i32 %i.phs to i64
  %i.phu = shl nuw i64 1, %i.pht
  %i.phv = load ptr, ptr %i.phl, align 8
  %i.phw = lshr i32 %i.phr, 6
  %i.phx = zext nneg i32 %i.phw to i64
  %i.phy = getelementptr inbounds nuw [8 x i8], ptr %i.phv, i64 %i.phx ; 2 uses
  %i.phz = load i64, ptr %i.phy, align 8
  %i.pia = or i64 %i.phz, %i.phu
  store i64 %i.pia, ptr %i.phy, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE101ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i

_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE101ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i: ; preds = %bb.aik, %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE101EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i
  %i.pib = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 1) #23 ; 2 uses
  %i.pic = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator23GetRegisterCountOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 2) #23 ; 5 uses
  %i.pid = icmp sgt i32 %i.pib, -1
  %i.pie = icmp ne i32 %i.pic, 0
  %or.cond.i.i.i.i1998 = and i1 %i.pid, %i.pie
  br i1 %or.cond.i.i.i.i1998, label %.lr.ph.i.i.i11.i1999, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE101ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

.lr.ph.i.i.i11.i1999:                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE101ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i
  %i.pif = add nuw i32 %i.pib, 1                  ; 3 uses
  %xtraiter7450 = and i32 %i.pic, 1
  %i.pig = icmp eq i32 %i.pic, 1
  br i1 %i.pig, label %.epil.preheader7449, label %.lr.ph.i.i.i11.i1999.new

.lr.ph.i.i.i11.i1999.new:                         ; preds = %.lr.ph.i.i.i11.i1999
  %unroll_iter7453 = and i32 %i.pic, -2
  br label %bb.ail

bb.ail:                                           ; preds = %bb.ail, %.lr.ph.i.i.i11.i1999.new
  %.07.i.i.i.i2000 = phi i32 [ 0, %.lr.ph.i.i.i11.i1999.new ], [ %i.pjc, %bb.ail ] ; 3 uses
  %niter7454 = phi i32 [ 0, %.lr.ph.i.i.i11.i1999.new ], [ %niter7454.next.1, %bb.ail ]
  %i.pih = add i32 %i.pif, %.07.i.i.i.i2000       ; 2 uses
  %i.pii = and i32 %i.pih, 63
  %i.pij = zext nneg i32 %i.pii to i64
  %i.pik = shl nuw i64 1, %i.pij
  %i.pil = load ptr, ptr %i.phl, align 8
  %i.pim = lshr i32 %i.pih, 6
  %i.pin = zext nneg i32 %i.pim to i64
  %i.pio = getelementptr inbounds nuw [8 x i8], ptr %i.pil, i64 %i.pin ; 2 uses
  %i.pip = load i64, ptr %i.pio, align 8
  %i.piq = or i64 %i.pik, %i.pip
  store i64 %i.piq, ptr %i.pio, align 8
  %i.pir = or disjoint i32 %.07.i.i.i.i2000, 1
  %i.pis = add i32 %i.pif, %i.pir                 ; 2 uses
  %i.pit = and i32 %i.pis, 63
  %i.piu = zext nneg i32 %i.pit to i64
  %i.piv = shl nuw i64 1, %i.piu
  %i.piw = load ptr, ptr %i.phl, align 8
  %i.pix = lshr i32 %i.pis, 6
  %i.piy = zext nneg i32 %i.pix to i64
  %i.piz = getelementptr inbounds nuw [8 x i8], ptr %i.piw, i64 %i.piy ; 2 uses
  %i.pja = load i64, ptr %i.piz, align 8
  %i.pjb = or i64 %i.piv, %i.pja
  store i64 %i.pjb, ptr %i.piz, align 8
  %i.pjc = add nuw i32 %.07.i.i.i.i2000, 2        ; 2 uses
  %niter7454.next.1 = add nuw i32 %niter7454, 2   ; 2 uses
  %niter7454.ncmp.1 = icmp eq i32 %niter7454.next.1, %unroll_iter7453
  br i1 %niter7454.ncmp.1, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE101ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa, label %bb.ail, !llvm.loop !19

_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE101ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa: ; preds = %bb.ail
  %lcmp.mod7451.not = icmp eq i32 %xtraiter7450, 0
  br i1 %lcmp.mod7451.not, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE101ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit, label %.epil.preheader7449

.epil.preheader7449:                              ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE101ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i11.i1999
  %.07.i.i.i.i2000.epil.init = phi i32 [ 0, %.lr.ph.i.i.i11.i1999 ], [ %i.pjc, %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE101ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa ]
  %lcmp.mod7452 = trunc i32 %i.pic to i1
  call void @llvm.assume(i1 %lcmp.mod7452)
  %i.pjd = add i32 %i.pif, %.07.i.i.i.i2000.epil.init ; 2 uses
  %i.pje = and i32 %i.pjd, 63
  %i.pjf = zext nneg i32 %i.pje to i64
  %i.pjg = shl nuw i64 1, %i.pjf
  %i.pjh = load ptr, ptr %i.phl, align 8
  %i.pji = lshr i32 %i.pjd, 6
  %i.pjj = zext nneg i32 %i.pji to i64
  %i.pjk = getelementptr inbounds nuw [8 x i8], ptr %i.pjh, i64 %i.pjj ; 2 uses
  %i.pjl = load i64, ptr %i.pjk, align 8
  %i.pjm = or i64 %i.pjg, %i.pjl
  store i64 %i.pjm, ptr %i.pjk, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE101ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE101ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit: ; preds = %.epil.preheader7449, %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE101ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa, %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE101ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i
  %i.pjn = load ptr, ptr %i.anb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

bb.aim:                                           ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz)
  store ptr %i.anc, ptr %i.fz, align 8
  %.not.i.i1978 = icmp eq ptr %.053425864, null
  br i1 %.not.i.i1978, label %bb.ain, label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1979

bb.ain:                                           ; preds = %bb.aim
  %i.pjo = load i64, ptr %.sroa.0.0.copyload.i536, align 8
  %i.pjp = add i64 %i.pjo, 47
  %i.pjq = inttoptr i64 %i.pjp to ptr
  %i.pjr = load i32, ptr %i.pjq, align 4
  %i.pjs = sdiv i32 %i.pjr, 8                     ; 2 uses
  %i.pjt = getelementptr inbounds nuw i8, ptr %i.anc, i64 24 ; 2 uses
  %i.pju = load i64, ptr %i.pjt, align 8
  %i.pjv = getelementptr inbounds nuw i8, ptr %i.anc, i64 16 ; 6 uses
  %i.pjw = load i64, ptr %i.pjv, align 8          ; 2 uses
  %i.pjx = sub i64 %i.pju, %i.pjw
  %i.pjy = icmp ult i64 %i.pjx, 40
  br i1 %i.pjy, label %bb.aio, label %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1988, !prof !5

bb.aio:                                           ; preds = %bb.ain
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, i64 noundef 40) #23
  %.pre.i.i.i.i1991 = load i64, ptr %i.pjv, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1988

_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1988: ; preds = %bb.aio, %bb.ain
  %i.pjz = phi i64 [ %.pre.i.i.i.i1991, %bb.aio ], [ %i.pjw, %bb.ain ] ; 2 uses
  %i.pka = inttoptr i64 %i.pjz to ptr             ; 6 uses
  %i.pkb = add i64 %i.pjz, 40
  store i64 %i.pkb, ptr %i.pjv, align 8
  %i.pkc = getelementptr inbounds nuw i8, ptr %i.pka, i64 8
  %i.pkd = add nsw i32 %i.pjs, 1
  store i32 %i.pkd, ptr %i.pkc, align 8
  %i.pke = getelementptr inbounds nuw i8, ptr %i.pka, i64 16 ; 4 uses
  store i64 0, ptr %i.pke, align 8
  %i.pkf = getelementptr inbounds nuw i8, ptr %i.pka, i64 24 ; 3 uses
  store ptr %i.pke, ptr %i.pkf, align 8
  %i.pkg = getelementptr inbounds nuw i8, ptr %i.pka, i64 32 ; 2 uses
  store ptr %i.pkf, ptr %i.pkg, align 8
  %i.pkh = add nsw i32 %i.pjs, 64
  %i.pki = ashr i32 %i.pkh, 6                     ; 2 uses
  %i.pkj = icmp sgt i32 %i.pki, 1
  br i1 %i.pkj, label %bb.aip, label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1979

bb.aip:                                           ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1988
  %i.pkk = zext nneg i32 %i.pki to i64            ; 2 uses
  %i.pkl = shl nuw nsw i64 %i.pkk, 3              ; 4 uses
  %i.pkm = load i64, ptr %i.pjt, align 8
  %i.pkn = load i64, ptr %i.pjv, align 8          ; 2 uses
  %i.pko = sub i64 %i.pkm, %i.pkn
  %i.pkp = icmp ugt i64 %i.pkl, %i.pko
  br i1 %i.pkp, label %bb.aiq, label %.lr.ph.i.i.i.i.i.i.i.i.i1989, !prof !5

bb.aiq:                                           ; preds = %bb.aip
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, i64 noundef %i.pkl) #23
  %.pre.i.i.i.i.i.i.i1990 = load i64, ptr %i.pjv, align 8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i1989

.lr.ph.i.i.i.i.i.i.i.i.i1989:                     ; preds = %bb.aiq, %bb.aip
  %i.pkq = phi i64 [ %.pre.i.i.i.i.i.i.i1990, %bb.aiq ], [ %i.pkn, %bb.aip ] ; 2 uses
  %i.pkr = inttoptr i64 %i.pkq to ptr             ; 2 uses
  %i.pks = add i64 %i.pkq, %i.pkl
  store i64 %i.pks, ptr %i.pjv, align 8
  store ptr %i.pkr, ptr %i.pke, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.pkr, i8 0, i64 %i.pkl, i1 false)
  %i.pkt = load ptr, ptr %i.pke, align 8          ; 2 uses
  store ptr %i.pkt, ptr %i.pkf, align 8
  %i.pku = getelementptr inbounds nuw [8 x i8], ptr %i.pkt, i64 %i.pkk
  store ptr %i.pku, ptr %i.pkg, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1979

_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1979: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1989, %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1988, %bb.aim
  %.sink.i.i1980 = phi ptr [ %.053425864, %bb.aim ], [ %i.pka, %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1988 ], [ %i.pka, %.lr.ph.i.i.i.i.i.i.i.i.i1989 ]
  %i.pkv = getelementptr inbounds nuw i8, ptr %i.anb, i64 8 ; 6 uses
  store ptr %.sink.i.i1980, ptr %i.pkv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #23
  %i.pkw = load i64, ptr %.sroa.0.0.copyload.i536, align 8
  call void @_ZN2v88internal12HandlerTableC1ENS0_6TaggedINS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(16) %79, i64 %i.pkw) #23
  %i.pkx = load ptr, ptr %i.qy, align 8
  %i.pky = load ptr, ptr %i.qz, align 8
  %i.pkz = ptrtoint ptr %i.pkx to i64
  %i.pla = ptrtoint ptr %i.pky to i64
  %i.plb = load i32, ptr %i.ra, align 4
  %i.plc = zext i32 %i.plb to i64
  %i.pld = add i64 %i.pla, %i.plc
  %i.ple = sub i64 %i.pkz, %i.pld
  %i.plf = trunc i64 %i.ple to i32
  %i.plg = call noundef i32 @_ZNK2v88internal12HandlerTable26LookupHandlerIndexForRangeEi(ptr noundef nonnull align 8 dereferenceable(16) %79, i32 noundef %i.plf) #23 ; 3 uses
  %.not16.i.i1981 = icmp eq i32 %i.plg, -1
  br i1 %.not16.i.i1981, label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE102EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i, label %bb.air

bb.air:                                           ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1979
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy)
  store ptr %i.anc, ptr %i.fy, align 8
  %i.plh = load ptr, ptr %i.pkv, align 8          ; 2 uses
  %i.pli = icmp eq ptr %i.plh, %.053425864
  br i1 %i.pli, label %bb.ais, label %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1982

bb.ais:                                           ; preds = %bb.air
  %i.plj = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJRS4_RPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, ptr noundef nonnull align 8 dereferenceable(40) %.053425864, ptr noundef nonnull align 8 dereferenceable(8) %i.fy) ; 2 uses
  store ptr %i.plj, ptr %i.pkv, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1982

_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1982: ; preds = %bb.ais, %bb.air
  %i.plk = phi ptr [ %i.plh, %bb.air ], [ %i.plj, %bb.ais ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy)
  %i.pll = getelementptr inbounds nuw i8, ptr %i.plk, i64 24 ; 3 uses
  %i.plm = load ptr, ptr %i.pll, align 8
  %i.pln = load i64, ptr %i.plm, align 8
  %i.plo = trunc i64 %i.pln to i1
  %i.plp = call noundef i32 @_ZNK2v88internal12HandlerTable15GetRangeHandlerEi(ptr noundef nonnull align 8 dereferenceable(16) %79, i32 noundef %i.plg) #23
  %i.plq = getelementptr inbounds nuw i8, ptr %i.plk, i64 32 ; 2 uses
  %i.plr = load ptr, ptr %i.plq, align 8
  %i.pls = load ptr, ptr %i.pll, align 8          ; 2 uses
  %i.plt = ptrtoint ptr %i.plr to i64
  %i.plu = ptrtoint ptr %i.pls to i64
  %i.plv = sub i64 %i.plt, %i.plu
  %i.plw = lshr exact i64 %i.plv, 3
  %i.plx = trunc i64 %i.plw to i32
  %i.ply = icmp sgt i32 %i.plx, 0
  br i1 %i.ply, label %.lr.ph.i.i.i.i1984, label %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1983

.lr.ph.i.i.i.i1984:                               ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1982
  %i.plz = load ptr, ptr %i.amy, align 8
  %i.pma = sext i32 %i.plp to i64
  %i.pmb = getelementptr inbounds [16 x i8], ptr %i.plz, i64 %i.pma
  %i.pmc = load ptr, ptr %i.pmb, align 8
  %i.pmd = getelementptr inbounds nuw i8, ptr %i.pmc, i64 24
  br label %bb.ait

bb.ait:                                           ; preds = %bb.ait, %.lr.ph.i.i.i.i1984
  %indvars.iv.i.i.i.i1985 = phi i64 [ 0, %.lr.ph.i.i.i.i1984 ], [ %indvars.iv.next.i.i.i.i1986, %bb.ait ] ; 3 uses
  %i.pme = phi ptr [ %i.pls, %.lr.ph.i.i.i.i1984 ], [ %i.pmm, %bb.ait ]
  %i.pmf = load ptr, ptr %i.pmd, align 8
  %i.pmg = getelementptr inbounds nuw [8 x i8], ptr %i.pmf, i64 %indvars.iv.i.i.i.i1985
  %i.pmh = load i64, ptr %i.pmg, align 8
  %i.pmi = getelementptr inbounds nuw [8 x i8], ptr %i.pme, i64 %indvars.iv.i.i.i.i1985 ; 2 uses
  %i.pmj = load i64, ptr %i.pmi, align 8
  %i.pmk = or i64 %i.pmj, %i.pmh
  store i64 %i.pmk, ptr %i.pmi, align 8
  %indvars.iv.next.i.i.i.i1986 = add nuw nsw i64 %indvars.iv.i.i.i.i1985, 1 ; 2 uses
  %i.pml = load ptr, ptr %i.plq, align 8
  %i.pmm = load ptr, ptr %i.pll, align 8          ; 2 uses
  %i.pmn = ptrtoint ptr %i.pml to i64
  %i.pmo = ptrtoint ptr %i.pmm to i64
  %i.pmp = sub i64 %i.pmn, %i.pmo
  %sext.i.i.i.i1987 = shl i64 %i.pmp, 29
  %i.pmq = ashr i64 %sext.i.i.i.i1987, 32
  %i.pmr = icmp slt i64 %indvars.iv.next.i.i.i.i1986, %i.pmq
  br i1 %i.pmr, label %bb.ait, label %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1983, !llvm.loop !9

_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1983: ; preds = %bb.ait, %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1982
  %i.pms = load ptr, ptr %i.pkv, align 8
  %i.pmt = call noundef i32 @_ZNK2v88internal12HandlerTable12GetRangeDataEi(ptr noundef nonnull align 8 dereferenceable(16) %79, i32 noundef %i.plg) #23
  %i.pmu = add nsw i32 %i.pmt, 1                  ; 2 uses
  %i.pmv = and i32 %i.pmu, 63
  %i.pmw = zext nneg i32 %i.pmv to i64
  %i.pmx = shl nuw i64 1, %i.pmw
  %i.pmy = getelementptr inbounds nuw i8, ptr %i.pms, i64 24
  %i.pmz = load ptr, ptr %i.pmy, align 8
  %i.pna = lshr i32 %i.pmu, 6
  %i.pnb = zext nneg i32 %i.pna to i64
  %i.pnc = getelementptr inbounds nuw [8 x i8], ptr %i.pmz, i64 %i.pnb ; 2 uses
  %i.pnd = load i64, ptr %i.pnc, align 8
  %i.pne = or i64 %i.pmx, %i.pnd
  store i64 %i.pne, ptr %i.pnc, align 8
  br i1 %i.plo, label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE102EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i, label %bb.aiu

bb.aiu:                                           ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1983
  %i.pnf = load ptr, ptr %i.pkv, align 8
  %i.png = getelementptr inbounds nuw i8, ptr %i.pnf, i64 24
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler16BytecodeAnalysis20BytecodeAnalysisImpl7AnalyzeEv:bb.a
  %i.pxo = icmp ugt i64 %i.pxk, %i.pxn
  br i1 %i.pxo, label %bb.ajt, label %.lr.ph.i.i.i.i.i.i.i.i.i1947, !prof !5

bb.ajt:                                           ; preds = %bb.ajs
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, i64 noundef %i.pxk) #23
  %.pre.i.i.i.i.i.i.i1948 = load i64, ptr %i.pwu, align 8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i1947

.lr.ph.i.i.i.i.i.i.i.i.i1947:                     ; preds = %bb.ajt, %bb.ajs
  %i.pxp = phi i64 [ %.pre.i.i.i.i.i.i.i1948, %bb.ajt ], [ %i.pxm, %bb.ajs ] ; 2 uses
  %i.pxq = inttoptr i64 %i.pxp to ptr             ; 2 uses
  %i.pxr = add i64 %i.pxp, %i.pxk
  store i64 %i.pxr, ptr %i.pwu, align 8
  store ptr %i.pxq, ptr %i.pxd, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.pxq, i8 0, i64 %i.pxk, i1 false)
  %i.pxs = load ptr, ptr %i.pxd, align 8          ; 2 uses
  store ptr %i.pxs, ptr %i.pxe, align 8
  %i.pxt = getelementptr inbounds nuw [8 x i8], ptr %i.pxs, i64 %i.pxj
  store ptr %i.pxt, ptr %i.pxf, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1933

_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1933: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1947, %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1946, %bb.ajp
  %.sink.i.i1934 = phi ptr [ %.053425864, %bb.ajp ], [ %i.pwz, %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1946 ], [ %i.pwz, %.lr.ph.i.i.i.i.i.i.i.i.i1947 ]
  %i.pxu = getelementptr inbounds nuw i8, ptr %i.anb, i64 8 ; 6 uses
  store ptr %.sink.i.i1934, ptr %i.pxu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #23
  %i.pxv = load i64, ptr %.sroa.0.0.copyload.i536, align 8
  call void @_ZN2v88internal12HandlerTableC1ENS0_6TaggedINS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(16) %82, i64 %i.pxv) #23
  %i.pxw = load ptr, ptr %i.qy, align 8
  %i.pxx = load ptr, ptr %i.qz, align 8
  %i.pxy = ptrtoint ptr %i.pxw to i64
  %i.pxz = ptrtoint ptr %i.pxx to i64
  %i.pya = load i32, ptr %i.ra, align 4
  %i.pyb = zext i32 %i.pya to i64
  %i.pyc = add i64 %i.pxz, %i.pyb
  %i.pyd = sub i64 %i.pxy, %i.pyc
  %i.pye = trunc i64 %i.pyd to i32
  %i.pyf = call noundef i32 @_ZNK2v88internal12HandlerTable26LookupHandlerIndexForRangeEi(ptr noundef nonnull align 8 dereferenceable(16) %82, i32 noundef %i.pye) #23 ; 3 uses
  %.not16.i.i1935 = icmp eq i32 %i.pyf, -1
  br i1 %.not16.i.i1935, label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE105EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i, label %bb.aju

bb.aju:                                           ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ge)
  store ptr %i.anc, ptr %i.ge, align 8
  %i.pyg = load ptr, ptr %i.pxu, align 8          ; 2 uses
  %i.pyh = icmp eq ptr %i.pyg, %.053425864
  br i1 %i.pyh, label %bb.ajv, label %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1936

bb.ajv:                                           ; preds = %bb.aju
  %i.pyi = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJRS4_RPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, ptr noundef nonnull align 8 dereferenceable(40) %.053425864, ptr noundef nonnull align 8 dereferenceable(8) %i.ge) ; 2 uses
  store ptr %i.pyi, ptr %i.pxu, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1936

_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1936: ; preds = %bb.ajv, %bb.aju
  %i.pyj = phi ptr [ %i.pyg, %bb.aju ], [ %i.pyi, %bb.ajv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge)
  %i.pyk = getelementptr inbounds nuw i8, ptr %i.pyj, i64 24 ; 3 uses
  %i.pyl = load ptr, ptr %i.pyk, align 8
  %i.pym = load i64, ptr %i.pyl, align 8
  %i.pyn = trunc i64 %i.pym to i1
  %i.pyo = call noundef i32 @_ZNK2v88internal12HandlerTable15GetRangeHandlerEi(ptr noundef nonnull align 8 dereferenceable(16) %82, i32 noundef %i.pyf) #23
  %i.pyp = getelementptr inbounds nuw i8, ptr %i.pyj, i64 32 ; 2 uses
  %i.pyq = load ptr, ptr %i.pyp, align 8
  %i.pyr = load ptr, ptr %i.pyk, align 8          ; 2 uses
  %i.pys = ptrtoint ptr %i.pyq to i64
  %i.pyt = ptrtoint ptr %i.pyr to i64
  %i.pyu = sub i64 %i.pys, %i.pyt
  %i.pyv = lshr exact i64 %i.pyu, 3
  %i.pyw = trunc i64 %i.pyv to i32
  %i.pyx = icmp sgt i32 %i.pyw, 0
  br i1 %i.pyx, label %.lr.ph.i.i.i.i1942, label %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1937

.lr.ph.i.i.i.i1942:                               ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1936
  %i.pyy = load ptr, ptr %i.amy, align 8
  %i.pyz = sext i32 %i.pyo to i64
  %i.pza = getelementptr inbounds [16 x i8], ptr %i.pyy, i64 %i.pyz
  %i.pzb = load ptr, ptr %i.pza, align 8
  %i.pzc = getelementptr inbounds nuw i8, ptr %i.pzb, i64 24
  br label %bb.ajw

bb.ajw:                                           ; preds = %bb.ajw, %.lr.ph.i.i.i.i1942
  %indvars.iv.i.i.i.i1943 = phi i64 [ 0, %.lr.ph.i.i.i.i1942 ], [ %indvars.iv.next.i.i.i.i1944, %bb.ajw ] ; 3 uses
  %i.pzd = phi ptr [ %i.pyr, %.lr.ph.i.i.i.i1942 ], [ %i.pzl, %bb.ajw ]
  %i.pze = load ptr, ptr %i.pzc, align 8
  %i.pzf = getelementptr inbounds nuw [8 x i8], ptr %i.pze, i64 %indvars.iv.i.i.i.i1943
  %i.pzg = load i64, ptr %i.pzf, align 8
  %i.pzh = getelementptr inbounds nuw [8 x i8], ptr %i.pzd, i64 %indvars.iv.i.i.i.i1943 ; 2 uses
  %i.pzi = load i64, ptr %i.pzh, align 8
  %i.pzj = or i64 %i.pzi, %i.pzg
  store i64 %i.pzj, ptr %i.pzh, align 8
  %indvars.iv.next.i.i.i.i1944 = add nuw nsw i64 %indvars.iv.i.i.i.i1943, 1 ; 2 uses
  %i.pzk = load ptr, ptr %i.pyp, align 8
  %i.pzl = load ptr, ptr %i.pyk, align 8          ; 2 uses
  %i.pzm = ptrtoint ptr %i.pzk to i64
  %i.pzn = ptrtoint ptr %i.pzl to i64
  %i.pzo = sub i64 %i.pzm, %i.pzn
  %sext.i.i.i.i1945 = shl i64 %i.pzo, 29
  %i.pzp = ashr i64 %sext.i.i.i.i1945, 32
  %i.pzq = icmp slt i64 %indvars.iv.next.i.i.i.i1944, %i.pzp
  br i1 %i.pzq, label %bb.ajw, label %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1937, !llvm.loop !9

_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1937: ; preds = %bb.ajw, %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1936
  %i.pzr = load ptr, ptr %i.pxu, align 8
  %i.pzs = call noundef i32 @_ZNK2v88internal12HandlerTable12GetRangeDataEi(ptr noundef nonnull align 8 dereferenceable(16) %82, i32 noundef %i.pyf) #23
  %i.pzt = add nsw i32 %i.pzs, 1                  ; 2 uses
  %i.pzu = and i32 %i.pzt, 63
  %i.pzv = zext nneg i32 %i.pzu to i64
  %i.pzw = shl nuw i64 1, %i.pzv
  %i.pzx = getelementptr inbounds nuw i8, ptr %i.pzr, i64 24
  %i.pzy = load ptr, ptr %i.pzx, align 8
  %i.pzz = lshr i32 %i.pzt, 6
  %i.qaa = zext nneg i32 %i.pzz to i64
  %i.qab = getelementptr inbounds nuw [8 x i8], ptr %i.pzy, i64 %i.qaa ; 2 uses
  %i.qac = load i64, ptr %i.qab, align 8
  %i.qad = or i64 %i.pzw, %i.qac
  store i64 %i.qad, ptr %i.qab, align 8
  br i1 %i.pyn, label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE105EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i, label %bb.ajx

bb.ajx:                                           ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1937
  %i.qae = load ptr, ptr %i.pxu, align 8
  %i.qaf = getelementptr inbounds nuw i8, ptr %i.qae, i64 24
  %i.qag = load ptr, ptr %i.qaf, align 8          ; 2 uses
  %i.qah = load i64, ptr %i.qag, align 8
  %i.qai = and i64 %i.qah, -2
  store i64 %i.qai, ptr %i.qag, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE105EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i

_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE105EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i: ; preds = %bb.ajx, %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1937, %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1933
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #23
  %i.qaj = load ptr, ptr %i.pxu, align 8
  %i.qak = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJRS4_RPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, ptr noundef nonnull align 8 dereferenceable(40) %i.qaj, ptr noundef nonnull align 8 dereferenceable(8) %i.gf) ; 2 uses
  store ptr %i.qak, ptr %i.anb, align 8
  %i.qal = getelementptr inbounds nuw i8, ptr %i.qak, i64 24 ; 5 uses
  %i.qam = load ptr, ptr %i.qal, align 8          ; 2 uses
  %i.qan = load i64, ptr %i.qam, align 8
  %i.qao = and i64 %i.qan, -2
  store i64 %i.qao, ptr %i.qam, align 8
  %i.qap = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 0) #23 ; 2 uses
  %i.qaq = icmp slt i32 %i.qap, 0
  br i1 %i.qaq, label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE105ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i, label %bb.ajy

bb.ajy:                                           ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE105EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i
  %i.qar = add nuw nsw i32 %i.qap, 1              ; 2 uses
  %i.qas = and i32 %i.qar, 63
  %i.qat = zext nneg i32 %i.qas to i64
  %i.qau = shl nuw i64 1, %i.qat
  %i.qav = load ptr, ptr %i.qal, align 8
  %i.qaw = lshr i32 %i.qar, 6
  %i.qax = zext nneg i32 %i.qaw to i64
  %i.qay = getelementptr inbounds nuw [8 x i8], ptr %i.qav, i64 %i.qax ; 2 uses
  %i.qaz = load i64, ptr %i.qay, align 8
  %i.qba = or i64 %i.qaz, %i.qau
  store i64 %i.qba, ptr %i.qay, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE105ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i

_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE105ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i: ; preds = %bb.ajy, %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE105EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i
  %i.qbb = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 1) #23 ; 2 uses
  %i.qbc = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator23GetRegisterCountOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 2) #23 ; 5 uses
  %i.qbd = icmp sgt i32 %i.qbb, -1
  %i.qbe = icmp ne i32 %i.qbc, 0
  %or.cond.i.i.i.i1938 = and i1 %i.qbd, %i.qbe
  br i1 %or.cond.i.i.i.i1938, label %.lr.ph.i.i.i11.i1939, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE105ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

.lr.ph.i.i.i11.i1939:                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE105ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i
  %i.qbf = add nuw i32 %i.qbb, 1                  ; 3 uses
  %xtraiter7444 = and i32 %i.qbc, 1
  %i.qbg = icmp eq i32 %i.qbc, 1
  br i1 %i.qbg, label %.epil.preheader7443, label %.lr.ph.i.i.i11.i1939.new

.lr.ph.i.i.i11.i1939.new:                         ; preds = %.lr.ph.i.i.i11.i1939
  %unroll_iter7447 = and i32 %i.qbc, -2
  br label %bb.ajz

bb.ajz:                                           ; preds = %bb.ajz, %.lr.ph.i.i.i11.i1939.new
  %.07.i.i.i.i1940 = phi i32 [ 0, %.lr.ph.i.i.i11.i1939.new ], [ %i.qcc, %bb.ajz ] ; 3 uses
  %niter7448 = phi i32 [ 0, %.lr.ph.i.i.i11.i1939.new ], [ %niter7448.next.1, %bb.ajz ]
  %i.qbh = add i32 %i.qbf, %.07.i.i.i.i1940       ; 2 uses
  %i.qbi = and i32 %i.qbh, 63
  %i.qbj = zext nneg i32 %i.qbi to i64
  %i.qbk = shl nuw i64 1, %i.qbj
  %i.qbl = load ptr, ptr %i.qal, align 8
  %i.qbm = lshr i32 %i.qbh, 6
  %i.qbn = zext nneg i32 %i.qbm to i64
  %i.qbo = getelementptr inbounds nuw [8 x i8], ptr %i.qbl, i64 %i.qbn ; 2 uses
  %i.qbp = load i64, ptr %i.qbo, align 8
  %i.qbq = or i64 %i.qbk, %i.qbp
  store i64 %i.qbq, ptr %i.qbo, align 8
  %i.qbr = or disjoint i32 %.07.i.i.i.i1940, 1
  %i.qbs = add i32 %i.qbf, %i.qbr                 ; 2 uses
  %i.qbt = and i32 %i.qbs, 63
  %i.qbu = zext nneg i32 %i.qbt to i64
  %i.qbv = shl nuw i64 1, %i.qbu
  %i.qbw = load ptr, ptr %i.qal, align 8
  %i.qbx = lshr i32 %i.qbs, 6
  %i.qby = zext nneg i32 %i.qbx to i64
  %i.qbz = getelementptr inbounds nuw [8 x i8], ptr %i.qbw, i64 %i.qby ; 2 uses
  %i.qca = load i64, ptr %i.qbz, align 8
  %i.qcb = or i64 %i.qbv, %i.qca
  store i64 %i.qcb, ptr %i.qbz, align 8
  %i.qcc = add nuw i32 %.07.i.i.i.i1940, 2        ; 2 uses
  %niter7448.next.1 = add nuw i32 %niter7448, 2   ; 2 uses
  %niter7448.ncmp.1 = icmp eq i32 %niter7448.next.1, %unroll_iter7447
  br i1 %niter7448.ncmp.1, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE105ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa, label %bb.ajz, !llvm.loop !20

_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE105ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa: ; preds = %bb.ajz
  %lcmp.mod7445.not = icmp eq i32 %xtraiter7444, 0
  br i1 %lcmp.mod7445.not, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE105ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit, label %.epil.preheader7443

.epil.preheader7443:                              ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE105ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i11.i1939
  %.07.i.i.i.i1940.epil.init = phi i32 [ 0, %.lr.ph.i.i.i11.i1939 ], [ %i.qcc, %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE105ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa ]
  %lcmp.mod7446 = trunc i32 %i.qbc to i1
  call void @llvm.assume(i1 %lcmp.mod7446)
  %i.qcd = add i32 %i.qbf, %.07.i.i.i.i1940.epil.init ; 2 uses
  %i.qce = and i32 %i.qcd, 63
  %i.qcf = zext nneg i32 %i.qce to i64
  %i.qcg = shl nuw i64 1, %i.qcf
  %i.qch = load ptr, ptr %i.qal, align 8
  %i.qci = lshr i32 %i.qcd, 6
  %i.qcj = zext nneg i32 %i.qci to i64
  %i.qck = getelementptr inbounds nuw [8 x i8], ptr %i.qch, i64 %i.qcj ; 2 uses
  %i.qcl = load i64, ptr %i.qck, align 8
  %i.qcm = or i64 %i.qcg, %i.qcl
  store i64 %i.qcm, ptr %i.qck, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE105ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE105ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit: ; preds = %.epil.preheader7443, %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE105ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa, %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE105ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i
  %i.qcn = load ptr, ptr %i.anb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gf)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

bb.aka:                                           ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gh)
  store ptr %i.anc, ptr %i.gh, align 8
  %.not.i.i1918 = icmp eq ptr %.053425864, null
  br i1 %.not.i.i1918, label %bb.akb, label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1919

bb.akb:                                           ; preds = %bb.aka
  %i.qco = load i64, ptr %.sroa.0.0.copyload.i536, align 8
  %i.qcp = add i64 %i.qco, 47
  %i.qcq = inttoptr i64 %i.qcp to ptr
  %i.qcr = load i32, ptr %i.qcq, align 4
  %i.qcs = sdiv i32 %i.qcr, 8                     ; 2 uses
  %i.qct = getelementptr inbounds nuw i8, ptr %i.anc, i64 24 ; 2 uses
  %i.qcu = load i64, ptr %i.qct, align 8
  %i.qcv = getelementptr inbounds nuw i8, ptr %i.anc, i64 16 ; 6 uses
  %i.qcw = load i64, ptr %i.qcv, align 8          ; 2 uses
  %i.qcx = sub i64 %i.qcu, %i.qcw
  %i.qcy = icmp ult i64 %i.qcx, 40
  br i1 %i.qcy, label %bb.akc, label %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1928, !prof !5

bb.akc:                                           ; preds = %bb.akb
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, i64 noundef 40) #23
  %.pre.i.i.i.i1931 = load i64, ptr %i.qcv, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1928

_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1928: ; preds = %bb.akc, %bb.akb
  %i.qcz = phi i64 [ %.pre.i.i.i.i1931, %bb.akc ], [ %i.qcw, %bb.akb ] ; 2 uses
  %i.qda = inttoptr i64 %i.qcz to ptr             ; 6 uses
  %i.qdb = add i64 %i.qcz, 40
  store i64 %i.qdb, ptr %i.qcv, align 8
  %i.qdc = getelementptr inbounds nuw i8, ptr %i.qda, i64 8
  %i.qdd = add nsw i32 %i.qcs, 1
  store i32 %i.qdd, ptr %i.qdc, align 8
  %i.qde = getelementptr inbounds nuw i8, ptr %i.qda, i64 16 ; 4 uses
  store i64 0, ptr %i.qde, align 8
  %i.qdf = getelementptr inbounds nuw i8, ptr %i.qda, i64 24 ; 3 uses
  store ptr %i.qde, ptr %i.qdf, align 8
  %i.qdg = getelementptr inbounds nuw i8, ptr %i.qda, i64 32 ; 2 uses
  store ptr %i.qdf, ptr %i.qdg, align 8
  %i.qdh = add nsw i32 %i.qcs, 64
  %i.qdi = ashr i32 %i.qdh, 6                     ; 2 uses
  %i.qdj = icmp sgt i32 %i.qdi, 1
  br i1 %i.qdj, label %bb.akd, label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1919

bb.akd:                                           ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1928
  %i.qdk = zext nneg i32 %i.qdi to i64            ; 2 uses
  %i.qdl = shl nuw nsw i64 %i.qdk, 3              ; 4 uses
  %i.qdm = load i64, ptr %i.qct, align 8
  %i.qdn = load i64, ptr %i.qcv, align 8          ; 2 uses
  %i.qdo = sub i64 %i.qdm, %i.qdn
  %i.qdp = icmp ugt i64 %i.qdl, %i.qdo
  br i1 %i.qdp, label %bb.ake, label %.lr.ph.i.i.i.i.i.i.i.i.i1929, !prof !5

bb.ake:                                           ; preds = %bb.akd
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, i64 noundef %i.qdl) #23
  %.pre.i.i.i.i.i.i.i1930 = load i64, ptr %i.qcv, align 8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i1929

.lr.ph.i.i.i.i.i.i.i.i.i1929:                     ; preds = %bb.ake, %bb.akd
  %i.qdq = phi i64 [ %.pre.i.i.i.i.i.i.i1930, %bb.ake ], [ %i.qdn, %bb.akd ] ; 2 uses
  %i.qdr = inttoptr i64 %i.qdq to ptr             ; 2 uses
  %i.qds = add i64 %i.qdq, %i.qdl
  store i64 %i.qds, ptr %i.qcv, align 8
  store ptr %i.qdr, ptr %i.qde, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.qdr, i8 0, i64 %i.qdl, i1 false)
  %i.qdt = load ptr, ptr %i.qde, align 8          ; 2 uses
  store ptr %i.qdt, ptr %i.qdf, align 8
  %i.qdu = getelementptr inbounds nuw [8 x i8], ptr %i.qdt, i64 %i.qdk
  store ptr %i.qdu, ptr %i.qdg, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1919

_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1919: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1929, %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1928, %bb.aka
  %.sink.i.i1920 = phi ptr [ %.053425864, %bb.aka ], [ %i.qda, %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1928 ], [ %i.qda, %.lr.ph.i.i.i.i.i.i.i.i.i1929 ]
  %i.qdv = getelementptr inbounds nuw i8, ptr %i.anb, i64 8 ; 6 uses
  store ptr %.sink.i.i1920, ptr %i.qdv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #23
  %i.qdw = load i64, ptr %.sroa.0.0.copyload.i536, align 8
  call void @_ZN2v88internal12HandlerTableC1ENS0_6TaggedINS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(16) %83, i64 %i.qdw) #23
  %i.qdx = load ptr, ptr %i.qy, align 8
  %i.qdy = load ptr, ptr %i.qz, align 8
  %i.qdz = ptrtoint ptr %i.qdx to i64
  %i.qea = ptrtoint ptr %i.qdy to i64
  %i.qeb = load i32, ptr %i.ra, align 4
  %i.qec = zext i32 %i.qeb to i64
  %i.qed = add i64 %i.qea, %i.qec
  %i.qee = sub i64 %i.qdz, %i.qed
  %i.qef = trunc i64 %i.qee to i32
  %i.qeg = call noundef i32 @_ZNK2v88internal12HandlerTable26LookupHandlerIndexForRangeEi(ptr noundef nonnull align 8 dereferenceable(16) %83, i32 noundef %i.qef) #23 ; 3 uses
  %.not16.i.i1921 = icmp eq i32 %i.qeg, -1
  br i1 %.not16.i.i1921, label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE106EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i, label %bb.akf

bb.akf:                                           ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gg)
  store ptr %i.anc, ptr %i.gg, align 8
  %i.qeh = load ptr, ptr %i.qdv, align 8          ; 2 uses
  %i.qei = icmp eq ptr %i.qeh, %.053425864
  br i1 %i.qei, label %bb.akg, label %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1922

bb.akg:                                           ; preds = %bb.akf
  %i.qej = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJRS4_RPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, ptr noundef nonnull align 8 dereferenceable(40) %.053425864, ptr noundef nonnull align 8 dereferenceable(8) %i.gg) ; 2 uses
  store ptr %i.qej, ptr %i.qdv, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1922

_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1922: ; preds = %bb.akg, %bb.akf
  %i.qek = phi ptr [ %i.qeh, %bb.akf ], [ %i.qej, %bb.akg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gg)
  %i.qel = getelementptr inbounds nuw i8, ptr %i.qek, i64 24 ; 3 uses
  %i.qem = load ptr, ptr %i.qel, align 8
  %i.qen = load i64, ptr %i.qem, align 8
  %i.qeo = trunc i64 %i.qen to i1
  %i.qep = call noundef i32 @_ZNK2v88internal12HandlerTable15GetRangeHandlerEi(ptr noundef nonnull align 8 dereferenceable(16) %83, i32 noundef %i.qeg) #23
  %i.qeq = getelementptr inbounds nuw i8, ptr %i.qek, i64 32 ; 2 uses
  %i.qer = load ptr, ptr %i.qeq, align 8
  %i.qes = load ptr, ptr %i.qel, align 8          ; 2 uses
  %i.qet = ptrtoint ptr %i.qer to i64
  %i.qeu = ptrtoint ptr %i.qes to i64
  %i.qev = sub i64 %i.qet, %i.qeu
  %i.qew = lshr exact i64 %i.qev, 3
  %i.qex = trunc i64 %i.qew to i32
  %i.qey = icmp sgt i32 %i.qex, 0
  br i1 %i.qey, label %.lr.ph.i.i.i.i1924, label %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1923

.lr.ph.i.i.i.i1924:                               ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1922
  %i.qez = load ptr, ptr %i.amy, align 8
  %i.qfa = sext i32 %i.qep to i64
  %i.qfb = getelementptr inbounds [16 x i8], ptr %i.qez, i64 %i.qfa
  %i.qfc = load ptr, ptr %i.qfb, align 8
  %i.qfd = getelementptr inbounds nuw i8, ptr %i.qfc, i64 24
  br label %bb.akh

bb.akh:                                           ; preds = %bb.akh, %.lr.ph.i.i.i.i1924
  %indvars.iv.i.i.i.i1925 = phi i64 [ 0, %.lr.ph.i.i.i.i1924 ], [ %indvars.iv.next.i.i.i.i1926, %bb.akh ] ; 3 uses
  %i.qfe = phi ptr [ %i.qes, %.lr.ph.i.i.i.i1924 ], [ %i.qfm, %bb.akh ]
  %i.qff = load ptr, ptr %i.qfd, align 8
  %i.qfg = getelementptr inbounds nuw [8 x i8], ptr %i.qff, i64 %indvars.iv.i.i.i.i1925
  %i.qfh = load i64, ptr %i.qfg, align 8
  %i.qfi = getelementptr inbounds nuw [8 x i8], ptr %i.qfe, i64 %indvars.iv.i.i.i.i1925 ; 2 uses
  %i.qfj = load i64, ptr %i.qfi, align 8
  %i.qfk = or i64 %i.qfj, %i.qfh
  store i64 %i.qfk, ptr %i.qfi, align 8
  %indvars.iv.next.i.i.i.i1926 = add nuw nsw i64 %indvars.iv.i.i.i.i1925, 1 ; 2 uses
  %i.qfl = load ptr, ptr %i.qeq, align 8
  %i.qfm = load ptr, ptr %i.qel, align 8          ; 2 uses
  %i.qfn = ptrtoint ptr %i.qfl to i64
  %i.qfo = ptrtoint ptr %i.qfm to i64
  %i.qfp = sub i64 %i.qfn, %i.qfo
  %sext.i.i.i.i1927 = shl i64 %i.qfp, 29
  %i.qfq = ashr i64 %sext.i.i.i.i1927, 32
  %i.qfr = icmp slt i64 %indvars.iv.next.i.i.i.i1926, %i.qfq
  br i1 %i.qfr, label %bb.akh, label %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1923, !llvm.loop !9

_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1923: ; preds = %bb.akh, %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1922
  %i.qfs = load ptr, ptr %i.qdv, align 8
  %i.qft = call noundef i32 @_ZNK2v88internal12HandlerTable12GetRangeDataEi(ptr noundef nonnull align 8 dereferenceable(16) %83, i32 noundef %i.qeg) #23
  %i.qfu = add nsw i32 %i.qft, 1                  ; 2 uses
  %i.qfv = and i32 %i.qfu, 63
  %i.qfw = zext nneg i32 %i.qfv to i64
  %i.qfx = shl nuw i64 1, %i.qfw
  %i.qfy = getelementptr inbounds nuw i8, ptr %i.qfs, i64 24
  %i.qfz = load ptr, ptr %i.qfy, align 8
  %i.qga = lshr i32 %i.qfu, 6
  %i.qgb = zext nneg i32 %i.qga to i64
  %i.qgc = getelementptr inbounds nuw [8 x i8], ptr %i.qfz, i64 %i.qgb ; 2 uses
  %i.qgd = load i64, ptr %i.qgc, align 8
  %i.qge = or i64 %i.qfx, %i.qgd
  store i64 %i.qge, ptr %i.qgc, align 8
  br i1 %i.qeo, label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE106EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i, label %bb.aki

bb.aki:                                           ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1923
  %i.qgf = load ptr, ptr %i.qdv, align 8
  %i.qgg = getelementptr inbounds nuw i8, ptr %i.qgf, i64 24
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler16BytecodeAnalysis20BytecodeAnalysisImpl7AnalyzeEv:bb.a
  %i.qre = icmp ugt i64 %i.qra, %i.qrd
  br i1 %i.qre, label %bb.ali, label %.lr.ph.i.i.i.i.i.i.i.i.i1887, !prof !5

bb.ali:                                           ; preds = %bb.alh
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, i64 noundef %i.qra) #23
  %.pre.i.i.i.i.i.i.i1888 = load i64, ptr %i.qqk, align 8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i1887

.lr.ph.i.i.i.i.i.i.i.i.i1887:                     ; preds = %bb.ali, %bb.alh
  %i.qrf = phi i64 [ %.pre.i.i.i.i.i.i.i1888, %bb.ali ], [ %i.qrc, %bb.alh ] ; 2 uses
  %i.qrg = inttoptr i64 %i.qrf to ptr             ; 2 uses
  %i.qrh = add i64 %i.qrf, %i.qra
  store i64 %i.qrh, ptr %i.qqk, align 8
  store ptr %i.qrg, ptr %i.qqt, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.qrg, i8 0, i64 %i.qra, i1 false)
  %i.qri = load ptr, ptr %i.qqt, align 8          ; 2 uses
  store ptr %i.qri, ptr %i.qqu, align 8
  %i.qrj = getelementptr inbounds nuw [8 x i8], ptr %i.qri, i64 %i.qqz
  store ptr %i.qrj, ptr %i.qqv, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1873

_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1873: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1887, %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1886, %bb.ale
  %.sink.i.i1874 = phi ptr [ %.053425864, %bb.ale ], [ %i.qqp, %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1886 ], [ %i.qqp, %.lr.ph.i.i.i.i.i.i.i.i.i1887 ]
  %i.qrk = getelementptr inbounds nuw i8, ptr %i.anb, i64 8 ; 6 uses
  store ptr %.sink.i.i1874, ptr %i.qrk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #23
  %i.qrl = load i64, ptr %.sroa.0.0.copyload.i536, align 8
  call void @_ZN2v88internal12HandlerTableC1ENS0_6TaggedINS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(16) %86, i64 %i.qrl) #23
  %i.qrm = load ptr, ptr %i.qy, align 8
  %i.qrn = load ptr, ptr %i.qz, align 8
  %i.qro = ptrtoint ptr %i.qrm to i64
  %i.qrp = ptrtoint ptr %i.qrn to i64
  %i.qrq = load i32, ptr %i.ra, align 4
  %i.qrr = zext i32 %i.qrq to i64
  %i.qrs = add i64 %i.qrp, %i.qrr
  %i.qrt = sub i64 %i.qro, %i.qrs
  %i.qru = trunc i64 %i.qrt to i32
  %i.qrv = call noundef i32 @_ZNK2v88internal12HandlerTable26LookupHandlerIndexForRangeEi(ptr noundef nonnull align 8 dereferenceable(16) %86, i32 noundef %i.qru) #23 ; 3 uses
  %.not16.i.i1875 = icmp eq i32 %i.qrv, -1
  br i1 %.not16.i.i1875, label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE109EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i, label %bb.alj

bb.alj:                                           ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gm)
  store ptr %i.anc, ptr %i.gm, align 8
  %i.qrw = load ptr, ptr %i.qrk, align 8          ; 2 uses
  %i.qrx = icmp eq ptr %i.qrw, %.053425864
  br i1 %i.qrx, label %bb.alk, label %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1876

bb.alk:                                           ; preds = %bb.alj
  %i.qry = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJRS4_RPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, ptr noundef nonnull align 8 dereferenceable(40) %.053425864, ptr noundef nonnull align 8 dereferenceable(8) %i.gm) ; 2 uses
  store ptr %i.qry, ptr %i.qrk, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1876

_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1876: ; preds = %bb.alk, %bb.alj
  %i.qrz = phi ptr [ %i.qrw, %bb.alj ], [ %i.qry, %bb.alk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gm)
  %i.qsa = getelementptr inbounds nuw i8, ptr %i.qrz, i64 24 ; 3 uses
  %i.qsb = load ptr, ptr %i.qsa, align 8
  %i.qsc = load i64, ptr %i.qsb, align 8
  %i.qsd = trunc i64 %i.qsc to i1
  %i.qse = call noundef i32 @_ZNK2v88internal12HandlerTable15GetRangeHandlerEi(ptr noundef nonnull align 8 dereferenceable(16) %86, i32 noundef %i.qrv) #23
  %i.qsf = getelementptr inbounds nuw i8, ptr %i.qrz, i64 32 ; 2 uses
  %i.qsg = load ptr, ptr %i.qsf, align 8
  %i.qsh = load ptr, ptr %i.qsa, align 8          ; 2 uses
  %i.qsi = ptrtoint ptr %i.qsg to i64
  %i.qsj = ptrtoint ptr %i.qsh to i64
  %i.qsk = sub i64 %i.qsi, %i.qsj
  %i.qsl = lshr exact i64 %i.qsk, 3
  %i.qsm = trunc i64 %i.qsl to i32
  %i.qsn = icmp sgt i32 %i.qsm, 0
  br i1 %i.qsn, label %.lr.ph.i.i.i.i1882, label %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1877

.lr.ph.i.i.i.i1882:                               ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1876
  %i.qso = load ptr, ptr %i.amy, align 8
  %i.qsp = sext i32 %i.qse to i64
  %i.qsq = getelementptr inbounds [16 x i8], ptr %i.qso, i64 %i.qsp
  %i.qsr = load ptr, ptr %i.qsq, align 8
  %i.qss = getelementptr inbounds nuw i8, ptr %i.qsr, i64 24
  br label %bb.all

bb.all:                                           ; preds = %bb.all, %.lr.ph.i.i.i.i1882
  %indvars.iv.i.i.i.i1883 = phi i64 [ 0, %.lr.ph.i.i.i.i1882 ], [ %indvars.iv.next.i.i.i.i1884, %bb.all ] ; 3 uses
  %i.qst = phi ptr [ %i.qsh, %.lr.ph.i.i.i.i1882 ], [ %i.qtb, %bb.all ]
  %i.qsu = load ptr, ptr %i.qss, align 8
  %i.qsv = getelementptr inbounds nuw [8 x i8], ptr %i.qsu, i64 %indvars.iv.i.i.i.i1883
  %i.qsw = load i64, ptr %i.qsv, align 8
  %i.qsx = getelementptr inbounds nuw [8 x i8], ptr %i.qst, i64 %indvars.iv.i.i.i.i1883 ; 2 uses
  %i.qsy = load i64, ptr %i.qsx, align 8
  %i.qsz = or i64 %i.qsy, %i.qsw
  store i64 %i.qsz, ptr %i.qsx, align 8
  %indvars.iv.next.i.i.i.i1884 = add nuw nsw i64 %indvars.iv.i.i.i.i1883, 1 ; 2 uses
  %i.qta = load ptr, ptr %i.qsf, align 8
  %i.qtb = load ptr, ptr %i.qsa, align 8          ; 2 uses
  %i.qtc = ptrtoint ptr %i.qta to i64
  %i.qtd = ptrtoint ptr %i.qtb to i64
  %i.qte = sub i64 %i.qtc, %i.qtd
  %sext.i.i.i.i1885 = shl i64 %i.qte, 29
  %i.qtf = ashr i64 %sext.i.i.i.i1885, 32
  %i.qtg = icmp slt i64 %indvars.iv.next.i.i.i.i1884, %i.qtf
  br i1 %i.qtg, label %bb.all, label %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1877, !llvm.loop !9

_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1877: ; preds = %bb.all, %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1876
  %i.qth = load ptr, ptr %i.qrk, align 8
  %i.qti = call noundef i32 @_ZNK2v88internal12HandlerTable12GetRangeDataEi(ptr noundef nonnull align 8 dereferenceable(16) %86, i32 noundef %i.qrv) #23
  %i.qtj = add nsw i32 %i.qti, 1                  ; 2 uses
  %i.qtk = and i32 %i.qtj, 63
  %i.qtl = zext nneg i32 %i.qtk to i64
  %i.qtm = shl nuw i64 1, %i.qtl
  %i.qtn = getelementptr inbounds nuw i8, ptr %i.qth, i64 24
  %i.qto = load ptr, ptr %i.qtn, align 8
  %i.qtp = lshr i32 %i.qtj, 6
  %i.qtq = zext nneg i32 %i.qtp to i64
  %i.qtr = getelementptr inbounds nuw [8 x i8], ptr %i.qto, i64 %i.qtq ; 2 uses
  %i.qts = load i64, ptr %i.qtr, align 8
  %i.qtt = or i64 %i.qtm, %i.qts
  store i64 %i.qtt, ptr %i.qtr, align 8
  br i1 %i.qsd, label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE109EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i, label %bb.alm

bb.alm:                                           ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1877
  %i.qtu = load ptr, ptr %i.qrk, align 8
  %i.qtv = getelementptr inbounds nuw i8, ptr %i.qtu, i64 24
  %i.qtw = load ptr, ptr %i.qtv, align 8          ; 2 uses
  %i.qtx = load i64, ptr %i.qtw, align 8
  %i.qty = and i64 %i.qtx, -2
  store i64 %i.qty, ptr %i.qtw, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE109EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i

_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE109EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i: ; preds = %bb.alm, %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1877, %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1873
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #23
  %i.qtz = load ptr, ptr %i.qrk, align 8
  %i.qua = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJRS4_RPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, ptr noundef nonnull align 8 dereferenceable(40) %i.qtz, ptr noundef nonnull align 8 dereferenceable(8) %i.gn) ; 2 uses
  store ptr %i.qua, ptr %i.anb, align 8
  %i.qub = getelementptr inbounds nuw i8, ptr %i.qua, i64 24 ; 5 uses
  %i.quc = load ptr, ptr %i.qub, align 8          ; 2 uses
  %i.qud = load i64, ptr %i.quc, align 8
  %i.que = and i64 %i.qud, -2
  store i64 %i.que, ptr %i.quc, align 8
  %i.quf = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 0) #23 ; 2 uses
  %i.qug = icmp slt i32 %i.quf, 0
  br i1 %i.qug, label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE109ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i, label %bb.aln

bb.aln:                                           ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE109EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i
  %i.quh = add nuw nsw i32 %i.quf, 1              ; 2 uses
  %i.qui = and i32 %i.quh, 63
  %i.quj = zext nneg i32 %i.qui to i64
  %i.quk = shl nuw i64 1, %i.quj
  %i.qul = load ptr, ptr %i.qub, align 8
  %i.qum = lshr i32 %i.quh, 6
  %i.qun = zext nneg i32 %i.qum to i64
  %i.quo = getelementptr inbounds nuw [8 x i8], ptr %i.qul, i64 %i.qun ; 2 uses
  %i.qup = load i64, ptr %i.quo, align 8
  %i.quq = or i64 %i.qup, %i.quk
  store i64 %i.quq, ptr %i.quo, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE109ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i

_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE109ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i: ; preds = %bb.aln, %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE109EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i
  %i.qur = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 1) #23 ; 2 uses
  %i.qus = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator23GetRegisterCountOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 2) #23 ; 5 uses
  %i.qut = icmp sgt i32 %i.qur, -1
  %i.quu = icmp ne i32 %i.qus, 0
  %or.cond.i.i.i.i1878 = and i1 %i.qut, %i.quu
  br i1 %or.cond.i.i.i.i1878, label %.lr.ph.i.i.i11.i1879, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE109ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

.lr.ph.i.i.i11.i1879:                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE109ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i
  %i.quv = add nuw i32 %i.qur, 1                  ; 3 uses
  %xtraiter7438 = and i32 %i.qus, 1
  %i.quw = icmp eq i32 %i.qus, 1
  br i1 %i.quw, label %.epil.preheader7437, label %.lr.ph.i.i.i11.i1879.new

.lr.ph.i.i.i11.i1879.new:                         ; preds = %.lr.ph.i.i.i11.i1879
  %unroll_iter7441 = and i32 %i.qus, -2
  br label %bb.alo

bb.alo:                                           ; preds = %bb.alo, %.lr.ph.i.i.i11.i1879.new
  %.07.i.i.i.i1880 = phi i32 [ 0, %.lr.ph.i.i.i11.i1879.new ], [ %i.qvs, %bb.alo ] ; 3 uses
  %niter7442 = phi i32 [ 0, %.lr.ph.i.i.i11.i1879.new ], [ %niter7442.next.1, %bb.alo ]
  %i.qux = add i32 %i.quv, %.07.i.i.i.i1880       ; 2 uses
  %i.quy = and i32 %i.qux, 63
  %i.quz = zext nneg i32 %i.quy to i64
  %i.qva = shl nuw i64 1, %i.quz
  %i.qvb = load ptr, ptr %i.qub, align 8
  %i.qvc = lshr i32 %i.qux, 6
  %i.qvd = zext nneg i32 %i.qvc to i64
  %i.qve = getelementptr inbounds nuw [8 x i8], ptr %i.qvb, i64 %i.qvd ; 2 uses
  %i.qvf = load i64, ptr %i.qve, align 8
  %i.qvg = or i64 %i.qva, %i.qvf
  store i64 %i.qvg, ptr %i.qve, align 8
  %i.qvh = or disjoint i32 %.07.i.i.i.i1880, 1
  %i.qvi = add i32 %i.quv, %i.qvh                 ; 2 uses
  %i.qvj = and i32 %i.qvi, 63
  %i.qvk = zext nneg i32 %i.qvj to i64
  %i.qvl = shl nuw i64 1, %i.qvk
  %i.qvm = load ptr, ptr %i.qub, align 8
  %i.qvn = lshr i32 %i.qvi, 6
  %i.qvo = zext nneg i32 %i.qvn to i64
  %i.qvp = getelementptr inbounds nuw [8 x i8], ptr %i.qvm, i64 %i.qvo ; 2 uses
  %i.qvq = load i64, ptr %i.qvp, align 8
  %i.qvr = or i64 %i.qvl, %i.qvq
  store i64 %i.qvr, ptr %i.qvp, align 8
  %i.qvs = add nuw i32 %.07.i.i.i.i1880, 2        ; 2 uses
  %niter7442.next.1 = add nuw i32 %niter7442, 2   ; 2 uses
  %niter7442.ncmp.1 = icmp eq i32 %niter7442.next.1, %unroll_iter7441
  br i1 %niter7442.ncmp.1, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE109ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa, label %bb.alo, !llvm.loop !21

_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE109ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa: ; preds = %bb.alo
  %lcmp.mod7439.not = icmp eq i32 %xtraiter7438, 0
  br i1 %lcmp.mod7439.not, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE109ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit, label %.epil.preheader7437

.epil.preheader7437:                              ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE109ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i11.i1879
  %.07.i.i.i.i1880.epil.init = phi i32 [ 0, %.lr.ph.i.i.i11.i1879 ], [ %i.qvs, %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE109ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa ]
  %lcmp.mod7440 = trunc i32 %i.qus to i1
  call void @llvm.assume(i1 %lcmp.mod7440)
  %i.qvt = add i32 %i.quv, %.07.i.i.i.i1880.epil.init ; 2 uses
  %i.qvu = and i32 %i.qvt, 63
  %i.qvv = zext nneg i32 %i.qvu to i64
  %i.qvw = shl nuw i64 1, %i.qvv
  %i.qvx = load ptr, ptr %i.qub, align 8
  %i.qvy = lshr i32 %i.qvt, 6
  %i.qvz = zext nneg i32 %i.qvy to i64
  %i.qwa = getelementptr inbounds nuw [8 x i8], ptr %i.qvx, i64 %i.qvz ; 2 uses
  %i.qwb = load i64, ptr %i.qwa, align 8
  %i.qwc = or i64 %i.qvw, %i.qwb
  store i64 %i.qwc, ptr %i.qwa, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE109ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE109ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit: ; preds = %.epil.preheader7437, %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE109ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa, %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE109ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i
  %i.qwd = load ptr, ptr %i.anb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gn)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

bb.alp:                                           ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gp)
  store ptr %i.anc, ptr %i.gp, align 8
  %.not.i.i1854 = icmp eq ptr %.053425864, null
  br i1 %.not.i.i1854, label %bb.alq, label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1855

bb.alq:                                           ; preds = %bb.alp
  %i.qwe = load i64, ptr %.sroa.0.0.copyload.i536, align 8
  %i.qwf = add i64 %i.qwe, 47
  %i.qwg = inttoptr i64 %i.qwf to ptr
  %i.qwh = load i32, ptr %i.qwg, align 4
  %i.qwi = sdiv i32 %i.qwh, 8                     ; 2 uses
  %i.qwj = getelementptr inbounds nuw i8, ptr %i.anc, i64 24 ; 2 uses
  %i.qwk = load i64, ptr %i.qwj, align 8
  %i.qwl = getelementptr inbounds nuw i8, ptr %i.anc, i64 16 ; 6 uses
  %i.qwm = load i64, ptr %i.qwl, align 8          ; 2 uses
  %i.qwn = sub i64 %i.qwk, %i.qwm
  %i.qwo = icmp ult i64 %i.qwn, 40
  br i1 %i.qwo, label %bb.alr, label %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1868, !prof !5

bb.alr:                                           ; preds = %bb.alq
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, i64 noundef 40) #23
  %.pre.i.i.i.i1871 = load i64, ptr %i.qwl, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1868

_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1868: ; preds = %bb.alr, %bb.alq
  %i.qwp = phi i64 [ %.pre.i.i.i.i1871, %bb.alr ], [ %i.qwm, %bb.alq ] ; 2 uses
  %i.qwq = inttoptr i64 %i.qwp to ptr             ; 6 uses
  %i.qwr = add i64 %i.qwp, 40
  store i64 %i.qwr, ptr %i.qwl, align 8
  %i.qws = getelementptr inbounds nuw i8, ptr %i.qwq, i64 8
  %i.qwt = add nsw i32 %i.qwi, 1
  store i32 %i.qwt, ptr %i.qws, align 8
  %i.qwu = getelementptr inbounds nuw i8, ptr %i.qwq, i64 16 ; 4 uses
  store i64 0, ptr %i.qwu, align 8
  %i.qwv = getelementptr inbounds nuw i8, ptr %i.qwq, i64 24 ; 3 uses
  store ptr %i.qwu, ptr %i.qwv, align 8
  %i.qww = getelementptr inbounds nuw i8, ptr %i.qwq, i64 32 ; 2 uses
  store ptr %i.qwv, ptr %i.qww, align 8
  %i.qwx = add nsw i32 %i.qwi, 64
  %i.qwy = ashr i32 %i.qwx, 6                     ; 2 uses
  %i.qwz = icmp sgt i32 %i.qwy, 1
  br i1 %i.qwz, label %bb.als, label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1855

bb.als:                                           ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1868
  %i.qxa = zext nneg i32 %i.qwy to i64            ; 2 uses
  %i.qxb = shl nuw nsw i64 %i.qxa, 3              ; 4 uses
  %i.qxc = load i64, ptr %i.qwj, align 8
  %i.qxd = load i64, ptr %i.qwl, align 8          ; 2 uses
  %i.qxe = sub i64 %i.qxc, %i.qxd
  %i.qxf = icmp ugt i64 %i.qxb, %i.qxe
  br i1 %i.qxf, label %bb.alt, label %.lr.ph.i.i.i.i.i.i.i.i.i1869, !prof !5

bb.alt:                                           ; preds = %bb.als
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, i64 noundef %i.qxb) #23
  %.pre.i.i.i.i.i.i.i1870 = load i64, ptr %i.qwl, align 8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i1869

.lr.ph.i.i.i.i.i.i.i.i.i1869:                     ; preds = %bb.alt, %bb.als
  %i.qxg = phi i64 [ %.pre.i.i.i.i.i.i.i1870, %bb.alt ], [ %i.qxd, %bb.als ] ; 2 uses
  %i.qxh = inttoptr i64 %i.qxg to ptr             ; 2 uses
  %i.qxi = add i64 %i.qxg, %i.qxb
  store i64 %i.qxi, ptr %i.qwl, align 8
  store ptr %i.qxh, ptr %i.qwu, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.qxh, i8 0, i64 %i.qxb, i1 false)
  %i.qxj = load ptr, ptr %i.qwu, align 8          ; 2 uses
  store ptr %i.qxj, ptr %i.qwv, align 8
  %i.qxk = getelementptr inbounds nuw [8 x i8], ptr %i.qxj, i64 %i.qxa
  store ptr %i.qxk, ptr %i.qww, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1855

_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1855: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1869, %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1868, %bb.alp
  %.sink.i.i1856 = phi ptr [ %.053425864, %bb.alp ], [ %i.qwq, %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1868 ], [ %i.qwq, %.lr.ph.i.i.i.i.i.i.i.i.i1869 ]
  %i.qxl = getelementptr inbounds nuw i8, ptr %i.anb, i64 8 ; 6 uses
  store ptr %.sink.i.i1856, ptr %i.qxl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #23
  %i.qxm = load i64, ptr %.sroa.0.0.copyload.i536, align 8
  call void @_ZN2v88internal12HandlerTableC1ENS0_6TaggedINS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(16) %87, i64 %i.qxm) #23
  %i.qxn = load ptr, ptr %i.qy, align 8
  %i.qxo = load ptr, ptr %i.qz, align 8
  %i.qxp = ptrtoint ptr %i.qxn to i64
  %i.qxq = ptrtoint ptr %i.qxo to i64
  %i.qxr = load i32, ptr %i.ra, align 4
  %i.qxs = zext i32 %i.qxr to i64
  %i.qxt = add i64 %i.qxq, %i.qxs
  %i.qxu = sub i64 %i.qxp, %i.qxt
  %i.qxv = trunc i64 %i.qxu to i32
  %i.qxw = call noundef i32 @_ZNK2v88internal12HandlerTable26LookupHandlerIndexForRangeEi(ptr noundef nonnull align 8 dereferenceable(16) %87, i32 noundef %i.qxv) #23 ; 3 uses
  %.not16.i.i1857 = icmp eq i32 %i.qxw, -1
  br i1 %.not16.i.i1857, label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE110EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i, label %bb.alu

bb.alu:                                           ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.go)
  store ptr %i.anc, ptr %i.go, align 8
  %i.qxx = load ptr, ptr %i.qxl, align 8          ; 2 uses
  %i.qxy = icmp eq ptr %i.qxx, %.053425864
  br i1 %i.qxy, label %bb.alv, label %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1858

bb.alv:                                           ; preds = %bb.alu
  %i.qxz = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJRS4_RPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, ptr noundef nonnull align 8 dereferenceable(40) %.053425864, ptr noundef nonnull align 8 dereferenceable(8) %i.go) ; 2 uses
  store ptr %i.qxz, ptr %i.qxl, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1858

_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1858: ; preds = %bb.alv, %bb.alu
  %i.qya = phi ptr [ %i.qxx, %bb.alu ], [ %i.qxz, %bb.alv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.go)
  %i.qyb = getelementptr inbounds nuw i8, ptr %i.qya, i64 24 ; 3 uses
  %i.qyc = load ptr, ptr %i.qyb, align 8
  %i.qyd = load i64, ptr %i.qyc, align 8
  %i.qye = trunc i64 %i.qyd to i1
  %i.qyf = call noundef i32 @_ZNK2v88internal12HandlerTable15GetRangeHandlerEi(ptr noundef nonnull align 8 dereferenceable(16) %87, i32 noundef %i.qxw) #23
  %i.qyg = getelementptr inbounds nuw i8, ptr %i.qya, i64 32 ; 2 uses
  %i.qyh = load ptr, ptr %i.qyg, align 8
  %i.qyi = load ptr, ptr %i.qyb, align 8          ; 2 uses
  %i.qyj = ptrtoint ptr %i.qyh to i64
  %i.qyk = ptrtoint ptr %i.qyi to i64
  %i.qyl = sub i64 %i.qyj, %i.qyk
  %i.qym = lshr exact i64 %i.qyl, 3
  %i.qyn = trunc i64 %i.qym to i32
  %i.qyo = icmp sgt i32 %i.qyn, 0
  br i1 %i.qyo, label %.lr.ph.i.i.i.i1864, label %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1859

.lr.ph.i.i.i.i1864:                               ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1858
  %i.qyp = load ptr, ptr %i.amy, align 8
  %i.qyq = sext i32 %i.qyf to i64
  %i.qyr = getelementptr inbounds [16 x i8], ptr %i.qyp, i64 %i.qyq
  %i.qys = load ptr, ptr %i.qyr, align 8
  %i.qyt = getelementptr inbounds nuw i8, ptr %i.qys, i64 24
  br label %bb.alw

bb.alw:                                           ; preds = %bb.alw, %.lr.ph.i.i.i.i1864
  %indvars.iv.i.i.i.i1865 = phi i64 [ 0, %.lr.ph.i.i.i.i1864 ], [ %indvars.iv.next.i.i.i.i1866, %bb.alw ] ; 3 uses
  %i.qyu = phi ptr [ %i.qyi, %.lr.ph.i.i.i.i1864 ], [ %i.qzc, %bb.alw ]
  %i.qyv = load ptr, ptr %i.qyt, align 8
  %i.qyw = getelementptr inbounds nuw [8 x i8], ptr %i.qyv, i64 %indvars.iv.i.i.i.i1865
  %i.qyx = load i64, ptr %i.qyw, align 8
  %i.qyy = getelementptr inbounds nuw [8 x i8], ptr %i.qyu, i64 %indvars.iv.i.i.i.i1865 ; 2 uses
  %i.qyz = load i64, ptr %i.qyy, align 8
  %i.qza = or i64 %i.qyz, %i.qyx
  store i64 %i.qza, ptr %i.qyy, align 8
  %indvars.iv.next.i.i.i.i1866 = add nuw nsw i64 %indvars.iv.i.i.i.i1865, 1 ; 2 uses
  %i.qzb = load ptr, ptr %i.qyg, align 8
  %i.qzc = load ptr, ptr %i.qyb, align 8          ; 2 uses
  %i.qzd = ptrtoint ptr %i.qzb to i64
  %i.qze = ptrtoint ptr %i.qzc to i64
  %i.qzf = sub i64 %i.qzd, %i.qze
  %sext.i.i.i.i1867 = shl i64 %i.qzf, 29
  %i.qzg = ashr i64 %sext.i.i.i.i1867, 32
  %i.qzh = icmp slt i64 %indvars.iv.next.i.i.i.i1866, %i.qzg
  br i1 %i.qzh, label %bb.alw, label %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1859, !llvm.loop !9

_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1859: ; preds = %bb.alw, %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1858
  %i.qzi = load ptr, ptr %i.qxl, align 8
  %i.qzj = call noundef i32 @_ZNK2v88internal12HandlerTable12GetRangeDataEi(ptr noundef nonnull align 8 dereferenceable(16) %87, i32 noundef %i.qxw) #23
  %i.qzk = add nsw i32 %i.qzj, 1                  ; 2 uses
  %i.qzl = and i32 %i.qzk, 63
  %i.qzm = zext nneg i32 %i.qzl to i64
  %i.qzn = shl nuw i64 1, %i.qzm
  %i.qzo = getelementptr inbounds nuw i8, ptr %i.qzi, i64 24
  %i.qzp = load ptr, ptr %i.qzo, align 8
  %i.qzq = lshr i32 %i.qzk, 6
  %i.qzr = zext nneg i32 %i.qzq to i64
  %i.qzs = getelementptr inbounds nuw [8 x i8], ptr %i.qzp, i64 %i.qzr ; 2 uses
  %i.qzt = load i64, ptr %i.qzs, align 8
  %i.qzu = or i64 %i.qzn, %i.qzt
  store i64 %i.qzu, ptr %i.qzs, align 8
  br i1 %i.qye, label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE110EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i, label %bb.alx

bb.alx:                                           ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1859
  %i.qzv = load ptr, ptr %i.qxl, align 8
  %i.qzw = getelementptr inbounds nuw i8, ptr %i.qzv, i64 24
  %i.qzx = load ptr, ptr %i.qzw, align 8          ; 2 uses
  %i.qzy = load i64, ptr %i.qzx, align 8
  %i.qzz = and i64 %i.qzy, -2
  store i64 %i.qzz, ptr %i.qzx, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE110EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i

_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE110EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i: ; preds = %bb.alx, %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1859, %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1855
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #23
  %i.raa = load ptr, ptr %i.qxl, align 8
  %i.rab = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJRS4_RPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, ptr noundef nonnull align 8 dereferenceable(40) %i.raa, ptr noundef nonnull align 8 dereferenceable(8) %i.gp) ; 2 uses
  store ptr %i.rab, ptr %i.anb, align 8
  %i.rac = getelementptr inbounds nuw i8, ptr %i.rab, i64 24 ; 4 uses
  %i.rad = load ptr, ptr %i.rac, align 8          ; 2 uses
  %i.rae = load i64, ptr %i.rad, align 8
  %i.raf = and i64 %i.rae, -2
  store i64 %i.raf, ptr %i.rad, align 8
  %i.rag = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 1) #23 ; 2 uses
  %i.rah = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator23GetRegisterCountOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 2) #23 ; 5 uses
  %i.rai = icmp sgt i32 %i.rag, -1
  %i.raj = icmp ne i32 %i.rah, 0
  %or.cond.i.i.i.i1860 = and i1 %i.rai, %i.raj
  br i1 %or.cond.i.i.i.i1860, label %.lr.ph.i.i.i11.i1861, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE110ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE4ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

.lr.ph.i.i.i11.i1861:                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE110EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i
  %i.rak = add nuw i32 %i.rag, 1                  ; 3 uses
  %xtraiter7432 = and i32 %i.rah, 1
  %i.ral = icmp eq i32 %i.rah, 1
  br i1 %i.ral, label %.epil.preheader7431, label %.lr.ph.i.i.i11.i1861.new

.lr.ph.i.i.i11.i1861.new:                         ; preds = %.lr.ph.i.i.i11.i1861
  %unroll_iter7435 = and i32 %i.rah, -2
  br label %bb.aly

bb.aly:                                           ; preds = %bb.aly, %.lr.ph.i.i.i11.i1861.new
  %.07.i.i.i.i1862 = phi i32 [ 0, %.lr.ph.i.i.i11.i1861.new ], [ %i.rbh, %bb.aly ] ; 3 uses
  %niter7436 = phi i32 [ 0, %.lr.ph.i.i.i11.i1861.new ], [ %niter7436.next.1, %bb.aly ]
  %i.ram = add i32 %i.rak, %.07.i.i.i.i1862       ; 2 uses
  %i.ran = and i32 %i.ram, 63
  %i.rao = zext nneg i32 %i.ran to i64
  %i.rap = shl nuw i64 1, %i.rao
  %i.raq = load ptr, ptr %i.rac, align 8
  %i.rar = lshr i32 %i.ram, 6
  %i.ras = zext nneg i32 %i.rar to i64
  %i.rat = getelementptr inbounds nuw [8 x i8], ptr %i.raq, i64 %i.ras ; 2 uses
  %i.rau = load i64, ptr %i.rat, align 8
  %i.rav = or i64 %i.rap, %i.rau
  store i64 %i.rav, ptr %i.rat, align 8
  %i.raw = or disjoint i32 %.07.i.i.i.i1862, 1
  %i.rax = add i32 %i.rak, %i.raw                 ; 2 uses
  %i.ray = and i32 %i.rax, 63
  %i.raz = zext nneg i32 %i.ray to i64
  %i.rba = shl nuw i64 1, %i.raz
  %i.rbb = load ptr, ptr %i.rac, align 8
  %i.rbc = lshr i32 %i.rax, 6
  %i.rbd = zext nneg i32 %i.rbc to i64
  %i.rbe = getelementptr inbounds nuw [8 x i8], ptr %i.rbb, i64 %i.rbd ; 2 uses
  %i.rbf = load i64, ptr %i.rbe, align 8
  %i.rbg = or i64 %i.rba, %i.rbf
  store i64 %i.rbg, ptr %i.rbe, align 8
  %i.rbh = add nuw i32 %.07.i.i.i.i1862, 2        ; 2 uses
  %niter7436.next.1 = add nuw i32 %niter7436, 2   ; 2 uses
  %niter7436.ncmp.1 = icmp eq i32 %niter7436.next.1, %unroll_iter7435
  br i1 %niter7436.ncmp.1, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE110ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE4ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa, label %bb.aly, !llvm.loop !22

_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE110ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE4ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa: ; preds = %bb.aly
  %lcmp.mod7433.not = icmp eq i32 %xtraiter7432, 0
  br i1 %lcmp.mod7433.not, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE110ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE4ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit, label %.epil.preheader7431

.epil.preheader7431:                              ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE110ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE4ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i11.i1861
  %.07.i.i.i.i1862.epil.init = phi i32 [ 0, %.lr.ph.i.i.i11.i1861 ], [ %i.rbh, %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE110ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE4ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa ]
  %lcmp.mod7434 = trunc i32 %i.rah to i1
  call void @llvm.assume(i1 %lcmp.mod7434)
  %i.rbi = add i32 %i.rak, %.07.i.i.i.i1862.epil.init ; 2 uses
  %i.rbj = and i32 %i.rbi, 63
  %i.rbk = zext nneg i32 %i.rbj to i64
  %i.rbl = shl nuw i64 1, %i.rbk
  %i.rbm = load ptr, ptr %i.rac, align 8
  %i.rbn = lshr i32 %i.rbi, 6
  %i.rbo = zext nneg i32 %i.rbn to i64
  %i.rbp = getelementptr inbounds nuw [8 x i8], ptr %i.rbm, i64 %i.rbo ; 2 uses
  %i.rbq = load i64, ptr %i.rbp, align 8
  %i.rbr = or i64 %i.rbl, %i.rbq
  store i64 %i.rbr, ptr %i.rbp, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE110ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE4ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE110ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE4ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit: ; preds = %.epil.preheader7431, %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE110ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE4ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa, %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE110EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i
  %i.rbs = load ptr, ptr %i.anb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

bb.alz:                                           ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gr)
  store ptr %i.anc, ptr %i.gr, align 8
  %.not.i.i1840 = icmp eq ptr %.053425864, null
  br i1 %.not.i.i1840, label %bb.ama, label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1841

bb.ama:                                           ; preds = %bb.alz
  %i.rbt = load i64, ptr %.sroa.0.0.copyload.i536, align 8
  %i.rbu = add i64 %i.rbt, 47
  %i.rbv = inttoptr i64 %i.rbu to ptr
  %i.rbw = load i32, ptr %i.rbv, align 4
  %i.rbx = sdiv i32 %i.rbw, 8                     ; 2 uses
  %i.rby = getelementptr inbounds nuw i8, ptr %i.anc, i64 24 ; 2 uses
  %i.rbz = load i64, ptr %i.rby, align 8
  %i.rca = getelementptr inbounds nuw i8, ptr %i.anc, i64 16 ; 6 uses
  %i.rcb = load i64, ptr %i.rca, align 8          ; 2 uses
  %i.rcc = sub i64 %i.rbz, %i.rcb
  %i.rcd = icmp ult i64 %i.rcc, 40
  br i1 %i.rcd, label %bb.amb, label %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1850, !prof !5

bb.amb:                                           ; preds = %bb.ama
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, i64 noundef 40) #23
  %.pre.i.i.i.i1853 = load i64, ptr %i.rca, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1850

_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1850: ; preds = %bb.amb, %bb.ama
  %i.rce = phi i64 [ %.pre.i.i.i.i1853, %bb.amb ], [ %i.rcb, %bb.ama ] ; 2 uses
  %i.rcf = inttoptr i64 %i.rce to ptr             ; 6 uses
  %i.rcg = add i64 %i.rce, 40
  store i64 %i.rcg, ptr %i.rca, align 8
  %i.rch = getelementptr inbounds nuw i8, ptr %i.rcf, i64 8
  %i.rci = add nsw i32 %i.rbx, 1
  store i32 %i.rci, ptr %i.rch, align 8
  %i.rcj = getelementptr inbounds nuw i8, ptr %i.rcf, i64 16 ; 4 uses
  store i64 0, ptr %i.rcj, align 8
  %i.rck = getelementptr inbounds nuw i8, ptr %i.rcf, i64 24 ; 3 uses
  store ptr %i.rcj, ptr %i.rck, align 8
  %i.rcl = getelementptr inbounds nuw i8, ptr %i.rcf, i64 32 ; 2 uses
  store ptr %i.rck, ptr %i.rcl, align 8
  %i.rcm = add nsw i32 %i.rbx, 64
  %i.rcn = ashr i32 %i.rcm, 6                     ; 2 uses
  %i.rco = icmp sgt i32 %i.rcn, 1
  br i1 %i.rco, label %bb.amc, label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1841

bb.amc:                                           ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1850
  %i.rcp = zext nneg i32 %i.rcn to i64            ; 2 uses
  %i.rcq = shl nuw nsw i64 %i.rcp, 3              ; 4 uses
  %i.rcr = load i64, ptr %i.rby, align 8
  %i.rcs = load i64, ptr %i.rca, align 8          ; 2 uses
  %i.rct = sub i64 %i.rcr, %i.rcs
  %i.rcu = icmp ugt i64 %i.rcq, %i.rct
  br i1 %i.rcu, label %bb.amd, label %.lr.ph.i.i.i.i.i.i.i.i.i1851, !prof !5

bb.amd:                                           ; preds = %bb.amc
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, i64 noundef %i.rcq) #23
  %.pre.i.i.i.i.i.i.i1852 = load i64, ptr %i.rca, align 8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i1851

.lr.ph.i.i.i.i.i.i.i.i.i1851:                     ; preds = %bb.amd, %bb.amc
  %i.rcv = phi i64 [ %.pre.i.i.i.i.i.i.i1852, %bb.amd ], [ %i.rcs, %bb.amc ] ; 2 uses
  %i.rcw = inttoptr i64 %i.rcv to ptr             ; 2 uses
  %i.rcx = add i64 %i.rcv, %i.rcq
  store i64 %i.rcx, ptr %i.rca, align 8
  store ptr %i.rcw, ptr %i.rcj, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.rcw, i8 0, i64 %i.rcq, i1 false)
  %i.rcy = load ptr, ptr %i.rcj, align 8          ; 2 uses
  store ptr %i.rcy, ptr %i.rck, align 8
  %i.rcz = getelementptr inbounds nuw [8 x i8], ptr %i.rcy, i64 %i.rcp
  store ptr %i.rcz, ptr %i.rcl, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1841

_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1841: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1851, %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1850, %bb.alz
  %.sink.i.i1842 = phi ptr [ %.053425864, %bb.alz ], [ %i.rcf, %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1850 ], [ %i.rcf, %.lr.ph.i.i.i.i.i.i.i.i.i1851 ]
  %i.rda = getelementptr inbounds nuw i8, ptr %i.anb, i64 8 ; 6 uses
  store ptr %.sink.i.i1842, ptr %i.rda, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #23
  %i.rdb = load i64, ptr %.sroa.0.0.copyload.i536, align 8
  call void @_ZN2v88internal12HandlerTableC1ENS0_6TaggedINS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(16) %88, i64 %i.rdb) #23
  %i.rdc = load ptr, ptr %i.qy, align 8
  %i.rdd = load ptr, ptr %i.qz, align 8
  %i.rde = ptrtoint ptr %i.rdc to i64
  %i.rdf = ptrtoint ptr %i.rdd to i64
  %i.rdg = load i32, ptr %i.ra, align 4
  %i.rdh = zext i32 %i.rdg to i64
  %i.rdi = add i64 %i.rdf, %i.rdh
  %i.rdj = sub i64 %i.rde, %i.rdi
  %i.rdk = trunc i64 %i.rdj to i32
  %i.rdl = call noundef i32 @_ZNK2v88internal12HandlerTable26LookupHandlerIndexForRangeEi(ptr noundef nonnull align 8 dereferenceable(16) %88, i32 noundef %i.rdk) #23 ; 3 uses
  %.not16.i.i1843 = icmp eq i32 %i.rdl, -1
  br i1 %.not16.i.i1843, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE111ELNS4_19ImplicitRegisterUseE4EJLNS4_11OperandTypeE4ELS7_11ELS7_8ELS7_15EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit, label %bb.ame

bb.ame:                                           ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1841
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gq)
  store ptr %i.anc, ptr %i.gq, align 8
  %i.rdm = load ptr, ptr %i.rda, align 8          ; 2 uses
  %i.rdn = icmp eq ptr %i.rdm, %.053425864
  br i1 %i.rdn, label %bb.amf, label %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1844

bb.amf:                                           ; preds = %bb.ame
  %i.rdo = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJRS4_RPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, ptr noundef nonnull align 8 dereferenceable(40) %.053425864, ptr noundef nonnull align 8 dereferenceable(8) %i.gq) ; 2 uses
  store ptr %i.rdo, ptr %i.rda, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1844

_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1844: ; preds = %bb.amf, %bb.ame
  %i.rdp = phi ptr [ %i.rdm, %bb.ame ], [ %i.rdo, %bb.amf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gq)
  %i.rdq = getelementptr inbounds nuw i8, ptr %i.rdp, i64 24 ; 3 uses
  %i.rdr = load ptr, ptr %i.rdq, align 8
  %i.rds = load i64, ptr %i.rdr, align 8
  %i.rdt = trunc i64 %i.rds to i1
  %i.rdu = call noundef i32 @_ZNK2v88internal12HandlerTable15GetRangeHandlerEi(ptr noundef nonnull align 8 dereferenceable(16) %88, i32 noundef %i.rdl) #23
  %i.rdv = getelementptr inbounds nuw i8, ptr %i.rdp, i64 32 ; 2 uses
  %i.rdw = load ptr, ptr %i.rdv, align 8
  %i.rdx = load ptr, ptr %i.rdq, align 8          ; 2 uses
  %i.rdy = ptrtoint ptr %i.rdw to i64
  %i.rdz = ptrtoint ptr %i.rdx to i64
  %i.rea = sub i64 %i.rdy, %i.rdz
  %i.reb = lshr exact i64 %i.rea, 3
  %i.rec = trunc i64 %i.reb to i32
  %i.red = icmp sgt i32 %i.rec, 0
  br i1 %i.red, label %.lr.ph.i.i.i.i1846, label %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1845

.lr.ph.i.i.i.i1846:                               ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1844
  %i.ree = load ptr, ptr %i.amy, align 8
  %i.ref = sext i32 %i.rdu to i64
  %i.reg = getelementptr inbounds [16 x i8], ptr %i.ree, i64 %i.ref
  %i.reh = load ptr, ptr %i.reg, align 8
  %i.rei = getelementptr inbounds nuw i8, ptr %i.reh, i64 24
  br label %bb.amg

bb.amg:                                           ; preds = %bb.amg, %.lr.ph.i.i.i.i1846
  %indvars.iv.i.i.i.i1847 = phi i64 [ 0, %.lr.ph.i.i.i.i1846 ], [ %indvars.iv.next.i.i.i.i1848, %bb.amg ] ; 3 uses
  %i.rej = phi ptr [ %i.rdx, %.lr.ph.i.i.i.i1846 ], [ %i.rer, %bb.amg ]
  %i.rek = load ptr, ptr %i.rei, align 8
  %i.rel = getelementptr inbounds nuw [8 x i8], ptr %i.rek, i64 %indvars.iv.i.i.i.i1847
  %i.rem = load i64, ptr %i.rel, align 8
  %i.ren = getelementptr inbounds nuw [8 x i8], ptr %i.rej, i64 %indvars.iv.i.i.i.i1847 ; 2 uses
  %i.reo = load i64, ptr %i.ren, align 8
  %i.rep = or i64 %i.reo, %i.rem
  store i64 %i.rep, ptr %i.ren, align 8
  %indvars.iv.next.i.i.i.i1848 = add nuw nsw i64 %indvars.iv.i.i.i.i1847, 1 ; 2 uses
  %i.req = load ptr, ptr %i.rdv, align 8
  %i.rer = load ptr, ptr %i.rdq, align 8          ; 2 uses
  %i.res = ptrtoint ptr %i.req to i64
  %i.ret = ptrtoint ptr %i.rer to i64
  %i.reu = sub i64 %i.res, %i.ret
  %sext.i.i.i.i1849 = shl i64 %i.reu, 29
  %i.rev = ashr i64 %sext.i.i.i.i1849, 32
  %i.rew = icmp slt i64 %indvars.iv.next.i.i.i.i1848, %i.rev
  br i1 %i.rew, label %bb.amg, label %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1845, !llvm.loop !9

_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1845: ; preds = %bb.amg, %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1844
  %i.rex = load ptr, ptr %i.rda, align 8
  %i.rey = call noundef i32 @_ZNK2v88internal12HandlerTable12GetRangeDataEi(ptr noundef nonnull align 8 dereferenceable(16) %88, i32 noundef %i.rdl) #23
  %i.rez = add nsw i32 %i.rey, 1                  ; 2 uses
  %i.rfa = and i32 %i.rez, 63
  %i.rfb = zext nneg i32 %i.rfa to i64
  %i.rfc = shl nuw i64 1, %i.rfb
  %i.rfd = getelementptr inbounds nuw i8, ptr %i.rex, i64 24
  %i.rfe = load ptr, ptr %i.rfd, align 8
  %i.rff = lshr i32 %i.rez, 6
  %i.rfg = zext nneg i32 %i.rff to i64
  %i.rfh = getelementptr inbounds nuw [8 x i8], ptr %i.rfe, i64 %i.rfg ; 2 uses
  %i.rfi = load i64, ptr %i.rfh, align 8
  %i.rfj = or i64 %i.rfc, %i.rfi
  store i64 %i.rfj, ptr %i.rfh, align 8
  br i1 %i.rdt, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE111ELNS4_19ImplicitRegisterUseE4EJLNS4_11OperandTypeE4ELS7_11ELS7_8ELS7_15EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit, label %bb.amh

bb.amh:                                           ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1845
  %i.rfk = load ptr, ptr %i.rda, align 8
  %i.rfl = getelementptr inbounds nuw i8, ptr %i.rfk, i64 24
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler16BytecodeAnalysis20BytecodeAnalysisImpl7AnalyzeEv:bb.a
  %i.rgh = add nsw i32 %i.rfw, 1
  store i32 %i.rgh, ptr %i.rgg, align 8
  %i.rgi = getelementptr inbounds nuw i8, ptr %i.rge, i64 16 ; 4 uses
  store i64 0, ptr %i.rgi, align 8
  %i.rgj = getelementptr inbounds nuw i8, ptr %i.rge, i64 24 ; 3 uses
  store ptr %i.rgi, ptr %i.rgj, align 8
  %i.rgk = getelementptr inbounds nuw i8, ptr %i.rge, i64 32 ; 2 uses
  store ptr %i.rgj, ptr %i.rgk, align 8
  %i.rgl = add nsw i32 %i.rfw, 64
  %i.rgm = ashr i32 %i.rgl, 6                     ; 2 uses
  %i.rgn = icmp sgt i32 %i.rgm, 1
  br i1 %i.rgn, label %bb.aml, label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1823

bb.aml:                                           ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1836
  %i.rgo = zext nneg i32 %i.rgm to i64            ; 2 uses
  %i.rgp = shl nuw nsw i64 %i.rgo, 3              ; 4 uses
  %i.rgq = load i64, ptr %i.rfx, align 8
  %i.rgr = load i64, ptr %i.rfz, align 8          ; 2 uses
  %i.rgs = sub i64 %i.rgq, %i.rgr
  %i.rgt = icmp ugt i64 %i.rgp, %i.rgs
  br i1 %i.rgt, label %bb.amm, label %.lr.ph.i.i.i.i.i.i.i.i.i1837, !prof !5

bb.amm:                                           ; preds = %bb.aml
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, i64 noundef %i.rgp) #23
  %.pre.i.i.i.i.i.i.i1838 = load i64, ptr %i.rfz, align 8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i1837

.lr.ph.i.i.i.i.i.i.i.i.i1837:                     ; preds = %bb.amm, %bb.aml
  %i.rgu = phi i64 [ %.pre.i.i.i.i.i.i.i1838, %bb.amm ], [ %i.rgr, %bb.aml ] ; 2 uses
  %i.rgv = inttoptr i64 %i.rgu to ptr             ; 2 uses
  %i.rgw = add i64 %i.rgu, %i.rgp
  store i64 %i.rgw, ptr %i.rfz, align 8
  store ptr %i.rgv, ptr %i.rgi, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.rgv, i8 0, i64 %i.rgp, i1 false)
  %i.rgx = load ptr, ptr %i.rgi, align 8          ; 2 uses
  store ptr %i.rgx, ptr %i.rgj, align 8
  %i.rgy = getelementptr inbounds nuw [8 x i8], ptr %i.rgx, i64 %i.rgo
  store ptr %i.rgy, ptr %i.rgk, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1823

_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1823: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1837, %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1836, %bb.ami
  %.sink.i.i1824 = phi ptr [ %.053425864, %bb.ami ], [ %i.rge, %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1836 ], [ %i.rge, %.lr.ph.i.i.i.i.i.i.i.i.i1837 ]
  %i.rgz = getelementptr inbounds nuw i8, ptr %i.anb, i64 8 ; 6 uses
  store ptr %.sink.i.i1824, ptr %i.rgz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #23
  %i.rha = load i64, ptr %.sroa.0.0.copyload.i536, align 8
  call void @_ZN2v88internal12HandlerTableC1ENS0_6TaggedINS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(16) %89, i64 %i.rha) #23
  %i.rhb = load ptr, ptr %i.qy, align 8
  %i.rhc = load ptr, ptr %i.qz, align 8
  %i.rhd = ptrtoint ptr %i.rhb to i64
  %i.rhe = ptrtoint ptr %i.rhc to i64
  %i.rhf = load i32, ptr %i.ra, align 4
  %i.rhg = zext i32 %i.rhf to i64
  %i.rhh = add i64 %i.rhe, %i.rhg
  %i.rhi = sub i64 %i.rhd, %i.rhh
  %i.rhj = trunc i64 %i.rhi to i32
  %i.rhk = call noundef i32 @_ZNK2v88internal12HandlerTable26LookupHandlerIndexForRangeEi(ptr noundef nonnull align 8 dereferenceable(16) %89, i32 noundef %i.rhj) #23 ; 3 uses
  %.not16.i.i1825 = icmp eq i32 %i.rhk, -1
  br i1 %.not16.i.i1825, label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE112EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i, label %bb.amn

bb.amn:                                           ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gs)
  store ptr %i.anc, ptr %i.gs, align 8
  %i.rhl = load ptr, ptr %i.rgz, align 8          ; 2 uses
  %i.rhm = icmp eq ptr %i.rhl, %.053425864
  br i1 %i.rhm, label %bb.amo, label %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1826

bb.amo:                                           ; preds = %bb.amn
  %i.rhn = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJRS4_RPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, ptr noundef nonnull align 8 dereferenceable(40) %.053425864, ptr noundef nonnull align 8 dereferenceable(8) %i.gs) ; 2 uses
  store ptr %i.rhn, ptr %i.rgz, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1826

_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1826: ; preds = %bb.amo, %bb.amn
  %i.rho = phi ptr [ %i.rhl, %bb.amn ], [ %i.rhn, %bb.amo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gs)
  %i.rhp = getelementptr inbounds nuw i8, ptr %i.rho, i64 24 ; 3 uses
  %i.rhq = load ptr, ptr %i.rhp, align 8
  %i.rhr = load i64, ptr %i.rhq, align 8
  %i.rhs = trunc i64 %i.rhr to i1
  %i.rht = call noundef i32 @_ZNK2v88internal12HandlerTable15GetRangeHandlerEi(ptr noundef nonnull align 8 dereferenceable(16) %89, i32 noundef %i.rhk) #23
  %i.rhu = getelementptr inbounds nuw i8, ptr %i.rho, i64 32 ; 2 uses
  %i.rhv = load ptr, ptr %i.rhu, align 8
  %i.rhw = load ptr, ptr %i.rhp, align 8          ; 2 uses
  %i.rhx = ptrtoint ptr %i.rhv to i64
  %i.rhy = ptrtoint ptr %i.rhw to i64
  %i.rhz = sub i64 %i.rhx, %i.rhy
  %i.ria = lshr exact i64 %i.rhz, 3
  %i.rib = trunc i64 %i.ria to i32
  %i.ric = icmp sgt i32 %i.rib, 0
  br i1 %i.ric, label %.lr.ph.i.i.i.i1832, label %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1827

.lr.ph.i.i.i.i1832:                               ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1826
  %i.rid = load ptr, ptr %i.amy, align 8
  %i.rie = sext i32 %i.rht to i64
  %i.rif = getelementptr inbounds [16 x i8], ptr %i.rid, i64 %i.rie
  %i.rig = load ptr, ptr %i.rif, align 8
  %i.rih = getelementptr inbounds nuw i8, ptr %i.rig, i64 24
  br label %bb.amp

bb.amp:                                           ; preds = %bb.amp, %.lr.ph.i.i.i.i1832
  %indvars.iv.i.i.i.i1833 = phi i64 [ 0, %.lr.ph.i.i.i.i1832 ], [ %indvars.iv.next.i.i.i.i1834, %bb.amp ] ; 3 uses
  %i.rii = phi ptr [ %i.rhw, %.lr.ph.i.i.i.i1832 ], [ %i.riq, %bb.amp ]
  %i.rij = load ptr, ptr %i.rih, align 8
  %i.rik = getelementptr inbounds nuw [8 x i8], ptr %i.rij, i64 %indvars.iv.i.i.i.i1833
  %i.ril = load i64, ptr %i.rik, align 8
  %i.rim = getelementptr inbounds nuw [8 x i8], ptr %i.rii, i64 %indvars.iv.i.i.i.i1833 ; 2 uses
  %i.rin = load i64, ptr %i.rim, align 8
  %i.rio = or i64 %i.rin, %i.ril
  store i64 %i.rio, ptr %i.rim, align 8
  %indvars.iv.next.i.i.i.i1834 = add nuw nsw i64 %indvars.iv.i.i.i.i1833, 1 ; 2 uses
  %i.rip = load ptr, ptr %i.rhu, align 8
  %i.riq = load ptr, ptr %i.rhp, align 8          ; 2 uses
  %i.rir = ptrtoint ptr %i.rip to i64
  %i.ris = ptrtoint ptr %i.riq to i64
  %i.rit = sub i64 %i.rir, %i.ris
  %sext.i.i.i.i1835 = shl i64 %i.rit, 29
  %i.riu = ashr i64 %sext.i.i.i.i1835, 32
  %i.riv = icmp slt i64 %indvars.iv.next.i.i.i.i1834, %i.riu
  br i1 %i.riv, label %bb.amp, label %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1827, !llvm.loop !9

_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1827: ; preds = %bb.amp, %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1826
  %i.riw = load ptr, ptr %i.rgz, align 8
  %i.rix = call noundef i32 @_ZNK2v88internal12HandlerTable12GetRangeDataEi(ptr noundef nonnull align 8 dereferenceable(16) %89, i32 noundef %i.rhk) #23
  %i.riy = add nsw i32 %i.rix, 1                  ; 2 uses
  %i.riz = and i32 %i.riy, 63
  %i.rja = zext nneg i32 %i.riz to i64
  %i.rjb = shl nuw i64 1, %i.rja
  %i.rjc = getelementptr inbounds nuw i8, ptr %i.riw, i64 24
  %i.rjd = load ptr, ptr %i.rjc, align 8
  %i.rje = lshr i32 %i.riy, 6
  %i.rjf = zext nneg i32 %i.rje to i64
  %i.rjg = getelementptr inbounds nuw [8 x i8], ptr %i.rjd, i64 %i.rjf ; 2 uses
  %i.rjh = load i64, ptr %i.rjg, align 8
  %i.rji = or i64 %i.rjb, %i.rjh
  store i64 %i.rji, ptr %i.rjg, align 8
  br i1 %i.rhs, label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE112EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i, label %bb.amq

bb.amq:                                           ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1827
  %i.rjj = load ptr, ptr %i.rgz, align 8
  %i.rjk = getelementptr inbounds nuw i8, ptr %i.rjj, i64 24
  %i.rjl = load ptr, ptr %i.rjk, align 8          ; 2 uses
  %i.rjm = load i64, ptr %i.rjl, align 8
  %i.rjn = and i64 %i.rjm, -2
  store i64 %i.rjn, ptr %i.rjl, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE112EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i

_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE112EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i: ; preds = %bb.amq, %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1827, %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1823
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #23
  %i.rjo = load ptr, ptr %i.rgz, align 8
  %i.rjp = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJRS4_RPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, ptr noundef nonnull align 8 dereferenceable(40) %i.rjo, ptr noundef nonnull align 8 dereferenceable(8) %i.gt) ; 2 uses
  store ptr %i.rjp, ptr %i.anb, align 8
  %i.rjq = getelementptr inbounds nuw i8, ptr %i.rjp, i64 24 ; 4 uses
  %i.rjr = load ptr, ptr %i.rjq, align 8          ; 2 uses
  %i.rjs = load i64, ptr %i.rjr, align 8
  %i.rjt = and i64 %i.rjs, -2
  store i64 %i.rjt, ptr %i.rjr, align 8
  %i.rju = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 1) #23 ; 2 uses
  %i.rjv = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator23GetRegisterCountOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 2) #23 ; 5 uses
  %i.rjw = icmp sgt i32 %i.rju, -1
  %i.rjx = icmp ne i32 %i.rjv, 0
  %or.cond.i.i.i.i1828 = and i1 %i.rjw, %i.rjx
  br i1 %or.cond.i.i.i.i1828, label %.lr.ph.i.i.i11.i1829, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE112ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE5ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

.lr.ph.i.i.i11.i1829:                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE112EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i
  %i.rjy = add nuw i32 %i.rju, 1                  ; 3 uses
  %xtraiter7426 = and i32 %i.rjv, 1
  %i.rjz = icmp eq i32 %i.rjv, 1
  br i1 %i.rjz, label %.epil.preheader7425, label %.lr.ph.i.i.i11.i1829.new

.lr.ph.i.i.i11.i1829.new:                         ; preds = %.lr.ph.i.i.i11.i1829
  %unroll_iter7429 = and i32 %i.rjv, -2
  br label %bb.amr

bb.amr:                                           ; preds = %bb.amr, %.lr.ph.i.i.i11.i1829.new
  %.07.i.i.i.i1830 = phi i32 [ 0, %.lr.ph.i.i.i11.i1829.new ], [ %i.rkv, %bb.amr ] ; 3 uses
  %niter7430 = phi i32 [ 0, %.lr.ph.i.i.i11.i1829.new ], [ %niter7430.next.1, %bb.amr ]
  %i.rka = add i32 %i.rjy, %.07.i.i.i.i1830       ; 2 uses
  %i.rkb = and i32 %i.rka, 63
  %i.rkc = zext nneg i32 %i.rkb to i64
  %i.rkd = shl nuw i64 1, %i.rkc
  %i.rke = load ptr, ptr %i.rjq, align 8
  %i.rkf = lshr i32 %i.rka, 6
  %i.rkg = zext nneg i32 %i.rkf to i64
  %i.rkh = getelementptr inbounds nuw [8 x i8], ptr %i.rke, i64 %i.rkg ; 2 uses
  %i.rki = load i64, ptr %i.rkh, align 8
  %i.rkj = or i64 %i.rkd, %i.rki
  store i64 %i.rkj, ptr %i.rkh, align 8
  %i.rkk = or disjoint i32 %.07.i.i.i.i1830, 1
  %i.rkl = add i32 %i.rjy, %i.rkk                 ; 2 uses
  %i.rkm = and i32 %i.rkl, 63
  %i.rkn = zext nneg i32 %i.rkm to i64
  %i.rko = shl nuw i64 1, %i.rkn
  %i.rkp = load ptr, ptr %i.rjq, align 8
  %i.rkq = lshr i32 %i.rkl, 6
  %i.rkr = zext nneg i32 %i.rkq to i64
  %i.rks = getelementptr inbounds nuw [8 x i8], ptr %i.rkp, i64 %i.rkr ; 2 uses
  %i.rkt = load i64, ptr %i.rks, align 8
  %i.rku = or i64 %i.rko, %i.rkt
  store i64 %i.rku, ptr %i.rks, align 8
  %i.rkv = add nuw i32 %.07.i.i.i.i1830, 2        ; 2 uses
  %niter7430.next.1 = add nuw i32 %niter7430, 2   ; 2 uses
  %niter7430.ncmp.1 = icmp eq i32 %niter7430.next.1, %unroll_iter7429
  br i1 %niter7430.ncmp.1, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE112ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE5ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa, label %bb.amr, !llvm.loop !23

_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE112ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE5ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa: ; preds = %bb.amr
  %lcmp.mod7427.not = icmp eq i32 %xtraiter7426, 0
  br i1 %lcmp.mod7427.not, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE112ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE5ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit, label %.epil.preheader7425

.epil.preheader7425:                              ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE112ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE5ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i11.i1829
  %.07.i.i.i.i1830.epil.init = phi i32 [ 0, %.lr.ph.i.i.i11.i1829 ], [ %i.rkv, %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE112ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE5ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa ]
  %lcmp.mod7428 = trunc i32 %i.rjv to i1
  call void @llvm.assume(i1 %lcmp.mod7428)
  %i.rkw = add i32 %i.rjy, %.07.i.i.i.i1830.epil.init ; 2 uses
  %i.rkx = and i32 %i.rkw, 63
  %i.rky = zext nneg i32 %i.rkx to i64
  %i.rkz = shl nuw i64 1, %i.rky
  %i.rla = load ptr, ptr %i.rjq, align 8
  %i.rlb = lshr i32 %i.rkw, 6
  %i.rlc = zext nneg i32 %i.rlb to i64
  %i.rld = getelementptr inbounds nuw [8 x i8], ptr %i.rla, i64 %i.rlc ; 2 uses
  %i.rle = load i64, ptr %i.rld, align 8
  %i.rlf = or i64 %i.rkz, %i.rle
  store i64 %i.rlf, ptr %i.rld, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE112ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE5ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE112ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE5ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit: ; preds = %.epil.preheader7425, %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE112ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE5ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa, %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE112EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i
  %i.rlg = load ptr, ptr %i.anb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gt)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

bb.ams:                                           ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gv)
  store ptr %i.anc, ptr %i.gv, align 8
  %.not.i.i1808 = icmp eq ptr %.053425864, null
  br i1 %.not.i.i1808, label %bb.amt, label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1809

bb.amt:                                           ; preds = %bb.ams
  %i.rlh = load i64, ptr %.sroa.0.0.copyload.i536, align 8
  %i.rli = add i64 %i.rlh, 47
  %i.rlj = inttoptr i64 %i.rli to ptr
  %i.rlk = load i32, ptr %i.rlj, align 4
  %i.rll = sdiv i32 %i.rlk, 8                     ; 2 uses
  %i.rlm = getelementptr inbounds nuw i8, ptr %i.anc, i64 24 ; 2 uses
  %i.rln = load i64, ptr %i.rlm, align 8
  %i.rlo = getelementptr inbounds nuw i8, ptr %i.anc, i64 16 ; 6 uses
  %i.rlp = load i64, ptr %i.rlo, align 8          ; 2 uses
  %i.rlq = sub i64 %i.rln, %i.rlp
  %i.rlr = icmp ult i64 %i.rlq, 40
  br i1 %i.rlr, label %bb.amu, label %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1818, !prof !5

bb.amu:                                           ; preds = %bb.amt
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, i64 noundef 40) #23
  %.pre.i.i.i.i1821 = load i64, ptr %i.rlo, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1818

_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1818: ; preds = %bb.amu, %bb.amt
  %i.rls = phi i64 [ %.pre.i.i.i.i1821, %bb.amu ], [ %i.rlp, %bb.amt ] ; 2 uses
  %i.rlt = inttoptr i64 %i.rls to ptr             ; 6 uses
  %i.rlu = add i64 %i.rls, 40
  store i64 %i.rlu, ptr %i.rlo, align 8
  %i.rlv = getelementptr inbounds nuw i8, ptr %i.rlt, i64 8
  %i.rlw = add nsw i32 %i.rll, 1
  store i32 %i.rlw, ptr %i.rlv, align 8
  %i.rlx = getelementptr inbounds nuw i8, ptr %i.rlt, i64 16 ; 4 uses
  store i64 0, ptr %i.rlx, align 8
  %i.rly = getelementptr inbounds nuw i8, ptr %i.rlt, i64 24 ; 3 uses
  store ptr %i.rlx, ptr %i.rly, align 8
  %i.rlz = getelementptr inbounds nuw i8, ptr %i.rlt, i64 32 ; 2 uses
  store ptr %i.rly, ptr %i.rlz, align 8
  %i.rma = add nsw i32 %i.rll, 64
  %i.rmb = ashr i32 %i.rma, 6                     ; 2 uses
  %i.rmc = icmp sgt i32 %i.rmb, 1
  br i1 %i.rmc, label %bb.amv, label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1809

bb.amv:                                           ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1818
  %i.rmd = zext nneg i32 %i.rmb to i64            ; 2 uses
  %i.rme = shl nuw nsw i64 %i.rmd, 3              ; 4 uses
  %i.rmf = load i64, ptr %i.rlm, align 8
  %i.rmg = load i64, ptr %i.rlo, align 8          ; 2 uses
  %i.rmh = sub i64 %i.rmf, %i.rmg
  %i.rmi = icmp ugt i64 %i.rme, %i.rmh
  br i1 %i.rmi, label %bb.amw, label %.lr.ph.i.i.i.i.i.i.i.i.i1819, !prof !5

bb.amw:                                           ; preds = %bb.amv
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, i64 noundef %i.rme) #23
  %.pre.i.i.i.i.i.i.i1820 = load i64, ptr %i.rlo, align 8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i1819

.lr.ph.i.i.i.i.i.i.i.i.i1819:                     ; preds = %bb.amw, %bb.amv
  %i.rmj = phi i64 [ %.pre.i.i.i.i.i.i.i1820, %bb.amw ], [ %i.rmg, %bb.amv ] ; 2 uses
  %i.rmk = inttoptr i64 %i.rmj to ptr             ; 2 uses
  %i.rml = add i64 %i.rmj, %i.rme
  store i64 %i.rml, ptr %i.rlo, align 8
  store ptr %i.rmk, ptr %i.rlx, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.rmk, i8 0, i64 %i.rme, i1 false)
  %i.rmm = load ptr, ptr %i.rlx, align 8          ; 2 uses
  store ptr %i.rmm, ptr %i.rly, align 8
  %i.rmn = getelementptr inbounds nuw [8 x i8], ptr %i.rmm, i64 %i.rmd
  store ptr %i.rmn, ptr %i.rlz, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1809

_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1809: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1819, %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1818, %bb.ams
  %.sink.i.i1810 = phi ptr [ %.053425864, %bb.ams ], [ %i.rlt, %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1818 ], [ %i.rlt, %.lr.ph.i.i.i.i.i.i.i.i.i1819 ]
  %i.rmo = getelementptr inbounds nuw i8, ptr %i.anb, i64 8 ; 6 uses
  store ptr %.sink.i.i1810, ptr %i.rmo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #23
  %i.rmp = load i64, ptr %.sroa.0.0.copyload.i536, align 8
  call void @_ZN2v88internal12HandlerTableC1ENS0_6TaggedINS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(16) %90, i64 %i.rmp) #23
  %i.rmq = load ptr, ptr %i.qy, align 8
  %i.rmr = load ptr, ptr %i.qz, align 8
  %i.rms = ptrtoint ptr %i.rmq to i64
  %i.rmt = ptrtoint ptr %i.rmr to i64
  %i.rmu = load i32, ptr %i.ra, align 4
  %i.rmv = zext i32 %i.rmu to i64
  %i.rmw = add i64 %i.rmt, %i.rmv
  %i.rmx = sub i64 %i.rms, %i.rmw
  %i.rmy = trunc i64 %i.rmx to i32
  %i.rmz = call noundef i32 @_ZNK2v88internal12HandlerTable26LookupHandlerIndexForRangeEi(ptr noundef nonnull align 8 dereferenceable(16) %90, i32 noundef %i.rmy) #23 ; 3 uses
  %.not16.i.i1811 = icmp eq i32 %i.rmz, -1
  br i1 %.not16.i.i1811, label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE113EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i, label %bb.amx

bb.amx:                                           ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gu)
  store ptr %i.anc, ptr %i.gu, align 8
  %i.rna = load ptr, ptr %i.rmo, align 8          ; 2 uses
  %i.rnb = icmp eq ptr %i.rna, %.053425864
  br i1 %i.rnb, label %bb.amy, label %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1812

bb.amy:                                           ; preds = %bb.amx
  %i.rnc = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJRS4_RPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, ptr noundef nonnull align 8 dereferenceable(40) %.053425864, ptr noundef nonnull align 8 dereferenceable(8) %i.gu) ; 2 uses
  store ptr %i.rnc, ptr %i.rmo, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1812

_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1812: ; preds = %bb.amy, %bb.amx
  %i.rnd = phi ptr [ %i.rna, %bb.amx ], [ %i.rnc, %bb.amy ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gu)
  %i.rne = getelementptr inbounds nuw i8, ptr %i.rnd, i64 24 ; 3 uses
  %i.rnf = load ptr, ptr %i.rne, align 8
  %i.rng = load i64, ptr %i.rnf, align 8
  %i.rnh = trunc i64 %i.rng to i1
  %i.rni = call noundef i32 @_ZNK2v88internal12HandlerTable15GetRangeHandlerEi(ptr noundef nonnull align 8 dereferenceable(16) %90, i32 noundef %i.rmz) #23
  %i.rnj = getelementptr inbounds nuw i8, ptr %i.rnd, i64 32 ; 2 uses
  %i.rnk = load ptr, ptr %i.rnj, align 8
  %i.rnl = load ptr, ptr %i.rne, align 8          ; 2 uses
  %i.rnm = ptrtoint ptr %i.rnk to i64
  %i.rnn = ptrtoint ptr %i.rnl to i64
  %i.rno = sub i64 %i.rnm, %i.rnn
  %i.rnp = lshr exact i64 %i.rno, 3
  %i.rnq = trunc i64 %i.rnp to i32
  %i.rnr = icmp sgt i32 %i.rnq, 0
  br i1 %i.rnr, label %.lr.ph.i.i.i.i1814, label %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1813

.lr.ph.i.i.i.i1814:                               ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1812
  %i.rns = load ptr, ptr %i.amy, align 8
  %i.rnt = sext i32 %i.rni to i64
  %i.rnu = getelementptr inbounds [16 x i8], ptr %i.rns, i64 %i.rnt
  %i.rnv = load ptr, ptr %i.rnu, align 8
  %i.rnw = getelementptr inbounds nuw i8, ptr %i.rnv, i64 24
  br label %bb.amz

bb.amz:                                           ; preds = %bb.amz, %.lr.ph.i.i.i.i1814
  %indvars.iv.i.i.i.i1815 = phi i64 [ 0, %.lr.ph.i.i.i.i1814 ], [ %indvars.iv.next.i.i.i.i1816, %bb.amz ] ; 3 uses
  %i.rnx = phi ptr [ %i.rnl, %.lr.ph.i.i.i.i1814 ], [ %i.rof, %bb.amz ]
  %i.rny = load ptr, ptr %i.rnw, align 8
  %i.rnz = getelementptr inbounds nuw [8 x i8], ptr %i.rny, i64 %indvars.iv.i.i.i.i1815
  %i.roa = load i64, ptr %i.rnz, align 8
  %i.rob = getelementptr inbounds nuw [8 x i8], ptr %i.rnx, i64 %indvars.iv.i.i.i.i1815 ; 2 uses
  %i.roc = load i64, ptr %i.rob, align 8
  %i.rod = or i64 %i.roc, %i.roa
  store i64 %i.rod, ptr %i.rob, align 8
  %indvars.iv.next.i.i.i.i1816 = add nuw nsw i64 %indvars.iv.i.i.i.i1815, 1 ; 2 uses
  %i.roe = load ptr, ptr %i.rnj, align 8
  %i.rof = load ptr, ptr %i.rne, align 8          ; 2 uses
  %i.rog = ptrtoint ptr %i.roe to i64
  %i.roh = ptrtoint ptr %i.rof to i64
  %i.roi = sub i64 %i.rog, %i.roh
  %sext.i.i.i.i1817 = shl i64 %i.roi, 29
  %i.roj = ashr i64 %sext.i.i.i.i1817, 32
  %i.rok = icmp slt i64 %indvars.iv.next.i.i.i.i1816, %i.roj
  br i1 %i.rok, label %bb.amz, label %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1813, !llvm.loop !9

_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1813: ; preds = %bb.amz, %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1812
  %i.rol = load ptr, ptr %i.rmo, align 8
  %i.rom = call noundef i32 @_ZNK2v88internal12HandlerTable12GetRangeDataEi(ptr noundef nonnull align 8 dereferenceable(16) %90, i32 noundef %i.rmz) #23
  %i.ron = add nsw i32 %i.rom, 1                  ; 2 uses
  %i.roo = and i32 %i.ron, 63
  %i.rop = zext nneg i32 %i.roo to i64
  %i.roq = shl nuw i64 1, %i.rop
  %i.ror = getelementptr inbounds nuw i8, ptr %i.rol, i64 24
  %i.ros = load ptr, ptr %i.ror, align 8
  %i.rot = lshr i32 %i.ron, 6
  %i.rou = zext nneg i32 %i.rot to i64
  %i.rov = getelementptr inbounds nuw [8 x i8], ptr %i.ros, i64 %i.rou ; 2 uses
  %i.row = load i64, ptr %i.rov, align 8
  %i.rox = or i64 %i.roq, %i.row
  store i64 %i.rox, ptr %i.rov, align 8
  br i1 %i.rnh, label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE113EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i, label %bb.ana

bb.ana:                                           ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1813
  %i.roy = load ptr, ptr %i.rmo, align 8
  %i.roz = getelementptr inbounds nuw i8, ptr %i.roy, i64 24
  %i.rpa = load ptr, ptr %i.roz, align 8          ; 2 uses
  %i.rpb = load i64, ptr %i.rpa, align 8
  %i.rpc = and i64 %i.rpb, -2
  store i64 %i.rpc, ptr %i.rpa, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE113EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i

_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE113EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i: ; preds = %bb.ana, %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1813, %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1809
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #23
  %i.rpd = load ptr, ptr %i.rmo, align 8
  %i.rpe = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJRS4_RPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, ptr noundef nonnull align 8 dereferenceable(40) %i.rpd, ptr noundef nonnull align 8 dereferenceable(8) %i.gv) ; 2 uses
  store ptr %i.rpe, ptr %i.anb, align 8
  %i.rpf = getelementptr inbounds nuw i8, ptr %i.rpe, i64 24 ; 4 uses
  %i.rpg = load ptr, ptr %i.rpf, align 8          ; 2 uses
  %i.rph = load i64, ptr %i.rpg, align 8
  %i.rpi = and i64 %i.rph, -2
  store i64 %i.rpi, ptr %i.rpg, align 8
  %i.rpj = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 1) #23 ; 2 uses
  %i.rpk = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator23GetRegisterCountOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 2) #23 ; 5 uses
  %i.rpl = icmp sgt i32 %i.rpj, -1
  %i.rpm = icmp ne i32 %i.rpk, 0
  %or.cond.i.i.i.i = and i1 %i.rpl, %i.rpm
  br i1 %or.cond.i.i.i.i, label %.lr.ph.i.i.i11.i, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE113ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE3ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

.lr.ph.i.i.i11.i:                                 ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE113EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i
  %i.rpn = add nuw i32 %i.rpj, 1                  ; 3 uses
  %xtraiter7420 = and i32 %i.rpk, 1
  %i.rpo = icmp eq i32 %i.rpk, 1
  br i1 %i.rpo, label %.epil.preheader, label %.lr.ph.i.i.i11.i.new

.lr.ph.i.i.i11.i.new:                             ; preds = %.lr.ph.i.i.i11.i
  %unroll_iter7423 = and i32 %i.rpk, -2
  br label %bb.anb

bb.anb:                                           ; preds = %bb.anb, %.lr.ph.i.i.i11.i.new
  %.07.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i11.i.new ], [ %i.rqk, %bb.anb ] ; 3 uses
  %niter7424 = phi i32 [ 0, %.lr.ph.i.i.i11.i.new ], [ %niter7424.next.1, %bb.anb ]
  %i.rpp = add i32 %i.rpn, %.07.i.i.i.i           ; 2 uses
  %i.rpq = and i32 %i.rpp, 63
  %i.rpr = zext nneg i32 %i.rpq to i64
  %i.rps = shl nuw i64 1, %i.rpr
  %i.rpt = load ptr, ptr %i.rpf, align 8
  %i.rpu = lshr i32 %i.rpp, 6
  %i.rpv = zext nneg i32 %i.rpu to i64
  %i.rpw = getelementptr inbounds nuw [8 x i8], ptr %i.rpt, i64 %i.rpv ; 2 uses
  %i.rpx = load i64, ptr %i.rpw, align 8
  %i.rpy = or i64 %i.rps, %i.rpx
  store i64 %i.rpy, ptr %i.rpw, align 8
  %i.rpz = or disjoint i32 %.07.i.i.i.i, 1
  %i.rqa = add i32 %i.rpn, %i.rpz                 ; 2 uses
  %i.rqb = and i32 %i.rqa, 63
  %i.rqc = zext nneg i32 %i.rqb to i64
  %i.rqd = shl nuw i64 1, %i.rqc
  %i.rqe = load ptr, ptr %i.rpf, align 8
  %i.rqf = lshr i32 %i.rqa, 6
  %i.rqg = zext nneg i32 %i.rqf to i64
  %i.rqh = getelementptr inbounds nuw [8 x i8], ptr %i.rqe, i64 %i.rqg ; 2 uses
  %i.rqi = load i64, ptr %i.rqh, align 8
  %i.rqj = or i64 %i.rqd, %i.rqi
  store i64 %i.rqj, ptr %i.rqh, align 8
  %i.rqk = add nuw i32 %.07.i.i.i.i, 2            ; 2 uses
  %niter7424.next.1 = add nuw i32 %niter7424, 2   ; 2 uses
  %niter7424.ncmp.1 = icmp eq i32 %niter7424.next.1, %unroll_iter7423
  br i1 %niter7424.ncmp.1, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE113ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE3ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa, label %bb.anb, !llvm.loop !24

_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE113ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE3ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa: ; preds = %bb.anb
  %lcmp.mod7421.not = icmp eq i32 %xtraiter7420, 0
  br i1 %lcmp.mod7421.not, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE113ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE3ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE113ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE3ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i11.i
  %.07.i.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i11.i ], [ %i.rqk, %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE113ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE3ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa ]
  %lcmp.mod7422 = trunc i32 %i.rpk to i1
  call void @llvm.assume(i1 %lcmp.mod7422)
  %i.rql = add i32 %i.rpn, %.07.i.i.i.i.epil.init ; 2 uses
  %i.rqm = and i32 %i.rql, 63
  %i.rqn = zext nneg i32 %i.rqm to i64
  %i.rqo = shl nuw i64 1, %i.rqn
  %i.rqp = load ptr, ptr %i.rpf, align 8
  %i.rqq = lshr i32 %i.rql, 6
  %i.rqr = zext nneg i32 %i.rqq to i64
  %i.rqs = getelementptr inbounds nuw [8 x i8], ptr %i.rqp, i64 %i.rqr ; 2 uses
  %i.rqt = load i64, ptr %i.rqs, align 8
  %i.rqu = or i64 %i.rqo, %i.rqt
  store i64 %i.rqu, ptr %i.rqs, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE113ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE3ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE113ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE3ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit: ; preds = %.epil.preheader, %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE113ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE3ELS7_11ELS7_8EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.loopexit.unr-lcssa, %_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb1ELNS0_11interpreter8BytecodeE113EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.i
  %i.rqv = load ptr, ptr %i.anb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gv)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

bb.anc:                                           ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gx)
  store ptr %i.anc, ptr %i.gx, align 8
  %.not.i.i1794 = icmp eq ptr %.053425864, null
  br i1 %.not.i.i1794, label %bb.and, label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1795

bb.and:                                           ; preds = %bb.anc
  %i.rqw = load i64, ptr %.sroa.0.0.copyload.i536, align 8
  %i.rqx = add i64 %i.rqw, 47
  %i.rqy = inttoptr i64 %i.rqx to ptr
  %i.rqz = load i32, ptr %i.rqy, align 4
  %i.rra = sdiv i32 %i.rqz, 8                     ; 2 uses
  %i.rrb = getelementptr inbounds nuw i8, ptr %i.anc, i64 24 ; 2 uses
  %i.rrc = load i64, ptr %i.rrb, align 8
  %i.rrd = getelementptr inbounds nuw i8, ptr %i.anc, i64 16 ; 6 uses
  %i.rre = load i64, ptr %i.rrd, align 8          ; 2 uses
  %i.rrf = sub i64 %i.rrc, %i.rre
  %i.rrg = icmp ult i64 %i.rrf, 40
  br i1 %i.rrg, label %bb.ane, label %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1804, !prof !5

bb.ane:                                           ; preds = %bb.and
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, i64 noundef 40) #23
  %.pre.i.i.i.i1807 = load i64, ptr %i.rrd, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1804

_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1804: ; preds = %bb.ane, %bb.and
  %i.rrh = phi i64 [ %.pre.i.i.i.i1807, %bb.ane ], [ %i.rre, %bb.and ] ; 2 uses
  %i.rri = inttoptr i64 %i.rrh to ptr             ; 6 uses
  %i.rrj = add i64 %i.rrh, 40
  store i64 %i.rrj, ptr %i.rrd, align 8
  %i.rrk = getelementptr inbounds nuw i8, ptr %i.rri, i64 8
  %i.rrl = add nsw i32 %i.rra, 1
  store i32 %i.rrl, ptr %i.rrk, align 8
  %i.rrm = getelementptr inbounds nuw i8, ptr %i.rri, i64 16 ; 4 uses
  store i64 0, ptr %i.rrm, align 8
  %i.rrn = getelementptr inbounds nuw i8, ptr %i.rri, i64 24 ; 3 uses
  store ptr %i.rrm, ptr %i.rrn, align 8
  %i.rro = getelementptr inbounds nuw i8, ptr %i.rri, i64 32 ; 2 uses
  store ptr %i.rrn, ptr %i.rro, align 8
  %i.rrp = add nsw i32 %i.rra, 64
  %i.rrq = ashr i32 %i.rrp, 6                     ; 2 uses
  %i.rrr = icmp sgt i32 %i.rrq, 1
  br i1 %i.rrr, label %bb.anf, label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1795

bb.anf:                                           ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1804
  %i.rrs = zext nneg i32 %i.rrq to i64            ; 2 uses
  %i.rrt = shl nuw nsw i64 %i.rrs, 3              ; 4 uses
  %i.rru = load i64, ptr %i.rrb, align 8
  %i.rrv = load i64, ptr %i.rrd, align 8          ; 2 uses
  %i.rrw = sub i64 %i.rru, %i.rrv
  %i.rrx = icmp ugt i64 %i.rrt, %i.rrw
  br i1 %i.rrx, label %bb.ang, label %.lr.ph.i.i.i.i.i.i.i.i.i1805, !prof !5

bb.ang:                                           ; preds = %bb.anf
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, i64 noundef %i.rrt) #23
  %.pre.i.i.i.i.i.i.i1806 = load i64, ptr %i.rrd, align 8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i1805

.lr.ph.i.i.i.i.i.i.i.i.i1805:                     ; preds = %bb.ang, %bb.anf
  %i.rry = phi i64 [ %.pre.i.i.i.i.i.i.i1806, %bb.ang ], [ %i.rrv, %bb.anf ] ; 2 uses
  %i.rrz = inttoptr i64 %i.rry to ptr             ; 2 uses
  %i.rsa = add i64 %i.rry, %i.rrt
  store i64 %i.rsa, ptr %i.rrd, align 8
  store ptr %i.rrz, ptr %i.rrm, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.rrz, i8 0, i64 %i.rrt, i1 false)
  %i.rsb = load ptr, ptr %i.rrm, align 8          ; 2 uses
  store ptr %i.rsb, ptr %i.rrn, align 8
  %i.rsc = getelementptr inbounds nuw [8 x i8], ptr %i.rsb, i64 %i.rrs
  store ptr %i.rsc, ptr %i.rro, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1795

_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1795: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1805, %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1804, %bb.anc
  %.sink.i.i1796 = phi ptr [ %.053425864, %bb.anc ], [ %i.rri, %_ZN2v88internal4Zone8AllocateINS0_8compiler21BytecodeLivenessStateEEEPvm.exit.i.i.i1804 ], [ %i.rri, %.lr.ph.i.i.i.i.i.i.i.i.i1805 ]
  %i.rsd = getelementptr inbounds nuw i8, ptr %i.anb, i64 8 ; 6 uses
  store ptr %.sink.i.i1796, ptr %i.rsd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #23
  %i.rse = load i64, ptr %.sroa.0.0.copyload.i536, align 8
  call void @_ZN2v88internal12HandlerTableC1ENS0_6TaggedINS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(16) %91, i64 %i.rse) #23
  %i.rsf = load ptr, ptr %i.qy, align 8
  %i.rsg = load ptr, ptr %i.qz, align 8
  %i.rsh = ptrtoint ptr %i.rsf to i64
  %i.rsi = ptrtoint ptr %i.rsg to i64
  %i.rsj = load i32, ptr %i.ra, align 4
  %i.rsk = zext i32 %i.rsj to i64
  %i.rsl = add i64 %i.rsi, %i.rsk
  %i.rsm = sub i64 %i.rsh, %i.rsl
  %i.rsn = trunc i64 %i.rsm to i32
  %i.rso = call noundef i32 @_ZNK2v88internal12HandlerTable26LookupHandlerIndexForRangeEi(ptr noundef nonnull align 8 dereferenceable(16) %91, i32 noundef %i.rsn) #23 ; 3 uses
  %.not16.i.i1797 = icmp eq i32 %i.rso, -1
  br i1 %.not16.i.i1797, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE114ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit, label %bb.anh

bb.anh:                                           ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJiRPS1_EEEPT_DpOT0_.exit.i.i1795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gw)
  store ptr %i.anc, ptr %i.gw, align 8
  %i.rsp = load ptr, ptr %i.rsd, align 8          ; 2 uses
  %i.rsq = icmp eq ptr %i.rsp, %.053425864
  br i1 %i.rsq, label %bb.ani, label %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1798

bb.ani:                                           ; preds = %bb.anh
  %i.rsr = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler21BytecodeLivenessStateEJRS4_RPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.anc, ptr noundef nonnull align 8 dereferenceable(40) %.053425864, ptr noundef nonnull align 8 dereferenceable(8) %i.gw) ; 2 uses
  store ptr %i.rsr, ptr %i.rsd, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1798

_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1798: ; preds = %bb.ani, %bb.anh
  %i.rss = phi ptr [ %i.rsp, %bb.anh ], [ %i.rsr, %bb.ani ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gw)
  %i.rst = getelementptr inbounds nuw i8, ptr %i.rss, i64 24 ; 3 uses
  %i.rsu = load ptr, ptr %i.rst, align 8
  %i.rsv = load i64, ptr %i.rsu, align 8
  %i.rsw = trunc i64 %i.rsv to i1
  %i.rsx = call noundef i32 @_ZNK2v88internal12HandlerTable15GetRangeHandlerEi(ptr noundef nonnull align 8 dereferenceable(16) %91, i32 noundef %i.rso) #23
  %i.rsy = getelementptr inbounds nuw i8, ptr %i.rss, i64 32 ; 2 uses
  %i.rsz = load ptr, ptr %i.rsy, align 8
  %i.rta = load ptr, ptr %i.rst, align 8          ; 2 uses
  %i.rtb = ptrtoint ptr %i.rsz to i64
  %i.rtc = ptrtoint ptr %i.rta to i64
  %i.rtd = sub i64 %i.rtb, %i.rtc
  %i.rte = lshr exact i64 %i.rtd, 3
  %i.rtf = trunc i64 %i.rte to i32
  %i.rtg = icmp sgt i32 %i.rtf, 0
  br i1 %i.rtg, label %.lr.ph.i.i.i.i1800, label %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1799

.lr.ph.i.i.i.i1800:                               ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1798
  %i.rth = load ptr, ptr %i.amy, align 8
  %i.rti = sext i32 %i.rsx to i64
  %i.rtj = getelementptr inbounds [16 x i8], ptr %i.rth, i64 %i.rti
  %i.rtk = load ptr, ptr %i.rtj, align 8
  %i.rtl = getelementptr inbounds nuw i8, ptr %i.rtk, i64 24
  br label %bb.anj

bb.anj:                                           ; preds = %bb.anj, %.lr.ph.i.i.i.i1800
  %indvars.iv.i.i.i.i1801 = phi i64 [ 0, %.lr.ph.i.i.i.i1800 ], [ %indvars.iv.next.i.i.i.i1802, %bb.anj ] ; 3 uses
  %i.rtm = phi ptr [ %i.rta, %.lr.ph.i.i.i.i1800 ], [ %i.rtu, %bb.anj ]
  %i.rtn = load ptr, ptr %i.rtl, align 8
  %i.rto = getelementptr inbounds nuw [8 x i8], ptr %i.rtn, i64 %indvars.iv.i.i.i.i1801
  %i.rtp = load i64, ptr %i.rto, align 8
  %i.rtq = getelementptr inbounds nuw [8 x i8], ptr %i.rtm, i64 %indvars.iv.i.i.i.i1801 ; 2 uses
  %i.rtr = load i64, ptr %i.rtq, align 8
  %i.rts = or i64 %i.rtr, %i.rtp
  store i64 %i.rts, ptr %i.rtq, align 8
  %indvars.iv.next.i.i.i.i1802 = add nuw nsw i64 %indvars.iv.i.i.i.i1801, 1 ; 2 uses
  %i.rtt = load ptr, ptr %i.rsy, align 8
  %i.rtu = load ptr, ptr %i.rst, align 8          ; 2 uses
  %i.rtv = ptrtoint ptr %i.rtt to i64
  %i.rtw = ptrtoint ptr %i.rtu to i64
  %i.rtx = sub i64 %i.rtv, %i.rtw
  %sext.i.i.i.i1803 = shl i64 %i.rtx, 29
  %i.rty = ashr i64 %sext.i.i.i.i1803, 32
  %i.rtz = icmp slt i64 %indvars.iv.next.i.i.i.i1802, %i.rty
  br i1 %i.rtz, label %bb.anj, label %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1799, !llvm.loop !9

_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1799: ; preds = %bb.anj, %_ZN2v88internal8compiler12_GLOBAL__N_127EnsureOutLivenessIsNotAliasILb1EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateEPNS0_4ZoneE.exit.i.i1798
  %i.rua = load ptr, ptr %i.rsd, align 8
  %i.rub = call noundef i32 @_ZNK2v88internal12HandlerTable12GetRangeDataEi(ptr noundef nonnull align 8 dereferenceable(16) %91, i32 noundef %i.rso) #23
  %i.ruc = add nsw i32 %i.rub, 1                  ; 2 uses
  %i.rud = and i32 %i.ruc, 63
  %i.rue = zext nneg i32 %i.rud to i64
  %i.ruf = shl nuw i64 1, %i.rue
  %i.rug = getelementptr inbounds nuw i8, ptr %i.rua, i64 24
  %i.ruh = load ptr, ptr %i.rug, align 8
  %i.rui = lshr i32 %i.ruc, 6
  %i.ruj = zext nneg i32 %i.rui to i64
  %i.ruk = getelementptr inbounds nuw [8 x i8], ptr %i.ruh, i64 %i.ruj ; 2 uses
  %i.rul = load i64, ptr %i.ruk, align 8
  %i.rum = or i64 %i.ruf, %i.rul
  store i64 %i.rum, ptr %i.ruk, align 8
  br i1 %i.rsw, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb1ELNS0_11interpreter8BytecodeE114ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit, label %bb.ank

bb.ank:                                           ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState5UnionERKS2_.exit.i.i1799
  %i.run = load ptr, ptr %i.rsd, align 8
  %i.ruo = getelementptr inbounds nuw i8, ptr %i.run, i64 24
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler16BytecodeAnalysis20BytecodeAnalysisImpl7AnalyzeEv:bb.a
  %i.akdg = load ptr, ptr %i.akdf, align 8
  %i.akdh = getelementptr inbounds nuw i8, ptr %i.akdg, i64 24
  %i.akdi = load ptr, ptr %i.akdh, align 8        ; 2 uses
  %i.akdj = getelementptr inbounds nuw i8, ptr %i.akde, i64 32
  %i.akdk = load ptr, ptr %i.akdj, align 8
  %i.akdl = getelementptr inbounds nuw i8, ptr %i.akde, i64 24
  %i.akdm = load ptr, ptr %i.akdl, align 8        ; 3 uses
  %i.akdn = ptrtoint ptr %i.akdk to i64
  %i.akdo = ptrtoint ptr %i.akdm to i64
  %i.akdp = sub i64 %i.akdn, %i.akdo              ; 2 uses
  %i.akdq = lshr exact i64 %i.akdp, 3
  %i.akdr = trunc i64 %i.akdq to i32              ; 2 uses
  %i.akds = icmp slt i32 %i.akdr, 1
  br i1 %i.akds, label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i4006, label %bb.ckx

bb.ckx:                                           ; preds = %bb.ckw
  %.not.i.i.i.i4004 = icmp eq i32 %i.akdr, 1
  br i1 %.not.i.i.i.i4004, label %bb.ckz, label %bb.cky, !prof !5

bb.cky:                                           ; preds = %bb.ckx
  %.idx.i.i.i.i.i4005 = and i64 %i.akdp, 17179869176
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.akdm, ptr align 8 %i.akdi, i64 %.idx.i.i.i.i.i4005, i1 false)
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i4006

bb.ckz:                                           ; preds = %bb.ckx
  %i.akdt = load i64, ptr %i.akdi, align 8
  store i64 %i.akdt, ptr %i.akdm, align 8
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i4006

_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i4006: ; preds = %bb.ckz, %bb.cky, %bb.ckw
  %i.akdu = load ptr, ptr %i.afeu, align 8        ; 2 uses
  %i.akdv = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 0) #23 ; 2 uses
  %i.akdw = icmp slt i32 %i.akdv, 0
  br i1 %i.akdw, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE98ELNS4_19ImplicitRegisterUseE1EJLNS4_11OperandTypeE13EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit, label %bb.cla

bb.cla:                                           ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i4006
  %i.akdx = add nuw nsw i32 %i.akdv, 1            ; 2 uses
  %i.akdy = and i32 %i.akdx, 63
  %i.akdz = zext nneg i32 %i.akdy to i64
  %i.akea = shl nuw i64 1, %i.akdz
  %i.akeb = xor i64 %i.akea, -1
  %i.akec = getelementptr inbounds nuw i8, ptr %i.akdu, i64 24
  %i.aked = load ptr, ptr %i.akec, align 8
  %i.akee = lshr i32 %i.akdx, 6
  %i.akef = zext nneg i32 %i.akee to i64
  %i.akeg = getelementptr inbounds nuw [8 x i8], ptr %i.aked, i64 %i.akef ; 2 uses
  %i.akeh = load i64, ptr %i.akeg, align 8
  %i.akei = and i64 %i.akeh, %i.akeb
  store i64 %i.akei, ptr %i.akeg, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE98ELNS4_19ImplicitRegisterUseE1EJLNS4_11OperandTypeE13EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE98ELNS4_19ImplicitRegisterUseE1EJLNS4_11OperandTypeE13EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i4006, %bb.cla
  %i.akej = getelementptr inbounds nuw i8, ptr %i.akdu, i64 24
  %i.akek = load ptr, ptr %i.akej, align 8        ; 2 uses
  %i.akel = load i64, ptr %i.akek, align 8
  %i.akem = or i64 %i.akel, 1
  store i64 %i.akem, ptr %i.akek, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split

bb.clb:                                           ; preds = %.lr.ph5874
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb0ELNS0_11interpreter8BytecodeE99EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.afeu, ptr noundef %.25873, ptr noundef nonnull align 8 dereferenceable(48) %i.os, ptr readonly %.sroa.0.0.copyload.i545, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.afer)
  %i.aken = load ptr, ptr %i.afeu, align 8        ; 2 uses
  %i.akeo = getelementptr inbounds nuw i8, ptr %i.afeu, i64 8
  %i.akep = load ptr, ptr %i.akeo, align 8
  %i.akeq = getelementptr inbounds nuw i8, ptr %i.akep, i64 24
  %i.aker = load ptr, ptr %i.akeq, align 8        ; 2 uses
  %i.akes = getelementptr inbounds nuw i8, ptr %i.aken, i64 32
  %i.aket = load ptr, ptr %i.akes, align 8
  %i.akeu = getelementptr inbounds nuw i8, ptr %i.aken, i64 24
  %i.akev = load ptr, ptr %i.akeu, align 8        ; 3 uses
  %i.akew = ptrtoint ptr %i.aket to i64
  %i.akex = ptrtoint ptr %i.akev to i64
  %i.akey = sub i64 %i.akew, %i.akex              ; 2 uses
  %i.akez = lshr exact i64 %i.akey, 3
  %i.akfa = trunc i64 %i.akez to i32              ; 2 uses
  %i.akfb = icmp slt i32 %i.akfa, 1
  br i1 %i.akfb, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE99ELNS4_19ImplicitRegisterUseE0EJLNS4_11OperandTypeE10ELS7_10ELS7_15EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit, label %bb.clc

bb.clc:                                           ; preds = %bb.clb
  %.not.i.i.i.i4001 = icmp eq i32 %i.akfa, 1
  br i1 %.not.i.i.i.i4001, label %bb.cle, label %bb.cld, !prof !5

bb.cld:                                           ; preds = %bb.clc
  %.idx.i.i.i.i.i4002 = and i64 %i.akey, 17179869176
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.akev, ptr align 8 %i.aker, i64 %.idx.i.i.i.i.i4002, i1 false)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE99ELNS4_19ImplicitRegisterUseE0EJLNS4_11OperandTypeE10ELS7_10ELS7_15EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

bb.cle:                                           ; preds = %bb.clc
  %i.akfc = load i64, ptr %i.aker, align 8
  store i64 %i.akfc, ptr %i.akev, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE99ELNS4_19ImplicitRegisterUseE0EJLNS4_11OperandTypeE10ELS7_10ELS7_15EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE99ELNS4_19ImplicitRegisterUseE0EJLNS4_11OperandTypeE10ELS7_10ELS7_15EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit: ; preds = %bb.clb, %bb.cld, %bb.cle
  %i.akfd = load ptr, ptr %i.afeu, align 8
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE99ELNS4_19ImplicitRegisterUseE0EJLNS4_11OperandTypeE10ELS7_10ELS7_15EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE(ptr noundef %i.akfd, ptr noundef nonnull align 8 dereferenceable(48) %i.os)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split

bb.clf:                                           ; preds = %.lr.ph5874
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb0ELNS0_11interpreter8BytecodeE100EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.afeu, ptr noundef %.25873, ptr noundef nonnull align 8 dereferenceable(48) %i.os, ptr readonly %.sroa.0.0.copyload.i545, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.afer)
  %i.akfe = load ptr, ptr %i.afeu, align 8        ; 2 uses
  %i.akff = getelementptr inbounds nuw i8, ptr %i.afeu, i64 8
  %i.akfg = load ptr, ptr %i.akff, align 8
  %i.akfh = getelementptr inbounds nuw i8, ptr %i.akfg, i64 24
  %i.akfi = load ptr, ptr %i.akfh, align 8        ; 2 uses
  %i.akfj = getelementptr inbounds nuw i8, ptr %i.akfe, i64 32
  %i.akfk = load ptr, ptr %i.akfj, align 8
  %i.akfl = getelementptr inbounds nuw i8, ptr %i.akfe, i64 24
  %i.akfm = load ptr, ptr %i.akfl, align 8        ; 3 uses
  %i.akfn = ptrtoint ptr %i.akfk to i64
  %i.akfo = ptrtoint ptr %i.akfm to i64
  %i.akfp = sub i64 %i.akfn, %i.akfo              ; 2 uses
  %i.akfq = lshr exact i64 %i.akfp, 3
  %i.akfr = trunc i64 %i.akfq to i32              ; 2 uses
  %i.akfs = icmp slt i32 %i.akfr, 1
  br i1 %i.akfs, label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3995, label %bb.clg

bb.clg:                                           ; preds = %bb.clf
  %.not.i.i.i.i3993 = icmp eq i32 %i.akfr, 1
  br i1 %.not.i.i.i.i3993, label %bb.cli, label %bb.clh, !prof !5

bb.clh:                                           ; preds = %bb.clg
  %.idx.i.i.i.i.i3994 = and i64 %i.akfp, 17179869176
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.akfm, ptr align 8 %i.akfi, i64 %.idx.i.i.i.i.i3994, i1 false)
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3995

bb.cli:                                           ; preds = %bb.clg
  %i.akft = load i64, ptr %i.akfi, align 8
  store i64 %i.akft, ptr %i.akfm, align 8
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3995

_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3995: ; preds = %bb.cli, %bb.clh, %bb.clf
  %i.akfu = load ptr, ptr %i.afeu, align 8
  %i.akfv = getelementptr inbounds nuw i8, ptr %i.akfu, i64 24 ; 5 uses
  %i.akfw = load ptr, ptr %i.akfv, align 8        ; 2 uses
  %i.akfx = load i64, ptr %i.akfw, align 8
  %i.akfy = and i64 %i.akfx, -2
  store i64 %i.akfy, ptr %i.akfw, align 8
  %i.akfz = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 0) #23 ; 2 uses
  %i.akga = icmp slt i32 %i.akfz, 0
  br i1 %i.akga, label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE100ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3996, label %bb.clj

bb.clj:                                           ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3995
  %i.akgb = add nuw nsw i32 %i.akfz, 1            ; 2 uses
  %i.akgc = and i32 %i.akgb, 63
  %i.akgd = zext nneg i32 %i.akgc to i64
  %i.akge = shl nuw i64 1, %i.akgd
  %i.akgf = load ptr, ptr %i.akfv, align 8
  %i.akgg = lshr i32 %i.akgb, 6
  %i.akgh = zext nneg i32 %i.akgg to i64
  %i.akgi = getelementptr inbounds nuw [8 x i8], ptr %i.akgf, i64 %i.akgh ; 2 uses
  %i.akgj = load i64, ptr %i.akgi, align 8
  %i.akgk = or i64 %i.akgj, %i.akge
  store i64 %i.akgk, ptr %i.akgi, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE100ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3996

_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE100ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3996: ; preds = %bb.clj, %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3995
  %i.akgl = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 1) #23 ; 2 uses
  %i.akgm = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator23GetRegisterCountOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 2) #23 ; 5 uses
  %i.akgn = icmp sgt i32 %i.akgl, -1
  %i.akgo = icmp ne i32 %i.akgm, 0
  %or.cond.i.i.i.i3997 = and i1 %i.akgn, %i.akgo
  br i1 %or.cond.i.i.i.i3997, label %.lr.ph.i.i.i.i3998, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split

.lr.ph.i.i.i.i3998:                               ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE100ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3996
  %i.akgp = add nuw i32 %i.akgl, 1                ; 3 uses
  %xtraiter7498 = and i32 %i.akgm, 1
  %i.akgq = icmp eq i32 %i.akgm, 1
  br i1 %i.akgq, label %.epil.preheader7497, label %.lr.ph.i.i.i.i3998.new

.lr.ph.i.i.i.i3998.new:                           ; preds = %.lr.ph.i.i.i.i3998
  %unroll_iter7501 = and i32 %i.akgm, -2
  br label %bb.clk

bb.clk:                                           ; preds = %bb.clk, %.lr.ph.i.i.i.i3998.new
  %.07.i.i.i.i3999 = phi i32 [ 0, %.lr.ph.i.i.i.i3998.new ], [ %i.akhm, %bb.clk ] ; 3 uses
  %niter7502 = phi i32 [ 0, %.lr.ph.i.i.i.i3998.new ], [ %niter7502.next.1, %bb.clk ]
  %i.akgr = add i32 %i.akgp, %.07.i.i.i.i3999     ; 2 uses
  %i.akgs = and i32 %i.akgr, 63
  %i.akgt = zext nneg i32 %i.akgs to i64
  %i.akgu = shl nuw i64 1, %i.akgt
  %i.akgv = load ptr, ptr %i.akfv, align 8
  %i.akgw = lshr i32 %i.akgr, 6
  %i.akgx = zext nneg i32 %i.akgw to i64
  %i.akgy = getelementptr inbounds nuw [8 x i8], ptr %i.akgv, i64 %i.akgx ; 2 uses
  %i.akgz = load i64, ptr %i.akgy, align 8
  %i.akha = or i64 %i.akgu, %i.akgz
  store i64 %i.akha, ptr %i.akgy, align 8
  %i.akhb = or disjoint i32 %.07.i.i.i.i3999, 1
  %i.akhc = add i32 %i.akgp, %i.akhb              ; 2 uses
  %i.akhd = and i32 %i.akhc, 63
  %i.akhe = zext nneg i32 %i.akhd to i64
  %i.akhf = shl nuw i64 1, %i.akhe
  %i.akhg = load ptr, ptr %i.akfv, align 8
  %i.akhh = lshr i32 %i.akhc, 6
  %i.akhi = zext nneg i32 %i.akhh to i64
  %i.akhj = getelementptr inbounds nuw [8 x i8], ptr %i.akhg, i64 %i.akhi ; 2 uses
  %i.akhk = load i64, ptr %i.akhj, align 8
  %i.akhl = or i64 %i.akhf, %i.akhk
  store i64 %i.akhl, ptr %i.akhj, align 8
  %i.akhm = add nuw i32 %.07.i.i.i.i3999, 2       ; 2 uses
  %niter7502.next.1 = add nuw i32 %niter7502, 2   ; 2 uses
  %niter7502.ncmp.1 = icmp eq i32 %niter7502.next.1, %unroll_iter7501
  br i1 %niter7502.ncmp.1, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split.loopexit.unr-lcssa, label %bb.clk, !llvm.loop !18

bb.cll:                                           ; preds = %.lr.ph5874
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb0ELNS0_11interpreter8BytecodeE101EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.afeu, ptr noundef %.25873, ptr noundef nonnull align 8 dereferenceable(48) %i.os, ptr readonly %.sroa.0.0.copyload.i545, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.afer)
  %i.akhn = load ptr, ptr %i.afeu, align 8        ; 2 uses
  %i.akho = getelementptr inbounds nuw i8, ptr %i.afeu, i64 8
  %i.akhp = load ptr, ptr %i.akho, align 8
  %i.akhq = getelementptr inbounds nuw i8, ptr %i.akhp, i64 24
  %i.akhr = load ptr, ptr %i.akhq, align 8        ; 2 uses
  %i.akhs = getelementptr inbounds nuw i8, ptr %i.akhn, i64 32
  %i.akht = load ptr, ptr %i.akhs, align 8
  %i.akhu = getelementptr inbounds nuw i8, ptr %i.akhn, i64 24
  %i.akhv = load ptr, ptr %i.akhu, align 8        ; 3 uses
  %i.akhw = ptrtoint ptr %i.akht to i64
  %i.akhx = ptrtoint ptr %i.akhv to i64
  %i.akhy = sub i64 %i.akhw, %i.akhx              ; 2 uses
  %i.akhz = lshr exact i64 %i.akhy, 3
  %i.akia = trunc i64 %i.akhz to i32              ; 2 uses
  %i.akib = icmp slt i32 %i.akia, 1
  br i1 %i.akib, label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3987, label %bb.clm

bb.clm:                                           ; preds = %bb.cll
  %.not.i.i.i.i3985 = icmp eq i32 %i.akia, 1
  br i1 %.not.i.i.i.i3985, label %bb.clo, label %bb.cln, !prof !5

bb.cln:                                           ; preds = %bb.clm
  %.idx.i.i.i.i.i3986 = and i64 %i.akhy, 17179869176
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.akhv, ptr align 8 %i.akhr, i64 %.idx.i.i.i.i.i3986, i1 false)
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3987

bb.clo:                                           ; preds = %bb.clm
  %i.akic = load i64, ptr %i.akhr, align 8
  store i64 %i.akic, ptr %i.akhv, align 8
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3987

_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3987: ; preds = %bb.clo, %bb.cln, %bb.cll
  %i.akid = load ptr, ptr %i.afeu, align 8
  %i.akie = getelementptr inbounds nuw i8, ptr %i.akid, i64 24 ; 5 uses
  %i.akif = load ptr, ptr %i.akie, align 8        ; 2 uses
  %i.akig = load i64, ptr %i.akif, align 8
  %i.akih = and i64 %i.akig, -2
  store i64 %i.akih, ptr %i.akif, align 8
  %i.akii = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 0) #23 ; 2 uses
  %i.akij = icmp slt i32 %i.akii, 0
  br i1 %i.akij, label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE101ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3988, label %bb.clp

bb.clp:                                           ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3987
  %i.akik = add nuw nsw i32 %i.akii, 1            ; 2 uses
  %i.akil = and i32 %i.akik, 63
  %i.akim = zext nneg i32 %i.akil to i64
  %i.akin = shl nuw i64 1, %i.akim
  %i.akio = load ptr, ptr %i.akie, align 8
  %i.akip = lshr i32 %i.akik, 6
  %i.akiq = zext nneg i32 %i.akip to i64
  %i.akir = getelementptr inbounds nuw [8 x i8], ptr %i.akio, i64 %i.akiq ; 2 uses
  %i.akis = load i64, ptr %i.akir, align 8
  %i.akit = or i64 %i.akis, %i.akin
  store i64 %i.akit, ptr %i.akir, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE101ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3988

_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE101ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3988: ; preds = %bb.clp, %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3987
  %i.akiu = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 1) #23 ; 2 uses
  %i.akiv = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator23GetRegisterCountOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 2) #23 ; 5 uses
  %i.akiw = icmp sgt i32 %i.akiu, -1
  %i.akix = icmp ne i32 %i.akiv, 0
  %or.cond.i.i.i.i3989 = and i1 %i.akiw, %i.akix
  br i1 %or.cond.i.i.i.i3989, label %.lr.ph.i.i.i.i3990, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split

.lr.ph.i.i.i.i3990:                               ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE101ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3988
  %i.akiy = add nuw i32 %i.akiu, 1                ; 3 uses
  %xtraiter7492 = and i32 %i.akiv, 1
  %i.akiz = icmp eq i32 %i.akiv, 1
  br i1 %i.akiz, label %.epil.preheader7491, label %.lr.ph.i.i.i.i3990.new

.lr.ph.i.i.i.i3990.new:                           ; preds = %.lr.ph.i.i.i.i3990
  %unroll_iter7495 = and i32 %i.akiv, -2
  br label %bb.clq

bb.clq:                                           ; preds = %bb.clq, %.lr.ph.i.i.i.i3990.new
  %.07.i.i.i.i3991 = phi i32 [ 0, %.lr.ph.i.i.i.i3990.new ], [ %i.akjv, %bb.clq ] ; 3 uses
  %niter7496 = phi i32 [ 0, %.lr.ph.i.i.i.i3990.new ], [ %niter7496.next.1, %bb.clq ]
  %i.akja = add i32 %i.akiy, %.07.i.i.i.i3991     ; 2 uses
  %i.akjb = and i32 %i.akja, 63
  %i.akjc = zext nneg i32 %i.akjb to i64
  %i.akjd = shl nuw i64 1, %i.akjc
  %i.akje = load ptr, ptr %i.akie, align 8
  %i.akjf = lshr i32 %i.akja, 6
  %i.akjg = zext nneg i32 %i.akjf to i64
  %i.akjh = getelementptr inbounds nuw [8 x i8], ptr %i.akje, i64 %i.akjg ; 2 uses
  %i.akji = load i64, ptr %i.akjh, align 8
  %i.akjj = or i64 %i.akjd, %i.akji
  store i64 %i.akjj, ptr %i.akjh, align 8
  %i.akjk = or disjoint i32 %.07.i.i.i.i3991, 1
  %i.akjl = add i32 %i.akiy, %i.akjk              ; 2 uses
  %i.akjm = and i32 %i.akjl, 63
  %i.akjn = zext nneg i32 %i.akjm to i64
  %i.akjo = shl nuw i64 1, %i.akjn
  %i.akjp = load ptr, ptr %i.akie, align 8
  %i.akjq = lshr i32 %i.akjl, 6
  %i.akjr = zext nneg i32 %i.akjq to i64
  %i.akjs = getelementptr inbounds nuw [8 x i8], ptr %i.akjp, i64 %i.akjr ; 2 uses
  %i.akjt = load i64, ptr %i.akjs, align 8
  %i.akju = or i64 %i.akjo, %i.akjt
  store i64 %i.akju, ptr %i.akjs, align 8
  %i.akjv = add nuw i32 %.07.i.i.i.i3991, 2       ; 2 uses
  %niter7496.next.1 = add nuw i32 %niter7496, 2   ; 2 uses
  %niter7496.ncmp.1 = icmp eq i32 %niter7496.next.1, %unroll_iter7495
  br i1 %niter7496.ncmp.1, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split.loopexit7343.unr-lcssa, label %bb.clq, !llvm.loop !19

bb.clr:                                           ; preds = %.lr.ph5874
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb0ELNS0_11interpreter8BytecodeE102EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.afeu, ptr noundef %.25873, ptr noundef nonnull align 8 dereferenceable(48) %i.os, ptr readonly %.sroa.0.0.copyload.i545, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.afer)
  %i.akjw = load ptr, ptr %i.afeu, align 8        ; 2 uses
  %i.akjx = getelementptr inbounds nuw i8, ptr %i.afeu, i64 8
  %i.akjy = load ptr, ptr %i.akjx, align 8
  %i.akjz = getelementptr inbounds nuw i8, ptr %i.akjy, i64 24
  %i.akka = load ptr, ptr %i.akjz, align 8        ; 2 uses
  %i.akkb = getelementptr inbounds nuw i8, ptr %i.akjw, i64 32
  %i.akkc = load ptr, ptr %i.akkb, align 8
  %i.akkd = getelementptr inbounds nuw i8, ptr %i.akjw, i64 24
  %i.akke = load ptr, ptr %i.akkd, align 8        ; 3 uses
  %i.akkf = ptrtoint ptr %i.akkc to i64
  %i.akkg = ptrtoint ptr %i.akke to i64
  %i.akkh = sub i64 %i.akkf, %i.akkg              ; 2 uses
  %i.akki = lshr exact i64 %i.akkh, 3
  %i.akkj = trunc i64 %i.akki to i32              ; 2 uses
  %i.akkk = icmp slt i32 %i.akkj, 1
  br i1 %i.akkk, label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3983, label %bb.cls

bb.cls:                                           ; preds = %bb.clr
  %.not.i.i.i.i3981 = icmp eq i32 %i.akkj, 1
  br i1 %.not.i.i.i.i3981, label %bb.clu, label %bb.clt, !prof !5

bb.clt:                                           ; preds = %bb.cls
  %.idx.i.i.i.i.i3982 = and i64 %i.akkh, 17179869176
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.akke, ptr align 8 %i.akka, i64 %.idx.i.i.i.i.i3982, i1 false)
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3983

bb.clu:                                           ; preds = %bb.cls
  %i.akkl = load i64, ptr %i.akka, align 8
  store i64 %i.akkl, ptr %i.akke, align 8
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3983

_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3983: ; preds = %bb.clu, %bb.clt, %bb.clr
  %i.akkm = load ptr, ptr %i.afeu, align 8
  %i.akkn = getelementptr inbounds nuw i8, ptr %i.akkm, i64 24 ; 3 uses
  %i.akko = load ptr, ptr %i.akkn, align 8        ; 2 uses
  %i.akkp = load i64, ptr %i.akko, align 8
  %i.akkq = and i64 %i.akkp, -2
  store i64 %i.akkq, ptr %i.akko, align 8
  %i.akkr = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 0) #23 ; 2 uses
  %i.akks = icmp slt i32 %i.akkr, 0
  br i1 %i.akks, label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE102ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3984, label %bb.clv

bb.clv:                                           ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3983
  %i.akkt = add nuw nsw i32 %i.akkr, 1            ; 2 uses
  %i.akku = and i32 %i.akkt, 63
  %i.akkv = zext nneg i32 %i.akku to i64
  %i.akkw = shl nuw i64 1, %i.akkv
  %i.akkx = load ptr, ptr %i.akkn, align 8
  %i.akky = lshr i32 %i.akkt, 6
  %i.akkz = zext nneg i32 %i.akky to i64
  %i.akla = getelementptr inbounds nuw [8 x i8], ptr %i.akkx, i64 %i.akkz ; 2 uses
  %i.aklb = load i64, ptr %i.akla, align 8
  %i.aklc = or i64 %i.aklb, %i.akkw
  store i64 %i.aklc, ptr %i.akla, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE102ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3984

_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE102ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3984: ; preds = %bb.clv, %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3983
  %i.akld = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 1) #23 ; 2 uses
  %i.akle = icmp slt i32 %i.akld, 0
  br i1 %i.akle, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split, label %bb.clw

bb.clw:                                           ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE102ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3984
  %i.aklf = add nuw nsw i32 %i.akld, 1            ; 2 uses
  %i.aklg = and i32 %i.aklf, 63
  %i.aklh = zext nneg i32 %i.aklg to i64
  %i.akli = shl nuw i64 1, %i.aklh
  %i.aklj = load ptr, ptr %i.akkn, align 8
  %i.aklk = lshr i32 %i.aklf, 6
  %i.akll = zext nneg i32 %i.aklk to i64
  %i.aklm = getelementptr inbounds nuw [8 x i8], ptr %i.aklj, i64 %i.akll ; 2 uses
  %i.akln = load i64, ptr %i.aklm, align 8
  %i.aklo = or i64 %i.akln, %i.akli
  store i64 %i.aklo, ptr %i.aklm, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split

bb.clx:                                           ; preds = %.lr.ph5874
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb0ELNS0_11interpreter8BytecodeE103EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.afeu, ptr noundef %.25873, ptr noundef nonnull align 8 dereferenceable(48) %i.os, ptr readonly %.sroa.0.0.copyload.i545, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.afer)
  %i.aklp = load ptr, ptr %i.afeu, align 8        ; 2 uses
  %i.aklq = getelementptr inbounds nuw i8, ptr %i.afeu, i64 8
  %i.aklr = load ptr, ptr %i.aklq, align 8
  %i.akls = getelementptr inbounds nuw i8, ptr %i.aklr, i64 24
  %i.aklt = load ptr, ptr %i.akls, align 8        ; 2 uses
  %i.aklu = getelementptr inbounds nuw i8, ptr %i.aklp, i64 32
  %i.aklv = load ptr, ptr %i.aklu, align 8
  %i.aklw = getelementptr inbounds nuw i8, ptr %i.aklp, i64 24
  %i.aklx = load ptr, ptr %i.aklw, align 8        ; 3 uses
  %i.akly = ptrtoint ptr %i.aklv to i64
  %i.aklz = ptrtoint ptr %i.aklx to i64
  %i.akma = sub i64 %i.akly, %i.aklz              ; 2 uses
  %i.akmb = lshr exact i64 %i.akma, 3
  %i.akmc = trunc i64 %i.akmb to i32              ; 2 uses
  %i.akmd = icmp slt i32 %i.akmc, 1
  br i1 %i.akmd, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE103ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_10ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit, label %bb.cly

bb.cly:                                           ; preds = %bb.clx
  %.not.i.i.i.i3978 = icmp eq i32 %i.akmc, 1
  br i1 %.not.i.i.i.i3978, label %bb.cma, label %bb.clz, !prof !5

bb.clz:                                           ; preds = %bb.cly
  %.idx.i.i.i.i.i3979 = and i64 %i.akma, 17179869176
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aklx, ptr align 8 %i.aklt, i64 %.idx.i.i.i.i.i3979, i1 false)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE103ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_10ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

bb.cma:                                           ; preds = %bb.cly
  %i.akme = load i64, ptr %i.aklt, align 8
  store i64 %i.akme, ptr %i.aklx, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE103ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_10ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE103ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_10ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit: ; preds = %bb.clx, %bb.clz, %bb.cma
  %i.akmf = load ptr, ptr %i.afeu, align 8
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE103ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_10ELS7_6EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE(ptr noundef %i.akmf, ptr noundef nonnull align 8 dereferenceable(48) %i.os)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split

bb.cmb:                                           ; preds = %.lr.ph5874
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb0ELNS0_11interpreter8BytecodeE104EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.afeu, ptr noundef %.25873, ptr noundef nonnull align 8 dereferenceable(48) %i.os, ptr readonly %.sroa.0.0.copyload.i545, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.afer)
  %i.akmg = load ptr, ptr %i.afeu, align 8        ; 2 uses
  %i.akmh = getelementptr inbounds nuw i8, ptr %i.afeu, i64 8
  %i.akmi = load ptr, ptr %i.akmh, align 8
  %i.akmj = getelementptr inbounds nuw i8, ptr %i.akmi, i64 24
  %i.akmk = load ptr, ptr %i.akmj, align 8        ; 2 uses
  %i.akml = getelementptr inbounds nuw i8, ptr %i.akmg, i64 32
  %i.akmm = load ptr, ptr %i.akml, align 8
  %i.akmn = getelementptr inbounds nuw i8, ptr %i.akmg, i64 24
  %i.akmo = load ptr, ptr %i.akmn, align 8        ; 3 uses
  %i.akmp = ptrtoint ptr %i.akmm to i64
  %i.akmq = ptrtoint ptr %i.akmo to i64
  %i.akmr = sub i64 %i.akmp, %i.akmq              ; 2 uses
  %i.akms = lshr exact i64 %i.akmr, 3
  %i.akmt = trunc i64 %i.akms to i32              ; 2 uses
  %i.akmu = icmp slt i32 %i.akmt, 1
  br i1 %i.akmu, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE104ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_10ELS7_10ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit, label %bb.cmc

bb.cmc:                                           ; preds = %bb.cmb
  %.not.i.i.i.i3975 = icmp eq i32 %i.akmt, 1
  br i1 %.not.i.i.i.i3975, label %bb.cme, label %bb.cmd, !prof !5

bb.cmd:                                           ; preds = %bb.cmc
  %.idx.i.i.i.i.i3976 = and i64 %i.akmr, 17179869176
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.akmo, ptr align 8 %i.akmk, i64 %.idx.i.i.i.i.i3976, i1 false)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE104ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_10ELS7_10ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

bb.cme:                                           ; preds = %bb.cmc
  %i.akmv = load i64, ptr %i.akmk, align 8
  store i64 %i.akmv, ptr %i.akmo, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE104ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_10ELS7_10ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE104ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_10ELS7_10ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit: ; preds = %bb.cmb, %bb.cmd, %bb.cme
  %i.akmw = load ptr, ptr %i.afeu, align 8
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE104ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_10ELS7_10ELS7_6EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE(ptr noundef %i.akmw, ptr noundef nonnull align 8 dereferenceable(48) %i.os)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split

bb.cmf:                                           ; preds = %.lr.ph5874
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb0ELNS0_11interpreter8BytecodeE105EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.afeu, ptr noundef %.25873, ptr noundef nonnull align 8 dereferenceable(48) %i.os, ptr readonly %.sroa.0.0.copyload.i545, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.afer)
  %i.akmx = load ptr, ptr %i.afeu, align 8        ; 2 uses
  %i.akmy = getelementptr inbounds nuw i8, ptr %i.afeu, i64 8
  %i.akmz = load ptr, ptr %i.akmy, align 8
  %i.akna = getelementptr inbounds nuw i8, ptr %i.akmz, i64 24
  %i.aknb = load ptr, ptr %i.akna, align 8        ; 2 uses
  %i.aknc = getelementptr inbounds nuw i8, ptr %i.akmx, i64 32
  %i.aknd = load ptr, ptr %i.aknc, align 8
  %i.akne = getelementptr inbounds nuw i8, ptr %i.akmx, i64 24
  %i.aknf = load ptr, ptr %i.akne, align 8        ; 3 uses
  %i.akng = ptrtoint ptr %i.aknd to i64
  %i.aknh = ptrtoint ptr %i.aknf to i64
  %i.akni = sub i64 %i.akng, %i.aknh              ; 2 uses
  %i.aknj = lshr exact i64 %i.akni, 3
  %i.aknk = trunc i64 %i.aknj to i32              ; 2 uses
  %i.aknl = icmp slt i32 %i.aknk, 1
  br i1 %i.aknl, label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3969, label %bb.cmg

bb.cmg:                                           ; preds = %bb.cmf
  %.not.i.i.i.i3967 = icmp eq i32 %i.aknk, 1
  br i1 %.not.i.i.i.i3967, label %bb.cmi, label %bb.cmh, !prof !5

bb.cmh:                                           ; preds = %bb.cmg
  %.idx.i.i.i.i.i3968 = and i64 %i.akni, 17179869176
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aknf, ptr align 8 %i.aknb, i64 %.idx.i.i.i.i.i3968, i1 false)
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3969

bb.cmi:                                           ; preds = %bb.cmg
  %i.aknm = load i64, ptr %i.aknb, align 8
  store i64 %i.aknm, ptr %i.aknf, align 8
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3969

_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3969: ; preds = %bb.cmi, %bb.cmh, %bb.cmf
  %i.aknn = load ptr, ptr %i.afeu, align 8
  %i.akno = getelementptr inbounds nuw i8, ptr %i.aknn, i64 24 ; 5 uses
  %i.aknp = load ptr, ptr %i.akno, align 8        ; 2 uses
  %i.aknq = load i64, ptr %i.aknp, align 8
  %i.aknr = and i64 %i.aknq, -2
  store i64 %i.aknr, ptr %i.aknp, align 8
  %i.akns = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 0) #23 ; 2 uses
  %i.aknt = icmp slt i32 %i.akns, 0
  br i1 %i.aknt, label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE105ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3970, label %bb.cmj

bb.cmj:                                           ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3969
  %i.aknu = add nuw nsw i32 %i.akns, 1            ; 2 uses
  %i.aknv = and i32 %i.aknu, 63
  %i.aknw = zext nneg i32 %i.aknv to i64
  %i.aknx = shl nuw i64 1, %i.aknw
  %i.akny = load ptr, ptr %i.akno, align 8
  %i.aknz = lshr i32 %i.aknu, 6
  %i.akoa = zext nneg i32 %i.aknz to i64
  %i.akob = getelementptr inbounds nuw [8 x i8], ptr %i.akny, i64 %i.akoa ; 2 uses
  %i.akoc = load i64, ptr %i.akob, align 8
  %i.akod = or i64 %i.akoc, %i.aknx
  store i64 %i.akod, ptr %i.akob, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE105ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3970

_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE105ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3970: ; preds = %bb.cmj, %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3969
  %i.akoe = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 1) #23 ; 2 uses
  %i.akof = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator23GetRegisterCountOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 2) #23 ; 5 uses
  %i.akog = icmp sgt i32 %i.akoe, -1
  %i.akoh = icmp ne i32 %i.akof, 0
  %or.cond.i.i.i.i3971 = and i1 %i.akog, %i.akoh
  br i1 %or.cond.i.i.i.i3971, label %.lr.ph.i.i.i.i3972, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split

.lr.ph.i.i.i.i3972:                               ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE105ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3970
  %i.akoi = add nuw i32 %i.akoe, 1                ; 3 uses
  %xtraiter7486 = and i32 %i.akof, 1
  %i.akoj = icmp eq i32 %i.akof, 1
  br i1 %i.akoj, label %.epil.preheader7485, label %.lr.ph.i.i.i.i3972.new

.lr.ph.i.i.i.i3972.new:                           ; preds = %.lr.ph.i.i.i.i3972
  %unroll_iter7489 = and i32 %i.akof, -2
  br label %bb.cmk

bb.cmk:                                           ; preds = %bb.cmk, %.lr.ph.i.i.i.i3972.new
  %.07.i.i.i.i3973 = phi i32 [ 0, %.lr.ph.i.i.i.i3972.new ], [ %i.akpf, %bb.cmk ] ; 3 uses
  %niter7490 = phi i32 [ 0, %.lr.ph.i.i.i.i3972.new ], [ %niter7490.next.1, %bb.cmk ]
  %i.akok = add i32 %i.akoi, %.07.i.i.i.i3973     ; 2 uses
  %i.akol = and i32 %i.akok, 63
  %i.akom = zext nneg i32 %i.akol to i64
  %i.akon = shl nuw i64 1, %i.akom
  %i.akoo = load ptr, ptr %i.akno, align 8
  %i.akop = lshr i32 %i.akok, 6
  %i.akoq = zext nneg i32 %i.akop to i64
  %i.akor = getelementptr inbounds nuw [8 x i8], ptr %i.akoo, i64 %i.akoq ; 2 uses
  %i.akos = load i64, ptr %i.akor, align 8
  %i.akot = or i64 %i.akon, %i.akos
  store i64 %i.akot, ptr %i.akor, align 8
  %i.akou = or disjoint i32 %.07.i.i.i.i3973, 1
  %i.akov = add i32 %i.akoi, %i.akou              ; 2 uses
  %i.akow = and i32 %i.akov, 63
  %i.akox = zext nneg i32 %i.akow to i64
  %i.akoy = shl nuw i64 1, %i.akox
  %i.akoz = load ptr, ptr %i.akno, align 8
  %i.akpa = lshr i32 %i.akov, 6
  %i.akpb = zext nneg i32 %i.akpa to i64
  %i.akpc = getelementptr inbounds nuw [8 x i8], ptr %i.akoz, i64 %i.akpb ; 2 uses
  %i.akpd = load i64, ptr %i.akpc, align 8
  %i.akpe = or i64 %i.akoy, %i.akpd
  store i64 %i.akpe, ptr %i.akpc, align 8
  %i.akpf = add nuw i32 %.07.i.i.i.i3973, 2       ; 2 uses
  %niter7490.next.1 = add nuw i32 %niter7490, 2   ; 2 uses
  %niter7490.ncmp.1 = icmp eq i32 %niter7490.next.1, %unroll_iter7489
  br i1 %niter7490.ncmp.1, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split.loopexit7344.unr-lcssa, label %bb.cmk, !llvm.loop !20

bb.cml:                                           ; preds = %.lr.ph5874
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb0ELNS0_11interpreter8BytecodeE106EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.afeu, ptr noundef %.25873, ptr noundef nonnull align 8 dereferenceable(48) %i.os, ptr readonly %.sroa.0.0.copyload.i545, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.afer)
  %i.akpg = load ptr, ptr %i.afeu, align 8        ; 2 uses
  %i.akph = getelementptr inbounds nuw i8, ptr %i.afeu, i64 8
  %i.akpi = load ptr, ptr %i.akph, align 8
  %i.akpj = getelementptr inbounds nuw i8, ptr %i.akpi, i64 24
  %i.akpk = load ptr, ptr %i.akpj, align 8        ; 2 uses
  %i.akpl = getelementptr inbounds nuw i8, ptr %i.akpg, i64 32
  %i.akpm = load ptr, ptr %i.akpl, align 8
  %i.akpn = getelementptr inbounds nuw i8, ptr %i.akpg, i64 24
  %i.akpo = load ptr, ptr %i.akpn, align 8        ; 3 uses
  %i.akpp = ptrtoint ptr %i.akpm to i64
  %i.akpq = ptrtoint ptr %i.akpo to i64
  %i.akpr = sub i64 %i.akpp, %i.akpq              ; 2 uses
  %i.akps = lshr exact i64 %i.akpr, 3
  %i.akpt = trunc i64 %i.akps to i32              ; 2 uses
  %i.akpu = icmp slt i32 %i.akpt, 1
  br i1 %i.akpu, label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3966, label %bb.cmm

bb.cmm:                                           ; preds = %bb.cml
  %.not.i.i.i.i3964 = icmp eq i32 %i.akpt, 1
  br i1 %.not.i.i.i.i3964, label %bb.cmo, label %bb.cmn, !prof !5

bb.cmn:                                           ; preds = %bb.cmm
  %.idx.i.i.i.i.i3965 = and i64 %i.akpr, 17179869176
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.akpo, ptr align 8 %i.akpk, i64 %.idx.i.i.i.i.i3965, i1 false)
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3966

bb.cmo:                                           ; preds = %bb.cmm
  %i.akpv = load i64, ptr %i.akpk, align 8
  store i64 %i.akpv, ptr %i.akpo, align 8
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3966

_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3966: ; preds = %bb.cmo, %bb.cmn, %bb.cml
  %i.akpw = load ptr, ptr %i.afeu, align 8
  %i.akpx = getelementptr inbounds nuw i8, ptr %i.akpw, i64 24 ; 2 uses
  %i.akpy = load ptr, ptr %i.akpx, align 8        ; 2 uses
  %i.akpz = load i64, ptr %i.akpy, align 8
  %i.akqa = and i64 %i.akpz, -2
  store i64 %i.akqa, ptr %i.akpy, align 8
  %i.akqb = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 0) #23 ; 2 uses
  %i.akqc = icmp slt i32 %i.akqb, 0
  br i1 %i.akqc, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split, label %bb.cmp

bb.cmp:                                           ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3966
  %i.akqd = add nuw nsw i32 %i.akqb, 1            ; 2 uses
  %i.akqe = and i32 %i.akqd, 63
  %i.akqf = zext nneg i32 %i.akqe to i64
  %i.akqg = shl nuw i64 1, %i.akqf
  %i.akqh = load ptr, ptr %i.akpx, align 8
  %i.akqi = lshr i32 %i.akqd, 6
  %i.akqj = zext nneg i32 %i.akqi to i64
  %i.akqk = getelementptr inbounds nuw [8 x i8], ptr %i.akqh, i64 %i.akqj ; 2 uses
  %i.akql = load i64, ptr %i.akqk, align 8
  %i.akqm = or i64 %i.akql, %i.akqg
  store i64 %i.akqm, ptr %i.akqk, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split

bb.cmq:                                           ; preds = %.lr.ph5874
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb0ELNS0_11interpreter8BytecodeE107EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.afeu, ptr noundef %.25873, ptr noundef nonnull align 8 dereferenceable(48) %i.os, ptr readonly %.sroa.0.0.copyload.i545, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.afer)
  %i.akqn = load ptr, ptr %i.afeu, align 8        ; 2 uses
  %i.akqo = getelementptr inbounds nuw i8, ptr %i.afeu, i64 8
  %i.akqp = load ptr, ptr %i.akqo, align 8
  %i.akqq = getelementptr inbounds nuw i8, ptr %i.akqp, i64 24
  %i.akqr = load ptr, ptr %i.akqq, align 8        ; 2 uses
  %i.akqs = getelementptr inbounds nuw i8, ptr %i.akqn, i64 32
  %i.akqt = load ptr, ptr %i.akqs, align 8
  %i.akqu = getelementptr inbounds nuw i8, ptr %i.akqn, i64 24
  %i.akqv = load ptr, ptr %i.akqu, align 8        ; 3 uses
  %i.akqw = ptrtoint ptr %i.akqt to i64
  %i.akqx = ptrtoint ptr %i.akqv to i64
  %i.akqy = sub i64 %i.akqw, %i.akqx              ; 2 uses
  %i.akqz = lshr exact i64 %i.akqy, 3
  %i.akra = trunc i64 %i.akqz to i32              ; 2 uses
  %i.akrb = icmp slt i32 %i.akra, 1
  br i1 %i.akrb, label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3962, label %bb.cmr

bb.cmr:                                           ; preds = %bb.cmq
  %.not.i.i.i.i3960 = icmp eq i32 %i.akra, 1
  br i1 %.not.i.i.i.i3960, label %bb.cmt, label %bb.cms, !prof !5

bb.cms:                                           ; preds = %bb.cmr
  %.idx.i.i.i.i.i3961 = and i64 %i.akqy, 17179869176
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.akqv, ptr align 8 %i.akqr, i64 %.idx.i.i.i.i.i3961, i1 false)
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3962

bb.cmt:                                           ; preds = %bb.cmr
  %i.akrc = load i64, ptr %i.akqr, align 8
  store i64 %i.akrc, ptr %i.akqv, align 8
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3962

_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3962: ; preds = %bb.cmt, %bb.cms, %bb.cmq
  %i.akrd = load ptr, ptr %i.afeu, align 8
  %i.akre = getelementptr inbounds nuw i8, ptr %i.akrd, i64 24 ; 3 uses
  %i.akrf = load ptr, ptr %i.akre, align 8        ; 2 uses
  %i.akrg = load i64, ptr %i.akrf, align 8
  %i.akrh = and i64 %i.akrg, -2
  store i64 %i.akrh, ptr %i.akrf, align 8
  %i.akri = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 0) #23 ; 2 uses
  %i.akrj = icmp slt i32 %i.akri, 0
  br i1 %i.akrj, label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE107ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3963, label %bb.cmu

bb.cmu:                                           ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3962
  %i.akrk = add nuw nsw i32 %i.akri, 1            ; 2 uses
  %i.akrl = and i32 %i.akrk, 63
  %i.akrm = zext nneg i32 %i.akrl to i64
  %i.akrn = shl nuw i64 1, %i.akrm
  %i.akro = load ptr, ptr %i.akre, align 8
  %i.akrp = lshr i32 %i.akrk, 6
  %i.akrq = zext nneg i32 %i.akrp to i64
  %i.akrr = getelementptr inbounds nuw [8 x i8], ptr %i.akro, i64 %i.akrq ; 2 uses
  %i.akrs = load i64, ptr %i.akrr, align 8
  %i.akrt = or i64 %i.akrs, %i.akrn
  store i64 %i.akrt, ptr %i.akrr, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE107ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3963

_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE107ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3963: ; preds = %bb.cmu, %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3962
  %i.akru = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 1) #23 ; 2 uses
  %i.akrv = icmp slt i32 %i.akru, 0
  br i1 %i.akrv, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split, label %bb.cmv

bb.cmv:                                           ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE107ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3963
  %i.akrw = add nuw nsw i32 %i.akru, 1            ; 2 uses
  %i.akrx = and i32 %i.akrw, 63
  %i.akry = zext nneg i32 %i.akrx to i64
  %i.akrz = shl nuw i64 1, %i.akry
  %i.aksa = load ptr, ptr %i.akre, align 8
  %i.aksb = lshr i32 %i.akrw, 6
  %i.aksc = zext nneg i32 %i.aksb to i64
  %i.aksd = getelementptr inbounds nuw [8 x i8], ptr %i.aksa, i64 %i.aksc ; 2 uses
  %i.akse = load i64, ptr %i.aksd, align 8
  %i.aksf = or i64 %i.akse, %i.akrz
  store i64 %i.aksf, ptr %i.aksd, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split

bb.cmw:                                           ; preds = %.lr.ph5874
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb0ELNS0_11interpreter8BytecodeE108EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.afeu, ptr noundef %.25873, ptr noundef nonnull align 8 dereferenceable(48) %i.os, ptr readonly %.sroa.0.0.copyload.i545, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.afer)
  %i.aksg = load ptr, ptr %i.afeu, align 8        ; 2 uses
  %i.aksh = getelementptr inbounds nuw i8, ptr %i.afeu, i64 8
  %i.aksi = load ptr, ptr %i.aksh, align 8
  %i.aksj = getelementptr inbounds nuw i8, ptr %i.aksi, i64 24
  %i.aksk = load ptr, ptr %i.aksj, align 8        ; 2 uses
  %i.aksl = getelementptr inbounds nuw i8, ptr %i.aksg, i64 32
  %i.aksm = load ptr, ptr %i.aksl, align 8
  %i.aksn = getelementptr inbounds nuw i8, ptr %i.aksg, i64 24
  %i.akso = load ptr, ptr %i.aksn, align 8        ; 3 uses
  %i.aksp = ptrtoint ptr %i.aksm to i64
  %i.aksq = ptrtoint ptr %i.akso to i64
  %i.aksr = sub i64 %i.aksp, %i.aksq              ; 2 uses
  %i.akss = lshr exact i64 %i.aksr, 3
  %i.akst = trunc i64 %i.akss to i32              ; 2 uses
  %i.aksu = icmp slt i32 %i.akst, 1
  br i1 %i.aksu, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE108ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_10ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit, label %bb.cmx

bb.cmx:                                           ; preds = %bb.cmw
  %.not.i.i.i.i3957 = icmp eq i32 %i.akst, 1
  br i1 %.not.i.i.i.i3957, label %bb.cmz, label %bb.cmy, !prof !5

bb.cmy:                                           ; preds = %bb.cmx
  %.idx.i.i.i.i.i3958 = and i64 %i.aksr, 17179869176
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.akso, ptr align 8 %i.aksk, i64 %.idx.i.i.i.i.i3958, i1 false)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE108ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_10ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

bb.cmz:                                           ; preds = %bb.cmx
  %i.aksv = load i64, ptr %i.aksk, align 8
  store i64 %i.aksv, ptr %i.akso, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE108ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_10ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE108ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_10ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit: ; preds = %bb.cmw, %bb.cmy, %bb.cmz
  %i.aksw = load ptr, ptr %i.afeu, align 8
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE108ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_10ELS7_6EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE(ptr noundef %i.aksw, ptr noundef nonnull align 8 dereferenceable(48) %i.os)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split

bb.cna:                                           ; preds = %.lr.ph5874
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb0ELNS0_11interpreter8BytecodeE109EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.afeu, ptr noundef %.25873, ptr noundef nonnull align 8 dereferenceable(48) %i.os, ptr readonly %.sroa.0.0.copyload.i545, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.afer)
  %i.aksx = load ptr, ptr %i.afeu, align 8        ; 2 uses
  %i.aksy = getelementptr inbounds nuw i8, ptr %i.afeu, i64 8
  %i.aksz = load ptr, ptr %i.aksy, align 8
  %i.akta = getelementptr inbounds nuw i8, ptr %i.aksz, i64 24
  %i.aktb = load ptr, ptr %i.akta, align 8        ; 2 uses
  %i.aktc = getelementptr inbounds nuw i8, ptr %i.aksx, i64 32
  %i.aktd = load ptr, ptr %i.aktc, align 8
  %i.akte = getelementptr inbounds nuw i8, ptr %i.aksx, i64 24
  %i.aktf = load ptr, ptr %i.akte, align 8        ; 3 uses
  %i.aktg = ptrtoint ptr %i.aktd to i64
  %i.akth = ptrtoint ptr %i.aktf to i64
  %i.akti = sub i64 %i.aktg, %i.akth              ; 2 uses
  %i.aktj = lshr exact i64 %i.akti, 3
  %i.aktk = trunc i64 %i.aktj to i32              ; 2 uses
  %i.aktl = icmp slt i32 %i.aktk, 1
  br i1 %i.aktl, label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3951, label %bb.cnb

bb.cnb:                                           ; preds = %bb.cna
  %.not.i.i.i.i3949 = icmp eq i32 %i.aktk, 1
  br i1 %.not.i.i.i.i3949, label %bb.cnd, label %bb.cnc, !prof !5

bb.cnc:                                           ; preds = %bb.cnb
  %.idx.i.i.i.i.i3950 = and i64 %i.akti, 17179869176
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aktf, ptr align 8 %i.aktb, i64 %.idx.i.i.i.i.i3950, i1 false)
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3951

bb.cnd:                                           ; preds = %bb.cnb
  %i.aktm = load i64, ptr %i.aktb, align 8
  store i64 %i.aktm, ptr %i.aktf, align 8
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3951

_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3951: ; preds = %bb.cnd, %bb.cnc, %bb.cna
  %i.aktn = load ptr, ptr %i.afeu, align 8
  %i.akto = getelementptr inbounds nuw i8, ptr %i.aktn, i64 24 ; 5 uses
  %i.aktp = load ptr, ptr %i.akto, align 8        ; 2 uses
  %i.aktq = load i64, ptr %i.aktp, align 8
  %i.aktr = and i64 %i.aktq, -2
  store i64 %i.aktr, ptr %i.aktp, align 8
  %i.akts = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 0) #23 ; 2 uses
  %i.aktt = icmp slt i32 %i.akts, 0
  br i1 %i.aktt, label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE109ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3952, label %bb.cne

bb.cne:                                           ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3951
  %i.aktu = add nuw nsw i32 %i.akts, 1            ; 2 uses
  %i.aktv = and i32 %i.aktu, 63
  %i.aktw = zext nneg i32 %i.aktv to i64
  %i.aktx = shl nuw i64 1, %i.aktw
  %i.akty = load ptr, ptr %i.akto, align 8
  %i.aktz = lshr i32 %i.aktu, 6
  %i.akua = zext nneg i32 %i.aktz to i64
  %i.akub = getelementptr inbounds nuw [8 x i8], ptr %i.akty, i64 %i.akua ; 2 uses
  %i.akuc = load i64, ptr %i.akub, align 8
  %i.akud = or i64 %i.akuc, %i.aktx
  store i64 %i.akud, ptr %i.akub, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE109ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3952

_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE109ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3952: ; preds = %bb.cne, %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3951
  %i.akue = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 1) #23 ; 2 uses
  %i.akuf = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator23GetRegisterCountOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 2) #23 ; 5 uses
  %i.akug = icmp sgt i32 %i.akue, -1
  %i.akuh = icmp ne i32 %i.akuf, 0
  %or.cond.i.i.i.i3953 = and i1 %i.akug, %i.akuh
  br i1 %or.cond.i.i.i.i3953, label %.lr.ph.i.i.i.i3954, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split

.lr.ph.i.i.i.i3954:                               ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE109ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i.i.i3952
  %i.akui = add nuw i32 %i.akue, 1                ; 3 uses
  %xtraiter7480 = and i32 %i.akuf, 1
  %i.akuj = icmp eq i32 %i.akuf, 1
  br i1 %i.akuj, label %.epil.preheader7479, label %.lr.ph.i.i.i.i3954.new

.lr.ph.i.i.i.i3954.new:                           ; preds = %.lr.ph.i.i.i.i3954
  %unroll_iter7483 = and i32 %i.akuf, -2
  br label %bb.cnf

bb.cnf:                                           ; preds = %bb.cnf, %.lr.ph.i.i.i.i3954.new
  %.07.i.i.i.i3955 = phi i32 [ 0, %.lr.ph.i.i.i.i3954.new ], [ %i.akvf, %bb.cnf ] ; 3 uses
  %niter7484 = phi i32 [ 0, %.lr.ph.i.i.i.i3954.new ], [ %niter7484.next.1, %bb.cnf ]
  %i.akuk = add i32 %i.akui, %.07.i.i.i.i3955     ; 2 uses
  %i.akul = and i32 %i.akuk, 63
  %i.akum = zext nneg i32 %i.akul to i64
  %i.akun = shl nuw i64 1, %i.akum
  %i.akuo = load ptr, ptr %i.akto, align 8
  %i.akup = lshr i32 %i.akuk, 6
  %i.akuq = zext nneg i32 %i.akup to i64
  %i.akur = getelementptr inbounds nuw [8 x i8], ptr %i.akuo, i64 %i.akuq ; 2 uses
  %i.akus = load i64, ptr %i.akur, align 8
  %i.akut = or i64 %i.akun, %i.akus
  store i64 %i.akut, ptr %i.akur, align 8
  %i.akuu = or disjoint i32 %.07.i.i.i.i3955, 1
  %i.akuv = add i32 %i.akui, %i.akuu              ; 2 uses
  %i.akuw = and i32 %i.akuv, 63
  %i.akux = zext nneg i32 %i.akuw to i64
  %i.akuy = shl nuw i64 1, %i.akux
  %i.akuz = load ptr, ptr %i.akto, align 8
  %i.akva = lshr i32 %i.akuv, 6
  %i.akvb = zext nneg i32 %i.akva to i64
  %i.akvc = getelementptr inbounds nuw [8 x i8], ptr %i.akuz, i64 %i.akvb ; 2 uses
  %i.akvd = load i64, ptr %i.akvc, align 8
  %i.akve = or i64 %i.akuy, %i.akvd
  store i64 %i.akve, ptr %i.akvc, align 8
  %i.akvf = add nuw i32 %.07.i.i.i.i3955, 2       ; 2 uses
  %niter7484.next.1 = add nuw i32 %niter7484, 2   ; 2 uses
  %niter7484.ncmp.1 = icmp eq i32 %niter7484.next.1, %unroll_iter7483
  br i1 %niter7484.ncmp.1, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split.loopexit7345.unr-lcssa, label %bb.cnf, !llvm.loop !21

bb.cng:                                           ; preds = %.lr.ph5874
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb0ELNS0_11interpreter8BytecodeE110EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.afeu, ptr noundef %.25873, ptr noundef nonnull align 8 dereferenceable(48) %i.os, ptr readonly %.sroa.0.0.copyload.i545, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.afer)
  %i.akvg = load ptr, ptr %i.afeu, align 8        ; 2 uses
  %i.akvh = getelementptr inbounds nuw i8, ptr %i.afeu, i64 8
  %i.akvi = load ptr, ptr %i.akvh, align 8
  %i.akvj = getelementptr inbounds nuw i8, ptr %i.akvi, i64 24
  %i.akvk = load ptr, ptr %i.akvj, align 8        ; 2 uses
  %i.akvl = getelementptr inbounds nuw i8, ptr %i.akvg, i64 32
  %i.akvm = load ptr, ptr %i.akvl, align 8
  %i.akvn = getelementptr inbounds nuw i8, ptr %i.akvg, i64 24
  %i.akvo = load ptr, ptr %i.akvn, align 8        ; 3 uses
  %i.akvp = ptrtoint ptr %i.akvm to i64
  %i.akvq = ptrtoint ptr %i.akvo to i64
  %i.akvr = sub i64 %i.akvp, %i.akvq              ; 2 uses
  %i.akvs = lshr exact i64 %i.akvr, 3
  %i.akvt = trunc i64 %i.akvs to i32              ; 2 uses
  %i.akvu = icmp slt i32 %i.akvt, 1
  br i1 %i.akvu, label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3944, label %bb.cnh

bb.cnh:                                           ; preds = %bb.cng
  %.not.i.i.i.i3942 = icmp eq i32 %i.akvt, 1
  br i1 %.not.i.i.i.i3942, label %bb.cnj, label %bb.cni, !prof !5

bb.cni:                                           ; preds = %bb.cnh
  %.idx.i.i.i.i.i3943 = and i64 %i.akvr, 17179869176
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.akvo, ptr align 8 %i.akvk, i64 %.idx.i.i.i.i.i3943, i1 false)
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3944

bb.cnj:                                           ; preds = %bb.cnh
  %i.akvv = load i64, ptr %i.akvk, align 8
  store i64 %i.akvv, ptr %i.akvo, align 8
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3944

_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3944: ; preds = %bb.cnj, %bb.cni, %bb.cng
  %i.akvw = load ptr, ptr %i.afeu, align 8
  %i.akvx = getelementptr inbounds nuw i8, ptr %i.akvw, i64 24 ; 4 uses
  %i.akvy = load ptr, ptr %i.akvx, align 8        ; 2 uses
  %i.akvz = load i64, ptr %i.akvy, align 8
  %i.akwa = and i64 %i.akvz, -2
  store i64 %i.akwa, ptr %i.akvy, align 8
  %i.akwb = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 1) #23 ; 2 uses
  %i.akwc = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator23GetRegisterCountOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 2) #23 ; 5 uses
  %i.akwd = icmp sgt i32 %i.akwb, -1
  %i.akwe = icmp ne i32 %i.akwc, 0
  %or.cond.i.i.i.i3945 = and i1 %i.akwd, %i.akwe
  br i1 %or.cond.i.i.i.i3945, label %.lr.ph.i.i.i.i3946, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split

.lr.ph.i.i.i.i3946:                               ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3944
  %i.akwf = add nuw i32 %i.akwb, 1                ; 3 uses
  %xtraiter7474 = and i32 %i.akwc, 1
  %i.akwg = icmp eq i32 %i.akwc, 1
  br i1 %i.akwg, label %.epil.preheader7473, label %.lr.ph.i.i.i.i3946.new

.lr.ph.i.i.i.i3946.new:                           ; preds = %.lr.ph.i.i.i.i3946
  %unroll_iter7477 = and i32 %i.akwc, -2
  br label %bb.cnk

bb.cnk:                                           ; preds = %bb.cnk, %.lr.ph.i.i.i.i3946.new
  %.07.i.i.i.i3947 = phi i32 [ 0, %.lr.ph.i.i.i.i3946.new ], [ %i.akxc, %bb.cnk ] ; 3 uses
  %niter7478 = phi i32 [ 0, %.lr.ph.i.i.i.i3946.new ], [ %niter7478.next.1, %bb.cnk ]
  %i.akwh = add i32 %i.akwf, %.07.i.i.i.i3947     ; 2 uses
  %i.akwi = and i32 %i.akwh, 63
  %i.akwj = zext nneg i32 %i.akwi to i64
  %i.akwk = shl nuw i64 1, %i.akwj
  %i.akwl = load ptr, ptr %i.akvx, align 8
  %i.akwm = lshr i32 %i.akwh, 6
  %i.akwn = zext nneg i32 %i.akwm to i64
  %i.akwo = getelementptr inbounds nuw [8 x i8], ptr %i.akwl, i64 %i.akwn ; 2 uses
  %i.akwp = load i64, ptr %i.akwo, align 8
  %i.akwq = or i64 %i.akwk, %i.akwp
  store i64 %i.akwq, ptr %i.akwo, align 8
  %i.akwr = or disjoint i32 %.07.i.i.i.i3947, 1
  %i.akws = add i32 %i.akwf, %i.akwr              ; 2 uses
  %i.akwt = and i32 %i.akws, 63
  %i.akwu = zext nneg i32 %i.akwt to i64
  %i.akwv = shl nuw i64 1, %i.akwu
  %i.akww = load ptr, ptr %i.akvx, align 8
  %i.akwx = lshr i32 %i.akws, 6
  %i.akwy = zext nneg i32 %i.akwx to i64
  %i.akwz = getelementptr inbounds nuw [8 x i8], ptr %i.akww, i64 %i.akwy ; 2 uses
  %i.akxa = load i64, ptr %i.akwz, align 8
  %i.akxb = or i64 %i.akwv, %i.akxa
  store i64 %i.akxb, ptr %i.akwz, align 8
  %i.akxc = add nuw i32 %.07.i.i.i.i3947, 2       ; 2 uses
  %niter7478.next.1 = add nuw i32 %niter7478, 2   ; 2 uses
  %niter7478.ncmp.1 = icmp eq i32 %niter7478.next.1, %unroll_iter7477
  br i1 %niter7478.ncmp.1, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split.loopexit7346.unr-lcssa, label %bb.cnk, !llvm.loop !22

bb.cnl:                                           ; preds = %.lr.ph5874
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb0ELNS0_11interpreter8BytecodeE111EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.afeu, ptr noundef %.25873, ptr noundef nonnull align 8 dereferenceable(48) %i.os, ptr readonly %.sroa.0.0.copyload.i545, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.afer)
  %i.akxd = load ptr, ptr %i.afeu, align 8        ; 2 uses
  %i.akxe = getelementptr inbounds nuw i8, ptr %i.afeu, i64 8
  %i.akxf = load ptr, ptr %i.akxe, align 8
  %i.akxg = getelementptr inbounds nuw i8, ptr %i.akxf, i64 24
  %i.akxh = load ptr, ptr %i.akxg, align 8        ; 2 uses
  %i.akxi = getelementptr inbounds nuw i8, ptr %i.akxd, i64 32
  %i.akxj = load ptr, ptr %i.akxi, align 8
  %i.akxk = getelementptr inbounds nuw i8, ptr %i.akxd, i64 24
  %i.akxl = load ptr, ptr %i.akxk, align 8        ; 3 uses
  %i.akxm = ptrtoint ptr %i.akxj to i64
  %i.akxn = ptrtoint ptr %i.akxl to i64
  %i.akxo = sub i64 %i.akxm, %i.akxn              ; 2 uses
  %i.akxp = lshr exact i64 %i.akxo, 3
  %i.akxq = trunc i64 %i.akxp to i32              ; 2 uses
  %i.akxr = icmp slt i32 %i.akxq, 1
  br i1 %i.akxr, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE111ELNS4_19ImplicitRegisterUseE4EJLNS4_11OperandTypeE4ELS7_11ELS7_8ELS7_15EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit, label %bb.cnm

bb.cnm:                                           ; preds = %bb.cnl
  %.not.i.i.i.i3939 = icmp eq i32 %i.akxq, 1
  br i1 %.not.i.i.i.i3939, label %bb.cno, label %bb.cnn, !prof !5

bb.cnn:                                           ; preds = %bb.cnm
  %.idx.i.i.i.i.i3940 = and i64 %i.akxo, 17179869176
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.akxl, ptr align 8 %i.akxh, i64 %.idx.i.i.i.i.i3940, i1 false)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE111ELNS4_19ImplicitRegisterUseE4EJLNS4_11OperandTypeE4ELS7_11ELS7_8ELS7_15EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

bb.cno:                                           ; preds = %bb.cnm
  %i.akxs = load i64, ptr %i.akxh, align 8
  store i64 %i.akxs, ptr %i.akxl, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE111ELNS4_19ImplicitRegisterUseE4EJLNS4_11OperandTypeE4ELS7_11ELS7_8ELS7_15EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE111ELNS4_19ImplicitRegisterUseE4EJLNS4_11OperandTypeE4ELS7_11ELS7_8ELS7_15EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit: ; preds = %bb.cnl, %bb.cnn, %bb.cno
  %i.akxt = load ptr, ptr %i.afeu, align 8
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE111ELNS4_19ImplicitRegisterUseE4EJLNS4_11OperandTypeE4ELS7_11ELS7_8ELS7_15EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE(ptr noundef %i.akxt, ptr noundef nonnull align 8 dereferenceable(48) %i.os)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split

bb.cnp:                                           ; preds = %.lr.ph5874
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb0ELNS0_11interpreter8BytecodeE112EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.afeu, ptr noundef %.25873, ptr noundef nonnull align 8 dereferenceable(48) %i.os, ptr readonly %.sroa.0.0.copyload.i545, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.afer)
  %i.akxu = load ptr, ptr %i.afeu, align 8        ; 2 uses
  %i.akxv = getelementptr inbounds nuw i8, ptr %i.afeu, i64 8
  %i.akxw = load ptr, ptr %i.akxv, align 8
  %i.akxx = getelementptr inbounds nuw i8, ptr %i.akxw, i64 24
  %i.akxy = load ptr, ptr %i.akxx, align 8        ; 2 uses
  %i.akxz = getelementptr inbounds nuw i8, ptr %i.akxu, i64 32
  %i.akya = load ptr, ptr %i.akxz, align 8
  %i.akyb = getelementptr inbounds nuw i8, ptr %i.akxu, i64 24
  %i.akyc = load ptr, ptr %i.akyb, align 8        ; 3 uses
  %i.akyd = ptrtoint ptr %i.akya to i64
  %i.akye = ptrtoint ptr %i.akyc to i64
  %i.akyf = sub i64 %i.akyd, %i.akye              ; 2 uses
  %i.akyg = lshr exact i64 %i.akyf, 3
  %i.akyh = trunc i64 %i.akyg to i32              ; 2 uses
  %i.akyi = icmp slt i32 %i.akyh, 1
  br i1 %i.akyi, label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3934, label %bb.cnq

bb.cnq:                                           ; preds = %bb.cnp
  %.not.i.i.i.i3932 = icmp eq i32 %i.akyh, 1
  br i1 %.not.i.i.i.i3932, label %bb.cns, label %bb.cnr, !prof !5

bb.cnr:                                           ; preds = %bb.cnq
  %.idx.i.i.i.i.i3933 = and i64 %i.akyf, 17179869176
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.akyc, ptr align 8 %i.akxy, i64 %.idx.i.i.i.i.i3933, i1 false)
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3934

bb.cns:                                           ; preds = %bb.cnq
  %i.akyj = load i64, ptr %i.akxy, align 8
  store i64 %i.akyj, ptr %i.akyc, align 8
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3934

_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3934: ; preds = %bb.cns, %bb.cnr, %bb.cnp
  %i.akyk = load ptr, ptr %i.afeu, align 8
  %i.akyl = getelementptr inbounds nuw i8, ptr %i.akyk, i64 24 ; 4 uses
  %i.akym = load ptr, ptr %i.akyl, align 8        ; 2 uses
  %i.akyn = load i64, ptr %i.akym, align 8
  %i.akyo = and i64 %i.akyn, -2
  store i64 %i.akyo, ptr %i.akym, align 8
  %i.akyp = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 1) #23 ; 2 uses
  %i.akyq = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator23GetRegisterCountOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 2) #23 ; 5 uses
  %i.akyr = icmp sgt i32 %i.akyp, -1
  %i.akys = icmp ne i32 %i.akyq, 0
  %or.cond.i.i.i.i3935 = and i1 %i.akyr, %i.akys
  br i1 %or.cond.i.i.i.i3935, label %.lr.ph.i.i.i.i3936, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split

.lr.ph.i.i.i.i3936:                               ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3934
  %i.akyt = add nuw i32 %i.akyp, 1                ; 3 uses
  %xtraiter7468 = and i32 %i.akyq, 1
  %i.akyu = icmp eq i32 %i.akyq, 1
  br i1 %i.akyu, label %.epil.preheader7467, label %.lr.ph.i.i.i.i3936.new

.lr.ph.i.i.i.i3936.new:                           ; preds = %.lr.ph.i.i.i.i3936
  %unroll_iter7471 = and i32 %i.akyq, -2
  br label %bb.cnt

bb.cnt:                                           ; preds = %bb.cnt, %.lr.ph.i.i.i.i3936.new
  %.07.i.i.i.i3937 = phi i32 [ 0, %.lr.ph.i.i.i.i3936.new ], [ %i.akzq, %bb.cnt ] ; 3 uses
  %niter7472 = phi i32 [ 0, %.lr.ph.i.i.i.i3936.new ], [ %niter7472.next.1, %bb.cnt ]
  %i.akyv = add i32 %i.akyt, %.07.i.i.i.i3937     ; 2 uses
  %i.akyw = and i32 %i.akyv, 63
  %i.akyx = zext nneg i32 %i.akyw to i64
  %i.akyy = shl nuw i64 1, %i.akyx
  %i.akyz = load ptr, ptr %i.akyl, align 8
  %i.akza = lshr i32 %i.akyv, 6
  %i.akzb = zext nneg i32 %i.akza to i64
  %i.akzc = getelementptr inbounds nuw [8 x i8], ptr %i.akyz, i64 %i.akzb ; 2 uses
  %i.akzd = load i64, ptr %i.akzc, align 8
  %i.akze = or i64 %i.akyy, %i.akzd
  store i64 %i.akze, ptr %i.akzc, align 8
  %i.akzf = or disjoint i32 %.07.i.i.i.i3937, 1
  %i.akzg = add i32 %i.akyt, %i.akzf              ; 2 uses
  %i.akzh = and i32 %i.akzg, 63
  %i.akzi = zext nneg i32 %i.akzh to i64
  %i.akzj = shl nuw i64 1, %i.akzi
  %i.akzk = load ptr, ptr %i.akyl, align 8
  %i.akzl = lshr i32 %i.akzg, 6
  %i.akzm = zext nneg i32 %i.akzl to i64
  %i.akzn = getelementptr inbounds nuw [8 x i8], ptr %i.akzk, i64 %i.akzm ; 2 uses
  %i.akzo = load i64, ptr %i.akzn, align 8
  %i.akzp = or i64 %i.akzj, %i.akzo
  store i64 %i.akzp, ptr %i.akzn, align 8
  %i.akzq = add nuw i32 %.07.i.i.i.i3937, 2       ; 2 uses
  %niter7472.next.1 = add nuw i32 %niter7472, 2   ; 2 uses
  %niter7472.ncmp.1 = icmp eq i32 %niter7472.next.1, %unroll_iter7471
  br i1 %niter7472.ncmp.1, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split.loopexit7347.unr-lcssa, label %bb.cnt, !llvm.loop !23

bb.cnu:                                           ; preds = %.lr.ph5874
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb0ELNS0_11interpreter8BytecodeE113EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.afeu, ptr noundef %.25873, ptr noundef nonnull align 8 dereferenceable(48) %i.os, ptr readonly %.sroa.0.0.copyload.i545, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.afer)
  %i.akzr = load ptr, ptr %i.afeu, align 8        ; 2 uses
  %i.akzs = getelementptr inbounds nuw i8, ptr %i.afeu, i64 8
  %i.akzt = load ptr, ptr %i.akzs, align 8
  %i.akzu = getelementptr inbounds nuw i8, ptr %i.akzt, i64 24
  %i.akzv = load ptr, ptr %i.akzu, align 8        ; 2 uses
  %i.akzw = getelementptr inbounds nuw i8, ptr %i.akzr, i64 32
  %i.akzx = load ptr, ptr %i.akzw, align 8
  %i.akzy = getelementptr inbounds nuw i8, ptr %i.akzr, i64 24
  %i.akzz = load ptr, ptr %i.akzy, align 8        ; 3 uses
  %i.alaa = ptrtoint ptr %i.akzx to i64
  %i.alab = ptrtoint ptr %i.akzz to i64
  %i.alac = sub i64 %i.alaa, %i.alab              ; 2 uses
  %i.alad = lshr exact i64 %i.alac, 3
  %i.alae = trunc i64 %i.alad to i32              ; 2 uses
  %i.alaf = icmp slt i32 %i.alae, 1
  br i1 %i.alaf, label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3927, label %bb.cnv

bb.cnv:                                           ; preds = %bb.cnu
  %.not.i.i.i.i3925 = icmp eq i32 %i.alae, 1
  br i1 %.not.i.i.i.i3925, label %bb.cnx, label %bb.cnw, !prof !5

bb.cnw:                                           ; preds = %bb.cnv
  %.idx.i.i.i.i.i3926 = and i64 %i.alac, 17179869176
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.akzz, ptr align 8 %i.akzv, i64 %.idx.i.i.i.i.i3926, i1 false)
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3927

bb.cnx:                                           ; preds = %bb.cnv
  %i.alag = load i64, ptr %i.akzv, align 8
  store i64 %i.alag, ptr %i.akzz, align 8
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3927

_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3927: ; preds = %bb.cnx, %bb.cnw, %bb.cnu
  %i.alah = load ptr, ptr %i.afeu, align 8
  %i.alai = getelementptr inbounds nuw i8, ptr %i.alah, i64 24 ; 4 uses
  %i.alaj = load ptr, ptr %i.alai, align 8        ; 2 uses
  %i.alak = load i64, ptr %i.alaj, align 8
  %i.alal = and i64 %i.alak, -2
  store i64 %i.alal, ptr %i.alaj, align 8
  %i.alam = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 1) #23 ; 2 uses
  %i.alan = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator23GetRegisterCountOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 2) #23 ; 5 uses
  %i.alao = icmp sgt i32 %i.alam, -1
  %i.alap = icmp ne i32 %i.alan, 0
  %or.cond.i.i.i.i3928 = and i1 %i.alao, %i.alap
  br i1 %or.cond.i.i.i.i3928, label %.lr.ph.i.i.i.i3929, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split

.lr.ph.i.i.i.i3929:                               ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3927
  %i.alaq = add nuw i32 %i.alam, 1                ; 3 uses
  %xtraiter7462 = and i32 %i.alan, 1
  %i.alar = icmp eq i32 %i.alan, 1
  br i1 %i.alar, label %.epil.preheader7461, label %.lr.ph.i.i.i.i3929.new

.lr.ph.i.i.i.i3929.new:                           ; preds = %.lr.ph.i.i.i.i3929
  %unroll_iter7465 = and i32 %i.alan, -2
  br label %bb.cny

bb.cny:                                           ; preds = %bb.cny, %.lr.ph.i.i.i.i3929.new
  %.07.i.i.i.i3930 = phi i32 [ 0, %.lr.ph.i.i.i.i3929.new ], [ %i.albn, %bb.cny ] ; 3 uses
  %niter7466 = phi i32 [ 0, %.lr.ph.i.i.i.i3929.new ], [ %niter7466.next.1, %bb.cny ]
  %i.alas = add i32 %i.alaq, %.07.i.i.i.i3930     ; 2 uses
  %i.alat = and i32 %i.alas, 63
  %i.alau = zext nneg i32 %i.alat to i64
  %i.alav = shl nuw i64 1, %i.alau
  %i.alaw = load ptr, ptr %i.alai, align 8
  %i.alax = lshr i32 %i.alas, 6
  %i.alay = zext nneg i32 %i.alax to i64
  %i.alaz = getelementptr inbounds nuw [8 x i8], ptr %i.alaw, i64 %i.alay ; 2 uses
  %i.alba = load i64, ptr %i.alaz, align 8
  %i.albb = or i64 %i.alav, %i.alba
  store i64 %i.albb, ptr %i.alaz, align 8
  %i.albc = or disjoint i32 %.07.i.i.i.i3930, 1
  %i.albd = add i32 %i.alaq, %i.albc              ; 2 uses
  %i.albe = and i32 %i.albd, 63
  %i.albf = zext nneg i32 %i.albe to i64
  %i.albg = shl nuw i64 1, %i.albf
  %i.albh = load ptr, ptr %i.alai, align 8
  %i.albi = lshr i32 %i.albd, 6
  %i.albj = zext nneg i32 %i.albi to i64
  %i.albk = getelementptr inbounds nuw [8 x i8], ptr %i.albh, i64 %i.albj ; 2 uses
  %i.albl = load i64, ptr %i.albk, align 8
  %i.albm = or i64 %i.albg, %i.albl
  store i64 %i.albm, ptr %i.albk, align 8
  %i.albn = add nuw i32 %.07.i.i.i.i3930, 2       ; 2 uses
  %niter7466.next.1 = add nuw i32 %niter7466, 2   ; 2 uses
  %niter7466.ncmp.1 = icmp eq i32 %niter7466.next.1, %unroll_iter7465
  br i1 %niter7466.ncmp.1, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split.loopexit7348.unr-lcssa, label %bb.cny, !llvm.loop !24

bb.cnz:                                           ; preds = %.lr.ph5874
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb0ELNS0_11interpreter8BytecodeE114EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.afeu, ptr noundef %.25873, ptr noundef nonnull align 8 dereferenceable(48) %i.os, ptr readonly %.sroa.0.0.copyload.i545, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.afer)
  %i.albo = load ptr, ptr %i.afeu, align 8        ; 2 uses
  %i.albp = getelementptr inbounds nuw i8, ptr %i.afeu, i64 8
  %i.albq = load ptr, ptr %i.albp, align 8
  %i.albr = getelementptr inbounds nuw i8, ptr %i.albq, i64 24
  %i.albs = load ptr, ptr %i.albr, align 8        ; 2 uses
  %i.albt = getelementptr inbounds nuw i8, ptr %i.albo, i64 32
  %i.albu = load ptr, ptr %i.albt, align 8
  %i.albv = getelementptr inbounds nuw i8, ptr %i.albo, i64 24
  %i.albw = load ptr, ptr %i.albv, align 8        ; 3 uses
  %i.albx = ptrtoint ptr %i.albu to i64
  %i.alby = ptrtoint ptr %i.albw to i64
  %i.albz = sub i64 %i.albx, %i.alby              ; 2 uses
  %i.alca = lshr exact i64 %i.albz, 3
  %i.alcb = trunc i64 %i.alca to i32              ; 2 uses
  %i.alcc = icmp slt i32 %i.alcb, 1
  br i1 %i.alcc, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE114ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit, label %bb.coa

bb.coa:                                           ; preds = %bb.cnz
  %.not.i.i.i.i3922 = icmp eq i32 %i.alcb, 1
  br i1 %.not.i.i.i.i3922, label %bb.coc, label %bb.cob, !prof !5

bb.cob:                                           ; preds = %bb.coa
  %.idx.i.i.i.i.i3923 = and i64 %i.albz, 17179869176
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.albw, ptr align 8 %i.albs, i64 %.idx.i.i.i.i.i3923, i1 false)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE114ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

bb.coc:                                           ; preds = %bb.coa
  %i.alcd = load i64, ptr %i.albs, align 8
  store i64 %i.alcd, ptr %i.albw, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE114ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE114ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit: ; preds = %bb.cnz, %bb.cob, %bb.coc
  %i.alce = load ptr, ptr %i.afeu, align 8
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE114ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE(ptr noundef %i.alce, ptr noundef nonnull align 8 dereferenceable(48) %i.os)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split

bb.cod:                                           ; preds = %.lr.ph5874
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb0ELNS0_11interpreter8BytecodeE115EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.afeu, ptr noundef %.25873, ptr noundef nonnull align 8 dereferenceable(48) %i.os, ptr readonly %.sroa.0.0.copyload.i545, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.afer)
  %i.alcf = load ptr, ptr %i.afeu, align 8        ; 2 uses
  %i.alcg = getelementptr inbounds nuw i8, ptr %i.afeu, i64 8
  %i.alch = load ptr, ptr %i.alcg, align 8
  %i.alci = getelementptr inbounds nuw i8, ptr %i.alch, i64 24
  %i.alcj = load ptr, ptr %i.alci, align 8        ; 2 uses
  %i.alck = getelementptr inbounds nuw i8, ptr %i.alcf, i64 32
  %i.alcl = load ptr, ptr %i.alck, align 8
  %i.alcm = getelementptr inbounds nuw i8, ptr %i.alcf, i64 24
  %i.alcn = load ptr, ptr %i.alcm, align 8        ; 3 uses
  %i.alco = ptrtoint ptr %i.alcl to i64
  %i.alcp = ptrtoint ptr %i.alcn to i64
  %i.alcq = sub i64 %i.alco, %i.alcp              ; 2 uses
  %i.alcr = lshr exact i64 %i.alcq, 3
  %i.alcs = trunc i64 %i.alcr to i32              ; 2 uses
  %i.alct = icmp slt i32 %i.alcs, 1
  br i1 %i.alct, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE115ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit, label %bb.coe

bb.coe:                                           ; preds = %bb.cod
  %.not.i.i.i.i3919 = icmp eq i32 %i.alcs, 1
  br i1 %.not.i.i.i.i3919, label %bb.cog, label %bb.cof, !prof !5

bb.cof:                                           ; preds = %bb.coe
  %.idx.i.i.i.i.i3920 = and i64 %i.alcq, 17179869176
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.alcn, ptr align 8 %i.alcj, i64 %.idx.i.i.i.i.i3920, i1 false)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE115ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

bb.cog:                                           ; preds = %bb.coe
  %i.alcu = load i64, ptr %i.alcj, align 8
  store i64 %i.alcu, ptr %i.alcn, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE115ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit

_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0ELNS0_11interpreter8BytecodeE115ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvRNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit: ; preds = %bb.cod, %bb.cof, %bb.cog
  %i.alcv = load ptr, ptr %i.afeu, align 8
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE115ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE(ptr noundef %i.alcv, ptr noundef nonnull align 8 dereferenceable(48) %i.os)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split

bb.coh:                                           ; preds = %.lr.ph5874
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb0ELNS0_11interpreter8BytecodeE116EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.afeu, ptr noundef %.25873, ptr noundef nonnull align 8 dereferenceable(48) %i.os, ptr readonly %.sroa.0.0.copyload.i545, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.afer)
  %i.alcw = load ptr, ptr %i.afeu, align 8        ; 2 uses
  %i.alcx = getelementptr inbounds nuw i8, ptr %i.afeu, i64 8
  %i.alcy = load ptr, ptr %i.alcx, align 8
  %i.alcz = getelementptr inbounds nuw i8, ptr %i.alcy, i64 24
  %i.alda = load ptr, ptr %i.alcz, align 8        ; 2 uses
  %i.aldb = getelementptr inbounds nuw i8, ptr %i.alcw, i64 32
  %i.aldc = load ptr, ptr %i.aldb, align 8
  %i.aldd = getelementptr inbounds nuw i8, ptr %i.alcw, i64 24
  %i.alde = load ptr, ptr %i.aldd, align 8        ; 3 uses
  %i.aldf = ptrtoint ptr %i.aldc to i64
  %i.aldg = ptrtoint ptr %i.alde to i64
  %i.aldh = sub i64 %i.aldf, %i.aldg              ; 2 uses
  %i.aldi = lshr exact i64 %i.aldh, 3
  %i.aldj = trunc i64 %i.aldi to i32              ; 2 uses
  %i.aldk = icmp slt i32 %i.aldj, 1
  br i1 %i.aldk, label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3918, label %bb.coi

bb.coi:                                           ; preds = %bb.coh
  %.not.i.i.i.i3916 = icmp eq i32 %i.aldj, 1
  br i1 %.not.i.i.i.i3916, label %bb.cok, label %bb.coj, !prof !5

bb.coj:                                           ; preds = %bb.coi
  %.idx.i.i.i.i.i3917 = and i64 %i.aldh, 17179869176
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.alde, ptr align 8 %i.alda, i64 %.idx.i.i.i.i.i3917, i1 false)
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3918

bb.cok:                                           ; preds = %bb.coi
  %i.aldl = load i64, ptr %i.alda, align 8
  store i64 %i.aldl, ptr %i.alde, align 8
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3918

_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3918: ; preds = %bb.cok, %bb.coj, %bb.coh
  %i.aldm = load ptr, ptr %i.afeu, align 8
  %i.aldn = getelementptr inbounds nuw i8, ptr %i.aldm, i64 24 ; 3 uses
  %i.aldo = load ptr, ptr %i.aldn, align 8        ; 2 uses
  %i.aldp = load i64, ptr %i.aldo, align 8
  %i.aldq = and i64 %i.aldp, -2
  store i64 %i.aldq, ptr %i.aldo, align 8
  %i.aldr = load ptr, ptr %i.aldn, align 8        ; 2 uses
  %i.alds = load i64, ptr %i.aldr, align 8
  %i.aldt = or i64 %i.alds, 1
  store i64 %i.aldt, ptr %i.aldr, align 8
  %i.aldu = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 0) #23 ; 2 uses
  %i.aldv = icmp slt i32 %i.aldu, 0
  br i1 %i.aldv, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split, label %bb.col

bb.col:                                           ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3918
  %i.aldw = add nuw nsw i32 %i.aldu, 1            ; 2 uses
  %i.aldx = and i32 %i.aldw, 63
  %i.aldy = zext nneg i32 %i.aldx to i64
  %i.aldz = shl nuw i64 1, %i.aldy
  %i.alea = load ptr, ptr %i.aldn, align 8
  %i.aleb = lshr i32 %i.aldw, 6
  %i.alec = zext nneg i32 %i.aleb to i64
  %i.aled = getelementptr inbounds nuw [8 x i8], ptr %i.alea, i64 %i.alec ; 2 uses
  %i.alee = load i64, ptr %i.aled, align 8
  %i.alef = or i64 %i.alee, %i.aldz
  store i64 %i.alef, ptr %i.aled, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split

bb.com:                                           ; preds = %.lr.ph5874
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb0ELNS0_11interpreter8BytecodeE117EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.afeu, ptr noundef %.25873, ptr noundef nonnull align 8 dereferenceable(48) %i.os, ptr readonly %.sroa.0.0.copyload.i545, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.afer)
  %i.aleg = load ptr, ptr %i.afeu, align 8        ; 2 uses
  %i.aleh = getelementptr inbounds nuw i8, ptr %i.afeu, i64 8
  %i.alei = load ptr, ptr %i.aleh, align 8
  %i.alej = getelementptr inbounds nuw i8, ptr %i.alei, i64 24
  %i.alek = load ptr, ptr %i.alej, align 8        ; 2 uses
  %i.alel = getelementptr inbounds nuw i8, ptr %i.aleg, i64 32
  %i.alem = load ptr, ptr %i.alel, align 8
  %i.alen = getelementptr inbounds nuw i8, ptr %i.aleg, i64 24
  %i.aleo = load ptr, ptr %i.alen, align 8        ; 3 uses
  %i.alep = ptrtoint ptr %i.alem to i64
  %i.aleq = ptrtoint ptr %i.aleo to i64
  %i.aler = sub i64 %i.alep, %i.aleq              ; 2 uses
  %i.ales = lshr exact i64 %i.aler, 3
  %i.alet = trunc i64 %i.ales to i32              ; 2 uses
  %i.aleu = icmp slt i32 %i.alet, 1
  br i1 %i.aleu, label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3915, label %bb.con

bb.con:                                           ; preds = %bb.com
  %.not.i.i.i.i3913 = icmp eq i32 %i.alet, 1
  br i1 %.not.i.i.i.i3913, label %bb.cop, label %bb.coo, !prof !5

bb.coo:                                           ; preds = %bb.con
  %.idx.i.i.i.i.i3914 = and i64 %i.aler, 17179869176
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aleo, ptr align 8 %i.alek, i64 %.idx.i.i.i.i.i3914, i1 false)
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3915

bb.cop:                                           ; preds = %bb.con
  %i.alev = load i64, ptr %i.alek, align 8
  store i64 %i.alev, ptr %i.aleo, align 8
  br label %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3915

_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3915: ; preds = %bb.cop, %bb.coo, %bb.com
  %i.alew = load ptr, ptr %i.afeu, align 8
  %i.alex = getelementptr inbounds nuw i8, ptr %i.alew, i64 24 ; 3 uses
  %i.aley = load ptr, ptr %i.alex, align 8        ; 2 uses
  %i.alez = load i64, ptr %i.aley, align 8
  %i.alfa = and i64 %i.alez, -2
  store i64 %i.alfa, ptr %i.aley, align 8
  %i.alfb = load ptr, ptr %i.alex, align 8        ; 2 uses
  %i.alfc = load i64, ptr %i.alfb, align 8
  %i.alfd = or i64 %i.alfc, 1
  store i64 %i.alfd, ptr %i.alfb, align 8
  %i.alfe = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i32 noundef 0) #23 ; 2 uses
  %i.alff = icmp slt i32 %i.alfe, 0
  br i1 %i.alff, label %_ZN2v88internal8compiler12_GLOBAL__N_114UpdateLivenessILb0EEEvNS0_11interpreter8BytecodeERNS1_16BytecodeLivenessEPPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE.exit.sink.split, label %bb.coq

bb.coq:                                           ; preds = %_ZN2v88internal8compiler21BytecodeLivenessState8CopyFromERKS2_.exit.i3915
  %i.alfg = add nuw nsw i32 %i.alfe, 1            ; 2 uses
  %i.alfh = and i32 %i.alfg, 63
  %i.alfi = zext nneg i32 %i.alfh to i64
  %i.alfj = shl nuw i64 1, %i.alfi
  %i.alfk = load ptr, ptr %i.alex, align 8
  %i.alfl = lshr i32 %i.alfg, 6
  %i.alfm = zext nneg i32 %i.alfl to i64
  %i.alfn = getelementptr inbounds nuw [8 x i8], ptr %i.alfk, i64 %i.alfm ; 2 uses
  %i.alfo = load i64, ptr %i.alfn, align 8
  %i.alfp = or i64 %i.alfo, %i.alfj
end_hunk_6
begin_hunk_7_@_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE104ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_10ELS7_10ELS7_6EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE:bb.a
  %i.w = load ptr, ptr %i.a, align 8
  %i.x = lshr i32 %i.s, 6
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = or i64 %i.aa, %i.v
  store i64 %i.ab, ptr %i.z, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE104ELNS4_11OperandTypeE10ELm1EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i

_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE104ELNS4_11OperandTypeE10ELm1EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i: ; preds = %bb.c, %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE104ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i
  %i.ac = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 2) #23 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE104ELNS4_11OperandTypeE10ELm2EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE104ELNS4_11OperandTypeE10ELm1EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i
  %i.ae = add nuw nsw i32 %i.ac, 1                ; 2 uses
  %i.af = and i32 %i.ae, 63
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = lshr i32 %i.ae, 6
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8
  %i.an = or i64 %i.am, %i.ah
  store i64 %i.an, ptr %i.al, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE104ELNS4_11OperandTypeE10ELm2EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i

_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE104ELNS4_11OperandTypeE10ELm2EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i: ; preds = %bb.d, %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE104ELNS4_11OperandTypeE10ELm1EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i
  %i.ao = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 3) #23 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE104ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_10ELS7_10ELS7_6EEJLm0ELm1ELm2ELm3ELm4EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE104ELNS4_11OperandTypeE10ELm2EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i
  %i.aq = add nuw nsw i32 %i.ao, 1                ; 2 uses
  %i.ar = and i32 %i.aq, 63
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw i64 1, %i.as
  %i.au = load ptr, ptr %i.a, align 8
  %i.av = lshr i32 %i.aq, 6
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.aw ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = or i64 %i.ay, %i.at
  store i64 %i.az, ptr %i.ax, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE104ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_10ELS7_10ELS7_6EEJLm0ELm1ELm2ELm3ELm4EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit

_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE104ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_10ELS7_10ELS7_6EEJLm0ELm1ELm2ELm3ELm4EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE104ELNS4_11OperandTypeE10ELm2EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE108ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_10ELS7_6EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, -2
  store i64 %i.d, ptr %i.b, align 8
  %i.e = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 0) #23 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE108ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.e, 1                  ; 2 uses
  %i.h = and i32 %i.g, 63
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw i64 1, %i.i
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = lshr i32 %i.g, 6
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.m ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = or i64 %i.o, %i.j
  store i64 %i.p, ptr %i.n, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE108ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i

_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE108ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i: ; preds = %bb.b, %bb.a
  %i.q = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 1) #23 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE108ELNS4_11OperandTypeE10ELm1EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE108ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i
  %i.s = add nuw nsw i32 %i.q, 1                  ; 2 uses
  %i.t = and i32 %i.s, 63
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw i64 1, %i.u
  %i.w = load ptr, ptr %i.a, align 8
  %i.x = lshr i32 %i.s, 6
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = or i64 %i.aa, %i.v
  store i64 %i.ab, ptr %i.z, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE108ELNS4_11OperandTypeE10ELm1EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i

_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE108ELNS4_11OperandTypeE10ELm1EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i: ; preds = %bb.c, %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE108ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i
  %i.ac = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 2) #23 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE108ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_10ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE108ELNS4_11OperandTypeE10ELm1EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i
  %i.ae = add nuw nsw i32 %i.ac, 1                ; 2 uses
  %i.af = and i32 %i.ae, 63
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = lshr i32 %i.ae, 6
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8
  %i.an = or i64 %i.am, %i.ah
  store i64 %i.an, ptr %i.al, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE108ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_10ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit

_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE108ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_10ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE108ELNS4_11OperandTypeE10ELm1EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE111ELNS4_19ImplicitRegisterUseE4EJLNS4_11OperandTypeE4ELS7_11ELS7_8ELS7_15EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 3) #23 ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZN2v88internal8compiler12_GLOBAL__N_129UpdateInLivenessForOutOperandILNS0_11interpreter8BytecodeE111ELNS4_11OperandTypeE15ELm3EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw nsw i32 %i.a, 1                  ; 2 uses
  %i.d = and i32 %i.c, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = xor i64 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = lshr i32 %i.c, 6
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = and i64 %i.m, %i.g
  store i64 %i.n, ptr %i.l, align 8
  %i.o = add nuw nsw i32 %i.a, 2                  ; 2 uses
  %i.p = and i32 %i.o, 63
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw i64 1, %i.q
  %i.s = xor i64 %i.r, -1
  %i.t = load ptr, ptr %i.h, align 8
  %i.u = lshr i32 %i.o, 6
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = and i64 %i.x, %i.s
  store i64 %i.y, ptr %i.w, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_129UpdateInLivenessForOutOperandILNS0_11interpreter8BytecodeE111ELNS4_11OperandTypeE15ELm3EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i

_ZN2v88internal8compiler12_GLOBAL__N_129UpdateInLivenessForOutOperandILNS0_11interpreter8BytecodeE111ELNS4_11OperandTypeE15ELm3EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i: ; preds = %bb.b, %bb.a
  %i.z = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 1) #23 ; 2 uses
  %i.aa = tail call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator23GetRegisterCountOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 2) #23 ; 5 uses
  %i.ab = icmp sgt i32 %i.z, -1
  %i.ac = icmp ne i32 %i.aa, 0
  %or.cond.i.i = and i1 %i.ab, %i.ac
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE111ELNS4_19ImplicitRegisterUseE4EJLNS4_11OperandTypeE4ELS7_11ELS7_8ELS7_15EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_129UpdateInLivenessForOutOperandILNS0_11interpreter8BytecodeE111ELNS4_11OperandTypeE15ELm3EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i
  %i.ad = add nuw i32 %i.z, 1                     ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %xtraiter = and i32 %i.aa, 1
  %i.af = icmp eq i32 %i.aa, 1
  br i1 %i.af, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i32 %i.aa, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.new
  %.07.i.i = phi i32 [ 0, %.lr.ph.i.i.new ], [ %i.bb, %bb.c ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.c ]
  %i.ag = add i32 %i.ad, %.07.i.i                 ; 2 uses
  %i.ah = and i32 %i.ag, 63
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = load ptr, ptr %i.ae, align 8
  %i.al = lshr i32 %i.ag, 6
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.am ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = or i64 %i.aj, %i.ao
  store i64 %i.ap, ptr %i.an, align 8
  %i.aq = or disjoint i32 %.07.i.i, 1
  %i.ar = add i32 %i.ad, %i.aq                    ; 2 uses
  %i.as = and i32 %i.ar, 63
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl nuw i64 1, %i.at
  %i.av = load ptr, ptr %i.ae, align 8
  %i.aw = lshr i32 %i.ar, 6
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ax ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = or i64 %i.au, %i.az
  store i64 %i.ba, ptr %i.ay, align 8
  %i.bb = add nuw i32 %.07.i.i, 2                 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE111ELNS4_19ImplicitRegisterUseE4EJLNS4_11OperandTypeE4ELS7_11ELS7_8ELS7_15EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !65

_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE111ELNS4_19ImplicitRegisterUseE4EJLNS4_11OperandTypeE4ELS7_11ELS7_8ELS7_15EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE111ELNS4_19ImplicitRegisterUseE4EJLNS4_11OperandTypeE4ELS7_11ELS7_8ELS7_15EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE111ELNS4_19ImplicitRegisterUseE4EJLNS4_11OperandTypeE4ELS7_11ELS7_8ELS7_15EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.07.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i ], [ %i.bb, %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE111ELNS4_19ImplicitRegisterUseE4EJLNS4_11OperandTypeE4ELS7_11ELS7_8ELS7_15EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i32 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.bc = add i32 %i.ad, %.07.i.i.epil.init       ; 2 uses
  %i.bd = and i32 %i.bc, 63
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = shl nuw i64 1, %i.be
  %i.bg = load ptr, ptr %i.ae, align 8
  %i.bh = lshr i32 %i.bc, 6
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bi ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = or i64 %i.bf, %i.bk
  store i64 %i.bl, ptr %i.bj, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE111ELNS4_19ImplicitRegisterUseE4EJLNS4_11OperandTypeE4ELS7_11ELS7_8ELS7_15EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit

_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE111ELNS4_19ImplicitRegisterUseE4EJLNS4_11OperandTypeE4ELS7_11ELS7_8ELS7_15EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit: ; preds = %.epil.preheader, %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE111ELNS4_19ImplicitRegisterUseE4EJLNS4_11OperandTypeE4ELS7_11ELS7_8ELS7_15EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit.loopexit.unr-lcssa, %_ZN2v88internal8compiler12_GLOBAL__N_129UpdateInLivenessForOutOperandILNS0_11interpreter8BytecodeE111ELNS4_11OperandTypeE15ELm3EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE114ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, -2
  store i64 %i.d, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = or i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8
  %i.h = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 0) #23 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE114ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw nsw i32 %i.h, 1                  ; 2 uses
  %i.k = and i32 %i.j, 63
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw i64 1, %i.l
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = lshr i32 %i.j, 6
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = or i64 %i.r, %i.m
  store i64 %i.s, ptr %i.q, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE114ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i

_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE114ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i: ; preds = %bb.b, %bb.a
  %i.t = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 1) #23 ; 2 uses
  %i.u = tail call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator23GetRegisterCountOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 2) #23 ; 5 uses
  %i.v = icmp sgt i32 %i.t, -1
  %i.w = icmp ne i32 %i.u, 0
  %or.cond.i.i = and i1 %i.v, %i.w
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE114ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE114ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i
  %i.x = add nuw i32 %i.t, 1                      ; 3 uses
  %xtraiter = and i32 %i.u, 1
  %i.y = icmp eq i32 %i.u, 1
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i32 %i.u, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.new
  %.07.i.i = phi i32 [ 0, %.lr.ph.i.i.new ], [ %i.au, %bb.c ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.c ]
  %i.z = add i32 %i.x, %.07.i.i                   ; 2 uses
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = lshr i32 %i.z, 6
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.af ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = or i64 %i.ac, %i.ah
  store i64 %i.ai, ptr %i.ag, align 8
  %i.aj = or disjoint i32 %.07.i.i, 1
  %i.ak = add i32 %i.x, %i.aj                     ; 2 uses
  %i.al = and i32 %i.ak, 63
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl nuw i64 1, %i.am
  %i.ao = load ptr, ptr %i.a, align 8
  %i.ap = lshr i32 %i.ak, 6
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = or i64 %i.an, %i.as
  store i64 %i.at, ptr %i.ar, align 8
  %i.au = add nuw i32 %.07.i.i, 2                 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE114ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !66

_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE114ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE114ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE114ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.07.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i ], [ %i.au, %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE114ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i32 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.av = add i32 %i.x, %.07.i.i.epil.init        ; 2 uses
  %i.aw = and i32 %i.av, 63
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = load ptr, ptr %i.a, align 8
  %i.ba = lshr i32 %i.av, 6
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bb ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = or i64 %i.ay, %i.bd
  store i64 %i.be, ptr %i.bc, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE114ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit

_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE114ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit: ; preds = %.epil.preheader, %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE114ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit.loopexit.unr-lcssa, %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE114ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE115ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, -2
  store i64 %i.d, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = or i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8
  %i.h = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 0) #23 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE115ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw nsw i32 %i.h, 1                  ; 2 uses
  %i.k = and i32 %i.j, 63
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw i64 1, %i.l
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = lshr i32 %i.j, 6
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = or i64 %i.r, %i.m
  store i64 %i.s, ptr %i.q, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE115ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i

_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE115ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i: ; preds = %bb.b, %bb.a
  %i.t = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 1) #23 ; 2 uses
  %i.u = tail call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator23GetRegisterCountOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 2) #23 ; 5 uses
  %i.v = icmp sgt i32 %i.t, -1
  %i.w = icmp ne i32 %i.u, 0
  %or.cond.i.i = and i1 %i.v, %i.w
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE115ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE115ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i
  %i.x = add nuw i32 %i.t, 1                      ; 3 uses
  %xtraiter = and i32 %i.u, 1
  %i.y = icmp eq i32 %i.u, 1
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i32 %i.u, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.new
  %.07.i.i = phi i32 [ 0, %.lr.ph.i.i.new ], [ %i.au, %bb.c ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.c ]
  %i.z = add i32 %i.x, %.07.i.i                   ; 2 uses
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = lshr i32 %i.z, 6
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.af ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = or i64 %i.ac, %i.ah
  store i64 %i.ai, ptr %i.ag, align 8
  %i.aj = or disjoint i32 %.07.i.i, 1
  %i.ak = add i32 %i.x, %i.aj                     ; 2 uses
  %i.al = and i32 %i.ak, 63
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl nuw i64 1, %i.am
  %i.ao = load ptr, ptr %i.a, align 8
  %i.ap = lshr i32 %i.ak, 6
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = or i64 %i.an, %i.as
  store i64 %i.at, ptr %i.ar, align 8
  %i.au = add nuw i32 %.07.i.i, 2                 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE115ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !67

_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE115ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE115ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE115ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.07.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i ], [ %i.au, %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE115ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i32 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.av = add i32 %i.x, %.07.i.i.epil.init        ; 2 uses
  %i.aw = and i32 %i.av, 63
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = load ptr, ptr %i.a, align 8
  %i.ba = lshr i32 %i.av, 6
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bb ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = or i64 %i.ay, %i.bd
  store i64 %i.be, ptr %i.bc, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE115ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit

_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE115ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit: ; preds = %.epil.preheader, %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE115ELNS4_19ImplicitRegisterUseE3EJLNS4_11OperandTypeE10ELS7_11ELS7_8ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit.loopexit.unr-lcssa, %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE115ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i
  ret void
}

declare void @_ZNK2v88internal11interpreter21BytecodeArrayIterator25GetJumpTableTargetOffsetsEv(ptr dead_on_unwind writable sret(%"class.v8::internal::interpreter::JumpTableTargetOffsets") align 8, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #9

declare void @_ZNK2v88internal11interpreter22JumpTableTargetOffsets5beginEv(ptr dead_on_unwind writable sret(%"class.v8::internal::interpreter::JumpTableTargetOffsets::iterator") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

declare void @_ZNK2v88internal11interpreter22JumpTableTargetOffsets3endEv(ptr dead_on_unwind writable sret(%"class.v8::internal::interpreter::JumpTableTargetOffsets::iterator") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN2v88internal11interpreter22JumpTableTargetOffsets8iteratorneERKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

declare i64 @_ZN2v88internal11interpreter22JumpTableTargetOffsets8iteratordeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal11interpreter22JumpTableTargetOffsets8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE177ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_12ELS7_6EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, -2
  store i64 %i.d, ptr %i.b, align 8
  %i.e = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 0) #23 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE177ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.e, 1                  ; 2 uses
  %i.h = and i32 %i.g, 63
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw i64 1, %i.i
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = lshr i32 %i.g, 6
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.m ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = or i64 %i.o, %i.j
  store i64 %i.p, ptr %i.n, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE177ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i

_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE177ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i: ; preds = %bb.b, %bb.a
  %i.q = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 1) #23 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE177ELNS4_11OperandTypeE10ELm1EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE177ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i
  %i.s = add nuw nsw i32 %i.q, 1                  ; 2 uses
  %i.t = and i32 %i.s, 63
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw i64 1, %i.u
  %i.w = load ptr, ptr %i.a, align 8
  %i.x = lshr i32 %i.s, 6
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = or i64 %i.aa, %i.v
  store i64 %i.ab, ptr %i.z, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE177ELNS4_11OperandTypeE10ELm1EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i

_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE177ELNS4_11OperandTypeE10ELm1EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i: ; preds = %bb.c, %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE177ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i
  %i.ac = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 2) #23 ; 3 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE177ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_12ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE177ELNS4_11OperandTypeE10ELm1EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i
  %i.ae = add nuw nsw i32 %i.ac, 1                ; 2 uses
  %i.af = and i32 %i.ae, 63
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = lshr i32 %i.ae, 6
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8
  %i.an = or i64 %i.am, %i.ah
  store i64 %i.an, ptr %i.al, align 8
  %i.ao = add nuw nsw i32 %i.ac, 2                ; 2 uses
  %i.ap = and i32 %i.ao, 63
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = load ptr, ptr %i.a, align 8
  %i.at = lshr i32 %i.ao, 6
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.au ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = or i64 %i.aw, %i.ar
  store i64 %i.ax, ptr %i.av, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE177ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_12ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit

_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE177ELNS4_19ImplicitRegisterUseE2EJLNS4_11OperandTypeE10ELS7_10ELS7_12ELS7_6EEJLm0ELm1ELm2ELm3EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE177ELNS4_11OperandTypeE10ELm1EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE179ELNS4_19ImplicitRegisterUseE0EJLNS4_11OperandTypeE10ELS7_10ELS7_15EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 2) #23 ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZN2v88internal8compiler12_GLOBAL__N_129UpdateInLivenessForOutOperandILNS0_11interpreter8BytecodeE179ELNS4_11OperandTypeE15ELm2EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw nsw i32 %i.a, 1                  ; 2 uses
  %i.d = and i32 %i.c, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = xor i64 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = lshr i32 %i.c, 6
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = and i64 %i.m, %i.g
  store i64 %i.n, ptr %i.l, align 8
  %i.o = add nuw nsw i32 %i.a, 2                  ; 2 uses
  %i.p = and i32 %i.o, 63
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw i64 1, %i.q
  %i.s = xor i64 %i.r, -1
  %i.t = load ptr, ptr %i.h, align 8
  %i.u = lshr i32 %i.o, 6
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = and i64 %i.x, %i.s
  store i64 %i.y, ptr %i.w, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_129UpdateInLivenessForOutOperandILNS0_11interpreter8BytecodeE179ELNS4_11OperandTypeE15ELm2EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i

_ZN2v88internal8compiler12_GLOBAL__N_129UpdateInLivenessForOutOperandILNS0_11interpreter8BytecodeE179ELNS4_11OperandTypeE15ELm2EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i: ; preds = %bb.b, %bb.a
  %i.z = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 0) #23 ; 2 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE179ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_129UpdateInLivenessForOutOperandILNS0_11interpreter8BytecodeE179ELNS4_11OperandTypeE15ELm2EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i
  %i.ab = add nuw nsw i32 %i.z, 1                 ; 2 uses
  %i.ac = and i32 %i.ab, 63
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = lshr i32 %i.ab, 6
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = or i64 %i.ak, %i.ae
  store i64 %i.al, ptr %i.aj, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE179ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i

_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE179ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i: ; preds = %bb.c, %_ZN2v88internal8compiler12_GLOBAL__N_129UpdateInLivenessForOutOperandILNS0_11interpreter8BytecodeE179ELNS4_11OperandTypeE15ELm2EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i
  %i.am = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 1) #23 ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE179ELNS4_19ImplicitRegisterUseE0EJLNS4_11OperandTypeE10ELS7_10ELS7_15EEJLm0ELm1ELm2EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE179ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i
  %i.ao = add nuw nsw i32 %i.am, 1                ; 2 uses
  %i.ap = and i32 %i.ao, 63
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = lshr i32 %i.ao, 6
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.av ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = or i64 %i.ax, %i.ar
  store i64 %i.ay, ptr %i.aw, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE179ELNS4_19ImplicitRegisterUseE0EJLNS4_11OperandTypeE10ELS7_10ELS7_15EEJLm0ELm1ELm2EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit

_ZN2v88internal8compiler12_GLOBAL__N_116UpdateInLivenessILNS0_11interpreter8BytecodeE179ELNS4_19ImplicitRegisterUseE0EJLNS4_11OperandTypeE10ELS7_10ELS7_15EEJLm0ELm1ELm2EEEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorESt16integer_sequenceImJXspT2_EEE.exit: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_128UpdateInLivenessForInOperandILNS0_11interpreter8BytecodeE179ELNS4_11OperandTypeE10ELm0EEEvPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorE.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_117UpdateOutLivenessILb0ELNS0_11interpreter8BytecodeE0EEEvRNS1_16BytecodeLivenessEPNS1_21BytecodeLivenessStateERKNS4_21BytecodeArrayIteratorENS0_12DirectHandleINS0_13BytecodeArrayEEERKNS1_19BytecodeLivenessMapEPNS0_4ZoneE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr nofree readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 {
end_hunk_7
