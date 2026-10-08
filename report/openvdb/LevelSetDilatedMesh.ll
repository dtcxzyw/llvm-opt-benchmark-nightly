Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetDilatedMesh?download=true
inline.NumInlined: 79535
inline.NumDeleted: 25229
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 278
loop-unroll.NumUnrolled: 951
begin_hunk_0_@_ZN7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE4clipERKNS0_4math9CoordBBoxEb:bb.a
bb.f:                                             ; preds = %bb.e
  %i.zc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.zd = load i64, ptr %i.zc, align 8, !tbaa !1112 ; 2 uses
  %.not.4.i.i = icmp eq i64 %i.zd, -1
  br i1 %.not.4.i.i, label %bb.g, label %._crit_edge98.split.thread

bb.g:                                             ; preds = %bb.f
  %i.ze = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.zf = load i64, ptr %i.ze, align 8, !tbaa !1112 ; 2 uses
  %.not.5.i.i = icmp eq i64 %i.zf, -1
  br i1 %.not.5.i.i, label %bb.h, label %._crit_edge98.split.thread

bb.h:                                             ; preds = %bb.g
  %i.zg = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.zh = load i64, ptr %i.zg, align 8, !tbaa !1112 ; 2 uses
  %.not.6.i.i = icmp eq i64 %i.zh, -1
  br i1 %.not.6.i.i, label %bb.i, label %._crit_edge98.split.thread

bb.i:                                             ; preds = %bb.h
  %i.zi = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.zj = load i64, ptr %i.zi, align 8, !tbaa !1112 ; 2 uses
  %.not.7.i.i = icmp eq i64 %i.zj, -1
  br i1 %.not.7.i.i, label %._crit_edge103, label %._crit_edge98.split.thread

._crit_edge98.split.thread:                       ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread, %.preheader84.lr.ph, %._crit_edge98.split, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %i.zk = phi i64 [ %.pre, %._crit_edge98.split ], [ %i.yx, %bb.c ], [ %i.yz, %bb.d ], [ %i.zb, %bb.e ], [ %i.zd, %bb.f ], [ %i.zf, %bb.g ], [ %i.zh, %bb.h ], [ %i.zj, %bb.i ], [ 0, %.preheader84.lr.ph ], [ 0, %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread ]
  %.0712.lcssa.i.i = phi i32 [ 0, %._crit_edge98.split ], [ 64, %bb.c ], [ 128, %bb.d ], [ 192, %bb.e ], [ 256, %bb.f ], [ 320, %bb.g ], [ 384, %bb.h ], [ 448, %bb.i ], [ 0, %.preheader84.lr.ph ], [ 0, %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread ]
  %i.zl = xor i64 %i.zk, -1
  %i.zm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.zl, i1 true)
  %i.zn = trunc nuw nsw i64 %i.zm to i32
  %i.zo = or disjoint i32 %.0712.lcssa.i.i, %i.zn
  br label %.lr.ph

._crit_edge103:                                   ; preds = %.lr.ph244.6, %_ZN7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE11setValueOffEjb.exit, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.5, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.n

.lr.ph:                                           ; preds = %._crit_edge98.split.thread, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit
  %.sroa.0.0101 = phi i32 [ %.118.i.i.i, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit ], [ %i.zo, %._crit_edge98.split.thread ] ; 4 uses
  %i.zp = and i32 %.sroa.0.0101, 63
  %i.zq = zext nneg i32 %i.zp to i64
  %i.zr = shl nuw i64 1, %i.zq                    ; 2 uses
  br i1 %2, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.zs = lshr i32 %.sroa.0.0101, 6
  %i.zt = zext nneg i32 %i.zs to i64
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.zt ; 2 uses
  %i.zv = load i64, ptr %i.zu, align 8, !tbaa !1112
  %i.zw = or i64 %i.zv, %i.zr
  store i64 %i.zw, ptr %i.zu, align 8, !tbaa !1112
  br label %_ZN7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE11setValueOffEjb.exit

bb.k:                                             ; preds = %.lr.ph
  %i.zx = xor i64 %i.zr, -1
  %i.zy = lshr i32 %.sroa.0.0101, 6
  %i.zz = zext nneg i32 %i.zy to i64
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.zz ; 2 uses
  %i.aab = load i64, ptr %i.aaa, align 8, !tbaa !1112
  %i.aac = and i64 %i.aab, %i.zx
  store i64 %i.aac, ptr %i.aaa, align 8, !tbaa !1112
  br label %_ZN7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE11setValueOffEjb.exit

_ZN7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE11setValueOffEjb.exit: ; preds = %bb.j, %bb.k
  %i.aad = add i32 %.sroa.0.0101, 1               ; 4 uses
  %i.aae = lshr i32 %i.aad, 6                     ; 3 uses
  %i.aaf = icmp ugt i32 %i.aad, 511
  br i1 %i.aaf, label %._crit_edge103, label %bb.l

bb.l:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE11setValueOffEjb.exit
  %i.aag = and i32 %i.aad, 63
  %i.aah = zext nneg i32 %i.aae to i64            ; 8 uses
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.aah
  %i.aaj = load i64, ptr %i.aai, align 8, !tbaa !1112 ; 2 uses
  %i.aak = zext nneg i32 %i.aag to i64            ; 2 uses
  %i.aal = shl nuw i64 1, %i.aak
  %i.aam = and i64 %i.aaj, %i.aal
  %.not.not.i.i.i = icmp eq i64 %i.aam, 0
  br i1 %.not.not.i.i.i, label %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aan = xor i64 %i.aaj, -1
  %i.aao = shl nsw i64 -1, %i.aak
  %i.aap = and i64 %i.aao, %i.aan                 ; 2 uses
  %.not25.i.i.i = icmp eq i64 %i.aap, 0
  br i1 %.not25.i.i.i, label %.lr.ph.i.i.i.preheader, label %.critedge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.m
  %exitcond.not.i.i.i242 = icmp eq i32 %i.aae, 7
  br i1 %exitcond.not.i.i.i242, label %._crit_edge103, label %.lr.ph244

.lr.ph.i.i.i:                                     ; preds = %.lr.ph244
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 7
  br i1 %exitcond.not.i.i.i, label %._crit_edge103, label %.lr.ph244.1

.lr.ph244.1:                                      ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %i.aah, 2 ; 3 uses
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.1
  %i.aar = load i64, ptr %i.aaq, align 8, !tbaa !1112 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.aar, -1
  br i1 %.not.i.i.i.1, label %.lr.ph.i.i.i.1, label %.critedge.loopexit.i.i.i, !llvm.loop !62

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph244.1
  %exitcond.not.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.1, label %._crit_edge103, label %.lr.ph244.2

.lr.ph244.2:                                      ; preds = %.lr.ph.i.i.i.1
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %i.aah, 3 ; 3 uses
  %i.aas = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.2
  %i.aat = load i64, ptr %i.aas, align 8, !tbaa !1112 ; 2 uses
  %.not.i.i.i.2 = icmp eq i64 %i.aat, -1
  br i1 %.not.i.i.i.2, label %.lr.ph.i.i.i.2, label %.critedge.loopexit.i.i.i, !llvm.loop !62

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph244.2
  %exitcond.not.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.2, label %._crit_edge103, label %.lr.ph244.3

.lr.ph244.3:                                      ; preds = %.lr.ph.i.i.i.2
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %i.aah, 4 ; 3 uses
  %i.aau = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.3
  %i.aav = load i64, ptr %i.aau, align 8, !tbaa !1112 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.aav, -1
  br i1 %.not.i.i.i.3, label %.lr.ph.i.i.i.3, label %.critedge.loopexit.i.i.i, !llvm.loop !62

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph244.3
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge103, label %.lr.ph244.4

.lr.ph244.4:                                      ; preds = %.lr.ph.i.i.i.3
  %indvars.iv.next.i.i.i.4 = add nuw nsw i64 %i.aah, 5 ; 3 uses
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.4
  %i.aax = load i64, ptr %i.aaw, align 8, !tbaa !1112 ; 2 uses
  %.not.i.i.i.4 = icmp eq i64 %i.aax, -1
  br i1 %.not.i.i.i.4, label %.lr.ph.i.i.i.4, label %.critedge.loopexit.i.i.i, !llvm.loop !62

.lr.ph.i.i.i.4:                                   ; preds = %.lr.ph244.4
  %exitcond.not.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.4, label %._crit_edge103, label %.lr.ph244.5

.lr.ph244.5:                                      ; preds = %.lr.ph.i.i.i.4
  %indvars.iv.next.i.i.i.5 = add nuw nsw i64 %i.aah, 6 ; 3 uses
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.5
  %i.aaz = load i64, ptr %i.aay, align 8, !tbaa !1112 ; 2 uses
  %.not.i.i.i.5 = icmp eq i64 %i.aaz, -1
  br i1 %.not.i.i.i.5, label %.lr.ph.i.i.i.5, label %.critedge.loopexit.i.i.i, !llvm.loop !62

.lr.ph.i.i.i.5:                                   ; preds = %.lr.ph244.5
  %exitcond.not.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.5, label %._crit_edge103, label %.lr.ph244.6

.lr.ph244.6:                                      ; preds = %.lr.ph.i.i.i.5
  %indvars.iv.next.i.i.i.6 = add nuw nsw i64 %i.aah, 7 ; 2 uses
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.6
  %i.abb = load i64, ptr %i.aba, align 8, !tbaa !1112 ; 2 uses
  %.not.i.i.i.6 = icmp eq i64 %i.abb, -1
  br i1 %.not.i.i.i.6, label %._crit_edge103, label %.critedge.loopexit.i.i.i, !llvm.loop !62

.lr.ph244:                                        ; preds = %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i.i.i = add nuw nsw i64 %i.aah, 1 ; 3 uses
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !1112 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.abd, -1
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.critedge.loopexit.i.i.i, !llvm.loop !62

.critedge.loopexit.i.i.i:                         ; preds = %.lr.ph244.6, %.lr.ph244.5, %.lr.ph244.4, %.lr.ph244.3, %.lr.ph244.2, %.lr.ph244.1, %.lr.ph244
  %indvars.iv.next.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph244 ], [ %indvars.iv.next.i.i.i.1, %.lr.ph244.1 ], [ %indvars.iv.next.i.i.i.2, %.lr.ph244.2 ], [ %indvars.iv.next.i.i.i.3, %.lr.ph244.3 ], [ %indvars.iv.next.i.i.i.4, %.lr.ph244.4 ], [ %indvars.iv.next.i.i.i.5, %.lr.ph244.5 ], [ %indvars.iv.next.i.i.i.6, %.lr.ph244.6 ]
  %.lcssa = phi i64 [ %i.abd, %.lr.ph244 ], [ %i.aar, %.lr.ph244.1 ], [ %i.aat, %.lr.ph244.2 ], [ %i.aav, %.lr.ph244.3 ], [ %i.aax, %.lr.ph244.4 ], [ %i.aaz, %.lr.ph244.5 ], [ %i.abb, %.lr.ph244.6 ]
  %i.abe = xor i64 %.lcssa, -1
  %i.abf = trunc nuw nsw i64 %indvars.iv.next.i.i.i.lcssa to i32
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.loopexit.i.i.i, %bb.m
  %.016.lcssa.i.i.i = phi i32 [ %i.aae, %bb.m ], [ %i.abf, %.critedge.loopexit.i.i.i ]
  %.0.lcssa.i.i.i = phi i64 [ %i.aap, %bb.m ], [ %i.abe, %.critedge.loopexit.i.i.i ]
  %i.abg = shl nuw nsw i32 %.016.lcssa.i.i.i, 6
  %i.abh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i, i1 true)
  %i.abi = trunc nuw nsw i64 %i.abh to i32
  %i.abj = or disjoint i32 %i.abg, %i.abi
  br label %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit

_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit: ; preds = %bb.l, %.critedge.i.i.i
  %.118.i.i.i = phi i32 [ %i.abj, %.critedge.i.i.i ], [ %i.aad, %bb.l ] ; 2 uses
  %.not78 = icmp eq i32 %.118.i.i.i, 512
  br i1 %.not78, label %._crit_edge103, label %.lr.ph

bb.n:                                             ; preds = %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i22, %._crit_edge103
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE4fillERKNS0_4math9CoordBBoxERKbb(ptr noundef nonnull align 8 dereferenceable(33808) %0, ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 33792 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !741, !noalias !10979 ; 2 uses
  %i.c = add nsw i32 %i.b, 127
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 33796 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !741, !noalias !10979 ; 2 uses
  %i.f = add nsw i32 %i.e, 127
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 33800 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !741, !noalias !10979 ; 2 uses
  %i.i = add i32 %i.h, 127
  %i.j = load i32, ptr %1, align 4, !tbaa !741
  %i.k = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.j) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !741
  %i.n = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.m) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !741
  %i.q = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %i.p) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !741
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.c) ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 4, !tbaa !741
  %i.w = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.f) ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !741
  %i.z = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %i.i) ; 4 uses
  %i.aa = icmp sle i32 %i.k, %i.t
  %i.ab = icmp sle i32 %i.n, %i.w
  %or.cond.not129 = select i1 %i.aa, i1 %i.ab, i1 false
  %i.ac = icmp sle i32 %i.q, %i.z
  %or.cond121 = select i1 %or.cond.not129, i1 %i.ac, i1 false
  br i1 %or.cond121, label %.preheader135, label %_ZNK7openvdb5v13_04math9CoordBBoxcvbEv.exit.thread

.preheader135:                                    ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32768
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 33280 ; 3 uses
  br label %.preheader134

.preheader134:                                    ; preds = %.preheader135, %._crit_edge144.split
  %.0146 = phi i32 [ %i.an, %._crit_edge144.split ], [ %i.k, %.preheader135 ] ; 4 uses
  %i.af = shl i32 %.0146, 5
  %i.ag = and i32 %i.af, 3840                     ; 2 uses
  %i.ah = lshr exact i32 %i.ag, 5
  %i.ai = and i32 %.0146, -8                      ; 2 uses
  %.sroa.0.0.insert.ext.i.i49 = zext i32 %i.ai to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader134, %._crit_edge
  %.035143 = phi i32 [ %i.n, %.preheader134 ], [ %i.ao, %._crit_edge ] ; 5 uses
  %i.aj = shl i32 %.035143, 1
  %i.ak = and i32 %i.aj, 240
  %i.al = and i32 %.035143, 120
  %i.am = and i32 %.035143, -8
  %.sroa.2.0.insert.ext.i.i47 = zext i32 %i.am to i64
  %.sroa.2.0.insert.shift.i.i48 = shl nuw i64 %.sroa.2.0.insert.ext.i.i47, 32
  %.sroa.0.0.insert.insert.i.i50 = or disjoint i64 %.sroa.2.0.insert.shift.i.i48, %.sroa.0.0.insert.ext.i.i49
  br label %bb.b

._crit_edge144.split:                             ; preds = %._crit_edge
  %i.an = add nsw i32 %i.av, 8                    ; 2 uses
  %.not = icmp sgt i32 %i.an, %i.t
  br i1 %.not, label %_ZNK7openvdb5v13_04math9CoordBBoxcvbEv.exit.thread, label %.preheader134, !llvm.loop !10966

._crit_edge:                                      ; preds = %_ZN7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE4fillERKNS0_4math9CoordBBoxEbb.exit
  %i.ao = add nsw i32 %i.ax, 8                    ; 2 uses
  %.not38 = icmp sgt i32 %i.ao, %i.w
  br i1 %.not38, label %._crit_edge144.split, label %.preheader, !llvm.loop !10967

bb.b:                                             ; preds = %.preheader, %_ZN7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE4fillERKNS0_4math9CoordBBoxEbb.exit
  %.036138 = phi i32 [ %i.q, %.preheader ], [ %i.gl, %_ZN7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE4fillERKNS0_4math9CoordBBoxEbb.exit ] ; 4 uses
  %i.ap = lshr i32 %.036138, 3
  %i.aq = and i32 %i.ap, 15                       ; 2 uses
  %i.ar = or disjoint i32 %i.aq, %i.ak            ; 2 uses
  %i.as = or disjoint i32 %i.ar, %i.ag            ; 4 uses
  %i.at = shl nuw nsw i32 %i.aq, 3
  %i.au = load i32, ptr %i.a, align 8, !tbaa !741
  %i.av = add nsw i32 %i.au, %i.ah                ; 3 uses
  %i.aw = load i32, ptr %i.d, align 4, !tbaa !741
  %i.ax = add nsw i32 %i.aw, %i.al                ; 3 uses
  %i.ay = load i32, ptr %i.g, align 8, !tbaa !741
  %i.az = add i32 %i.ay, %i.at                    ; 3 uses
  %i.ba = add nsw i32 %i.av, 7                    ; 2 uses
  %i.bb = add nsw i32 %i.ax, 7                    ; 2 uses
  %i.bc = add i32 %i.az, 7                        ; 2 uses
  %i.bd = icmp ne i32 %.0146, %i.av
  %i.be = icmp ne i32 %.035143, %i.ax
  %or.cond122.not132 = or i1 %i.bd, %i.be
  %i.bf = icmp ne i32 %.036138, %i.az
  %or.cond123 = select i1 %or.cond122.not132, i1 true, i1 %i.bf
  %i.bg = icmp slt i32 %i.t, %i.ba
  %or.cond124 = select i1 %or.cond123, i1 true, i1 %i.bg
  %i.bh = icmp slt i32 %i.w, %i.bb
  %or.cond125 = select i1 %or.cond124, i1 true, i1 %i.bh
  %i.bi = icmp slt i32 %i.z, %i.bc
  %or.cond126 = select i1 %or.cond125, i1 true, i1 %i.bi
  %i.bj = lshr i32 %i.as, 6
  %i.bk = zext nneg i32 %i.bj to i64              ; 4 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bk ; 4 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !1112 ; 2 uses
  %i.bn = and i32 %i.ar, 63
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = shl nuw i64 1, %i.bo                    ; 7 uses
  %i.bq = and i64 %i.bm, %i.bp
  %.not.i.i = icmp eq i64 %i.bq, 0                ; 2 uses
  br i1 %or.cond126, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.e

_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread: ; preds = %bb.b
  br i1 %.not.i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread
  %i.br = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #30 ; 13 uses
  %i.bs = zext nneg i32 %i.as to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !807, !range !788, !noundef !789
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bk ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !1112 ; 2 uses
  %i.by = and i64 %i.bx, %i.bp
  %i.bz = icmp ne i64 %i.by, 0
  %i.ca = or i1 %i.bz, %i.bv
  %i.cb = sext i1 %i.ca to i64                    ; 8 uses
  store i64 %i.cb, ptr %i.br, align 8, !tbaa !1112
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !1112
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 %i.cb, ptr %i.cd, align 8, !tbaa !1112
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store i64 %i.cb, ptr %i.ce, align 8, !tbaa !1112
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store i64 %i.cb, ptr %i.cf, align 8, !tbaa !1112
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store i64 %i.cb, ptr %i.cg, align 8, !tbaa !1112
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  store i64 %i.cb, ptr %i.ch, align 8, !tbaa !1112
  %i.ci = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  store i64 %i.cb, ptr %i.ci, align 8, !tbaa !1112
  %i.cj = and i32 %.036138, -8                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  store i64 %.sroa.0.0.insert.insert.i.i50, ptr %i.ck, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  store i32 %i.cj, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.br, i64 76
  store i32 0, ptr %i.cl, align 4, !tbaa !3969
  %i.cm = load i64, ptr %i.bl, align 8, !tbaa !1112
  %i.cn = or i64 %i.cm, %i.bp
  store i64 %i.cn, ptr %i.bl, align 8, !tbaa !1112
  %i.co = xor i64 %i.bp, -1
  %i.cp = and i64 %i.bx, %i.co
  store i64 %i.cp, ptr %i.bw, align 8, !tbaa !1112
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !768
  br label %bb.d

bb.c:                                             ; preds = %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread
  %i.cq = zext nneg i32 %i.as to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !768 ; 4 uses
  %.not40 = icmp eq ptr %i.cs, null
  br i1 %.not40, label %_ZN7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE4fillERKNS0_4math9CoordBBoxEbb.exit, label %._crit_edge156

._crit_edge156:                                   ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !741, !noalias !10980
  %.phi.trans.insert157 = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  %.pre158 = load i32, ptr %.phi.trans.insert157, align 4, !tbaa !741, !noalias !10980
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge156, %.thread
  %i.ct = phi i32 [ %i.cj, %.thread ], [ %.pre158, %._crit_edge156 ] ; 2 uses
  %i.cu = phi i32 [ %i.ai, %.thread ], [ %.pre, %._crit_edge156 ] ; 2 uses
  %.037120 = phi ptr [ %i.br, %.thread ], [ %i.cs, %._crit_edge156 ] ; 3 uses
  %.sroa.speculated16.i = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.t)
  %.sroa.speculated11.i = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.w)
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 %i.z)
  %i.cv = add nsw i32 %i.cu, 7
  %i.cw = getelementptr inbounds nuw i8, ptr %.037120, i64 68
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !741, !noalias !10980 ; 2 uses
  %i.cy = add i32 %i.cx, 7
  %i.cz = add i32 %i.ct, 7
  %i.da = tail call i32 @llvm.smax.i32(i32 %i.cu, i32 %.0146) ; 3 uses
  %i.db = tail call i32 @llvm.smax.i32(i32 %i.cx, i32 %.035143) ; 3 uses
  %i.dc = tail call i32 @llvm.smax.i32(i32 %i.ct, i32 %.036138) ; 9 uses
  %i.dd = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated16.i, i32 %i.cv) ; 3 uses
  %i.de = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated11.i, i32 %i.cy) ; 3 uses
  %i.df = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated.i, i32 %i.cz) ; 5 uses
  %i.dg = icmp sle i32 %i.da, %i.dd
  %i.dh = icmp sle i32 %i.db, %i.de
  %or.cond.not39.i = select i1 %i.dg, i1 %i.dh, i1 false
  %i.di = icmp sle i32 %i.dc, %i.df
  %or.cond36.i = select i1 %or.cond.not39.i, i1 %i.di, i1 false
  br i1 %or.cond36.i, label %.preheader.split.split.i, label %_ZN7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE4fillERKNS0_4math9CoordBBoxEbb.exit

.preheader.split.split.i:                         ; preds = %bb.d
  %i.dj = load i8, ptr %2, align 1, !tbaa !807, !range !788, !noundef !789
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %.lr.ph47.us.i.preheader, label %.lr.ph47.i.preheader

.lr.ph47.i.preheader:                             ; preds = %.preheader.split.split.i
  %i.dl = add i32 %i.df, 1
  %i.dm = sub i32 %i.dl, %i.dc                    ; 3 uses
  %min.iters.check187 = icmp ult i32 %i.dm, 4
  %n.vec189 = and i32 %i.dm, -4                   ; 3 uses
  %i.dn = add i32 %i.dc, %n.vec189
  %broadcast.splatinsert192 = insertelement <2 x i32> poison, i32 %i.dc, i64 0
  %broadcast.splat193 = shufflevector <2 x i32> %broadcast.splatinsert192, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction194 = add <2 x i32> %broadcast.splat193, <i32 0, i32 1>
  %cmp.n205 = icmp eq i32 %i.dm, %n.vec189
  br label %.lr.ph47.i

.lr.ph47.us.i.preheader:                          ; preds = %.preheader.split.split.i
  %i.do = add i32 %i.df, 1
  %i.dp = sub i32 %i.do, %i.dc                    ; 3 uses
  %min.iters.check = icmp ult i32 %i.dp, 4
  %n.vec = and i32 %i.dp, -4                      ; 3 uses
  %i.dq = add i32 %i.dc, %n.vec
  %broadcast.splatinsert183 = insertelement <2 x i32> poison, i32 %i.dc, i64 0
  %broadcast.splat184 = shufflevector <2 x i32> %broadcast.splatinsert183, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction = add <2 x i32> %broadcast.splat184, <i32 0, i32 1>
  %cmp.n = icmp eq i32 %i.dp, %n.vec
  br label %.lr.ph47.us.i

.lr.ph47.us.i:                                    ; preds = %.lr.ph47.us.i.preheader, %._crit_edge48.split50.us.us.i
  %.01554.us.i = phi i32 [ %i.er, %._crit_edge48.split50.us.us.i ], [ %i.da, %.lr.ph47.us.i.preheader ] ; 3 uses
  %i.dr = and i32 %.01554.us.i, 7
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.037120, i64 %i.ds ; 2 uses
  %.promoted.us.i = load i64, ptr %i.dt, align 8, !tbaa !1112
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.split.us.us.us.i, %.lr.ph47.us.i
  %.lcssa43.us53.us.i = phi i64 [ %.promoted.us.i, %.lr.ph47.us.i ], [ %.lcssa180, %._crit_edge.split.us.us.us.i ] ; 2 uses
  %.01445.us.us.i = phi i32 [ %i.db, %.lr.ph47.us.i ], [ %i.eq, %._crit_edge.split.us.us.us.i ] ; 3 uses
  %i.du = shl i32 %.01445.us.us.i, 3
  %i.dv = and i32 %i.du, 56                       ; 2 uses
  br i1 %min.iters.check, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us.i
  %i.dw = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.lcssa43.us53.us.i, i64 0
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.dv, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ %i.dw, %vector.ph ], [ %i.ef, %vector.body ]
  %vec.phi185 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.eg, %vector.body ]
  %vec.ind = phi <2 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.dx = and <2 x i32> %vec.ind, splat (i32 7)
  %i.dy = and <2 x i32> %step.add, splat (i32 7)
  %i.dz = or disjoint <2 x i32> %i.dx, %broadcast.splat
  %i.ea = or disjoint <2 x i32> %i.dy, %broadcast.splat
  %i.eb = zext nneg <2 x i32> %i.dz to <2 x i64>
  %i.ec = zext nneg <2 x i32> %i.ea to <2 x i64>
  %i.ed = shl nuw <2 x i64> splat (i64 1), %i.eb
  %i.ee = shl nuw <2 x i64> splat (i64 1), %i.ec
  %i.ef = or <2 x i64> %i.ed, %vec.phi            ; 2 uses
  %i.eg = or <2 x i64> %i.ee, %vec.phi185         ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.eh = icmp eq i32 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !10972

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.eg, %i.ef
  %i.ei = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.split.us.us.us.i, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.i.preheader

_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.i.preheader: ; preds = %.lr.ph.us.us.i, %middle.block
  %.ph = phi i64 [ %.lcssa43.us53.us.i, %.lr.ph.us.us.i ], [ %i.ei, %middle.block ]
  %.041.us.us.us.i.ph = phi i32 [ %i.dc, %.lr.ph.us.us.i ], [ %i.dq, %middle.block ]
  br label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.i

_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.i: ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.i.preheader, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.i
  %i.ej = phi i64 [ %i.eo, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.i ], [ %.ph, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.i.preheader ]
  %.041.us.us.us.i = phi i32 [ %i.ep, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.i ], [ %.041.us.us.us.i.ph, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.i.preheader ] ; 3 uses
  %i.ek = and i32 %.041.us.us.us.i, 7
  %i.el = or disjoint i32 %i.ek, %i.dv
  %i.em = zext nneg i32 %i.el to i64
  %i.en = shl nuw i64 1, %i.em
  %i.eo = or i64 %i.en, %i.ej                     ; 2 uses
  %i.ep = add i32 %.041.us.us.us.i, 1
  %exitcond62.not.i = icmp eq i32 %.041.us.us.us.i, %i.df
  br i1 %exitcond62.not.i, label %._crit_edge.split.us.us.us.i, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.i, !llvm.loop !10973

._crit_edge.split.us.us.us.i:                     ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.i, %middle.block
  %.lcssa180 = phi i64 [ %i.ei, %middle.block ], [ %i.eo, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.i ] ; 2 uses
  %i.eq = add i32 %.01445.us.us.i, 1
  %exitcond63.not.i = icmp eq i32 %.01445.us.us.i, %i.de
  br i1 %exitcond63.not.i, label %._crit_edge48.split50.us.us.i, label %.lr.ph.us.us.i, !llvm.loop !10974

._crit_edge48.split50.us.us.i:                    ; preds = %._crit_edge.split.us.us.us.i
  store i64 %.lcssa180, ptr %i.dt, align 8, !tbaa !1112
  %i.er = add i32 %.01554.us.i, 1
  %exitcond64.not.i = icmp eq i32 %.01554.us.i, %i.dd
  br i1 %exitcond64.not.i, label %_ZN7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE4fillERKNS0_4math9CoordBBoxEbb.exit, label %.lr.ph47.us.i, !llvm.loop !10975

.lr.ph47.i:                                       ; preds = %.lr.ph47.i.preheader, %._crit_edge48.split50.i
  %.01554.i = phi i32 [ %i.ev, %._crit_edge48.split50.i ], [ %i.da, %.lr.ph47.i.preheader ] ; 3 uses
  %i.es = and i32 %.01554.i, 7
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.037120, i64 %i.et ; 2 uses
  %.promoted51.i = load i64, ptr %i.eu, align 8, !tbaa !1112
  br label %.lr.ph.i

._crit_edge48.split50.i:                          ; preds = %._crit_edge.split.i
  store i64 %.lcssa, ptr %i.eu, align 8, !tbaa !1112
  %i.ev = add i32 %.01554.i, 1
  %exitcond61.not.i = icmp eq i32 %.01554.i, %i.dd
  br i1 %exitcond61.not.i, label %_ZN7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE4fillERKNS0_4math9CoordBBoxEbb.exit, label %.lr.ph47.i, !llvm.loop !10975

.lr.ph.i:                                         ; preds = %._crit_edge.split.i, %.lr.ph47.i
  %.lcssa52.i = phi i64 [ %.promoted51.i, %.lr.ph47.i ], [ %.lcssa, %._crit_edge.split.i ] ; 2 uses
  %.01445.i = phi i32 [ %i.db, %.lr.ph47.i ], [ %i.fn, %._crit_edge.split.i ] ; 3 uses
  %i.ew = shl i32 %.01445.i, 3
  %i.ex = and i32 %i.ew, 56                       ; 2 uses
  br i1 %min.iters.check187, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i.preheader, label %vector.ph188

vector.ph188:                                     ; preds = %.lr.ph.i
  %i.ey = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %.lcssa52.i, i64 0
  %broadcast.splatinsert190 = insertelement <2 x i32> poison, i32 %i.ex, i64 0
  %broadcast.splat191 = shufflevector <2 x i32> %broadcast.splatinsert190, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph188
  %index196 = phi i32 [ 0, %vector.ph188 ], [ %index.next201, %vector.body195 ]
  %vec.phi197 = phi <2 x i64> [ %i.ey, %vector.ph188 ], [ %i.fj, %vector.body195 ]
  %vec.phi198 = phi <2 x i64> [ splat (i64 -1), %vector.ph188 ], [ %i.fk, %vector.body195 ]
  %vec.ind199 = phi <2 x i32> [ %induction194, %vector.ph188 ], [ %vec.ind.next202, %vector.body195 ] ; 3 uses
  %step.add200 = add <2 x i32> %vec.ind199, splat (i32 2)
  %i.ez = and <2 x i32> %vec.ind199, splat (i32 7)
  %i.fa = and <2 x i32> %step.add200, splat (i32 7)
  %i.fb = or disjoint <2 x i32> %i.ez, %broadcast.splat191
  %i.fc = or disjoint <2 x i32> %i.fa, %broadcast.splat191
  %i.fd = zext nneg <2 x i32> %i.fb to <2 x i64>
  %i.fe = zext nneg <2 x i32> %i.fc to <2 x i64>
  %i.ff = shl nuw <2 x i64> splat (i64 1), %i.fd
  %i.fg = shl nuw <2 x i64> splat (i64 1), %i.fe
  %i.fh = xor <2 x i64> %i.ff, splat (i64 -1)
  %i.fi = xor <2 x i64> %i.fg, splat (i64 -1)
  %i.fj = and <2 x i64> %vec.phi197, %i.fh        ; 2 uses
  %i.fk = and <2 x i64> %vec.phi198, %i.fi        ; 2 uses
  %index.next201 = add nuw i32 %index196, 4       ; 2 uses
  %vec.ind.next202 = add <2 x i32> %vec.ind199, splat (i32 4)
  %i.fl = icmp eq i32 %index.next201, %n.vec189
  br i1 %i.fl, label %middle.block203, label %vector.body195, !llvm.loop !10976

middle.block203:                                  ; preds = %vector.body195
  %bin.rdx204 = and <2 x i64> %i.fk, %i.fj
  %i.fm = tail call i64 @llvm.vector.reduce.and.v2i64(<2 x i64> %bin.rdx204) ; 2 uses
  br i1 %cmp.n205, label %._crit_edge.split.i, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i.preheader

_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i.preheader: ; preds = %.lr.ph.i, %middle.block203
  %.ph208 = phi i64 [ %.lcssa52.i, %.lr.ph.i ], [ %i.fm, %middle.block203 ]
  %.041.i.ph = phi i32 [ %i.dc, %.lr.ph.i ], [ %i.dn, %middle.block203 ]
  br label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i

._crit_edge.split.i:                              ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i, %middle.block203
  %.lcssa = phi i64 [ %i.fm, %middle.block203 ], [ %i.fu, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i ] ; 2 uses
  %i.fn = add i32 %.01445.i, 1
  %exitcond60.not.i = icmp eq i32 %.01445.i, %i.de
  br i1 %exitcond60.not.i, label %._crit_edge48.split50.i, label %.lr.ph.i, !llvm.loop !10974

_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i: ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i.preheader, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i
  %i.fo = phi i64 [ %i.fu, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i ], [ %.ph208, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i.preheader ]
  %.041.i = phi i32 [ %i.fv, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i ], [ %.041.i.ph, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i.preheader ] ; 3 uses
  %i.fp = and i32 %.041.i, 7
  %i.fq = or disjoint i32 %i.fp, %i.ex
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = shl nuw i64 1, %i.fr
  %i.ft = xor i64 %i.fs, -1
  %i.fu = and i64 %i.fo, %i.ft                    ; 2 uses
  %i.fv = add i32 %.041.i, 1
  %exitcond.not.i = icmp eq i32 %.041.i, %i.df
  br i1 %exitcond.not.i, label %._crit_edge.split.i, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i, !llvm.loop !10977

bb.e:                                             ; preds = %bb.b
  %i.fw = zext nneg i32 %i.as to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fw ; 3 uses
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE14unsetChildNodeEjRKb.exit.thread.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE14unsetChildNodeEjRKb.exit.i

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE14unsetChildNodeEjRKb.exit.thread.i: ; preds = %bb.e
  %i.fy = load i8, ptr %2, align 1, !tbaa !807, !range !788, !noundef !789
  store i8 %i.fy, ptr %i.fx, align 8, !tbaa !768
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE18makeChildNodeEmptyEjRKb.exit

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE14unsetChildNodeEjRKb.exit.i: ; preds = %bb.e
  %i.fz = load ptr, ptr %i.fx, align 8, !tbaa !768 ; 2 uses
  %i.ga = xor i64 %i.bp, -1
  %i.gb = and i64 %i.bm, %i.ga
  store i64 %i.gb, ptr %i.bl, align 8, !tbaa !1112
  %i.gc = load i8, ptr %2, align 1, !tbaa !807, !range !788, !noundef !789
  store i8 %i.gc, ptr %i.fx, align 8, !tbaa !768
  %i.gd = icmp eq ptr %i.fz, null
  br i1 %i.gd, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE18makeChildNodeEmptyEjRKb.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE14unsetChildNodeEjRKb.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef 80) #31
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE18makeChildNodeEmptyEjRKb.exit

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE18makeChildNodeEmptyEjRKb.exit: ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE14unsetChildNodeEjRKb.exit.thread.i, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE14unsetChildNodeEjRKb.exit.i, %bb.f
  br i1 %3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE18makeChildNodeEmptyEjRKb.exit
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bk ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !1112
  %i.gg = or i64 %i.gf, %i.bp
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !1112
  br label %_ZN7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE4fillERKNS0_4math9CoordBBoxEbb.exit

bb.h:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE18makeChildNodeEmptyEjRKb.exit
end_hunk_0
