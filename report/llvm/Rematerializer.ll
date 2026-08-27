Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Rematerializer?download=true
inline.NumInlined: 4906
inline.NumDeleted: 2262
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4llvm14Rematerializer16transferAllUsersEjj:bb.a
  %i.jc = load i24, ptr %i.jb, align 8
  %.not.i.i20 = icmp eq i24 %i.jc, 0
  br i1 %.not.i.i20, label %_ZN4llvm14Rematerializer16transferUserImplEjjRNS_12MachineInstrE.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS7_bEOT_DpOT0_.exit
  %i.jd = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !241 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 8            ; 3 uses
  %i.jg = and i32 %i.jf, 255
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %bb.p, label %_ZN4llvm14Rematerializer16transferUserImplEjjRNS_12MachineInstrE.exit

bb.p:                                             ; preds = %bb.o
  %i.ji = and i32 %i.jf, 805306368
  %or.cond.not.i.i.i = icmp ne i32 %i.ji, 0
  %i.jj = and i32 %i.jf, 17825536
  %or.cond.not.i.i = icmp eq i32 %i.jj, 16777216
  %or.cond.i.i = or i1 %or.cond.not.i.i.i, %or.cond.not.i.i
  br i1 %or.cond.i.i, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread10.i.i, label %_ZN4llvm14Rematerializer16transferUserImplEjjRNS_12MachineInstrE.exit

_ZNK4llvm14MachineOperand8readsRegEv.exit.thread10.i.i: ; preds = %bb.p
  %i.jk = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !168 ; 2 uses
  %i.jm = load ptr, ptr %i.ar, align 8, !tbaa !283, !noalias !423 ; 2 uses
  %i.jn = load ptr, ptr %i.as, align 8, !tbaa !293, !noalias !423 ; 2 uses
  %i.jo = load i32, ptr %i.at, align 4, !tbaa !294, !noalias !423 ; 3 uses
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %_ZN4llvm14Rematerializer16transferUserImplEjjRNS_12MachineInstrE.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread10.i.i
  %i.jq = add i32 %i.jo, -1                       ; 2 uses
  %i.jr = mul i32 %i.jl, 37
  %.019.i.i.i.i.i = and i32 %i.jq, %i.jr          ; 3 uses
  %i.js = zext i32 %.019.i.i.i.i.i to i64         ; 2 uses
  %i.jt = lshr i64 %i.js, 5
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !64, !noalias !432
  %i.jw = and i32 %.019.i.i.i.i.i, 31
  %i.jx = lshr i32 %i.jv, %i.jw
  %i.jy = trunc i32 %i.jx to i1
  br i1 %i.jy, label %.lr.ph.i.i.i.i.i, label %_ZN4llvm14Rematerializer16transferUserImplEjjRNS_12MachineInstrE.exit, !prof !66

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.jz = add nuw i32 %.020.i.i.i.i.i, 1
  %.0.i.i.i.i.i = and i32 %i.jz, %i.jq            ; 3 uses
  %i.ka = zext i32 %.0.i.i.i.i.i to i64           ; 2 uses
  %i.kb = lshr i64 %i.ka, 5
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !64, !noalias !432
  %i.ke = and i32 %.0.i.i.i.i.i, 31
  %i.kf = lshr i32 %i.kd, %i.ke
  %i.kg = trunc i32 %i.kf to i1
  br i1 %i.kg, label %.lr.ph.i.i.i.i.i, label %_ZN4llvm14Rematerializer16transferUserImplEjjRNS_12MachineInstrE.exit, !prof !67

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.q, %bb.r
  %i.kh = phi i64 [ %i.ka, %bb.r ], [ %i.js, %bb.q ] ; 3 uses
  %.020.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i, %bb.r ], [ %.019.i.i.i.i.i, %bb.q ]
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.kh
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !296, !noalias !432
  %i.kk = icmp eq i32 %i.jl, %i.kj
  br i1 %i.kk, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit.i.i, label %bb.r, !prof !68

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i = zext i32 %i.jo to i64
  %i.kl = icmp samesign eq i64 %i.kh, %.pre.i.i
  br i1 %i.kl, label %_ZN4llvm14Rematerializer16transferUserImplEjjRNS_12MachineInstrE.exit, label %_ZNK4llvm14Rematerializer12getDefRegIdxERKNS_12MachineInstrE.exit.i

_ZNK4llvm14Rematerializer12getDefRegIdxERKNS_12MachineInstrE.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit.i.i
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.kh
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !247 ; 2 uses
  %.not.i = icmp eq i32 %i.ko, -1
  br i1 %.not.i, label %_ZN4llvm14Rematerializer16transferUserImplEjjRNS_12MachineInstrE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvm14Rematerializer12getDefRegIdxERKNS_12MachineInstrE.exit.i
  %i.kp = zext i32 %i.ko to i64
  %i.kq = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.kr = getelementptr inbounds nuw [176 x i8], ptr %i.kq, i64 %i.kp ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 152
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !8  ; 4 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 160
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !182
  %i.kw = zext i32 %i.kv to i64
  %.idx.i = shl nuw nsw i64 %i.kw, 2
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 %.idx.i
  %i.ky = load i32, ptr %i.kt, align 4, !tbaa !64
  %.not19.i93 = icmp eq i32 %i.ky, %1
  br i1 %.not19.i93, label %.loopexit.i, label %.critedge.i

.loopexit.i:                                      ; preds = %.critedge.i, %.lr.ph.i
  %.01641.i.lcssa = phi ptr [ %i.kt, %.lr.ph.i ], [ %i.kz, %.critedge.i ]
  store i32 %2, ptr %.01641.i.lcssa, align 4, !tbaa !64
  br label %_ZN4llvm14Rematerializer16transferUserImplEjjRNS_12MachineInstrE.exit

.critedge.i:                                      ; preds = %.lr.ph.i, %.critedge.i
  %.01641.i94 = phi ptr [ %i.kz, %.critedge.i ], [ %i.kt, %.lr.ph.i ]
  %i.kz = getelementptr inbounds nuw i8, ptr %.01641.i94, i64 4 ; 4 uses
  %.not18.not.i = icmp ne ptr %i.kz, %i.kx
  call void @llvm.assume(i1 %.not18.not.i)
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !64
  %.not19.i = icmp eq i32 %i.la, %1
  br i1 %.not19.i, label %.loopexit.i, label %.critedge.i

_ZN4llvm14Rematerializer16transferUserImplEjjRNS_12MachineInstrE.exit: ; preds = %bb.r, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS7_bEOT_DpOT0_.exit, %bb.o, %bb.p, %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread10.i.i, %bb.q, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit.i.i, %_ZNK4llvm14Rematerializer12getDefRegIdxERKNS_12MachineInstrE.exit.i, %.loopexit.i
  %i.lb = add i64 %.pn, 8
  %i.lc = ashr exact i64 %i.lb, 3                 ; 3 uses
  %.not.i.i.i = icmp ult i64 %i.lc, %i.bl
  br i1 %.not.i.i.i, label %bb.s, label %._crit_edge

bb.s:                                             ; preds = %_ZN4llvm14Rematerializer16transferUserImplEjjRNS_12MachineInstrE.exit
  %i.ld = lshr i64 %i.lc, 5                       ; 3 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.ld
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !64
  %i.lg = trunc nuw i64 %i.lc to i32
  %i.lh = and i32 %i.lg, 31
  %i.li = shl nsw i32 -1, %i.lh
  %i.lj = and i32 %i.lf, %i.li                    ; 2 uses
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %.lr.ph.i.i.i25.preheader, label %_ZN4llvm6detail12DenseSetImplIPNS_12MachineInstrENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb1EEppEv.exit

.lr.ph.i.i.i25.preheader:                         ; preds = %bb.s
  %i.ll = add nuw nsw i64 %i.ld, 1                ; 2 uses
  %i.lm = icmp eq i64 %i.ll, %i.cc
  br i1 %i.lm, label %._crit_edge, label %.lr.ph197

.lr.ph.i.i.i25:                                   ; preds = %.lr.ph197
  %i.ln = add i64 %i.lp, 1                        ; 2 uses
  %i.lo = icmp eq i64 %i.ln, %i.cc
  br i1 %i.lo, label %._crit_edge, label %.lr.ph197, !llvm.loop !77

.lr.ph197:                                        ; preds = %.lr.ph.i.i.i25.preheader, %.lr.ph.i.i.i25
  %i.lp = phi i64 [ %i.ln, %.lr.ph.i.i.i25 ], [ %i.ll, %.lr.ph.i.i.i25.preheader ] ; 3 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.lp
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !64 ; 2 uses
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %.lr.ph.i.i.i25, label %_ZN4llvm6detail12DenseSetImplIPNS_12MachineInstrENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb1EEppEv.exit, !llvm.loop !77

_ZN4llvm6detail12DenseSetImplIPNS_12MachineInstrENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb1EEppEv.exit: ; preds = %.lr.ph197, %bb.s
  %.012.lcssa.i.i.i23 = phi i64 [ %i.ld, %bb.s ], [ %i.lp, %.lr.ph197 ]
  %.0.lcssa.i.i.i24 = phi i32 [ %i.lj, %bb.s ], [ %i.lr, %.lr.ph197 ]
  %i.lt = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i24, i1 true)
  %.idx.i.i.i = shl i64 %.012.lcssa.i.i.i23, 8
  %i.lu = shl nuw nsw i32 %i.lt, 3
  %.idx171 = zext nneg i32 %i.lu to i64
  %i.lv = or disjoint i64 %.idx.i.i.i, %.idx171   ; 2 uses
  %.not74 = icmp eq i64 %i.lv, %.idx170
  br i1 %.not74, label %._crit_edge, label %bb.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E5clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = lshr i32 %i.a, 1                         ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i32 %i.b, 2
  %i.e = and i32 %i.a, 1                          ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = select i1 %.not.i.i, i32 %i.g, i32 2     ; 4 uses
  %i.i = icmp ult i32 %i.d, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ugt i32 %i.h, 64
  br i1 %i.j, label %bb.d, label %.lr.ph9.preheader.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %i.h, 0
  br i1 %i.k, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit, label %.lr.ph9.preheader.i

.lr.ph9.preheader.i:                              ; preds = %bb.c, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %.not.i.i, ptr %i.m, ptr %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i, ptr %i.q, ptr %i.o
  %i.s = zext i32 %i.h to i64
  %i.t = add nuw nsw i64 %i.s, 31
  %i.u = lshr i64 %i.t, 5
  br label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %._crit_edge.i, %.lr.ph9.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph9.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !64   ; 2 uses
  %.not11.i4.i = icmp eq i32 %i.w, 0
  br i1 %.not11.i4.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph9.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.x = shl i32 %indvars.iv.tr.i, 5
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i5.i = phi i32 [ %i.w, %.lr.ph.i ], [ %i.ar, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.y = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5.i, i1 true)
  %i.z = or disjoint i32 %i.y, %i.x
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %i.aa ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = and i32 %i.ad, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !168 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !168
  %i.ak = zext i32 %i.ag to i64                   ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.ak, 31
  %i.an = lshr i64 %i.am, 3
  %i.ao = and i64 %i.an, 1073741820
  %i.ap = add nuw nsw i64 %i.ao, %i.al
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aj, i64 noundef %i.ap, i64 noundef 8) #19
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.aq = add i32 %.0.i5.i, -1
  %i.ar = and i32 %i.aq, %.0.i5.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.f, !llvm.loop !433

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph9.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i2 = icmp eq i64 %indvars.iv.next.i, %i.u
  br i1 %.not.i.i2, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit.loopexit, label %.lr.ph9.i, !llvm.loop !434

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %0, align 8
  %.pre5 = load i32, ptr %i.f, align 8
  %.pre6 = and i32 %.pre, 1
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit.loopexit, %bb.e
  %.pre-phi = phi i32 [ %.pre6, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit.loopexit ], [ %i.e, %bb.e ]
  %i.as = phi i32 [ %.pre5, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit.loopexit ], [ %i.g, %bb.e ]
  %.not.i.i.i3 = icmp eq i32 %.pre-phi, 0         ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = select i1 %.not.i.i.i3, ptr %i.av, ptr %i.at
  %i.ax = select i1 %.not.i.i.i3, i32 %i.as, i32 2
  %i.ay = zext i32 %i.ax to i64
  %i.az = add nuw nsw i64 %i.ay, 31
  %i.ba = lshr i64 %i.az, 3
  %i.bb = and i64 %i.ba, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aw, i8 0, i64 %i.bb, i1 false)
  %i.bc = load i32, ptr %0, align 8
  %i.bd = and i32 %i.bc, 1
  store i32 %i.bd, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit, %bb.d
  ret void
}

declare void @_ZN4llvm12MachineInstr18substituteRegisterENS_8RegisterES1_jRKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(80), i32, i32, i32 noundef, ptr noundef nonnull align 8 dereferenceable(316)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK4llvm14Rematerializer12getDefRegIdxERKNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(528) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i24, ptr %i.a, align 8
  %.not = icmp eq i24 %i.b, 0
  br i1 %.not, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !241  ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  %i.f = and i32 %i.e, 255
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %i.e, 805306368
  %or.cond.not.i = icmp ne i32 %i.h, 0
  %i.i = and i32 %i.e, 17825536
  %or.cond.not = icmp eq i32 %i.i, 16777216
  %or.cond = or i1 %or.cond.not.i, %or.cond.not
  br i1 %or.cond, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread10, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread

_ZNK4llvm14MachineOperand8readsRegEv.exit.thread10: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !168  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !283, !noalias !435 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !293, !noalias !435 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.q = load i32, ptr %i.p, align 4, !tbaa !294, !noalias !435 ; 3 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread10
  %i.s = add i32 %i.q, -1                         ; 2 uses
  %i.t = mul i32 %i.k, 37
  %.019.i.i.i = and i32 %i.s, %i.t                ; 3 uses
  %i.u = zext i32 %.019.i.i.i to i64              ; 2 uses
  %i.v = lshr i64 %i.u, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !64, !noalias !444
  %i.y = and i32 %.019.i.i.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i.i.i, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread, !prof !66

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = add nuw i32 %.020.i.i.i, 1
  %.0.i.i.i = and i32 %i.ab, %i.s                 ; 3 uses
  %i.ac = zext i32 %.0.i.i.i to i64               ; 2 uses
  %i.ad = lshr i64 %i.ac, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !64, !noalias !444
  %i.ag = and i32 %.0.i.i.i, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i.i.i, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread, !prof !67

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %i.aj = phi i64 [ %i.ac, %bb.e ], [ %i.u, %bb.d ] ; 3 uses
  %.020.i.i.i = phi i32 [ %.0.i.i.i, %bb.e ], [ %.019.i.i.i, %bb.d ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !296, !noalias !444
  %i.am = icmp eq i32 %i.k, %i.al
  br i1 %i.am, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit, label %bb.e, !prof !68

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit: ; preds = %.lr.ph.i.i.i
  %.pre = zext i32 %i.q to i64
  %i.an = icmp samesign eq i64 %i.aj, %.pre
  br i1 %i.an, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit
  %.sink15.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink15.i.i, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !247
  br label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread

_ZNK4llvm14MachineOperand8readsRegEv.exit.thread: ; preds = %bb.e, %bb.d, %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread10, %bb.c, %bb.f, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit, %bb.a, %bb.b
  %.1 = phi i32 [ -1, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ], [ %i.ap, %bb.f ], [ -1, %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread10 ], [ -1, %bb.d ], [ -1, %bb.e ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14Rematerializer19updateLiveIntervalsEv(ptr noundef nonnull align 8 dereferenceable(528) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.llvm::DenseSet.87", align 8 ; 11 uses
  %2 = alloca %"class.llvm::SmallVector.116", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !336, !noalias !445
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !342, !noalias !445 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !343, !noalias !445 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !400, !noalias !445 ; 5 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = zext i32 %i.f to i64                     ; 4 uses
  %.idx126 = shl nuw nsw i64 %i.j, 2              ; 2 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.f, 0
  %or.cond.i = select i1 %i.i, i1 true, i1 %.not.i.not.i.i.i
  br i1 %or.cond.i, label %._crit_edge75, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add nuw nsw i64 %i.j, 31
  %i.l = lshr i64 %i.k, 5                         ; 2 uses
  %i.m = load i32, ptr %i.d, align 4, !tbaa !64, !noalias !450 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i.i.preheader, label %_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.o = icmp eq i64 %i.l, 1
  br i1 %i.o, label %._crit_edge75, label %.lr.ph136

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph136
  %i.p = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.l
  br i1 %i.q, label %._crit_edge75, label %.lr.ph136, !llvm.loop !453

.lr.ph136:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.r = phi i64 [ %i.p, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
end_hunk_0
begin_hunk_1_@_ZN4llvm14Rematerializer7analyzeEv:bb.a
  br i1 %i.ex, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i, !prof !66

.lr.ph.i:                                         ; preds = %bb.q, %bb.r
  %i.ey = phi ptr [ %i.fe, %bb.r ], [ %i.er, %bb.q ] ; 2 uses
  %.024.i = phi i32 [ %i.fc, %bb.r ], [ %i.ep, %bb.q ]
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !79, !noalias !734
  %i.fa = icmp eq ptr %.sroa.045.063, %i.ez
  br i1 %i.fa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i, label %bb.r, !prof !68

bb.r:                                             ; preds = %.lr.ph.i
  %i.fb = add nuw i32 %.024.i, 1
  %i.fc = and i32 %i.fb, %i.ej                    ; 3 uses
  %i.fd = zext i32 %i.fc to i64                   ; 2 uses
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %i.fd ; 2 uses
  %i.ff = lshr i64 %i.fd, 5
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !64, !noalias !734
  %i.fi = and i32 %i.fc, 31
  %i.fj = lshr i32 %i.fh, %i.fi
  %i.fk = trunc i32 %i.fj to i1
  br i1 %i.fk, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i, !prof !67, !llvm.loop !735

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i: ; preds = %bb.r, %.lr.ph.i, %bb.q, %.loopexit.i
  %i.fl = phi ptr [ %i.cu, %.loopexit.i ], [ %i.eg, %bb.q ], [ %i.eg, %.lr.ph.i ], [ %i.eg, %bb.r ] ; 2 uses
  %i.fm = phi ptr [ %i.cv, %.loopexit.i ], [ %i.ef, %bb.q ], [ %i.ef, %.lr.ph.i ], [ %i.ef, %bb.r ] ; 2 uses
  %i.fn = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i ], [ %i.er, %bb.q ], [ %i.fe, %bb.r ], [ %i.ey, %.lr.ph.i ] ; 3 uses
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.fm to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = ashr exact i64 %i.fq, 4                 ; 2 uses
  %i.fs = trunc i64 %i.fr to i32
  %i.ft = and i32 %i.fs, 31
  %i.fu = shl nuw i32 1, %i.ft
  %i.fv = lshr i64 %i.fr, 5
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fv ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !64, !noalias !734
  %i.fy = or i32 %i.fu, %i.fx
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !64, !noalias !734
  %i.fz = load i32, ptr %i.bq, align 8, !tbaa !736, !noalias !734
  %i.ga = add i32 %i.fz, 1
  store i32 %i.ga, ptr %i.bq, align 8, !tbaa !736, !noalias !734
  store ptr %.sroa.045.063, ptr %i.fn, align 8, !tbaa !79, !noalias !734
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i32 %i.cj, ptr %i.gb, align 8, !tbaa !64, !noalias !734
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIS3_JjEEESt4pairIPS8_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIS3_JjEEESt4pairIPS8_bEOT_DpOT0_.exit: ; preds = %.lr.ph.i.i29, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i
  %i.gc = phi ptr [ %i.fl, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i ], [ %i.cu, %.lr.ph.i.i29 ]
  %i.gd = phi ptr [ %i.fm, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i ], [ %i.cv, %.lr.ph.i.i29 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.045.063) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.045.063, align 8
  %i.ge = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.ge, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIS3_JjEEESt4pairIPS8_bEOT_DpOT0_.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.045.063, i64 44
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !131
  %i.gh = and i32 %i.gg, 8
  %.not34.i.i.i = icmp eq i32 %i.gh, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.gj, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %.sroa.045.063, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !149 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 44
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !131
  %i.gm = and i32 %i.gl, 8
  %.not3.i.i.i = icmp eq i32 %i.gm, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !589

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIS3_JjEEESt4pairIPS8_bEOT_DpOT0_.exit, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.045.063, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIS3_JjEEESt4pairIPS8_bEOT_DpOT0_.exit ], [ %.sroa.045.063, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.gj, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !149 ; 2 uses
  %.not58 = icmp eq ptr %i.go, %.sroa.549.0.copyload
  br i1 %.not58, label %._crit_edge, label %.lr.ph, !llvm.loop !742

bb.s:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %.sroa.549.0.copyload, ptr %2, align 8, !tbaa !743
  %i.gp = trunc nuw i64 %indvars.iv to i32
  store i32 %i.gp, ptr %i.br, align 8, !tbaa !745
  %i.gq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIS3_JjEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.br), !noalias !746 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge66, label %bb.l, !llvm.loop !751

._crit_edge70:                                    ; preds = %bb.x, %_ZN4llvm9BitVectorC2Ejb.exit
  %i.gr = phi ptr [ %i.bz, %_ZN4llvm9BitVectorC2Ejb.exit ], [ %i.hn, %bb.x ] ; 2 uses
  %i.gs = load i32, ptr %i.c, align 8, !tbaa !182
  %.not.i25 = icmp ne i32 %i.gs, 0
  %i.gt = icmp eq ptr %i.gr, %i.bz
  br i1 %i.gt, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge70
  call void @free(ptr noundef %i.gr) #19
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %._crit_edge70, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !733 ; 2 uses
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm9BitVectorD2Ev.exit
  %i.gx = load ptr, ptr %1, align 8, !tbaa !719
  %i.gy = zext i32 %i.gv to i64                   ; 2 uses
  %i.gz = shl nuw nsw i64 %i.gy, 4
  %i.ha = add nuw nsw i64 %i.gy, 31
  %i.hb = lshr i64 %i.ha, 3
  %i.hc = and i64 %i.hb, 1073741820
  %i.hd = add nuw nsw i64 %i.hc, %i.gz
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.gx, i64 noundef %i.hd, i64 noundef 8) #19
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit: ; preds = %_ZN4llvm9BitVectorD2Ev.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.y

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %bb.x
  %i.he = phi ptr [ %i.hn, %bb.x ], [ %.ph, %.lr.ph69.preheader ] ; 2 uses
  %.01168 = phi i32 [ %i.ho, %bb.x ], [ 0, %.lr.ph69.preheader ] ; 4 uses
  %i.hf = lshr i32 %.01168, 6
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hg
  %i.hi = and i32 %.01168, 63
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !225
  %i.hk = zext nneg i32 %i.hi to i64
  %i.hl = shl nuw i64 1, %i.hk
  %i.hm = and i64 %i.hj, %i.hl
  %.not57 = icmp eq i64 %i.hm, 0
  br i1 %.not57, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph69
  call void @_ZN4llvm14Rematerializer24addRegIfRematerializableEjRKNS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEERNS_9BitVectorE(ptr noundef nonnull align 8 dereferenceable(528) %0, i32 noundef %.01168, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(68) %3)
  %.pre78 = load ptr, ptr %3, align 8, !tbaa !8
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph69, %bb.w
  %i.hn = phi ptr [ %i.he, %.lr.ph69 ], [ %.pre78, %bb.w ] ; 2 uses
  %i.ho = add nuw i32 %.01168, 1                  ; 2 uses
  %.not = icmp eq i32 %i.ho, %i.bv
  br i1 %.not, label %._crit_edge70, label %.lr.ph69, !llvm.loop !752

bb.y:                                             ; preds = %_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5clearEv.exit, %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit
  %.0 = phi i1 [ %.not.i25, %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit ], [ false, %_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5clearEv.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E5clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !753  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i32 %i.b, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !355  ; 4 uses
  %i.g = icmp ult i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i32 %i.f, 64
  br i1 %i.h, label %bb.d, label %.lr.ph7.preheader.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.f, 0
  br i1 %i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.c, %bb.e
  %i.j = load ptr, ptr %0, align 8, !tbaa !344
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !354
  %i.m = zext i32 %i.f to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !64   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.q, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.r = shl i32 %indvars.iv.tr.i, 5
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.ak, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %i.u ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8
  %i.y = and i32 %i.x, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !168 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !168
  %i.ae = zext i32 %i.aa to i64                   ; 2 uses
  %i.af = add nuw nsw i64 %i.ae, 31
  %i.ag = lshr i64 %i.af, 5
  %i.ah = add nuw nsw i64 %i.ag, %i.ae
  %i.ai = shl nuw nsw i64 %i.ah, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ad, i64 noundef %i.ai, i64 noundef 4) #19
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.aj = add i32 %.0.i3.i, -1
  %i.ak = and i32 %i.aj, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.f, !llvm.loop !754

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEv.exit.loopexit, label %.lr.ph7.i, !llvm.loop !755

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEv.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %i.e, align 4, !tbaa !355
  %i.al = zext i32 %.pre to i64
  %i.am = add nuw nsw i64 %i.al, 31
  %i.an = lshr i64 %i.am, 3
  %i.ao = and i64 %i.an, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEv.exit.loopexit, %bb.e
  %i.ap = phi i64 [ %i.ao, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEv.exit.loopexit ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !354
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ar, i8 0, i64 %i.ap, i1 false)
  store i32 0, ptr %i.a, align 8, !tbaa !753
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14Rematerializer24addRegIfRematerializableEjRKNS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEERNS_9BitVectorE(ptr noundef nonnull align 8 dereferenceable(528) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"struct.llvm::Rematerializer::Reg", align 8 ; 12 uses
  %5 = alloca %"class.llvm::SmallSetVector", align 8 ; 14 uses
  %6 = alloca %"struct.llvm::SmallMapVector", align 8 ; 14 uses
  %7 = alloca %"class.llvm::Register", align 4    ; 6 uses
  %8 = alloca %"struct.llvm::LaneBitmask", align 8 ; 4 uses
  %9 = alloca %"class.llvm::SmallVector.20", align 8 ; 9 uses
  %10 = alloca %"struct.std::pair.355", align 4   ; 5 uses
  %11 = alloca %"class.llvm::SmallVector.347", align 8 ; 13 uses
  %i.c = or i32 %1, -2147483648                   ; 2 uses
  %i.d = and i32 %1, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = lshr i32 %1, 6
  %i.h = zext nneg i32 %i.g to i64
  %i.i = load ptr, ptr %3, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !225
  %i.l = or i64 %i.k, %i.f
  store i64 %i.l, ptr %i.j, align 8, !tbaa !225
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !239, !nonnull !52, !align !53
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = and i32 %1, 2147483647
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.0.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !756 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNK4llvm19MachineRegisterInfo9getOneDefENS_8RegisterE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = load i32, ptr %.0.i.i.i, align 8
  %i.v = and i32 %i.u, 16777216
  %.not.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit.i

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !168  ; 3 uses
  %.not.i4.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i4.i.i.i, label %_ZNK4llvm19MachineRegisterInfo9getOneDefENS_8RegisterE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i32, ptr %i.x, align 8
  %i.z = and i32 %i.y, 16777216
  %.not.i.i.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm19MachineRegisterInfo9getOneDefENS_8RegisterE.exit.thread, label %_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit.i

_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit.i: ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %.0.i.i.i, %bb.b ], [ %i.x, %bb.d ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !168 ; 2 uses
  %.not.i.i3.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i3.i, label %_ZNK4llvm19MachineRegisterInfo9getOneDefENS_8RegisterE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit.i
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = and i32 %i.ac, 16777216
  %.not.i.i.i4.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i4.i, label %_ZNK4llvm19MachineRegisterInfo9getOneDefENS_8RegisterE.exit, label %_ZNK4llvm19MachineRegisterInfo9getOneDefENS_8RegisterE.exit.thread

_ZNK4llvm19MachineRegisterInfo9getOneDefENS_8RegisterE.exit: ; preds = %bb.e, %_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !512 ; 7 uses
  %i.ag = tail call noundef zeroext i1 @_ZNK4llvm14Rematerializer20isMIRematerializableERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.af)
  br i1 %i.ag, label %bb.f, label %_ZNK4llvm19MachineRegisterInfo9getOneDefENS_8RegisterE.exit.thread

bb.f:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo9getOneDefENS_8RegisterE.exit
  %i.ah = load ptr, ptr %2, align 8, !tbaa !719, !noalias !757 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !731, !noalias !757 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !733, !noalias !757 ; 4 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = add i32 %i.al, -1                       ; 2 uses
  %i.ao = ptrtoint ptr %i.af to i64
  %i.ap = mul i64 %i.ao, -4658895280553007687     ; 2 uses
  %i.aq = lshr i64 %i.ap, 31
  %i.ar = xor i64 %i.aq, %i.ap
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.an, %i.as                    ; 3 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = lshr i64 %i.au, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !64, !noalias !766
  %i.ay = and i32 %i.at, 31
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !66

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.h
  %i.bb = phi i64 [ %i.bh, %bb.h ], [ %i.au, %bb.g ]
  %.017.i.i.i = phi i32 [ %i.bg, %bb.h ], [ %i.at, %bb.g ]
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.bb ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !79, !noalias !766
  %i.be = icmp eq ptr %i.af, %i.bd
  br i1 %i.be, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit, label %bb.h, !prof !68

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.bf = add nuw i32 %.017.i.i.i, 1
  %i.bg = and i32 %i.bf, %i.an                    ; 3 uses
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = lshr i64 %i.bh, 5
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !64, !noalias !766
  %i.bl = and i32 %i.bg, 31
  %i.bm = lshr i32 %i.bk, %i.bl
  %i.bn = trunc i32 %i.bm to i1
  br i1 %i.bn, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !67

.loopexit.i.i:                                    ; preds = %bb.h, %bb.g, %bb.f
  %i.bo = zext i32 %i.al to i64                   ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.bo
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre = zext i32 %i.al to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit ], [ %i.bo, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.bc, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.loopexit ], [ %i.bp, %.loopexit.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.pre-phi
  %i.br = icmp eq ptr %.lcssa.sink.i.i, %i.bq
  br i1 %i.br, label %_ZNK4llvm19MachineRegisterInfo9getOneDefENS_8RegisterE.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4llvm10Rollbacker8rollbackERNS_14RematerializerE:bb.a
  %i.dl = icmp ult i32 %i.da, 2
  %i.dm = zext i32 %i.dk to i64                   ; 4 uses
  %.idx144 = shl nuw nsw i64 %i.dm, 2             ; 2 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.dk, 0
  %or.cond.i = select i1 %i.dl, i1 true, i1 %.not.i.not.i.i.i
  br i1 %or.cond.i, label %._crit_edge86, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dn = add nuw nsw i64 %i.dm, 31
  %i.do = lshr i64 %i.dn, 5                       ; 2 uses
  %i.dp = load i32, ptr %i.di, align 4, !tbaa !64, !noalias !1048 ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %.lr.ph.i.i.i.i.preheader, label %_ZNK4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.k
  %i.dr = icmp eq i64 %i.do, 1
  br i1 %i.dr, label %._crit_edge86, label %.lr.ph163

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph163
  %i.ds = add nuw nsw i64 %i.du, 1                ; 2 uses
  %i.dt = icmp eq i64 %i.ds, %i.do
  br i1 %i.dt, label %._crit_edge86, label %.lr.ph163, !llvm.loop !574

.lr.ph163:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.du = phi i64 [ %i.ds, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !64, !noalias !1048 ; 2 uses
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !574

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph163
  %i.dy = shl i64 %i.du, 7
  br label %_ZNK4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv.exit

_ZNK4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv.exit: ; preds = %bb.k, %._crit_edge.i.loopexit.i.i.i
  %.012.lcssa.i.i.i.i = phi i64 [ 0, %bb.k ], [ %i.dy, %._crit_edge.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.dp, %bb.k ], [ %i.dw, %._crit_edge.i.loopexit.i.i.i ]
  %i.dz = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %i.ea = shl nuw nsw i32 %i.dz, 2
  %.idx143 = zext nneg i32 %i.ea to i64
  %i.eb = or disjoint i64 %.012.lcssa.i.i.i.i, %.idx143 ; 2 uses
  %.not6883 = icmp eq i64 %i.eb, %.idx144
  br i1 %.not6883, label %._crit_edge86, label %.lr.ph85

.lr.ph85:                                         ; preds = %_ZNK4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv.exit
  %i.ec = add nuw nsw i64 %i.dm, 31
  %i.ed = lshr i64 %i.ec, 5                       ; 2 uses
  br label %bb.m

._crit_edge86:                                    ; preds = %.lr.ph.i.i.i.i, %bb.o, %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE16DenseSetIteratorILb1EEppEv.exit, %.lr.ph.i.i.i35.preheader, %.lr.ph.i.i.i35, %.lr.ph.i.i.i.i.preheader, %bb.j, %_ZNK4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv.exit
  %i.ee = add i64 %.pn148, 40
  %i.ef = sdiv exact i64 %i.ee, 40                ; 3 uses
  %.not.i.i29 = icmp ult i64 %i.ef, %i.x
  br i1 %.not.i.i29, label %bb.l, label %._crit_edge90

bb.l:                                             ; preds = %._crit_edge86
  %i.eg = lshr i64 %i.ef, 5                       ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !64
  %i.ej = trunc nuw i64 %i.ef to i32
  %i.ek = and i32 %i.ej, 31
  %i.el = shl nsw i32 -1, %i.ek
  %i.em = and i32 %i.ei, %i.el                    ; 2 uses
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %.lr.ph.i.i30.preheader, label %_ZN4llvm16DenseMapIteratorIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EELb0EEppEv.exit

.lr.ph.i.i30.preheader:                           ; preds = %bb.l
  %i.eo = add nuw nsw i64 %i.eg, 1                ; 2 uses
  %i.ep = icmp eq i64 %i.eo, %i.ao
  br i1 %i.ep, label %._crit_edge90, label %.lr.ph165

.lr.ph.i.i30:                                     ; preds = %.lr.ph165
  %i.eq = add i64 %i.es, 1                        ; 2 uses
  %i.er = icmp eq i64 %i.eq, %i.ao
  br i1 %i.er, label %._crit_edge90, label %.lr.ph165, !llvm.loop !1022

.lr.ph165:                                        ; preds = %.lr.ph.i.i30.preheader, %.lr.ph.i.i30
  %i.es = phi i64 [ %i.eq, %.lr.ph.i.i30 ], [ %i.eo, %.lr.ph.i.i30.preheader ] ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !64 ; 2 uses
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %.lr.ph.i.i30, label %_ZN4llvm16DenseMapIteratorIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EELb0EEppEv.exit, !llvm.loop !1022

_ZN4llvm16DenseMapIteratorIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EELb0EEppEv.exit: ; preds = %.lr.ph165, %bb.l
  %.012.lcssa.i.i = phi i64 [ %i.eg, %bb.l ], [ %i.es, %.lr.ph165 ]
  %.0.lcssa.i.i = phi i32 [ %i.em, %bb.l ], [ %i.eu, %.lr.ph165 ]
  %i.ew = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i = mul i64 %.012.lcssa.i.i, 1280
  %narrow147 = mul nuw nsw i32 %i.ew, 40
  %.idx146 = zext nneg i32 %narrow147 to i64
  %i.ex = add i64 %.idx.i.i, %.idx146             ; 2 uses
  %.not67 = icmp eq i64 %i.ex, %.idx142
  br i1 %.not67, label %._crit_edge90, label %bb.j

bb.m:                                             ; preds = %.lr.ph85, %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE16DenseSetIteratorILb1EEppEv.exit
  %.pn = phi i64 [ %i.eb, %.lr.ph85 ], [ %i.fy, %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE16DenseSetIteratorILb1EEppEv.exit ] ; 2 uses
  %.sroa.037.084 = getelementptr i8, ptr %i.de, i64 %.pn
  %i.ey = load i32, ptr %.sroa.037.084, align 4, !tbaa !64 ; 2 uses
  %i.ez = zext i32 %i.ey to i64
  %i.fa = load ptr, ptr %i.am, align 8, !tbaa !8
  %i.fb = getelementptr inbounds nuw [176 x i8], ptr %i.fa, i64 %i.ez
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !240
  %.not69 = icmp eq ptr %i.fc, null
  br i1 %.not69, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fd = load i32, ptr %.sroa.044.088, align 8, !tbaa !1051
  call void @_ZN4llvm14Rematerializer16transferAllUsersEjj(ptr noundef nonnull align 8 dereferenceable(528) %1, i32 noundef %i.ey, i32 noundef %i.fd)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.fe = add i64 %.pn, 4
  %i.ff = ashr exact i64 %i.fe, 2                 ; 3 uses
  %.not.i.i.i = icmp ult i64 %i.ff, %i.dm
  br i1 %.not.i.i.i, label %bb.p, label %._crit_edge86

bb.p:                                             ; preds = %bb.o
  %i.fg = lshr i64 %i.ff, 5                       ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !64
  %i.fj = trunc nuw i64 %i.ff to i32
  %i.fk = and i32 %i.fj, 31
  %i.fl = shl nsw i32 -1, %i.fk
  %i.fm = and i32 %i.fi, %i.fl                    ; 2 uses
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %.lr.ph.i.i.i35.preheader, label %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE16DenseSetIteratorILb1EEppEv.exit

.lr.ph.i.i.i35.preheader:                         ; preds = %bb.p
  %i.fo = add nuw nsw i64 %i.fg, 1                ; 2 uses
  %i.fp = icmp eq i64 %i.fo, %i.ed
  br i1 %i.fp, label %._crit_edge86, label %.lr.ph164

.lr.ph.i.i.i35:                                   ; preds = %.lr.ph164
  %i.fq = add i64 %i.fs, 1                        ; 2 uses
  %i.fr = icmp eq i64 %i.fq, %i.ed
  br i1 %i.fr, label %._crit_edge86, label %.lr.ph164, !llvm.loop !574

.lr.ph164:                                        ; preds = %.lr.ph.i.i.i35.preheader, %.lr.ph.i.i.i35
  %i.fs = phi i64 [ %i.fq, %.lr.ph.i.i.i35 ], [ %i.fo, %.lr.ph.i.i.i35.preheader ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !64 ; 2 uses
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %.lr.ph.i.i.i35, label %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE16DenseSetIteratorILb1EEppEv.exit, !llvm.loop !574

_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE16DenseSetIteratorILb1EEppEv.exit: ; preds = %.lr.ph164, %bb.p
  %.012.lcssa.i.i.i33 = phi i64 [ %i.fg, %bb.p ], [ %i.fs, %.lr.ph164 ]
  %.0.lcssa.i.i.i34 = phi i32 [ %i.fm, %bb.p ], [ %i.fu, %.lr.ph164 ]
  %i.fw = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i34, i1 true)
  %.idx.i.i.i = shl i64 %.012.lcssa.i.i.i33, 7
  %i.fx = shl nuw nsw i32 %i.fw, 2
  %.idx145 = zext nneg i32 %i.fx to i64
  %i.fy = or disjoint i64 %.idx.i.i.i, %.idx145   ; 2 uses
  %.not68 = icmp eq i64 %i.fy, %.idx144
  br i1 %.not68, label %._crit_edge86, label %bb.m
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E5clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1056 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i32 %i.b, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !987  ; 4 uses
  %i.g = icmp ult i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i32 %i.f, 64
  br i1 %i.h, label %bb.d, label %.lr.ph7.preheader.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.f, 0
  br i1 %i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.c, %bb.e
  %i.j = load ptr, ptr %0, align 8, !tbaa !976
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !986
  %i.m = zext i32 %i.f to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !64   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.q, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.r = shl i32 %indvars.iv.tr.i, 5
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.ak, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %i.u ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8
  %i.y = and i32 %i.x, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !168 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !168
  %i.ae = zext i32 %i.aa to i64                   ; 2 uses
  %i.af = add nuw nsw i64 %i.ae, 31
  %i.ag = lshr i64 %i.af, 5
  %i.ah = add nuw nsw i64 %i.ag, %i.ae
  %i.ai = shl nuw nsw i64 %i.ah, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ad, i64 noundef %i.ai, i64 noundef 4) #19
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.aj = add i32 %.0.i3.i, -1
  %i.ak = and i32 %i.aj, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.f, !llvm.loop !1057

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEv.exit.loopexit, label %.lr.ph7.i, !llvm.loop !1058

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEv.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %i.e, align 4, !tbaa !987
  %i.al = zext i32 %.pre to i64
  %i.am = add nuw nsw i64 %i.al, 31
  %i.an = lshr i64 %i.am, 3
  %i.ao = and i64 %i.an, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEv.exit.loopexit, %bb.e
  %i.ap = phi i64 [ %i.ao, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEv.exit.loopexit ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !986
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ar, i8 0, i64 %i.ap, i1 false)
  store i32 0, ptr %i.a, align 8, !tbaa !1056
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE12insert_rangeIRNS_13SmallDenseSetIjLj1ES5_EEEEvOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !noalias !1059 ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.b, 0       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !1059
  %i.e = select i1 %.not.i.i.i.i.i.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !noalias !1059
  %i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.h, ptr %i.f ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !noalias !1059
  %i.l = select i1 %.not.i.i.i.i.i.i.i, i32 %i.k, i32 1 ; 2 uses
  %i.m = icmp ult i32 %i.a, 2
  %i.n = zext i32 %i.l to i64                     ; 3 uses
  %.idx18 = shl nuw nsw i64 %i.n, 2               ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i32 %i.l, 0
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %.not.i.not.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE6insertINS9_16DenseSetIteratorILb0EEEEEvT_SD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = add nuw nsw i64 %i.n, 31
  %i.p = lshr i64 %i.o, 5                         ; 4 uses
  %i.q = load i32, ptr %i.i, align 4, !tbaa !64, !noalias !1068 ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN4llvm9adl_beginIRNS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS6_.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %i.s = icmp eq i64 %i.p, 1
  br i1 %i.s, label %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE6insertINS9_16DenseSetIteratorILb0EEEEEvT_SD_.exit, label %.lr.ph

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph
  %i.t = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.p
  br i1 %i.u, label %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE6insertINS9_16DenseSetIteratorILb0EEEEEvT_SD_.exit, label %.lr.ph, !llvm.loop !453

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %i.v = phi i64 [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !64, !noalias !1068 ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i, !llvm.loop !453

._crit_edge.i.loopexit.i.i.i.i.i:                 ; preds = %.lr.ph
  %i.z = shl i64 %i.v, 7
  br label %_ZN4llvm9adl_beginIRNS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS6_.exit

_ZN4llvm9adl_beginIRNS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS6_.exit: ; preds = %bb.b, %._crit_edge.i.loopexit.i.i.i.i.i
  %.012.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.z, %._crit_edge.i.loopexit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi i32 [ %i.q, %bb.b ], [ %i.x, %._crit_edge.i.loopexit.i.i.i.i.i ]
  %i.aa = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i, i1 true)
  %i.ab = shl nuw nsw i32 %i.aa, 2
  %.idx = zext nneg i32 %i.ab to i64
  %i.ac = or disjoint i64 %.012.lcssa.i.i.i.i.i.i, %.idx ; 2 uses
  %.not4.i = icmp eq i64 %i.ac, %.idx18
  br i1 %.not4.i, label %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE6insertINS9_16DenseSetIteratorILb0EEEEEvT_SD_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm9adl_beginIRNS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS6_.exit, %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE16DenseSetIteratorILb0EEppEv.exit.i
  %.pn = phi i64 [ %i.ay, %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE16DenseSetIteratorILb0EEppEv.exit.i ], [ %i.ac, %_ZN4llvm9adl_beginIRNS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS6_.exit ] ; 2 uses
  %storemerge16.i.i.i35.i = getelementptr i8, ptr %i.e, i64 %.pn
  %i.ad = tail call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %storemerge16.i.i.i35.i), !noalias !1071 ; 0 uses
  %i.ae = add i64 %.pn, 4
  %i.af = ashr exact i64 %i.ae, 2                 ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.af, %i.n
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE6insertINS9_16DenseSetIteratorILb0EEEEEvT_SD_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.ag = lshr i64 %i.af, 5                       ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !64
  %i.aj = trunc nuw i64 %i.af to i32
  %i.ak = and i32 %i.aj, 31
  %i.al = shl nsw i32 -1, %i.ak
  %i.am = and i32 %i.ai, %i.al                    ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.i.i.i.i.preheader, label %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE16DenseSetIteratorILb0EEppEv.exit.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.ao = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %i.ap = icmp eq i64 %i.ao, %i.p
  br i1 %i.ap, label %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE6insertINS9_16DenseSetIteratorILb0EEEEEvT_SD_.exit, label %.lr.ph52

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph52
  %i.aq = add i64 %i.as, 1                        ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.p
  br i1 %i.ar, label %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE6insertINS9_16DenseSetIteratorILb0EEEEEvT_SD_.exit, label %.lr.ph52, !llvm.loop !453

.lr.ph52:                                         ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.as = phi i64 [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.ao, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !64 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.i.i.i.i, label %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE16DenseSetIteratorILb0EEppEv.exit.i, !llvm.loop !453

_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE16DenseSetIteratorILb0EEppEv.exit.i: ; preds = %.lr.ph52, %bb.c
  %.012.lcssa.i.i.i.i = phi i64 [ %i.ag, %bb.c ], [ %i.as, %.lr.ph52 ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.am, %bb.c ], [ %i.au, %.lr.ph52 ]
  %i.aw = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %.idx.i.i.i.i = shl i64 %.012.lcssa.i.i.i.i, 7
  %i.ax = shl nuw nsw i32 %i.aw, 2
  %.idx19 = zext nneg i32 %i.ax to i64
  %i.ay = or disjoint i64 %.idx.i.i.i.i, %.idx19  ; 2 uses
  %.not.i = icmp eq i64 %i.ay, %.idx18
  br i1 %.not.i, label %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE6insertINS9_16DenseSetIteratorILb0EEEEEvT_SD_.exit, label %.lr.ph.i, !llvm.loop !1078

_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE6insertINS9_16DenseSetIteratorILb0EEEEEvT_SD_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i, %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE16DenseSetIteratorILb0EEppEv.exit.i, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader, %bb.a, %_ZN4llvm9adl_beginIRNS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS6_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14Rematerializer8Listener28rematerializerNoteRegCreatedERKS0_j(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(528) %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14Rematerializer8Listener34rematerializerNoteRegWillBeDeletedERKS0_j(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(528) %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14Rematerializer8ListenerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14Rematerializer8ListenerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm10RollbackerD2Ev(ptr noundef nonnull align 8 dead_on_return(185) dereferenceable(185) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm10RollbackerE, i64 16), ptr %0, align 8, !tbaa !244
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN4llvm8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS8_IS6_vEENS_6detail12DenseMapPairIS6_SA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEELj6EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.d) #19
  br label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEELj6EED2Ev.exit

_ZN4llvm11SmallVectorINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEELj6EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN4llvm11SmallVectorINS_10Rollbacker7DeadRegELj3EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEELj6EED2Ev.exit
  tail call void @free(ptr noundef %i.h) #19
  br label %_ZN4llvm11SmallVectorINS_10Rollbacker7DeadRegELj3EED2Ev.exit

_ZN4llvm11SmallVectorINS_10Rollbacker7DeadRegELj3EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEELj6EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm10RollbackerD0Ev(ptr noundef nonnull align 8 dereferenceable(185) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm10RollbackerE, i64 16), ptr %0, align 8, !tbaa !244
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #19, !inline_history !1079
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN4llvm8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS8_IS6_vEENS_6detail12DenseMapPairIS6_SA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #19, !inline_history !1079
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEELj6EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.d) #19, !inline_history !1079
  br label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEELj6EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN4llvm10RollbackerD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEELj6EED2Ev.exit.i
  tail call void @free(ptr noundef %i.h) #19, !inline_history !1079
  br label %_ZN4llvm10RollbackerD2Ev.exit

_ZN4llvm10RollbackerD2Ev.exit:                    ; preds = %_ZN4llvm11SmallVectorINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEELj6EED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !182
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #19
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = load i32, ptr %i.a, align 8, !tbaa !182
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !182
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !182
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZN4llvm12LiveInterval14clearSubRangesEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN4llvm9LiveRange7SegmentES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1080
  tail call void @_ZNSt8_Rb_treeIN4llvm9LiveRange7SegmentES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1081 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 56) #20
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1082

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

declare noundef zeroext i1 @_ZN4llvm13LiveIntervals22computeVirtRegIntervalERNS_12LiveIntervalE(ptr noundef nonnull align 8 dereferenceable(424), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm13LiveIntervals14createIntervalENS_8RegisterE(i32) local_unnamed_addr #4

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm9LiveRange4findENS_9SlotIndexE(ptr noundef nonnull align 8 dereferenceable(104), i64) local_unnamed_addr #4

declare void @_ZN4llvm11SlotIndexes26removeMachineInstrFromMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416), ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #4

declare noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i.i, i32 %i.d, i32 2   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit, label %.lr.ph9.preheader.i

.lr.ph9.preheader.i:                              ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i, ptr %i.h, ptr %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = zext i32 %i.e to i64
  %i.o = add nuw nsw i64 %i.n, 31
  %i.p = lshr i64 %i.o, 5
  br label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %._crit_edge.i, %.lr.ph9.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph9.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !64   ; 2 uses
  %.not11.i4.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i4.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph9.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.s = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i5.i = phi i32 [ %i.r, %.lr.ph.i ], [ %i.am, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.t = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5.i, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %i.v ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8
  %i.z = and i32 %i.y, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !168 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !168
  %i.af = zext i32 %i.ab to i64                   ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #19
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.al = add i32 %.0.i5.i, -1
  %i.am = and i32 %i.al, %.0.i5.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !433

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph9.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.p
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit.loopexit, label %.lr.ph9.i, !llvm.loop !434

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %0, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit.loopexit, %bb.a
  %i.an = phi i32 [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit.loopexit ], [ %i.a, %bb.a ]
  %i.ao = and i32 %i.an, 1
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %bb.e, label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17deallocateBucketsEv.exit

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit
  %i.ap = load i32, ptr %i.c, align 8, !tbaa !168 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17deallocateBucketsEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !168
  %i.at = zext i32 %i.ap to i64                   ; 2 uses
  %i.au = mul nuw nsw i64 %i.at, 56
  %i.av = add nuw nsw i64 %i.at, 31
  %i.aw = lshr i64 %i.av, 3
  %i.ax = and i64 %i.aw, 1073741820
  %i.ay = add nuw nsw i64 %i.ax, %i.au
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.as, i64 noundef %i.ay, i64 noundef 8) #19
  br label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17deallocateBucketsEv.exit

_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17deallocateBucketsEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit, %bb.e, %bb.f
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.470", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !732  ; 4 uses
  br i1 %2, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.i = load i32, ptr %i.h, align 4
  %.fr17.i = freeze i32 %i.i                      ; 3 uses
  %i.j = icmp eq i32 %.fr17.i, 0
  %i.k = add i32 %.fr17.i, -1                     ; 2 uses
  %i.l = zext i32 %.fr17.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.l ; 3 uses
  br i1 %i.j, label %.split16.us.i, label %.split.i

.split.i:                                         ; preds = %bb.b, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i
  %.sroa.010.0.i = phi ptr [ %i.x, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i ], [ %1, %bb.b ] ; 5 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.010.0.i, align 8
  %i.n = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %.split.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !131
  %i.q = and i32 %i.p, 8
  %.not34.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.s, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ], [ %.sroa.010.0.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !149  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !131
  %i.v = and i32 %i.u, 8
  %.not3.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, !llvm.loop !1083

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %.split.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.010.0.i, %.split.i ], [ %.sroa.010.0.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.s, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !149  ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.c
  br i1 %i.y, label %.split16.us.i, label %bb.c

.split16.us.i:                                    ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !1084
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = zext i32 %i.aa to i64
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ac
  br label %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit

bb.c:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i
  %i.af = ptrtoint ptr %i.x to i64
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.k, %i.aj                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !64, !noalias !1119
  %i.ap = and i32 %i.ak, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, !prof !66

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.as = phi i64 [ %i.ay, %bb.d ], [ %i.al, %bb.c ]
  %.017.i.i.i.i = phi i32 [ %i.ax, %bb.d ], [ %i.ak, %bb.c ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.as ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !79, !noalias !1119
  %i.av = icmp eq ptr %i.x, %i.au
  br i1 %i.av, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, label %bb.d, !prof !68

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aw = add nuw i32 %.017.i.i.i.i, 1
  %i.ax = and i32 %i.aw, %i.k                     ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 5
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !64, !noalias !1119
  %i.bc = and i32 %i.ax, 31
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = trunc i32 %i.bd to i1
  br i1 %i.be, label %.lr.ph.i.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, !prof !67

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i: ; preds = %bb.d, %.lr.ph.i.i.i.i, %bb.c
  %.lcssa.sink.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.at, %.lr.ph.i.i.i.i ], [ %i.m, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.m
  br i1 %.not.i, label %.split.i, label %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit

_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, %.split16.us.i
  %.pn.i = phi ptr [ %i.ae, %.split16.us.i ], [ %.lcssa.sink.i.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i ]
  %.sroa.0.2.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %.sroa.0.2.i = load i64, ptr %.sroa.0.2.in.i, align 8, !tbaa !168
  %i.bf = and i64 %.sroa.0.2.i, -8
  %i.bg = inttoptr i64 %i.bf to ptr               ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1124
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

bb.e:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !149
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bp = load i32, ptr %i.bo, align 4
  %.fr18.i = freeze i32 %i.bp                     ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JS5_EEESt4pairIPSA_bEOT_DpOT0_:bb.a
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1148
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !165
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !153
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !64
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !64
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1149
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !79
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !79
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = load i64, ptr %2, align 8, !tbaa !168
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !168
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !153, !noalias !1150 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !165, !noalias !1150 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !166, !noalias !1150 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !79     ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !64
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !66

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !79
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !68

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !64
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !67, !llvm.loop !1147

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1148
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.454", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !166
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #19 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !153
  store ptr %i.y, ptr %i.q, align 8, !tbaa !165
  store i32 0, ptr %i.p, align 16, !tbaa !1149
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !258
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1148
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !258
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !258
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !258
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !64 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !64
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !64
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !64
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !64
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #19
  br label %_ZN4llvm8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !165
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !166  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !165  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !153
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !166
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !64   ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !79   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !64
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !64
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !1155

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !79
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !168
  store i64 %i.av, ptr %i.at, align 8, !tbaa !168
  %i.aw = shl nuw i32 1, %.lcssa.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !64
  %i.az = or i32 %i.ay, %i.aw
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !64
  %i.ba = add i32 %.0.i16, -1
  %i.bb = and i32 %i.ba, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1156

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !1157

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !166
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1149
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !1149
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bh = load ptr, ptr %1, align 8, !tbaa !153
  %i.bi = zext i32 %i.bc to i64                   ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 4
  %i.bk = add nuw nsw i64 %i.bi, 31
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 1073741820
  %i.bn = add nuw nsw i64 %i.bm, %i.bj
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bh, i64 noundef %i.bn, i64 noundef 8) #19
  store i32 0, ptr %i.d, align 4, !tbaa !166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !355  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !344
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !354
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !64   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ae, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 8
  %i.s = and i32 %i.r, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !168  ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !168
  %i.y = zext i32 %i.u to i64                     ; 2 uses
  %i.z = add nuw nsw i64 %i.y, 31
  %i.aa = lshr i64 %i.z, 5
  %i.ab = add nuw nsw i64 %i.aa, %i.y
  %i.ac = shl nuw nsw i64 %i.ab, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.x, i64 noundef %i.ac, i64 noundef 4) #19
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.ad = add i32 %.0.i3.i, -1
  %i.ae = and i32 %i.ad, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !754

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !755

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !355  ; 2 uses
  %i.af = icmp eq i32 %.pr, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEv.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !344
  %i.ah = zext i32 %.pr to i64                    ; 2 uses
  %i.ai = mul nuw nsw i64 %i.ah, 40
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #19
  br label %_ZN4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEv.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS8_IS6_vEENS_6detail12DenseMapPairIS6_SA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !987  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS8_IS6_vEENS_6detail12DenseMapPairIS6_SA_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !976
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !986
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !64   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ae, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 8
  %i.s = and i32 %i.r, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !168  ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !168
  %i.y = zext i32 %i.u to i64                     ; 2 uses
  %i.z = add nuw nsw i64 %i.y, 31
  %i.aa = lshr i64 %i.z, 5
  %i.ab = add nuw nsw i64 %i.aa, %i.y
  %i.ac = shl nuw nsw i64 %i.ab, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.x, i64 noundef %i.ac, i64 noundef 4) #19
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.ad = add i32 %.0.i3.i, -1
  %i.ae = and i32 %i.ad, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !1057

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !1058

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !987  ; 2 uses
  %i.af = icmp eq i32 %.pr, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS8_IS6_vEENS_6detail12DenseMapPairIS6_SA_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEv.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !976
  %i.ah = zext i32 %.pr to i64                    ; 2 uses
  %i.ai = mul nuw nsw i64 %i.ah, 40
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #19
  br label %_ZN4llvm8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS8_IS6_vEENS_6detail12DenseMapPairIS6_SA_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS8_IS6_vEENS_6detail12DenseMapPairIS6_SA_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEv.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJjEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !1158 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1158 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1158 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !1158
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !64     ; 2 uses
  %i.n = mul i32 %i.m, 37
  %.024.i = and i32 %i.n, %i.l                    ; 3 uses
  %i.o = zext i32 %.024.i to i64                  ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !64
  %i.t = and i32 %.024.i, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !66

bb.c:                                             ; preds = %.lr.ph.i
  %i.w = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.w, %i.l                      ; 3 uses
  %i.x = zext i32 %.0.i to i64                    ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !64
  %i.ac = and i32 %.0.i, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph.i, label %.loopexit, !prof !67, !llvm.loop !1163

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.af = phi ptr [ %i.y, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !64
  %i.ah = icmp eq i32 %i.m, %i.ag
  br i1 %i.ah, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit, label %bb.c, !prof !68

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa29.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.y, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa29.sink.i.ph, ptr %i.a, align 8, !tbaa !1164
  %i.ai = shl i32 %i.b, 1
  %i.aj = and i32 %i.ai, -4
  %i.ak = add i32 %i.aj, 4
  %i.al = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.ak, %i.al
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %.loopexit
  %i.am = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.am)
  %i.an = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !1164
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre17 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit: ; preds = %.loopexit, %bb.d
  %i.ao = phi ptr [ %.pre17, %bb.d ], [ %i.e, %.loopexit ]
  %i.ap = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aq = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa29.sink.i.ph, %.loopexit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ar = select i1 %.not.i.i.i.i, ptr %i.ap, ptr %i.j
  %i.as = select i1 %.not.i.i.i.i, ptr %i.ao, ptr %i.d
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 3                 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !64
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !64
  %i.be = load i32, ptr %0, align 8               ; 2 uses
  %i.bf = and i32 %i.be, -2
  %i.bg = add i32 %i.bf, 2
  %i.bh = and i32 %i.be, 1
  %i.bi = or disjoint i32 %i.bg, %i.bh
  store i32 %i.bi, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = load i32, ptr %1, align 4, !tbaa !64
  store i32 %i.bj, ptr %i.aq, align 4, !tbaa !64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.bl = load i32, ptr %2, align 4, !tbaa !64
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !64
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit
  %.sroa.0.0 = phi ptr [ %i.aq, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit ], [ %i.af, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !1166
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !1166
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !1166
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !1166
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

end_hunk_3
begin_hunk_4_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_:bb.a
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !64
  %i.ag = icmp eq i32 %i.l, %i.af                 ; 3 uses
  br i1 %i.ag, label %.thread, label %bb.c, !prof !68

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa29.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.x, %bb.c ], [ %i.ae, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ag, %bb.c ], [ %i.ag, %.lr.ph ]
  store ptr %.lcssa29.sink, ptr %2, align 8, !tbaa !1164
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.65", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEC2EjNS_12DenseMapBaseIS6_jjS2_S5_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 3                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 4) #19 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !168
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !168
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !168
  br label %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEC2EjNS_12DenseMapBaseIS6_jjS2_S5_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEC2EjNS_12DenseMapBaseIS6_jjS2_S5_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE13maybeMoveFastEOS6_.exit.thread, label %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE13maybeMoveFastEOS6_.exit

_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE13maybeMoveFastEOS6_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEC2EjNS_12DenseMapBaseIS6_jjS2_S5_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !1171
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !168
  br label %bb.b

_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE13maybeMoveFastEOS6_.exit: ; preds = %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEC2EjNS_12DenseMapBaseIS6_jjS2_S5_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE13maybeMoveFastEOS6_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE13maybeMoveFastEOS6_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 3                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 4) #19 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !168
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !168
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !168
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE13maybeMoveFastEOS6_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE13maybeMoveFastEOS6_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !168 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !168
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 4) #19
  br label %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit

_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 4
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 3
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i22 = icmp eq i64 %i.ab, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !64 ; 2 uses
  %.not11.i20 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ae = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bc, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !64 ; 2 uses
  %i.ak = mul i32 %i.aj, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.ak, %bb.b ], [ %i.as, %bb.c ]
  %.0.i11 = and i32 %.pn.i, %i.y                  ; 3 uses
  %i.al = zext i32 %.0.i11 to i64                 ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !64
  %i.ap = and i32 %.0.i11, 31                     ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  %i.as = add i32 %.0.i11, 1
  br i1 %i.ar, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, !llvm.loop !1173

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.al ; 2 uses
  store i32 %i.aj, ptr %i.au, align 4, !tbaa !64
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !64
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !64
  %i.ay = shl nuw i32 1, %i.ap
  %i.az = load i32, ptr %i.at, align 4, !tbaa !64
  %i.ba = or i32 %i.az, %i.ay
  store i32 %i.ba, ptr %i.at, align 4, !tbaa !64
  %i.bb = add i32 %.0.i21, -1
  %i.bc = and i32 %i.bb, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bc, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1174

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !1175

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bd = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.be = and i32 %i.bd, -2
  %i.bf = or disjoint i32 %.pre-phi, %i.be
  store i32 %i.bf, ptr %0, align 8
  %i.bg = load i32, ptr %1, align 8               ; 3 uses
  %i.bh = and i32 %i.bg, 1
  %.not.i.i12 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i12, label %bb.d, label %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE4killEv.exit

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit
  %i.bi = load i32, ptr %i.j, align 8, !tbaa !168 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !168
  %i.bl = zext i32 %i.bi to i64                   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bl, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bk, i64 noundef %i.bq, i64 noundef 4) #19
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE4killEv.exit

_ZN4llvm13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, %bb.d, %bb.e
  %i.br = phi i32 [ %i.bg, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit ], [ %i.bg, %bb.d ], [ %.pre.i, %bb.e ]
  %i.bs = and i32 %i.br, -2
  store i32 %i.bs, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E21eraseFromFilledBucketIZNSD_21eraseFromFilledBucketEPSB_EUlRSB_E_EEvSF_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 1
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4llvm6detail12DenseSetImplIPNS_12MachineInstrENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !168  ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm6detail12DenseSetImplIPNS_12MachineInstrENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !168
  %i.i = zext i32 %i.e to i64                     ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = add nuw nsw i64 %i.i, 31
  %i.l = lshr i64 %i.k, 3
  %i.m = and i64 %i.l, 1073741820
  %i.n = add nuw nsw i64 %i.m, %i.j
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.h, i64 noundef %i.n, i64 noundef 8) #19
  br label %_ZN4llvm6detail12DenseSetImplIPNS_12MachineInstrENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIPNS_12MachineInstrENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.o = load i32, ptr %0, align 8                ; 2 uses
  %i.p = add i32 %i.o, -2
  store i32 %i.p, ptr %0, align 8
  %i.q = and i32 %i.o, 1
  %.not.i.i.i34 = icmp eq i32 %i.q, 0             ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %.not.i.i.i34, ptr %i.s, ptr %i.r ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %.not.i.i.i34, ptr %i.w, ptr %i.u ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = add i32 %i.z, -1
  %i.ab = select i1 %.not.i.i.i34, i32 %i.aa, i32 1 ; 4 uses
  %i.ac = ptrtoint ptr %1 to i64
  %i.ad = ptrtoint ptr %i.t to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 56
  %i.ag = trunc i64 %i.af to i32                  ; 3 uses
  %i.ah = add i32 %i.ag, 1
  %i.ai = and i32 %i.ah, %i.ab                    ; 3 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 5
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !64
  %i.an = and i32 %i.ai, 31
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_12MachineInstrENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, %_ZN4llvm6detail12DenseSetImplIPNS_12MachineInstrENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit37
  %.pn = phi i64 [ %i.bt, %_ZN4llvm6detail12DenseSetImplIPNS_12MachineInstrENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit37 ], [ %i.aj, %_ZN4llvm6detail12DenseSetImplIPNS_12MachineInstrENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit ]
  %i.aq = phi i32 [ %i.bs, %_ZN4llvm6detail12DenseSetImplIPNS_12MachineInstrENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit37 ], [ %i.ai, %_ZN4llvm6detail12DenseSetImplIPNS_12MachineInstrENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit ] ; 5 uses
  %.03341 = phi i32 [ %.2, %_ZN4llvm6detail12DenseSetImplIPNS_12MachineInstrENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit37 ], [ %i.ag, %_ZN4llvm6detail12DenseSetImplIPNS_12MachineInstrENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [56 x i8], ptr %i.t, i64 %.pn ; 4 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !64 ; 2 uses
  %i.at = mul i32 %i.as, 37                       ; 2 uses
  %i.au = sub i32 %.03341, %i.at
  %i.av = and i32 %i.au, %i.ab
  %i.aw = sub i32 %i.aq, %i.at
  %i.ax = and i32 %i.aw, %i.ab
  %i.ay = icmp ult i32 %i.av, %i.ax
  br i1 %i.ay, label %bb.d, label %_ZN4llvm6detail12DenseSetImplIPNS_12MachineInstrENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit37

bb.d:                                             ; preds = %.lr.ph
  %i.az = zext i32 %.03341 to i64
  %i.ba = getelementptr inbounds nuw [56 x i8], ptr %i.t, i64 %i.az ; 3 uses
  store i32 %i.as, ptr %i.ba, align 4, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  store i32 1, ptr %i.bb, align 8
  store i32 0, ptr %i.bd, align 8
  tail call void @_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE8swapImplERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 8 dereferenceable(48) %i.bc)
  %i.be = load i32, ptr %i.bc, align 8
  %i.bf = and i32 %i.be, 1
  %.not.i.i.i36 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i36, label %bb.e, label %_ZN4llvm6detail12DenseSetImplIPNS_12MachineInstrENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit37

bb.e:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !168 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %_ZN4llvm6detail12DenseSetImplIPNS_12MachineInstrENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit37, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !168
  %i.bl = zext i32 %i.bh to i64                   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bl, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bk, i64 noundef %i.bq, i64 noundef 8) #19
  br label %_ZN4llvm6detail12DenseSetImplIPNS_12MachineInstrENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit37

_ZN4llvm6detail12DenseSetImplIPNS_12MachineInstrENS_13SmallDenseMapIS3_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit37: ; preds = %bb.f, %bb.e, %bb.d, %.lr.ph
end_hunk_4
begin_hunk_5_@_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE8swapImplERS9_:bb.a
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !79
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !79
  store ptr %i.bn, ptr %i.bk, align 8, !tbaa !79
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !79
  br label %.preheader78

bb.w:                                             ; preds = %bb.u
  %i.bo = trunc i32 %i.bf to i1
  br i1 %i.bo, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.bh, label %bb.y, label %.preheader78

bb.y:                                             ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !79
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !79
  br label %.preheader78

bb.z:                                             ; preds = %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !79
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !79
  br label %.preheader78

.preheader78:                                     ; preds = %bb.z, %bb.y, %bb.x, %bb.v
  store i32 %i.q, ptr %i.l, align 8, !tbaa !64
  store i32 %i.p, ptr %i.m, align 8, !tbaa !64
  br label %bb.ak

bb.aa:                                            ; preds = %bb.a
  br i1 %.not72, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !tbaa.struct !1176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false), !tbaa.struct !1176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !1176
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.ak

bb.ac:                                            ; preds = %bb.b, %bb.aa
  %i.bx = phi i32 [ %i.j, %bb.b ], [ %i.i, %bb.aa ]
  %i.by = phi ptr [ %1, %bb.b ], [ %0, %bb.aa ]   ; 6 uses
  %i.bz = phi ptr [ %0, %bb.b ], [ %1, %bb.aa ]   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 24, i1 false), !tbaa.struct !1176
  %i.cb = or i32 %i.bx, 1
  store i32 %i.cb, ptr %i.by, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.ce = load i32, ptr %i.cc, align 8, !tbaa !64 ; 5 uses
  %i.cf = trunc i32 %i.ce to i1
  br i1 %i.cf, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !79
  store ptr %i.cg, ptr %i.ca, align 8, !tbaa !79
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.ch = and i32 %i.ce, 2
  %.not83 = icmp eq i32 %i.ch, 0
  br i1 %.not83, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !79
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !79
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cl = and i32 %i.ce, 4
  %.not84 = icmp eq i32 %i.cl, 0
  br i1 %.not84, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !79
  store ptr %i.co, ptr %i.cm, align 8, !tbaa !79
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cp = and i32 %i.ce, 8
  %.not85 = icmp eq i32 %i.cp, 0
  br i1 %.not85, label %.preheader, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !79
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !79
  br label %.preheader

.preheader:                                       ; preds = %bb.aj, %bb.ai
  %i.ct = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  store i32 %i.ce, ptr %i.ct, align 8, !tbaa !64
  %i.cu = load i32, ptr %i.bz, align 8
  %i.cv = and i32 %i.cu, -2
  store i32 %i.cv, ptr %i.bz, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !1176
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader78, %.preheader, %bb.ab
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 5 uses
  %i.b = icmp ult i32 %i.a, 2
  br i1 %i.b, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %i.a, 1
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  %i.e = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.d, i1 false)
  %i.f = sub nuw nsw i32 33, %i.e
  %i.g = shl nuw i32 1, %i.f
  %.not17.i = icmp eq i32 %i.d, 0                 ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.g, i32 64) ; 2 uses
  %.0.i = select i1 %.not17.i, i32 2, i32 %.sroa.speculated.i
  %i.h = and i32 %i.a, 1
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.c, label %.split.i

.thread.i:                                        ; preds = %bb.a
  %.not12.i = icmp eq i32 %i.a, 0
  br i1 %.not12.i, label %bb.c, label %_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit.thread

_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit.thread: ; preds = %.thread.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.lr.ph9.preheader.i

.split.i:                                         ; preds = %bb.b
  br i1 %.not17.i, label %_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit, label %bb.d

bb.c:                                             ; preds = %.thread.i, %bb.b
  %.013.i = phi i32 [ 0, %.thread.i ], [ %.0.i, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !168
  %i.l = icmp eq i32 %.013.i, %i.k
  br i1 %i.l, label %_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.split.i
  %.015.i = phi i32 [ %.sroa.speculated.i, %.split.i ], [ %.013.i, %bb.c ]
  %i.m = zext i32 %.015.i to i64
  %i.n = shl nuw i64 %i.m, 32
  %i.o = or disjoint i64 %i.n, 1
  br label %_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit

_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit: ; preds = %.split.i, %bb.c, %bb.d
  %.sroa.310.0.i = phi i64 [ %i.o, %bb.d ], [ 0, %.split.i ], [ 0, %bb.c ] ; 3 uses
  %.sroa.47.0.extract.shift = lshr i64 %.sroa.310.0.i, 32 ; 3 uses
  %.sroa.47.0.extract.trunc = trunc nuw i64 %.sroa.47.0.extract.shift to i32 ; 2 uses
  %i.p = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.p, 0               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = select i1 %.not.i.i.i, i32 %i.r, i32 2   ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit, label %.lr.ph9.preheader.i

.lr.ph9.preheader.i:                              ; preds = %_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit.thread, %_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit
  %i.u = phi i32 [ 2, %_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit.thread ], [ %i.s, %_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit ]
  %i.v = phi ptr [ %i.i, %_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit.thread ], [ %i.q, %_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit ]
  %.not.i.i.i24 = phi i1 [ false, %_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit.thread ], [ %.not.i.i.i, %_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit ] ; 2 uses
  %.sroa.47.0.extract.trunc22 = phi i32 [ 0, %_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit.thread ], [ %.sroa.47.0.extract.trunc, %_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit ]
  %.sroa.47.0.extract.shift20 = phi i64 [ 0, %_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit.thread ], [ %.sroa.47.0.extract.shift, %_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit ]
  %.sroa.310.0.i18 = phi i64 [ 0, %_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit.thread ], [ %.sroa.310.0.i, %_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %.not.i.i.i24, ptr %i.x, ptr %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = select i1 %.not.i.i.i24, ptr %i.ab, ptr %i.z
  %i.ad = zext i32 %i.u to i64
  %i.ae = add nuw nsw i64 %i.ad, 31
  %i.af = lshr i64 %i.ae, 5
  br label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %._crit_edge.i, %.lr.ph9.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph9.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !64 ; 2 uses
  %.not11.i4.i = icmp eq i32 %i.ah, 0
  br i1 %.not11.i4.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph9.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.ai = shl i32 %indvars.iv.tr.i, 5
  br label %bb.e

bb.e:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i5.i = phi i32 [ %i.ah, %.lr.ph.i ], [ %i.bc, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.aj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5.i, i1 true)
  %i.ak = or disjoint i32 %i.aj, %i.ai
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [56 x i8], ptr %i.y, i64 %i.al ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = and i32 %i.ao, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !168 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !168
  %i.av = zext i32 %i.ar to i64                   ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = add nuw nsw i64 %i.av, 31
  %i.ay = lshr i64 %i.ax, 3
  %i.az = and i64 %i.ay, 1073741820
  %i.ba = add nuw nsw i64 %i.az, %i.aw
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.au, i64 noundef %i.ba, i64 noundef 8) #19
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.bb = add i32 %.0.i5.i, -1
  %i.bc = and i32 %i.bb, %.0.i5.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.e, !llvm.loop !433

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph9.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.af
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit, label %.lr.ph9.i, !llvm.loop !434

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit: ; preds = %._crit_edge.i, %_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit
  %i.bd = phi ptr [ %i.q, %_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit ], [ %i.v, %._crit_edge.i ] ; 4 uses
  %.sroa.47.0.extract.trunc23 = phi i32 [ %.sroa.47.0.extract.trunc, %_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit ], [ %.sroa.47.0.extract.trunc22, %._crit_edge.i ]
  %.sroa.47.0.extract.shift21 = phi i64 [ %.sroa.47.0.extract.shift, %_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit ], [ %.sroa.47.0.extract.shift20, %._crit_edge.i ] ; 2 uses
  %.sroa.310.0.i19 = phi i64 [ %.sroa.310.0.i, %_ZNK4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE18planShrinkAndClearEv.exit ], [ %.sroa.310.0.i18, %._crit_edge.i ] ; 2 uses
  %i.be = trunc i64 %.sroa.310.0.i19 to i1
  %i.bf = load i32, ptr %0, align 8
  %i.bg = and i32 %i.bf, 1                        ; 3 uses
  br i1 %i.be, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit
  store i32 %i.bg, ptr %0, align 8
  %.not.i.i.i3 = icmp eq i32 %i.bg, 0             ; 2 uses
  %i.bh = load i32, ptr %i.bd, align 8
  %i.bi = select i1 %.not.i.i.i3, i32 %i.bh, i32 2 ; 2 uses
  %.not.i4 = icmp eq i32 %i.bi, 0
  br i1 %.not.i4, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E9initEmptyEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = select i1 %.not.i.i.i3, ptr %i.bl, ptr %i.bj
  %i.bn = zext i32 %i.bi to i64
  %i.bo = add nuw nsw i64 %i.bn, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bm, i8 0, i64 %i.bq, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E9initEmptyEv.exit

bb.j:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit
  %.not.i5 = icmp eq i32 %i.bg, 0
  br i1 %.not.i5, label %bb.k, label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17deallocateBucketsEv.exit

bb.k:                                             ; preds = %bb.j
  %i.br = load i32, ptr %i.bd, align 8, !tbaa !168 ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17deallocateBucketsEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !168
  %i.bv = zext i32 %i.br to i64                   ; 2 uses
  %i.bw = mul nuw nsw i64 %i.bv, 56
  %i.bx = add nuw nsw i64 %i.bv, 31
  %i.by = lshr i64 %i.bx, 3
  %i.bz = and i64 %i.by, 1073741820
  %i.ca = add nuw nsw i64 %i.bz, %i.bw
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bu, i64 noundef %i.ca, i64 noundef 8) #19
  store i32 0, ptr %i.bd, align 8, !tbaa !168
  br label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17deallocateBucketsEv.exit

_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17deallocateBucketsEv.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.cb = icmp ult i64 %.sroa.310.0.i19, 12884901888
  br i1 %i.cb, label %.thread.i6, label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE15allocateBucketsEj.exit.i

.thread.i6:                                       ; preds = %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17deallocateBucketsEv.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17deallocateBucketsEv.exit
  %i.cd = load i32, ptr %0, align 8
  %i.ce = and i32 %i.cd, -2
  store i32 %i.ce, ptr %0, align 8
  %i.cf = mul nuw nsw i64 %.sroa.47.0.extract.shift21, 56 ; 2 uses
  %i.cg = add nuw nsw i64 %.sroa.47.0.extract.shift21, 31
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = and i64 %i.ch, 1073741820               ; 2 uses
  %i.cj = add nuw nsw i64 %i.ci, %i.cf
  %i.ck = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.cj, i64 noundef 8) #19 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !168
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cf ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !168
  store i32 %.sroa.47.0.extract.trunc23, ptr %i.bd, align 8, !tbaa !168
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.co = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.co, 0            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.cm, ptr %i.cp
  %i.cq = select i1 %.not.i.i.i.i, i64 %i.ci, i64 4
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i6, %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i6 ], [ %i.co, %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE15allocateBucketsEj.exit.i ]
  %i.cr = phi i64 [ 4, %.thread.i6 ], [ %i.cq, %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE15allocateBucketsEj.exit.i ]
  %i.cs = phi ptr [ %i.cc, %.thread.i6 ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cs, i8 0, i64 %i.cr, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E9initEmptyEv.exit: ; preds = %bb.i, %bb.h, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E24initWithExactBucketCountEj.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !336, !noalias !1179 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !342, !noalias !1179 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !343, !noalias !1179 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !64     ; 2 uses
  %i.j = mul i32 %i.i, 37
  %.024.i = and i32 %i.j, %i.h                    ; 3 uses
  %i.k = zext i32 %.024.i to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = lshr i64 %i.k, 5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !64
  %i.p = and i32 %.024.i, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph.i, label %.loopexit, !prof !66

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.s, %i.h                      ; 3 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !64
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !67, !llvm.loop !399

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !64
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit, label %bb.c, !prof !68

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1184
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !400
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1184
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !342
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !336
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 3 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !64
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !64
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !400
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !64
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !336, !noalias !1185 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !342, !noalias !1185 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !343, !noalias !1185 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !64     ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !64
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !66

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !64
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !67, !llvm.loop !399

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !64
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !68

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1184
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.17", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !343
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 3 uses
  %i.s = add nuw nsw i64 %i.r, 31                 ; 2 uses
  %i.t = lshr i64 %i.s, 5
  %i.u = add nuw nsw i64 %i.t, %i.r
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 4) #19 ; 2 uses
  %i.x = shl nuw nsw i64 %i.r, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x ; 2 uses
  store ptr %i.w, ptr %2, align 16, !tbaa !336
  store ptr %i.y, ptr %i.q, align 8, !tbaa !342
  store i32 0, ptr %i.p, align 16, !tbaa !400
  %i.z = lshr i64 %i.s, 3
  %i.aa = and i64 %i.z, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.aa, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.ab = load <2 x ptr>, ptr %0, align 8, !tbaa !258
  %i.ac = load ptr, ptr %0, align 8, !tbaa !1184
  %i.ad = load <2 x ptr>, ptr %2, align 16, !tbaa !258
  store <2 x ptr> %i.ad, ptr %0, align 8, !tbaa !258
  store <2 x ptr> %i.ab, ptr %2, align 16, !tbaa !258
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !64 ; 2 uses
  %i.ah = load <2 x i32>, ptr %i.ae, align 8, !tbaa !64
  %i.ai = load <2 x i32>, ptr %i.p, align 16, !tbaa !64
  store <2 x i32> %i.ai, ptr %i.ae, align 8, !tbaa !64
  store <2 x i32> %i.ah, ptr %i.p, align 16, !tbaa !64
  %i.aj = icmp eq i32 %i.ag, 0
  br i1 %i.aj, label %_ZN4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = zext i32 %i.ag to i64                   ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 31
  %i.am = lshr i64 %i.al, 5
  %i.an = add nuw nsw i64 %i.am, %i.ak
  %i.ao = shl nuw nsw i64 %i.an, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ac, i64 noundef %i.ao, i64 noundef 4) #19
  br label %_ZN4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit

_ZN4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !336    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !342
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !343  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !342  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !336
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !343
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !64   ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.al, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !64   ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !64
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit, !llvm.loop !1190

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.x
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !64
  %i.ah = shl nuw i32 1, %i.ab
  %i.ai = load i32, ptr %i.af, align 4, !tbaa !64
  %i.aj = or i32 %i.ai, %i.ah
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !64
  %i.ak = add i32 %.0.i16, -1
  %i.al = and i32 %i.ak, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.al, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1191

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !1192

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !343
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.am = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !400
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !400
  %i.aq = icmp eq i32 %i.am, 0
  br i1 %i.aq, label %_ZN4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.ar = zext i32 %i.am to i64                   ; 2 uses
  %i.as = add nuw nsw i64 %i.ar, 31
  %i.at = lshr i64 %i.as, 5
  %i.au = add nuw nsw i64 %i.at, %i.ar
  %i.av = shl nuw nsw i64 %i.au, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.av, i64 noundef 4) #19
  store i32 0, ptr %i.d, align 4, !tbaa !343
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE4killEv.exit

_ZN4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.89", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !454
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 3 uses
  %i.s = add nuw nsw i64 %i.r, 31                 ; 2 uses
  %i.t = lshr i64 %i.s, 5
  %i.u = add nuw nsw i64 %i.t, %i.r
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 4) #19 ; 2 uses
  %i.x = shl nuw nsw i64 %i.r, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x ; 2 uses
  store ptr %i.w, ptr %2, align 16, !tbaa !457
  store ptr %i.y, ptr %i.q, align 8, !tbaa !474
  store i32 0, ptr %i.p, align 16, !tbaa !477
  %i.z = lshr i64 %i.s, 3
  %i.aa = and i64 %i.z, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.aa, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.ab = load <2 x ptr>, ptr %0, align 8, !tbaa !258
  %i.ac = load ptr, ptr %0, align 8, !tbaa !1193
  %i.ad = load <2 x ptr>, ptr %2, align 16, !tbaa !258
  store <2 x ptr> %i.ad, ptr %0, align 8, !tbaa !258
  store <2 x ptr> %i.ab, ptr %2, align 16, !tbaa !258
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !64 ; 2 uses
  %i.ah = load <2 x i32>, ptr %i.ae, align 8, !tbaa !64
  %i.ai = load <2 x i32>, ptr %i.p, align 16, !tbaa !64
  store <2 x i32> %i.ai, ptr %i.ae, align 8, !tbaa !64
  store <2 x i32> %i.ah, ptr %i.p, align 16, !tbaa !64
  %i.aj = icmp eq i32 %i.ag, 0
  br i1 %i.aj, label %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = zext i32 %i.ag to i64                   ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 31
  %i.am = lshr i64 %i.al, 5
  %i.an = add nuw nsw i64 %i.am, %i.ak
  %i.ao = shl nuw nsw i64 %i.an, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ac, i64 noundef %i.ao, i64 noundef 4) #19
  br label %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit

_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !457    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !474
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !454  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !474  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !457
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !454
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !64   ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.al, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !296  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !64
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !1194

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.x
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !64
  %i.ah = shl nuw i32 1, %i.ab
  %i.ai = load i32, ptr %i.af, align 4, !tbaa !64
  %i.aj = or i32 %i.ai, %i.ah
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !64
  %i.ak = add i32 %.0.i16, -1
  %i.al = and i32 %i.ak, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.al, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1195

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !1196

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !454
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.am = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !477
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !477
  %i.aq = icmp eq i32 %i.am, 0
  br i1 %i.aq, label %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.ar = zext i32 %i.am to i64                   ; 2 uses
  %i.as = add nuw nsw i64 %i.ar, 31
  %i.at = lshr i64 %i.as, 5
  %i.au = add nuw nsw i64 %i.at, %i.ar
  %i.av = shl nuw nsw i64 %i.au, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.av, i64 noundef 4) #19
  store i32 0, ptr %i.d, align 4, !tbaa !454
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit

_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !400  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE18planShrinkAndClearEv.exit.thread, label %_ZNK4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE18planShrinkAndClearEv.exit: ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !343  ; 3 uses
  %.not = icmp eq i32 %.sroa.speculated.i, %i.h
  br i1 %.not, label %bb.b, label %bb.c

_ZNK4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE18planShrinkAndClearEv.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !343  ; 2 uses
  %.not8 = icmp eq i32 %i.j, 0
  br i1 %.not8, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit, label %.thread16

bb.b:                                             ; preds = %_ZNK4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE18planShrinkAndClearEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !400
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !342
  %i.m = zext i32 %.sroa.speculated.i to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 3
  %i.p = and i64 %i.o, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.p, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit

bb.c:                                             ; preds = %_ZNK4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE18planShrinkAndClearEv.exit
  %.sroa.39.0.insert.ext.i = zext i32 %.sroa.speculated.i to i64 ; 2 uses
  %i.q = icmp eq i32 %i.h, 0
  br i1 %i.q, label %_ZN4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17deallocateBucketsEv.exit, label %.thread16

.thread16:                                        ; preds = %_ZNK4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE18planShrinkAndClearEv.exit.thread, %bb.c
  %i.r = phi ptr [ %i.g, %bb.c ], [ %i.i, %_ZNK4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE18planShrinkAndClearEv.exit.thread ] ; 2 uses
  %i.s = phi i32 [ %i.h, %bb.c ], [ %i.j, %_ZNK4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE18planShrinkAndClearEv.exit.thread ]
  %spec.select10.i1221 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE18planShrinkAndClearEv.exit.thread ]
  %.sroa.39.0.insert.ext.i1319 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE18planShrinkAndClearEv.exit.thread ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !336
  %i.u = zext i32 %i.s to i64                     ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 31
  %i.w = lshr i64 %i.v, 5
  %i.x = add nuw nsw i64 %i.w, %i.u
  %i.y = shl nuw nsw i64 %i.x, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.y, i64 noundef 4) #19
  store i32 0, ptr %i.r, align 4, !tbaa !343
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17deallocateBucketsEv.exit: ; preds = %bb.c, %.thread16
  %i.z = phi ptr [ %i.g, %bb.c ], [ %i.r, %.thread16 ] ; 2 uses
  %spec.select10.i1222 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ %spec.select10.i1221, %.thread16 ] ; 2 uses
  %.sroa.39.0.insert.ext.i1320 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ %.sroa.39.0.insert.ext.i1319, %.thread16 ] ; 2 uses
  store i32 %spec.select10.i1222, ptr %i.z, align 4, !tbaa !343
  %.not.i4 = icmp eq i32 %spec.select10.i1222, 0
  br i1 %.not.i4, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17deallocateBucketsEv.exit
  %i.aa = add nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 31
  %i.ab = lshr i64 %i.aa, 5
  %i.ac = add nuw nsw i64 %i.ab, %.sroa.39.0.insert.ext.i1320
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.ad, i64 noundef 4) #19 ; 2 uses
  %i.af = load i32, ptr %i.z, align 4, !tbaa !343 ; 2 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !336
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !342
  store i32 0, ptr %i.a, align 8, !tbaa !400
  %.not.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = add nuw nsw i64 %i.ag, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ai, i8 0, i64 %i.am, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit

bb.f:                                             ; preds = %_ZN4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit: ; preds = %_ZNK4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE18planShrinkAndClearEv.exit.thread, %bb.f, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E21eraseFromFilledBucketIZNS9_21eraseFromFilledBucketEPS7_EUlRS7_E_EEvSB_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !400
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !400
  %i.d = load ptr, ptr %0, align 8, !tbaa !336    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !342  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !343
  %i.i = add i32 %i.h, -1                         ; 4 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 2
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add i32 %i.n, 1
  %i.p = and i32 %i.o, %i.i                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !64
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.x = phi i64 [ %i.al, %bb.c ], [ %i.q, %bb.a ]
  %i.y = phi i32 [ %i.ak, %bb.c ], [ %i.p, %bb.a ] ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE8swapImplERS7_:bb.a

bb.r:                                             ; preds = %bb.q
  br i1 %i.av, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !64
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !64
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !64
  store i32 %i.bi, ptr %i.bg, align 8, !tbaa !64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.p
  %i.bj = load i32, ptr %i.l, align 8, !tbaa !64
  %i.bk = lshr i32 %i.bj, 3                       ; 2 uses
  %i.bl = load i32, ptr %i.m, align 8, !tbaa !64
  %i.bm = lshr i32 %i.bl, 3                       ; 2 uses
  %i.bn = trunc i32 %i.bm to i1
  %i.bo = and i32 %i.bk, 1
  %i.bp = and i32 %i.bo, %i.bm
  %or.cond.not.3 = icmp eq i32 %i.bp, 0
  br i1 %or.cond.not.3, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !64
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !64
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !64
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !64
  br label %.preheader78

bb.w:                                             ; preds = %bb.u
  %i.bu = trunc i32 %i.bk to i1
  br i1 %i.bu, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.bn, label %bb.y, label %.preheader78

bb.y:                                             ; preds = %bb.x
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !64
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !64
  br label %.preheader78

bb.z:                                             ; preds = %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !64
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !64
  br label %.preheader78

.preheader78:                                     ; preds = %bb.z, %bb.y, %bb.x, %bb.v
  %i.cb = load i32, ptr %i.l, align 8, !tbaa !64
  %i.cc = load i32, ptr %i.m, align 8, !tbaa !64
  store i32 %i.cc, ptr %i.l, align 8, !tbaa !64
  store i32 %i.cb, ptr %i.m, align 8, !tbaa !64
  br label %bb.ak

bb.aa:                                            ; preds = %bb.a
  br i1 %.not72, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false), !tbaa.struct !1197
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false), !tbaa.struct !1197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !1197
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.ak

bb.ac:                                            ; preds = %bb.b, %bb.aa
  %i.cf = phi i32 [ %i.j, %bb.b ], [ %i.i, %bb.aa ]
  %i.cg = phi ptr [ %1, %bb.b ], [ %0, %bb.aa ]   ; 6 uses
  %i.ch = phi ptr [ %0, %bb.b ], [ %1, %bb.aa ]   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false), !tbaa.struct !1197
  %i.cj = or i32 %i.cf, 1
  store i32 %i.cj, ptr %i.cg, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.cm = load i32, ptr %i.ck, align 8, !tbaa !64 ; 2 uses
  %i.cn = trunc i32 %i.cm to i1
  br i1 %i.cn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.co = load i32, ptr %i.cl, align 8, !tbaa !64
  store i32 %i.co, ptr %i.ci, align 8, !tbaa !64
  %.pre = load i32, ptr %i.ck, align 8, !tbaa !64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.cp = phi i32 [ %i.cm, %bb.ac ], [ %.pre, %bb.ad ] ; 2 uses
  %i.cq = and i32 %i.cp, 2
  %.not86 = icmp eq i32 %i.cq, 0
  br i1 %.not86, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !64
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !64
  %.pre83 = load i32, ptr %i.ck, align 8, !tbaa !64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cu = phi i32 [ %.pre83, %bb.af ], [ %i.cp, %bb.ae ] ; 2 uses
  %i.cv = and i32 %i.cu, 4
  %.not87 = icmp eq i32 %i.cv, 0
  br i1 %.not87, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !64
  store i32 %i.cy, ptr %i.cw, align 8, !tbaa !64
  %.pre84 = load i32, ptr %i.ck, align 8, !tbaa !64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cz = phi i32 [ %.pre84, %bb.ah ], [ %i.cu, %bb.ag ] ; 2 uses
  %i.da = and i32 %i.cz, 8
  %.not88 = icmp eq i32 %i.da, 0
  br i1 %.not88, label %.preheader, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !64
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !64
  %.pre85 = load i32, ptr %i.ck, align 8, !tbaa !64
  br label %.preheader

.preheader:                                       ; preds = %bb.aj, %bb.ai
  %i.de = phi i32 [ %.pre85, %bb.aj ], [ %i.cz, %bb.ai ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store i32 %i.de, ptr %i.df, align 8, !tbaa !64
  %i.dg = load i32, ptr %i.ch, align 8
  %i.dh = and i32 %i.dg, -2
  store i32 %i.dh, ptr %i.ch, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !1197
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader78, %.preheader, %bb.ab
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !753  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEE18planShrinkAndClearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64)
  br label %_ZNK4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEE18planShrinkAndClearEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.a ], [ %.sroa.speculated.i, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !355  ; 3 uses
  %.not = icmp eq i32 %.0.i, %i.h                 ; 2 uses
  %spec.select10.i = select i1 %.not, i32 0, i32 %.0.i
  %.sroa.39.0.insert.ext.i = zext i32 %spec.select10.i to i64 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %_ZNK4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEE18planShrinkAndClearEv.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !344
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !354
  %i.m = zext i32 %i.h to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !64   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.q, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.r = shl i32 %indvars.iv.tr.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.ak, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %i.u ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8
  %i.y = and i32 %i.x, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !168 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !168
  %i.ae = zext i32 %i.aa to i64                   ; 2 uses
  %i.af = add nuw nsw i64 %i.ae, 31
  %i.ag = lshr i64 %i.af, 5
  %i.ah = add nuw nsw i64 %i.ag, %i.ae
  %i.ai = shl nuw nsw i64 %i.ah, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ad, i64 noundef %i.ai, i64 noundef 4) #19
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.aj = add i32 %.0.i3.i, -1
  %i.ak = and i32 %i.aj, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.c, !llvm.loop !754

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !755

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEv.exit: ; preds = %._crit_edge.i, %_ZNK4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEE18planShrinkAndClearEv.exit
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !753
  %i.al = load i32, ptr %i.g, align 4, !tbaa !355 ; 2 uses
  %.not.i3 = icmp eq i32 %i.al, 0
  br i1 %.not.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E9initEmptyEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !354
  %i.ao = zext i32 %i.al to i64
  %i.ap = add nuw nsw i64 %i.ao, 31
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = and i64 %i.aq, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.an, i8 0, i64 %i.ar, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E9initEmptyEv.exit

bb.h:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEv.exit
  %i.as = load i32, ptr %i.g, align 4, !tbaa !355 ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEE17deallocateBucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %0, align 8, !tbaa !344
  %i.av = zext i32 %i.as to i64                   ; 2 uses
  %i.aw = mul nuw nsw i64 %i.av, 40
  %i.ax = add nuw nsw i64 %i.av, 31
  %i.ay = lshr i64 %i.ax, 3
  %i.az = and i64 %i.ay, 1073741820
  %i.ba = add nuw nsw i64 %i.az, %i.aw
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.au, i64 noundef %i.ba, i64 noundef 8) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEE17deallocateBucketsEv.exit: ; preds = %bb.h, %bb.i
  store i32 %.0.i, ptr %i.g, align 4, !tbaa !355
  %.not.i4 = icmp eq i32 %.0.i, 0
  br i1 %.not.i4, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEE17deallocateBucketsEv.exit
  %i.bb = mul nuw nsw i64 %.sroa.39.0.insert.ext.i, 40
  %i.bc = add nuw nsw i64 %.sroa.39.0.insert.ext.i, 31
  %i.bd = lshr i64 %i.bc, 3
  %i.be = and i64 %i.bd, 1073741820
  %i.bf = add nuw nsw i64 %i.be, %i.bb
  %i.bg = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.bf, i64 noundef 8) #19 ; 2 uses
  %i.bh = load i32, ptr %i.g, align 4, !tbaa !355 ; 2 uses
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = mul nuw nsw i64 %i.bi, 40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bj ; 2 uses
  store ptr %i.bg, ptr %0, align 8, !tbaa !344
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !354
  store i32 0, ptr %i.a, align 8, !tbaa !753
  %.not.i.i5 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i5, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E9initEmptyEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = add nuw nsw i64 %i.bi, 31
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = and i64 %i.bn, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bk, i8 0, i64 %i.bo, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E9initEmptyEv.exit

bb.l:                                             ; preds = %_ZN4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E9initEmptyEv.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !711  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE18planShrinkAndClearEv.exit.thread, label %_ZNK4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE18planShrinkAndClearEv.exit: ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !294  ; 3 uses
  %.not = icmp eq i32 %.sroa.speculated.i, %i.h
  br i1 %.not, label %bb.b, label %bb.c

_ZNK4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE18planShrinkAndClearEv.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !294  ; 2 uses
  %.not8 = icmp eq i32 %i.j, 0
  br i1 %.not8, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E9initEmptyEv.exit, label %.thread16

bb.b:                                             ; preds = %_ZNK4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE18planShrinkAndClearEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !711
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !293
  %i.m = zext i32 %.sroa.speculated.i to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 3
  %i.p = and i64 %i.o, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.p, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E9initEmptyEv.exit

bb.c:                                             ; preds = %_ZNK4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE18planShrinkAndClearEv.exit
  %.sroa.39.0.insert.ext.i = zext i32 %.sroa.speculated.i to i64 ; 2 uses
  %i.q = icmp eq i32 %i.h, 0
  br i1 %i.q, label %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE17deallocateBucketsEv.exit, label %.thread16

.thread16:                                        ; preds = %_ZNK4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE18planShrinkAndClearEv.exit.thread, %bb.c
  %i.r = phi ptr [ %i.g, %bb.c ], [ %i.i, %_ZNK4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE18planShrinkAndClearEv.exit.thread ] ; 2 uses
  %i.s = phi i32 [ %i.h, %bb.c ], [ %i.j, %_ZNK4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE18planShrinkAndClearEv.exit.thread ]
  %spec.select10.i1221 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE18planShrinkAndClearEv.exit.thread ]
  %.sroa.39.0.insert.ext.i1319 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE18planShrinkAndClearEv.exit.thread ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !283
  %i.u = zext i32 %i.s to i64                     ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.u, 31
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 1073741820
  %i.z = add nuw nsw i64 %i.y, %i.v
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 4) #19
  store i32 0, ptr %i.r, align 4, !tbaa !294
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE17deallocateBucketsEv.exit: ; preds = %bb.c, %.thread16
  %i.aa = phi ptr [ %i.g, %bb.c ], [ %i.r, %.thread16 ] ; 2 uses
  %spec.select10.i1222 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ %spec.select10.i1221, %.thread16 ] ; 2 uses
  %.sroa.39.0.insert.ext.i1320 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ %.sroa.39.0.insert.ext.i1319, %.thread16 ] ; 2 uses
  store i32 %spec.select10.i1222, ptr %i.aa, align 4, !tbaa !294
  %.not.i4 = icmp eq i32 %spec.select10.i1222, 0
  br i1 %.not.i4, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE17deallocateBucketsEv.exit
  %i.ab = shl nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 3
  %i.ac = add nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  %i.ag = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.af, i64 noundef 4) #19 ; 2 uses
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !294 ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !283
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !293
  store i32 0, ptr %i.a, align 8, !tbaa !711
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E9initEmptyEv.exit, label %bb.e

end_hunk_6
begin_hunk_7_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIS3_JjEEESt4pairIPS8_bEOT_DpOT0_:bb.a
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1203
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !731
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !719
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !64
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !64
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !736
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !79
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !79
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = load i32, ptr %2, align 4, !tbaa !64
  store i32 %i.bj, ptr %i.bi, align 8, !tbaa !64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !719, !noalias !1204 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !731, !noalias !1204 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !733, !noalias !1204 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !79     ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !64
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !66

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !79
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !68

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !64
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !67, !llvm.loop !735

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1203
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.306", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !733
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #19 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !719
  store ptr %i.y, ptr %i.q, align 8, !tbaa !731
  store i32 0, ptr %i.p, align 16, !tbaa !736
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !258
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1203
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !258
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !258
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !258
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !64 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !64
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !64
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !64
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !64
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #19
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !719    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !731
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !733  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !731  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !719
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !733
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !64   ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !79   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !64
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !64
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !1209

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !79
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !64
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !64
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !64
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !64
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1210

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !1211

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !733
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !736
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !736
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #19
  store i32 0, ptr %i.d, align 4, !tbaa !733
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !182
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #19
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = load i32, ptr %i.a, align 8, !tbaa !182
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !182
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm9MapVectorINS_8RegisterENS_11LaneBitmaskENS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S2_ELj2EEELj2EE16try_emplace_implIRKS1_JS2_EEESB_IPSC_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::tuple.544", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.547", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.544", align 8    ; 4 uses
  %6 = alloca %"class.std::tuple.547", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !711
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !182  ; 4 uses
  %i.h = zext i32 %i.g to i64                     ; 3 uses
  %.idx3.i.i = shl nuw nsw i64 %i.h, 4            ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx3.i.i
  %i.j = lshr i64 %i.h, 2                         ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.k = load i32, ptr %1, align 4, !tbaa !296    ; 4 uses
  %i.l = and i64 %.idx3.i.i, 68719476672
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.e, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.047.i.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.y, %bb.g ] ; 2 uses
  %.02946.i.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i ], [ %i.x, %bb.g ] ; 9 uses
  %i.m = load i32, ptr %.02946.i.i.i.i.i, align 4, !tbaa !296
  %i.n = icmp eq i32 %i.m, %i.k
  br i1 %i.n, label %_ZN4llvm9MapVectorINS_8RegisterENS_11LaneBitmaskENS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S2_ELj2EEELj2EE12findInVectorISD_S1_EEDaRT_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 16
  %i.p = load i32, ptr %i.o, align 4, !tbaa !296
  %i.q = icmp eq i32 %i.p, %i.k
  br i1 %i.q, label %_ZN4llvm9MapVectorINS_8RegisterENS_11LaneBitmaskENS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S2_ELj2EEELj2EE12findInVectorISD_S1_EEDaRT_RKT0_.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 32
  %i.s = load i32, ptr %i.r, align 4, !tbaa !296
  %i.t = icmp eq i32 %i.s, %i.k
  br i1 %i.t, label %_ZN4llvm9MapVectorINS_8RegisterENS_11LaneBitmaskENS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S2_ELj2EEELj2EE12findInVectorISD_S1_EEDaRT_RKT0_.exit.loopexit.split.loop.exit51, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 48
  %i.v = load i32, ptr %i.u, align 4, !tbaa !296
  %i.w = icmp eq i32 %i.v, %i.k
  br i1 %i.w, label %_ZN4llvm9MapVectorINS_8RegisterENS_11LaneBitmaskENS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S2_ELj2EEELj2EE12findInVectorISD_S1_EEDaRT_RKT0_.exit.loopexit.split.loop.exit53, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 64
  %i.y = add nsw i64 %.047.i.i.i.i.i, -1
  %i.z = icmp sgt i64 %.047.i.i.i.i.i, 1
  br i1 %i.z, label %bb.c, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !1212

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.g
  %i.aa = and i32 %i.g, 3
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.b
  %.pre-phi56.i.i.i.i.i = phi i32 [ %i.aa, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.g, %bb.b ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.e, %bb.b ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i, label %bb.m [
    i32 3, label %bb.h
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i
  ]

._crit_edge._crit_edge52.i.i.i.i.i:               ; preds = %._crit_edge.i.i.i.i.i
  %.pre53.i.i.i.i.i = load i32, ptr %1, align 4, !tbaa !296
  br label %bb.l

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i.i
  %.pre.i.i.i.i.i = load i32, ptr %1, align 4, !tbaa !296
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ab = load i32, ptr %.029.lcssa.i.i.i.i.i, align 4, !tbaa !296
  %i.ac = load i32, ptr %1, align 4, !tbaa !296   ; 2 uses
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4llvm9MapVectorINS_8RegisterENS_11LaneBitmaskENS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S2_ELj2EEELj2EE12findInVectorISD_S1_EEDaRT_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
end_hunk_7
begin_hunk_8_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS7_bEOT_DpOT0_:bb.a
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1239
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !711
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1239
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !293
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !283
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !64
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !64
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !711
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !64
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 0, ptr %i.bc, align 4, !tbaa !64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !283, !noalias !1240 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !293, !noalias !1240 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !294, !noalias !1240 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !296    ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !64
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !66

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !64
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !67, !llvm.loop !1238

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !296
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !68

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1239
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.10", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !294
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 4) #19 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !283
  store ptr %i.y, ptr %i.q, align 8, !tbaa !293
  store i32 0, ptr %i.p, align 16, !tbaa !711
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !258
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1239
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !258
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !258
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !258
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !64 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !64
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !64
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !64
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !64
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 4) #19
  br label %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEED2Ev.exit

_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !283    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !293
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !294  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !293  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !283
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !294
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !64   ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !296  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !64
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit, !llvm.loop !1245

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !64
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !64
  %i.ak = shl nuw i32 1, %i.ab
  %i.al = load i32, ptr %i.af, align 4, !tbaa !64
  %i.am = or i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.af, align 4, !tbaa !64
  %i.an = add i32 %.0.i16, -1
  %i.ao = and i32 %i.an, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1246

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !1247

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !294
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ap = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !711
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !711
  %i.at = icmp eq i32 %i.ap, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.au = zext i32 %i.ap to i64                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.az, i64 noundef 4) #19
  store i32 0, ptr %i.d, align 4, !tbaa !294
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE4killEv.exit

_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !8      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #19
  %.pre = load ptr, ptr %1, align 8, !tbaa !8
  br label %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit

_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !64
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !64
  store ptr %i.c, ptr %1, align 8, !tbaa !8
  store i32 0, ptr %i.k, align 4, !tbaa !183
  store i32 0, ptr %i.j, align 8, !tbaa !182
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !182  ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !182  ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit
    i32 1, label %bb.h
  ], !prof !1248

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.s, ptr align 4 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.b, align 4, !tbaa !64
  store i32 %i.t, ptr %i.s, align 4, !tbaa !64
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !182
  store i32 0, ptr %i.m, align 8, !tbaa !182
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !183
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !182
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 4) #19
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !804

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.y, ptr align 4 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34

bb.n:                                             ; preds = %bb.l
  %i.z = load i32, ptr %i.b, align 4, !tbaa !64
  store i32 %i.z, ptr %i.y, align 4, !tbaa !64
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34:               ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !182
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34
  %i.ac = load ptr, ptr %1, align 8, !tbaa !8
  %.idx39 = shl nuw nsw i64 %.026, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx39
  %i.ae = load ptr, ptr %0, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.026
  %i.ag = sub nsw i64 %i.ab, %.026
  %gepdiff = shl nsw i64 %i.ag, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 4 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit: ; preds = %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !182
  store i32 0, ptr %i.m, align 8, !tbaa !182
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit
  ret ptr %0
end_hunk_8
begin_hunk_9_@_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE8swapImplERSB_:bb.a
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !168
  %i.fp = zext i32 %i.fl to i64                   ; 2 uses
  %i.fq = shl nuw nsw i64 %i.fp, 3
  %i.fr = add nuw nsw i64 %i.fp, 31
  %i.fs = lshr i64 %i.fr, 3
  %i.ft = and i64 %i.fs, 1073741820
  %i.fu = add nuw nsw i64 %i.ft, %i.fq
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.fo, i64 noundef %i.fu, i64 noundef 8) #19
  br label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE14relocateBucketEPSA_SC_.exit83.1

bb.ae:                                            ; preds = %bb.z
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !64
  store i32 %i.fx, ptr %i.fv, align 8, !tbaa !64
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 1, ptr %i.fy, align 8
  store i32 0, ptr %i.ga, align 8
  call void @_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE8swapImplERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.fy, ptr noundef nonnull align 8 dereferenceable(48) %i.fz)
  %i.gb = load i32, ptr %i.fz, align 8
  %i.gc = and i32 %i.gb, 1
  %.not.i.i.i.i82.1 = icmp eq i32 %i.gc, 0
  br i1 %.not.i.i.i.i82.1, label %bb.af, label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE14relocateBucketEPSA_SC_.exit83.1

bb.af:                                            ; preds = %bb.ae
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !168 ; 2 uses
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE14relocateBucketEPSA_SC_.exit83.1, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !168
  %i.gi = zext i32 %i.ge to i64                   ; 2 uses
  %i.gj = shl nuw nsw i64 %i.gi, 3
  %i.gk = add nuw nsw i64 %i.gi, 31
  %i.gl = lshr i64 %i.gk, 3
  %i.gm = and i64 %i.gl, 1073741820
  %i.gn = add nuw nsw i64 %i.gm, %i.gj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.gh, i64 noundef %i.gn, i64 noundef 8) #19
  br label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE14relocateBucketEPSA_SC_.exit83.1

_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE14relocateBucketEPSA_SC_.exit83.1: ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE14relocateBucketEPSA_SC_.exit81.1
  %i.go = load i32, ptr %i.m, align 8, !tbaa !64
  %i.gp = load i32, ptr %i.n, align 8, !tbaa !64
  store i32 %i.gp, ptr %i.m, align 8, !tbaa !64
  store i32 %i.go, ptr %i.n, align 8, !tbaa !64
  br label %bb.aq

bb.ah:                                            ; preds = %bb.a
  br i1 %.not72, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.gq, i64 24, i1 false), !tbaa.struct !1255
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gq, ptr noundef nonnull align 8 dereferenceable(24) %i.gr, i64 24, i1 false), !tbaa.struct !1255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gr, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !1255
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.aq

bb.aj:                                            ; preds = %bb.b, %bb.ah
  %i.gs = phi i32 [ %i.k, %bb.b ], [ %i.j, %bb.ah ]
  %i.gt = phi ptr [ %1, %bb.b ], [ %0, %bb.ah ]   ; 8 uses
  %i.gu = phi ptr [ %0, %bb.b ], [ %1, %bb.ah ]   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.gv, i64 24, i1 false), !tbaa.struct !1255
  %i.gw = or i32 %i.gs, 1
  store i32 %i.gw, ptr %i.gt, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 120 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 2 uses
  %i.gz = load i32, ptr %i.gx, align 8, !tbaa !64
  %i.ha = trunc i32 %i.gz to i1
  br i1 %i.ha, label %bb.ak, label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE14relocateBucketEPSA_SC_.exit87

bb.ak:                                            ; preds = %bb.aj
  %i.hb = load i32, ptr %i.gy, align 8, !tbaa !64
  store i32 %i.hb, ptr %i.gv, align 8, !tbaa !64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gt, i64 56
  store i32 1, ptr %i.hc, align 8
  store i32 0, ptr %i.he, align 8
  tail call void @_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE8swapImplERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.hc, ptr noundef nonnull align 8 dereferenceable(48) %i.hd)
  %i.hf = load i32, ptr %i.hd, align 8
  %i.hg = and i32 %i.hf, 1
  %.not.i.i.i.i86 = icmp eq i32 %i.hg, 0
  br i1 %.not.i.i.i.i86, label %bb.al, label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE14relocateBucketEPSA_SC_.exit87

bb.al:                                            ; preds = %bb.ak
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !168 ; 2 uses
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE14relocateBucketEPSA_SC_.exit87, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !168
  %i.hm = zext i32 %i.hi to i64                   ; 2 uses
  %i.hn = shl nuw nsw i64 %i.hm, 3
  %i.ho = add nuw nsw i64 %i.hm, 31
  %i.hp = lshr i64 %i.ho, 3
  %i.hq = and i64 %i.hp, 1073741820
  %i.hr = add nuw nsw i64 %i.hq, %i.hn
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.hl, i64 noundef %i.hr, i64 noundef 8) #19
  br label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE14relocateBucketEPSA_SC_.exit87

_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE14relocateBucketEPSA_SC_.exit87: ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %i.hs = load i32, ptr %i.gx, align 8, !tbaa !64
  %i.ht = and i32 %i.hs, 2
  %.not104 = icmp eq i32 %i.ht, 0
  br i1 %.not104, label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE14relocateBucketEPSA_SC_.exit87.1, label %bb.an

bb.an:                                            ; preds = %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE14relocateBucketEPSA_SC_.exit87
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gt, i64 64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gu, i64 64
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !64
  store i32 %i.hw, ptr %i.hu, align 8, !tbaa !64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gt, i64 72 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gu, i64 72 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gt, i64 112
  store i32 1, ptr %i.hx, align 8
  store i32 0, ptr %i.hz, align 8
  tail call void @_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE8swapImplERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.hx, ptr noundef nonnull align 8 dereferenceable(48) %i.hy)
  %i.ia = load i32, ptr %i.hy, align 8
  %i.ib = and i32 %i.ia, 1
  %.not.i.i.i.i86.1 = icmp eq i32 %i.ib, 0
  br i1 %.not.i.i.i.i86.1, label %bb.ao, label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE14relocateBucketEPSA_SC_.exit87.1

bb.ao:                                            ; preds = %bb.an
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gu, i64 96
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !168 ; 2 uses
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE14relocateBucketEPSA_SC_.exit87.1, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.if = getelementptr inbounds nuw i8, ptr %i.gu, i64 80
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !168
  %i.ih = zext i32 %i.id to i64                   ; 2 uses
  %i.ii = shl nuw nsw i64 %i.ih, 3
  %i.ij = add nuw nsw i64 %i.ih, 31
  %i.ik = lshr i64 %i.ij, 3
  %i.il = and i64 %i.ik, 1073741820
  %i.im = add nuw nsw i64 %i.il, %i.ii
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ig, i64 noundef %i.im, i64 noundef 8) #19
  br label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE14relocateBucketEPSA_SC_.exit87.1

_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE14relocateBucketEPSA_SC_.exit87.1: ; preds = %bb.ap, %bb.ao, %bb.an, %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE14relocateBucketEPSA_SC_.exit87
  %i.in = getelementptr inbounds nuw i8, ptr %i.gt, i64 120
  %i.io = load i32, ptr %i.gx, align 8, !tbaa !64
  store i32 %i.io, ptr %i.in, align 8, !tbaa !64
  %i.ip = load i32, ptr %i.gu, align 8
  %i.iq = and i32 %i.ip, -2
  store i32 %i.iq, ptr %i.gu, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gy, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !1255
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE14relocateBucketEPSA_SC_.exit83.1, %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE14relocateBucketEPSA_SC_.exit87.1, %bb.ai
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E8copyFromERKSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i.i, i32 %i.d, i32 2   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit, label %.lr.ph9.preheader.i

.lr.ph9.preheader.i:                              ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i, ptr %i.h, ptr %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = zext i32 %i.e to i64
  %i.o = add nuw nsw i64 %i.n, 31
  %i.p = lshr i64 %i.o, 5
  br label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %._crit_edge.i, %.lr.ph9.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph9.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !64   ; 2 uses
  %.not11.i4.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i4.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph9.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.s = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i5.i = phi i32 [ %i.r, %.lr.ph.i ], [ %i.am, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.t = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5.i, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %i.v ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8
  %i.z = and i32 %i.y, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !168 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !168
  %i.af = zext i32 %i.ab to i64                   ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #19
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.al = add i32 %.0.i5.i, -1
  %i.am = and i32 %i.al, %.0.i5.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !433

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph9.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.p
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit.loopexit, label %.lr.ph9.i, !llvm.loop !434

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %0, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit.loopexit, %bb.a
  %i.an = phi i32 [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit.loopexit ], [ %i.a, %bb.a ]
  %i.ao = and i32 %i.an, 1
  %.not.i9 = icmp eq i32 %i.ao, 0
  br i1 %.not.i9, label %bb.e, label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17deallocateBucketsEv.exit

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit
  %i.ap = load i32, ptr %i.c, align 8, !tbaa !168 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17deallocateBucketsEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !168
  %i.at = zext i32 %i.ap to i64                   ; 2 uses
  %i.au = mul nuw nsw i64 %i.at, 56
  %i.av = add nuw nsw i64 %i.at, 31
  %i.aw = lshr i64 %i.av, 3
  %i.ax = and i64 %i.aw, 1073741820
  %i.ay = add nuw nsw i64 %i.ax, %i.au
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.as, i64 noundef %i.ay, i64 noundef 8) #19
  store i32 0, ptr %i.c, align 8, !tbaa !168
  %.pre23 = load i32, ptr %0, align 8
  %.pre29 = and i32 %.pre23, 1
  br label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17deallocateBucketsEv.exit

_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17deallocateBucketsEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit, %bb.e, %bb.f
  %.pre-phi = phi i32 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E10destroyAllEv.exit ], [ 0, %bb.e ], [ %.pre29, %bb.f ]
  store i32 %.pre-phi, ptr %0, align 8
  %i.az = load i32, ptr %1, align 8
  %i.ba = and i32 %i.az, 1
  %.not.i10 = icmp eq i32 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load i32, ptr %i.bb, align 8            ; 2 uses
  %i.bd = select i1 %.not.i10, i32 %i.bc, i32 2   ; 3 uses
  %i.be = icmp ult i32 %i.bd, 3
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17deallocateBucketsEv.exit
  store i32 1, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre25 = load ptr, ptr %.phi.trans.insert, align 8
  %.pre26 = load i32, ptr %i.c, align 8
  %.phi.trans.insert27 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre28 = load ptr, ptr %.phi.trans.insert27, align 8
  br label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE15allocateBucketsEj.exit

bb.h:                                             ; preds = %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17deallocateBucketsEv.exit
  store i32 0, ptr %0, align 8
  %i.bf = zext i32 %i.bd to i64                   ; 2 uses
  %i.bg = mul nuw nsw i64 %i.bf, 56               ; 2 uses
  %i.bh = add nuw nsw i64 %i.bf, 31
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = and i64 %i.bi, 1073741820
  %i.bk = add nuw nsw i64 %i.bj, %i.bg
  %i.bl = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.bk, i64 noundef 8) #19 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !168
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bg ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !168
  store i32 %i.bd, ptr %i.c, align 8, !tbaa !168
  %.pre24 = load i32, ptr %0, align 8
  %i.bp = and i32 %.pre24, 1
  br label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE15allocateBucketsEj.exit

_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE15allocateBucketsEj.exit: ; preds = %bb.h, %bb.g
  %i.bq = phi ptr [ %i.bn, %bb.h ], [ %.pre28, %bb.g ]
  %i.br = phi i32 [ %i.bc, %bb.h ], [ %.pre26, %bb.g ]
  %i.bs = phi ptr [ %i.bl, %bb.h ], [ %.pre25, %bb.g ]
  %i.bt = phi i32 [ %i.bp, %bb.h ], [ 1, %bb.g ]  ; 2 uses
  %i.bu = load i32, ptr %1, align 8
  %i.bv = and i32 %i.bu, -2
  %i.bw = or disjoint i32 %i.bt, %i.bv
  store i32 %i.bw, ptr %0, align 8
  %.not.i.i.i11 = icmp eq i32 %i.bt, 0            ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = select i1 %.not.i.i.i11, ptr %i.bs, ptr %i.bx
  %i.bz = load i32, ptr %1, align 8
  %i.ca = and i32 %i.bz, 1
  %.not.i12 = icmp eq i32 %i.ca, 0                ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = select i1 %.not.i12, ptr %i.cc, ptr %i.cb
  %i.ce = select i1 %.not.i.i.i11, i32 %i.br, i32 2
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cg = select i1 %.not.i.i.i11, ptr %i.bq, ptr %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = select i1 %.not.i12, ptr %i.cj, ptr %i.ch
  %i.cl = zext i32 %i.ce to i64
  %i.cm = add nuw nsw i64 %i.cl, 31
  %i.cn = lshr i64 %i.cm, 5                       ; 3 uses
  %i.co = shl nuw nsw i64 %i.cn, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cg, ptr align 4 %i.ck, i64 %i.co, i1 false)
  %.not.i19 = icmp eq i64 %i.cn, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS7_vEEEELj2ENS8_IjvEENS_6detail12DenseMapPairIjSA_EEEEjSA_SB_SE_E8copyFromERKSF_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE15allocateBucketsEj.exit, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE15allocateBucketsEj.exit ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !64 ; 2 uses
  %.not11.i17 = icmp eq i32 %i.cq, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.cr = shl i32 %indvars.iv.tr, 5
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.0.i18 = phi i32 [ %i.cq, %.lr.ph ], [ %i.dc, %bb.i ] ; 3 uses
  %i.cs = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.ct = or disjoint i32 %i.cs, %i.cr
  %i.cu = zext i32 %i.ct to i64                   ; 2 uses
  %i.cv = getelementptr inbounds nuw [56 x i8], ptr %i.by, i64 %i.cu ; 3 uses
  %i.cw = getelementptr inbounds nuw [56 x i8], ptr %i.cd, i64 %i.cu ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !64
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  store i32 1, ptr %i.cy, align 8
  store i32 0, ptr %i.da, align 8
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8copyFromERKSA_(ptr noundef nonnull align 8 dereferenceable(48) %i.cy, ptr noundef nonnull align 8 dereferenceable(48) %i.cz)
  %i.db = add i32 %.0.i18, -1
  %i.dc = and i32 %i.db, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.dc, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.i, !llvm.loop !1258

._crit_edge:                                      ; preds = %bb.i, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.cn
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS7_vEEEELj2ENS8_IjvEENS_6detail12DenseMapPairIjSA_EEEEjSA_SB_SE_E8copyFromERKSF_EUljE_EEvPKjjT_.exit, label %.lr.ph21, !llvm.loop !1259

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS7_vEEEELj2ENS8_IjvEENS_6detail12DenseMapPairIjSA_EEEEjSA_SB_SE_E8copyFromERKSF_EUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE15allocateBucketsEj.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8copyFromERKSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 1
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17deallocateBucketsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !168  ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17deallocateBucketsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !168
  %i.h = zext i32 %i.d to i64                     ; 2 uses
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = add nuw nsw i64 %i.h, 31
  %i.k = lshr i64 %i.j, 3
  %i.l = and i64 %i.k, 1073741820
  %i.m = add nuw nsw i64 %i.l, %i.i
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.g, i64 noundef %i.m, i64 noundef 8) #19
  store i32 0, ptr %i.c, align 8, !tbaa !168
  %.pre = load i32, ptr %0, align 8
  %.pre20 = and i32 %.pre, 1
  br label %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17deallocateBucketsEv.exit

_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.pre-phi = phi i32 [ 1, %bb.a ], [ 0, %bb.b ], [ %.pre20, %bb.c ]
  store i32 %.pre-phi, ptr %0, align 8
  %i.n = load i32, ptr %1, align 8
  %i.o = and i32 %i.n, 1
  %.not.i10 = icmp eq i32 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %i.r = select i1 %.not.i10, i32 %i.q, i32 4     ; 3 uses
  %i.s = icmp ult i32 %i.r, 5
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17deallocateBucketsEv.exit
  store i32 1, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre15 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre17 = load i32, ptr %.phi.trans.insert16, align 8
  %.phi.trans.insert18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre19 = load ptr, ptr %.phi.trans.insert18, align 8
  br label %bb.f

bb.e:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17deallocateBucketsEv.exit
  store i32 0, ptr %0, align 8
  %i.t = zext i32 %i.r to i64                     ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 3                  ; 2 uses
  %i.v = add nuw nsw i64 %i.t, 31
  %i.w = lshr i64 %i.v, 3
  %i.x = and i64 %i.w, 1073741820
  %i.y = add nuw nsw i64 %i.x, %i.u
  %i.z = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.y, i64 noundef 8) #19 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !168
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.u ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !168
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.r, ptr %i.ad, align 8, !tbaa !168
  %.pre14 = load i32, ptr %0, align 8
  %i.ae = and i32 %.pre14, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.af = phi ptr [ %.pre19, %bb.d ], [ %i.ab, %bb.e ]
  %i.ag = phi i32 [ %.pre17, %bb.d ], [ %i.q, %bb.e ]
  %i.ah = phi ptr [ %.pre15, %bb.d ], [ %i.z, %bb.e ]
  %i.ai = phi i32 [ 1, %bb.d ], [ %i.ae, %bb.e ]  ; 2 uses
  %i.aj = load i32, ptr %1, align 8
  %i.ak = and i32 %i.aj, -2
  %i.al = or disjoint i32 %i.ai, %i.ak
  store i32 %i.al, ptr %0, align 8
  %.not.i.i.i = icmp eq i32 %i.ai, 0              ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = select i1 %.not.i.i.i, ptr %i.ah, ptr %i.am
  %i.ao = load i32, ptr %1, align 8
  %i.ap = and i32 %i.ao, 1
  %.not.i11 = icmp eq i32 %i.ap, 0                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = select i1 %.not.i11, ptr %i.ar, ptr %i.aq
  %i.at = select i1 %.not.i.i.i, i32 %i.ag, i32 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = select i1 %.not.i.i.i, ptr %i.af, ptr %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = select i1 %.not.i11, ptr %i.ay, ptr %i.aw
  %i.ba = zext i32 %i.at to i64                   ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.av, ptr align 4 %i.az, i64 %i.bd, i1 false)
  %i.be = shl nuw nsw i64 %i.ba, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 8 %i.as, i64 %i.be, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt4pairINS_8RegisterENS_11LaneBitmaskEEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !8      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplISt4pairINS_8RegisterENS_11LaneBitmaskEEE12assignRemoteEOS5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #19
  %.pre = load ptr, ptr %1, align 8, !tbaa !8
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_8RegisterENS_11LaneBitmaskEEE12assignRemoteEOS5_.exit

_ZN4llvm15SmallVectorImplISt4pairINS_8RegisterENS_11LaneBitmaskEEE12assignRemoteEOS5_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !64
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !64
  store ptr %i.c, ptr %1, align 8, !tbaa !8
  store i32 0, ptr %i.k, align 4, !tbaa !183
  store i32 0, ptr %i.j, align 8, !tbaa !182
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !182  ; 7 uses
  %i.o = zext i32 %i.n to i64                     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !182  ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 5 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not33 = icmp eq i32 %i.n, 0
  br i1 %.not33, label %_ZSt4moveIPSt4pairIN4llvm8RegisterENS1_11LaneBitmaskEES5_ET0_T_S7_S6_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %xtraiter = and i64 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %bb.g, %.lr.ph.i.i.i.i.i.prol
  %.012.i.i.i.i.i.prol = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %bb.g ]
  %.0811.i.i.i.i.i.prol = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.prol ], [ %i.s, %bb.g ] ; 3 uses
  %.0910.i.i.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.prol ], [ %i.b, %bb.g ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %bb.g ]
  %i.t = load i32, ptr %.0910.i.i.i.i.i.prol, align 8, !tbaa !64
  store i32 %i.t, ptr %.0811.i.i.i.i.i.prol, align 8, !tbaa !64
end_hunk_9
begin_hunk_10_@_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS8_bEOT_DpOT0_:bb.a
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph.i, label %.loopexit, !prof !66

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.s, %i.h                      ; 3 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !64
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !67, !llvm.loop !1270

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !64
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit, label %bb.c, !prof !68

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1271
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !753
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E15LookupBucketForIjEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1271
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !354
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !344
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 40                ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !64
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !64
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !753
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !64
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i8 0, i64 32, i1 false)
  store i32 1, ptr %i.bc, align 8
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E15LookupBucketForIjEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !344, !noalias !1272 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !354, !noalias !1272 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !355, !noalias !1272 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !64     ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !64
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !66

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !64
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !67, !llvm.loop !1270

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !64
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !68

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1271
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap", align 16   ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !355
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 40                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #19 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !344
  store ptr %i.y, ptr %i.q, align 8, !tbaa !354
  store i32 0, ptr %i.p, align 16, !tbaa !753
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1271   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1172 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !258
  store ptr %i.z, ptr %2, align 16, !tbaa !1271
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !258
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !1172
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !64 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !64
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !64
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !64
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !64
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !64 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bh, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 8
  %i.av = and i32 %i.au, 1
  %.not.i.i.i.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !168 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !168
  %i.bb = zext i32 %i.ax to i64                   ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, 31
  %i.bd = lshr i64 %i.bc, 5
  %i.be = add nuw nsw i64 %i.bd, %i.bb
  %i.bf = shl nuw nsw i64 %i.be, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bf, i64 noundef 4) #19
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.bg = add i32 %.0.i3.i.i, -1
  %i.bh = and i32 %i.bg, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !754

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !755

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !355 ; 2 uses
  %i.bi = icmp eq i32 %.pr.i, 0
  br i1 %i.bi, label %_ZN4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEv.exit.i
  %i.bj = load ptr, ptr %2, align 16, !tbaa !344
  %i.bk = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bl = mul nuw nsw i64 %i.bk, 40
  %i.bm = add nuw nsw i64 %i.bk, 31
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = and i64 %i.bn, 1073741820
  %i.bp = add nuw nsw i64 %i.bo, %i.bl
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bj, i64 noundef %i.bp, i64 noundef 8) #19
  br label %_ZN4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEED2Ev.exit

_ZN4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E10destroyAllEv.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !344
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !354
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !355  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !354  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !344
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !355
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES7_NS_6detail12DenseMapPairIjS8_EEEEjS8_S7_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !64   ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !64   ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !64
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %bb.d, !llvm.loop !1277

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.x ; 3 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i32 1, ptr %i.ah, align 8
  store i32 0, ptr %i.aj, align 8
  tail call void @_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE8swapImplERS7_(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
  %i.ak = shl nuw i32 1, %i.ab
  %i.al = load i32, ptr %i.af, align 4, !tbaa !64
  %i.am = or i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.af, align 4, !tbaa !64
  %i.an = load i32, ptr %i.ai, align 8
  %i.ao = and i32 %i.an, 1
  %.not.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E8moveFromERS9_ENKUljE_clEj.exit

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !168 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E8moveFromERS9_ENKUljE_clEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !168
  %i.au = zext i32 %i.aq to i64                   ; 2 uses
  %i.av = add nuw nsw i64 %i.au, 31
  %i.aw = lshr i64 %i.av, 5
  %i.ax = add nuw nsw i64 %i.aw, %i.au
  %i.ay = shl nuw nsw i64 %i.ax, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.at, i64 noundef %i.ay, i64 noundef 4) #19
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E8moveFromERS9_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.az = add i32 %.0.i19, -1
  %i.ba = and i32 %i.az, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1278

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES7_NS_6detail12DenseMapPairIjS8_EEEEjS8_S7_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !1279

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES7_NS_6detail12DenseMapPairIjS8_EEEEjS8_S7_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !355
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES7_NS_6detail12DenseMapPairIjS8_EEEEjS8_S7_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES7_NS_6detail12DenseMapPairIjS8_EEEEjS8_S7_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES7_NS_6detail12DenseMapPairIjS8_EEEEjS8_S7_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES7_NS_6detail12DenseMapPairIjS8_EEEEjS8_S7_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !753
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !753
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES7_NS_6detail12DenseMapPairIjS8_EEEEjS8_S7_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bg = load ptr, ptr %1, align 8, !tbaa !344
  %i.bh = zext i32 %i.bb to i64                   ; 2 uses
  %i.bi = mul nuw nsw i64 %i.bh, 40
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bg, i64 noundef %i.bm, i64 noundef 8) #19
  store i32 0, ptr %i.d, align 4, !tbaa !355
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEE4killEv.exit

_ZN4llvm8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES3_NS_6detail12DenseMapPairIjS4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES7_NS_6detail12DenseMapPairIjS8_EEEEjS8_S7_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !1280 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1280 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1280 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !noalias !1280
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.h ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.j = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.j, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.l = load i32, ptr %1, align 4, !tbaa !64     ; 2 uses
  %i.m = mul i32 %i.l, 37
  %.024.i = and i32 %i.m, %i.k                    ; 3 uses
  %i.n = zext i32 %.024.i to i64                  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i.i.i, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !64
  %i.s = and i32 %.024.i, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph.i, label %.loopexit, !prof !66

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.v, %i.k                      ; 3 uses
  %i.w = zext i32 %.0.i to i64                    ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i.i.i, i64 %i.w ; 2 uses
  %i.y = lshr i64 %i.w, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !64
  %i.ab = and i32 %.0.i, 31
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %.lr.ph.i, label %.loopexit, !prof !67, !llvm.loop !1285

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ae = phi ptr [ %i.x, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !64
  %i.ag = icmp eq i32 %i.l, %i.af
  br i1 %i.ag, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit, label %bb.c, !prof !68

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa29.sink.i.ph = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.x, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa29.sink.i.ph, ptr %i.a, align 8, !tbaa !1184
  %i.ah = shl i32 %i.b, 1
  %i.ai = and i32 %i.ah, -4
  %i.aj = add i32 %i.ai, 4
  %i.ak = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %.loopexit
  %i.al = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.al)
  %i.am = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !1184
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit: ; preds = %.loopexit, %bb.d
  %i.an = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.ao = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.ap = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa29.sink.i.ph, %.loopexit ] ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.aq = select i1 %.not.i.i.i.i, ptr %i.ao, ptr %i.h
  %i.ar = select i1 %.not.i.i.i.i, ptr %i.an, ptr %i.d
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 2                 ; 2 uses
  %i.aw = trunc i64 %i.av to i32
  %i.ax = and i32 %i.aw, 31
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = lshr i64 %i.av, 5
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !64
  %i.bc = or i32 %i.ay, %i.bb
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !64
  %i.bd = load i32, ptr %0, align 8               ; 2 uses
  %i.be = and i32 %i.bd, -2
end_hunk_10
begin_hunk_11_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_:bb.a
.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ad = phi ptr [ %i.w, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !64
  %i.af = icmp eq i32 %i.k, %i.ae                 ; 3 uses
  br i1 %i.af, label %.thread, label %bb.c, !prof !68

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa29.sink = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ], [ %i.w, %bb.c ], [ %i.ad, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.af, %bb.c ], [ %i.af, %.lr.ph ]
  store ptr %.lcssa29.sink, ptr %2, align 8, !tbaa !1184
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.208", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEEC2EjNS_12DenseMapBaseIS7_jS2_S4_S6_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 3 uses
  %i.r = add nuw nsw i64 %i.q, 31                 ; 2 uses
  %i.s = lshr i64 %i.r, 5
  %i.t = add nuw nsw i64 %i.s, %i.q
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.u, i64 noundef 4) #19 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !168
  %i.x = shl nuw nsw i64 %i.q, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !168
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !168
  %i.ab = lshr i64 %i.r, 3
  %i.ac = and i64 %i.ab, 1073741820
  br label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEEC2EjNS_12DenseMapBaseIS7_jS2_S4_S6_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEEC2EjNS_12DenseMapBaseIS7_jS2_S4_S6_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit ]
  %i.ad = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit.thread ], [ %i.ac, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit ]
  %i.ae = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ad, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.af = load i32, ptr %2, align 8               ; 3 uses
  %i.ag = and i32 %i.af, 1
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit.thread, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEEC2EjNS_12DenseMapBaseIS7_jS2_S4_S6_E16ExactBucketCountE.exit
  store i32 %i.af, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !1197
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.aj, align 8, !tbaa !168
  br label %bb.b

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit: ; preds = %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEEC2EjNS_12DenseMapBaseIS7_jS2_S4_S6_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit
  %i.al = load i32, ptr %0, align 8
  %i.am = and i32 %i.al, -2
  store i32 %i.am, ptr %0, align 8
  %i.an = zext i32 %.0.i4 to i64                  ; 3 uses
  %i.ao = add nuw nsw i64 %i.an, 31
  %i.ap = lshr i64 %i.ao, 5
  %i.aq = add nuw nsw i64 %i.ap, %i.an
  %i.ar = shl nuw nsw i64 %i.aq, 2
  %i.as = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.ar, i64 noundef 4) #19 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !168
  %i.au = shl nuw nsw i64 %i.an, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !168
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 %.0.i4, ptr %i.ax, align 8, !tbaa !168
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.ay = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ay, 0            ; 2 uses
  %i.az = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.ax
  %i.ba = zext i32 %i.az to i64
  %i.bb = add nuw nsw i64 %i.ba, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.ay, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit.i ]
  %i.be = phi i64 [ 4, %.thread.i ], [ %i.bd, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit.i ]
  %i.bf = phi ptr [ %i.ak, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bf, i8 0, i64 %i.be, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24initWithExactBucketCountEj.exit
  %i.bg = phi i32 [ %i.af, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24initWithExactBucketCountEj.exit ]
  %i.bh = and i32 %i.bg, 1
  %.not.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !168 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !168
  %i.bn = zext i32 %i.bj to i64                   ; 2 uses
  %i.bo = add nuw nsw i64 %i.bn, 31
  %i.bp = lshr i64 %i.bo, 5
  %i.bq = add nuw nsw i64 %i.bp, %i.bn
  %i.br = shl nuw nsw i64 %i.bq, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.br, i64 noundef 4) #19
  br label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = load i32, ptr %i.f, align 8
  %i.k = select i1 %.not.i.i, i32 %i.j, i32 4
  %i.l = load i32, ptr %0, align 8
  %i.m = and i32 %i.l, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.m, 0               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %.not.i.i.i, ptr %i.p, ptr %i.n ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %.not.i.i.i, ptr %i.s, ptr %i.r
  %i.u = load i32, ptr %i.n, align 8
  %i.v = add i32 %i.u, -1
  %i.w = select i1 %.not.i.i.i, i32 %i.v, i32 3
  %i.x = zext i32 %i.k to i64
  %i.y = add nuw nsw i64 %i.x, 31
  %i.z = lshr i64 %i.y, 5                         ; 2 uses
  %.not.i22 = icmp eq i64 %i.z, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !64 ; 2 uses
  %.not11.i20 = icmp eq i32 %i.ab, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ac = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.ab, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.ad = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.ae = or disjoint i32 %i.ad, %i.ac
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !64 ; 2 uses
  %i.ai = mul i32 %i.ah, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.ai, %bb.b ], [ %i.aq, %bb.c ]
  %.0.i11 = and i32 %.pn.i, %i.w                  ; 3 uses
  %i.aj = zext i32 %.0.i11 to i64                 ; 2 uses
  %i.ak = lshr i64 %i.aj, 5                       ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !64
  %i.an = and i32 %.0.i11, 31                     ; 2 uses
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  %i.aq = add i32 %.0.i11, 1
  br i1 %i.ap, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit, !llvm.loop !1291

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ak ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.aj
  store i32 %i.ah, ptr %i.as, align 4, !tbaa !64
  %i.at = shl nuw i32 1, %i.an
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !64
  %i.av = or i32 %i.au, %i.at
  store i32 %i.av, ptr %i.ar, align 4, !tbaa !64
  %i.aw = add i32 %.0.i21, -1
  %i.ax = and i32 %i.aw, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1292

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.z
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !1293

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.m, %bb.a ]
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.az = and i32 %i.ay, -2
  %i.ba = or disjoint i32 %.pre-phi, %i.az
  store i32 %i.ba, ptr %0, align 8
  %i.bb = load i32, ptr %1, align 8               ; 3 uses
  %i.bc = and i32 %i.bb, 1
  %.not.i.i12 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i12, label %bb.d, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE4killEv.exit

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.bd = load i32, ptr %i.f, align 8, !tbaa !168 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !168
  %i.bg = zext i32 %i.bd to i64                   ; 2 uses
  %i.bh = add nuw nsw i64 %i.bg, 31
  %i.bi = lshr i64 %i.bh, 5
  %i.bj = add nuw nsw i64 %i.bi, %i.bg
  %i.bk = shl nuw nsw i64 %i.bj, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bf, i64 noundef %i.bk, i64 noundef 4) #19
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE4killEv.exit

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.d, %bb.e
  %i.bl = phi i32 [ %i.bb, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit ], [ %i.bb, %bb.d ], [ %.pre.i, %bb.e ]
  %i.bm = and i32 %i.bl, -2
  store i32 %i.bm, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !344, !noalias !1294 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !354, !noalias !1294 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !355, !noalias !1294 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !64     ; 2 uses
  %i.j = mul i32 %i.i, 37
  %.024.i = and i32 %i.j, %i.h                    ; 3 uses
  %i.k = zext i32 %.024.i to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = lshr i64 %i.k, 5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !64
  %i.p = and i32 %.024.i, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph.i, label %.loopexit, !prof !66

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.s, %i.h                      ; 3 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !64
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !67, !llvm.loop !1270

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !64
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit, label %bb.c, !prof !68

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1271
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !753
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E15LookupBucketForIjEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1271
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !354
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !344
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 40                ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !64
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !64
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !753
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !64
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i8 0, i64 32, i1 false)
  store i32 1, ptr %i.bc, align 8
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_13SmallDenseSetIjLj4ENS_12DenseMapInfoIjvEEEES4_NS_6detail12DenseMapPairIjS5_EEEEjS5_S4_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !1299 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1299 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1299 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !1299
end_hunk_11
begin_hunk_12_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E15LookupBucketForIjEEbRKT_RPSB_:bb.a
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %.sink2.i.i, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !64
  %i.s = and i32 %.024, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !66

bb.c:                                             ; preds = %.lr.ph
  %i.v = add nuw i32 %.025, 1
  %.0 = and i32 %i.v, %i.k                        ; 3 uses
  %i.w = zext i32 %.0 to i64                      ; 2 uses
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %.sink2.i.i, i64 %i.w ; 2 uses
  %i.y = lshr i64 %i.w, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !64
  %i.ab = and i32 %.0, 31
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %.lr.ph, label %.thread, !prof !67, !llvm.loop !1304

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ae = phi ptr [ %i.x, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !64
  %i.ag = icmp eq i32 %i.l, %i.af                 ; 3 uses
  br i1 %i.ag, label %.thread, label %bb.c, !prof !68

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa29.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.x, %bb.c ], [ %i.ae, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ag, %bb.c ], [ %i.ag, %.lr.ph ]
  store ptr %.lcssa29.sink, ptr %2, align 8, !tbaa !1256
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap", align 8 ; 14 uses
  %i.a = icmp ult i32 %1, 3                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEEC2EjNS_12DenseMapBaseISB_jS6_S7_SA_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 56                 ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #19 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !168
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !168
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !168
  br label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEEC2EjNS_12DenseMapBaseISB_jS6_S7_SA_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEEC2EjNS_12DenseMapBaseISB_jS6_S7_SA_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 2, %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(128) %0)
  %i.ad = load i32, ptr %2, align 8               ; 2 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE13maybeMoveFastEOSB_.exit.thread, label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE13maybeMoveFastEOSB_.exit

_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE13maybeMoveFastEOSB_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEEC2EjNS_12DenseMapBaseISB_jS6_S7_SA_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !1255
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !168
  br label %bb.b

_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE13maybeMoveFastEOSB_.exit: ; preds = %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEEC2EjNS_12DenseMapBaseISB_jS6_S7_SA_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE13maybeMoveFastEOSB_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE13maybeMoveFastEOSB_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 56               ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #19 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !168
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !168
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !168
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 2
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(128) %2)
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE13maybeMoveFastEOSB_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E24initWithExactBucketCountEj.exit
  call void @_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 2
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 1
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i25 = icmp eq i64 %i.ab, 0
  br i1 %.not.i25, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS7_vEEEELj2ENS8_IjvEENS_6detail12DenseMapPairIjSA_EEEEjSA_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph28

.lr.ph28:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !64 ; 2 uses
  %.not11.i23 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph28
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ae = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i24 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bp, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i24, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %i.ah ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !64 ; 2 uses
  %i.ak = mul i32 %i.aj, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.ak, %bb.b ], [ %i.as, %bb.c ]
  %.0.i11 = and i32 %.pn.i, %i.y                  ; 3 uses
  %i.al = zext i32 %.0.i11 to i64                 ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !64
  %i.ap = and i32 %.0.i11, 31                     ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  %i.as = add i32 %.0.i11, 1
  br i1 %i.ar, label %bb.c, label %bb.d, !llvm.loop !1310

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %i.al ; 3 uses
  store i32 %i.aj, ptr %i.au, align 4, !tbaa !64
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  store i32 1, ptr %i.av, align 8
  store i32 0, ptr %i.ax, align 8
  tail call void @_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE8swapImplERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull align 8 dereferenceable(48) %i.aw)
  %i.ay = shl nuw i32 1, %i.ap
  %i.az = load i32, ptr %i.at, align 4, !tbaa !64
  %i.ba = or i32 %i.az, %i.ay
  store i32 %i.ba, ptr %i.at, align 4, !tbaa !64
  %i.bb = load i32, ptr %i.aw, align 8
  %i.bc = and i32 %i.bb, 1
  %.not.i.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !168 ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !168
  %i.bi = zext i32 %i.be to i64                   ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = add nuw nsw i64 %i.bi, 31
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 1073741820
  %i.bn = add nuw nsw i64 %i.bm, %i.bj
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bh, i64 noundef %i.bn, i64 noundef 8) #19
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.bo = add i32 %.0.i24, -1
  %i.bp = and i32 %i.bo, %.0.i24                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bp, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1311

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS4_vEEEELj2ENS5_IjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS7_vEEEELj2ENS8_IjvEENS_6detail12DenseMapPairIjSA_EEEEjSA_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph28, !llvm.loop !1312

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS7_vEEEELj2ENS8_IjvEENS_6detail12DenseMapPairIjSA_EEEEjSA_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre32 = load i32, ptr %0, align 8
  %.pre33 = and i32 %.pre32, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS7_vEEEELj2ENS8_IjvEENS_6detail12DenseMapPairIjSA_EEEEjSA_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS7_vEEEELj2ENS8_IjvEENS_6detail12DenseMapPairIjSA_EEEEjSA_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS7_vEEEELj2ENS8_IjvEENS_6detail12DenseMapPairIjSA_EEEEjSA_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre33, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS7_vEEEELj2ENS8_IjvEENS_6detail12DenseMapPairIjSA_EEEEjSA_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bq = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS7_vEEEELj2ENS8_IjvEENS_6detail12DenseMapPairIjSA_EEEEjSA_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.br = and i32 %i.bq, -2
  %i.bs = or disjoint i32 %.pre-phi, %i.br
  store i32 %i.bs, ptr %0, align 8
  %i.bt = load i32, ptr %1, align 8               ; 3 uses
  %i.bu = and i32 %i.bt, 1
  %.not.i.i12 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i12, label %bb.g, label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE4killEv.exit

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS7_vEEEELj2ENS8_IjvEENS_6detail12DenseMapPairIjSA_EEEEjSA_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bv = load i32, ptr %i.j, align 8, !tbaa !168 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE4killEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !168
  %i.by = zext i32 %i.bv to i64                   ; 2 uses
  %i.bz = mul nuw nsw i64 %i.by, 56
  %i.ca = add nuw nsw i64 %i.by, 31
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = and i64 %i.cb, 1073741820
  %i.cd = add nuw nsw i64 %i.cc, %i.bz
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bx, i64 noundef %i.cd, i64 noundef 8) #19
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS3_vEEEELj2ENS4_IjvEENS_6detail12DenseMapPairIjS6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS7_vEEEELj2ENS8_IjvEENS_6detail12DenseMapPairIjSA_EEEEjSA_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.g, %bb.h
  %i.ce = phi i32 [ %i.bt, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_13SmallDenseSetIPNS_12MachineInstrELj4ENS_12DenseMapInfoIS7_vEEEELj2ENS8_IjvEENS_6detail12DenseMapPairIjSA_EEEEjSA_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit ], [ %i.bt, %bb.g ], [ %.pre.i, %bb.h ]
  %i.cf = and i32 %i.ce, -2
  store i32 %i.cf, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !1313 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1313 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1313 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !1313
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !79     ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !64
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !66

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !79
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.c, !prof !68

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !64
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !67, !llvm.loop !1318

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1177
  %i.ao = shl i32 %i.b, 1
  %i.ap = and i32 %i.ao, -4
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %.loopexit
  %i.as = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !1177
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.au = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.av = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
end_hunk_12
begin_hunk_13_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !67, !llvm.loop !1318

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1177
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.77", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEC2EjNS_12DenseMapBaseIS9_S2_S4_S6_S8_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 3                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #19 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !168
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !168
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !168
  br label %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEC2EjNS_12DenseMapBaseIS9_S2_S4_S6_S8_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEC2EjNS_12DenseMapBaseIS9_S2_S4_S6_S8_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE13maybeMoveFastEOS9_.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE13maybeMoveFastEOS9_.exit

_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE13maybeMoveFastEOS9_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEC2EjNS_12DenseMapBaseIS9_S2_S4_S6_S8_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !1176
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !168
  br label %bb.b

_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE13maybeMoveFastEOS9_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEC2EjNS_12DenseMapBaseIS9_S2_S4_S6_S8_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE13maybeMoveFastEOS9_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE13maybeMoveFastEOS9_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 3                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #19 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !168
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !168
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !168
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE13maybeMoveFastEOS9_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE13maybeMoveFastEOS9_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !168 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !168
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #19
  br label %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 4
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 3   ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i21 = icmp eq i64 %i.ab, 0
  br i1 %.not.i21, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !64 ; 2 uses
  %.not11.i19 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph24
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ae = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i20 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bl, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i20, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !79 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.y, %i.ao                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !64 ; 2 uses
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %i.ax = add i32 %.016.i, 1
  %i.ay = and i32 %i.ax, %i.y                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !64 ; 2 uses
  %i.bd = and i32 %i.ay, 31                       ; 2 uses
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1324

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ar, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.aq, %bb.b ], [ %i.az, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.at, %bb.b ], [ %i.bc, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.au, %bb.b ], [ %i.bd, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa15.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.lcssa13.i
  store ptr %i.aj, ptr %i.bh, align 8, !tbaa !79
  %i.bi = shl nuw i32 1, %.lcssa.i
  %i.bj = or i32 %i.bi, %.lcssa11.i
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !64
  %i.bk = add i32 %.0.i20, -1
  %i.bl = and i32 %i.bk, %.0.i20                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bl, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1325

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph24, !llvm.loop !1326

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bm = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bn = and i32 %i.bm, -2
  %i.bo = or disjoint i32 %.pre-phi, %i.bn
  store i32 %i.bo, ptr %0, align 8
  %i.bp = load i32, ptr %1, align 8               ; 3 uses
  %i.bq = and i32 %i.bp, 1
  %.not.i.i11 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i11, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.br = load i32, ptr %i.j, align 8, !tbaa !168 ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !168
  %i.bu = zext i32 %i.br to i64                   ; 2 uses
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = add nuw nsw i64 %i.bu, 31
  %i.bx = lshr i64 %i.bw, 3
  %i.by = and i64 %i.bx, 1073741820
  %i.bz = add nuw nsw i64 %i.by, %i.bv
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bt, i64 noundef %i.bz, i64 noundef 8) #19
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.ca = phi i32 [ %i.bp, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit ], [ %i.bp, %bb.c ], [ %.pre.i, %bb.d ]
  %i.cb = and i32 %i.ca, -2
  store i32 %i.cb, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E21eraseFromFilledBucketIZNSB_21eraseFromFilledBucketEPS9_EUlRS9_E_EEvSD_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = add i32 %i.a, -2
  store i32 %i.b, ptr %0, align 8
  %i.c = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = select i1 %.not.i.i.i, ptr %i.i, ptr %i.g ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add i32 %i.l, -1
  %i.n = select i1 %.not.i.i.i, i32 %i.m, i32 3   ; 4 uses
  %i.o = ptrtoint ptr %1 to i64
  %i.p = ptrtoint ptr %i.f to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 3
  %i.s = trunc i64 %i.r to i32                    ; 3 uses
  %i.t = add i32 %i.s, 1
  %i.u = and i32 %i.t, %i.n                       ; 3 uses
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = lshr i64 %i.v, 5
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !64
  %i.z = and i32 %i.u, 31
  %i.aa = lshr i32 %i.y, %i.z
  %i.ab = trunc i32 %i.aa to i1
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.ac = phi i64 [ %i.au, %bb.c ], [ %i.v, %bb.a ]
  %i.ad = phi i32 [ %i.at, %bb.c ], [ %i.u, %bb.a ] ; 3 uses
  %.03338 = phi i32 [ %.2, %bb.c ], [ %i.s, %bb.a ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ac
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !79 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = mul i64 %i.ag, -4658895280553007687     ; 2 uses
  %i.ai = lshr i64 %i.ah, 31
  %i.aj = xor i64 %i.ai, %i.ah
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = sub i32 %.03338, %i.ak
  %i.am = and i32 %i.al, %i.n
  %i.an = sub i32 %i.ad, %i.ak
  %i.ao = and i32 %i.an, %i.n
  %i.ap = icmp ult i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.aq = zext i32 %.03338 to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.aq
  store ptr %i.af, ptr %i.ar, align 8, !tbaa !79
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.2 = phi i32 [ %.03338, %.lr.ph ], [ %i.ad, %bb.b ] ; 2 uses
  %i.as = add i32 %i.ad, 1
  %i.at = and i32 %i.as, %i.n                     ; 3 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = lshr i64 %i.au, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !64
  %i.ay = and i32 %i.at, 31
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.033.lcssa = phi i32 [ %i.s, %bb.a ], [ %.2, %bb.c ] ; 2 uses
  %i.bb = and i32 %.033.lcssa, 31
  %i.bc = shl nuw i32 1, %i.bb
  %i.bd = xor i32 %i.bc, -1
  %i.be = lshr i32 %.033.lcssa, 5
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !64
  %i.bi = and i32 %i.bh, %i.bd
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN4llvm11raw_ostreamEEZNKS0_14Rematerializer18printDependencyDAGEjE3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMapIterator", align 8 ; 7 uses
  %3 = alloca %"class.llvm::DenseMapIterator", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.llvm::DenseMap.579", align 8 ; 9 uses
  %5 = alloca %"class.std::function.581", align 8 ; 10 uses
  %6 = alloca %"class.llvm::SmallVector.585", align 8 ; 10 uses
  %7 = alloca %"class.llvm::Printable", align 8   ; 8 uses
  %8 = alloca %"class.llvm::Printable", align 8   ; 10 uses
  %9 = alloca %"class.llvm::Printable", align 8   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_13
begin_hunk_14_@_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIRKjJRjEEESt4pairIPS6_bEOT_DpOT0_:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1346
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1164
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1344
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !1339
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !64
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !64
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !1346
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !1346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !64
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.bd = load i32, ptr %2, align 4, !tbaa !64
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1339, !noalias !1402 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1344, !noalias !1402 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1345, !noalias !1402 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !64     ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !64
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !66

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !64
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !67, !llvm.loop !1401

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !64
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !68

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1164
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.579", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1345
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 4) #19 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1339
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1344
  store i32 0, ptr %i.p, align 16, !tbaa !1346
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !258
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1164
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !258
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !258
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !258
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !64 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !64
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !64
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !64
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !64
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 4) #19
  br label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit

_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1339   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1344
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1345 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1344 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1339
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1345
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !64   ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !64   ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !64
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, !llvm.loop !1407

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !64
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !64
  %i.ak = shl nuw i32 1, %i.ab
  %i.al = load i32, ptr %i.af, align 4, !tbaa !64
  %i.am = or i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.af, align 4, !tbaa !64
  %i.an = add i32 %.0.i16, -1
  %i.ao = and i32 %i.an, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1408

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !1409

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1345
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ap = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !1346
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !1346
  %i.at = icmp eq i32 %i.ap, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit
  %i.au = zext i32 %i.ap to i64                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.az, i64 noundef 4) #19
  store i32 0, ptr %i.d, align 4, !tbaa !1345
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE4killEv.exit

_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15SmallVectorImplISt4pairIjjEE6appendINS_16DenseMapIteratorIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEELb0EEEvEEvT_SC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef byval(%"class.llvm::DenseMapIterator") align 8 %1, ptr noundef byval(%"class.llvm::DenseMapIterator") align 8 %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.sroa.010.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 8 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.411.0.copyload = load ptr, ptr %.sroa.411.0..sroa_idx, align 8 ; 4 uses
  %.sroa.018.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  %.not5.i = icmp eq ptr %.sroa.010.0.copyload, %.sroa.018.0.copyload ; 2 uses
  br i1 %.not5.i, label %_ZSt10__distanceIN4llvm16DenseMapIteratorIjjNS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjjEELb0EEEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = ptrtoint ptr %.sroa.2.0.copyload to i64
  %i.b = ptrtoint ptr %.sroa.3.0.copyload to i64  ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = add nsw i64 %i.d, 31
  %i.f = lshr i64 %i.e, 5                         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm16DenseMapIteratorIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEELb0EEppEv.exit.i, %.lr.ph.i
  %.07.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ae, %_ZN4llvm16DenseMapIteratorIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEELb0EEppEv.exit.i ]
  %storemerge16.i.i46.i = phi ptr [ %.sroa.010.0.copyload, %.lr.ph.i ], [ %storemerge16.i.i.i, %_ZN4llvm16DenseMapIteratorIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEELb0EEppEv.exit.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %storemerge16.i.i46.i, i64 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.h, %i.b
  %i.j = ashr exact i64 %i.i, 3                   ; 3 uses
  %.not.i.i.i = icmp ult i64 %i.j, %i.d
  br i1 %.not.i.i.i, label %bb.c, label %_ZN4llvm16DenseMapIteratorIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEELb0EEppEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = lshr i64 %i.j, 5                         ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.sroa.411.0.copyload, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !64
  %i.n = trunc i64 %i.j to i32
  %i.o = and i32 %i.n, 31
  %i.p = shl nsw i32 -1, %i.o
  %i.q = and i32 %i.m, %i.p                       ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c
  %i.s = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.f
  br i1 %i.t, label %_ZN4llvm16DenseMapIteratorIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEELb0EEppEv.exit.i, label %.lr.ph

.lr.ph.i.i.i:                                     ; preds = %.lr.ph
  %i.u = add i64 %i.w, 1                          ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.f
  br i1 %i.v, label %_ZN4llvm16DenseMapIteratorIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEELb0EEppEv.exit.i, label %.lr.ph, !llvm.loop !1350

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.w = phi i64 [ %i.u, %.lr.ph.i.i.i ], [ %i.s, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.411.0.copyload, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !64   ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !1350

._crit_edge.i.i.i:                                ; preds = %.lr.ph, %bb.c
  %.012.lcssa.i.i.i = phi i64 [ %i.k, %bb.c ], [ %i.w, %.lr.ph ]
  %.0.lcssa.i.i.i = phi i32 [ %i.q, %bb.c ], [ %i.y, %.lr.ph ]
  %i.aa = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %i.ab = zext nneg i32 %i.aa to i64
  %.idx.i.i.i = shl i64 %.012.lcssa.i.i.i, 8
  %i.ac = getelementptr i8, ptr %.sroa.3.0.copyload, i64 %.idx.i.i.i
  %i.ad = getelementptr [8 x i8], ptr %i.ac, i64 %i.ab
  br label %_ZN4llvm16DenseMapIteratorIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEELb0EEppEv.exit.i

_ZN4llvm16DenseMapIteratorIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEELb0EEppEv.exit.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader, %._crit_edge.i.i.i, %bb.b
  %storemerge16.i.i.i = phi ptr [ %.sroa.2.0.copyload, %bb.b ], [ %i.ad, %._crit_edge.i.i.i ], [ %.sroa.2.0.copyload, %.lr.ph.i.i.i.preheader ], [ %.sroa.2.0.copyload, %.lr.ph.i.i.i ] ; 2 uses
  %i.ae = add nuw nsw i64 %.07.i, 1               ; 2 uses
  %.not.i = icmp eq ptr %storemerge16.i.i.i, %.sroa.018.0.copyload
  br i1 %.not.i, label %_ZSt10__distanceIN4llvm16DenseMapIteratorIjjNS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjjEELb0EEEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit, label %bb.b, !llvm.loop !1410

_ZSt10__distanceIN4llvm16DenseMapIteratorIjjNS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjjEELb0EEEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit: ; preds = %_ZN4llvm16DenseMapIteratorIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEELb0EEppEv.exit.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.ae, %_ZN4llvm16DenseMapIteratorIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEELb0EEppEv.exit.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !182 ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = add i64 %.0.lcssa.i, %i.ah              ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !183
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp ugt i64 %i.ai, %i.al
  br i1 %i.am, label %bb.d, label %_ZN4llvm15SmallVectorImplISt4pairIjjEE7reserveEm.exit

bb.d:                                             ; preds = %_ZSt10__distanceIN4llvm16DenseMapIteratorIjjNS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjjEELb0EEEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.an, i64 noundef %i.ai, i64 noundef 8) #19
  %.pre40.pre = load i32, ptr %i.af, align 8, !tbaa !182
  br label %_ZN4llvm15SmallVectorImplISt4pairIjjEE7reserveEm.exit

_ZN4llvm15SmallVectorImplISt4pairIjjEE7reserveEm.exit: ; preds = %_ZSt10__distanceIN4llvm16DenseMapIteratorIjjNS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjjEELb0EEEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit, %bb.d
  %.pre40 = phi i32 [ %i.ag, %_ZSt10__distanceIN4llvm16DenseMapIteratorIjjNS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjjEELb0EEEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit ], [ %.pre40.pre, %bb.d ] ; 2 uses
  br i1 %.not5.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjjELb1EE18uninitialized_copyINS_16DenseMapIteratorIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEELb0EEEPS2_EEvT_SD_T0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm15SmallVectorImplISt4pairIjjEE7reserveEm.exit
  %i.ao = load ptr, ptr %0, align 8, !tbaa !8
  %i.ap = zext i32 %.pre40 to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = ptrtoint ptr %.sroa.2.0.copyload to i64
  %i.as = ptrtoint ptr %.sroa.3.0.copyload to i64 ; 2 uses
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3                 ; 2 uses
  %i.av = add nsw i64 %i.au, 31
  %i.aw = lshr i64 %i.av, 5                       ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm16DenseMapIteratorIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEELb0EEppEv.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.bw, %_ZN4llvm16DenseMapIteratorIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEELb0EEppEv.exit.i.i.i.i ] ; 2 uses
  %storemerge16.i.i68.i.i.i.i = phi ptr [ %.sroa.010.0.copyload, %.lr.ph.i.i.i.i ], [ %storemerge16.i.i.i.i.i.i, %_ZN4llvm16DenseMapIteratorIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEELb0EEppEv.exit.i.i.i.i ] ; 2 uses
  %i.ax = load i64, ptr %storemerge16.i.i68.i.i.i.i, align 4
  store i64 %i.ax, ptr %.09.i.i.i.i, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge16.i.i68.i.i.i.i, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.as
  %i.bb = ashr exact i64 %i.ba, 3                 ; 3 uses
  %.not.i.i.i.i.i.i = icmp ult i64 %i.bb, %i.au
end_hunk_14
begin_hunk_15_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E24lookupOrInsertIntoBucketIRKS7_JEEESt4pairIPSF_bEOT_DpOT0_:bb.a
.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.aa, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.y, %bb.c ], [ %i.m, %bb.b ]
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.v, align 8
  %i.w = icmp eq i64 %.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.w, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E15LookupBucketForIS7_EEbRKT_RPSF_.exit, label %bb.c, !prof !68

bb.c:                                             ; preds = %.lr.ph.i
  %i.x = add nuw i32 %.024.i, 1
  %i.y = and i32 %i.x, %i.h                       ; 3 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.z ; 2 uses
  %i.ab = lshr i64 %i.z, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !64
  %i.ae = and i32 %i.y, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph.i, label %.loopexit, !prof !67, !llvm.loop !1551

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.aa, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1552
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1056
  %i.aj = shl i32 %i.ai, 2
  %i.ak = add i32 %i.aj, 4
  %i.al = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ak, %i.al
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E22findBucketForInsertionIS7_EEPSF_RKT_SJ_.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %.loopexit
  %i.am = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.am)
  %i.an = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E15LookupBucketForIS7_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1552
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !986
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !976
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E22findBucketForInsertionIS7_EEPSF_RKT_SJ_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E22findBucketForInsertionIS7_EEPSF_RKT_SJ_.exit: ; preds = %.loopexit, %bb.d
  %i.ao = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.ap = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.aq = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = sdiv exact i64 %i.at, 40                ; 2 uses
  %i.av = trunc i64 %i.au to i32
  %i.aw = and i32 %i.av, 31
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = lshr i64 %i.au, 5
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !64
  %i.bb = or i32 %i.ax, %i.ba
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !64
  %i.bc = load i32, ptr %i.ah, align 8, !tbaa !1056
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.ah, align 8, !tbaa !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.be = load i64, ptr %1, align 8
  store i64 %i.be, ptr %i.aq, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i8 0, i64 32, i1 false)
  store i32 1, ptr %i.bf, align 8
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E15LookupBucketForIS7_EEbRKT_RPSF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E15LookupBucketForIS7_EEbRKT_RPSF_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E22findBucketForInsertionIS7_EEPSF_RKT_SJ_.exit
  %.sroa.0.0 = phi ptr [ %i.aq, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E22findBucketForInsertionIS7_EEPSF_RKT_SJ_.exit ], [ %i.v, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E22findBucketForInsertionIS7_EEPSF_RKT_SJ_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E15LookupBucketForIS7_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !976, !noalias !1553 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !986, !noalias !1553 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !987, !noalias !1553 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.0.copyload.i.i.i = load i64, ptr %1, align 8  ; 2 uses
  %i.h = mul i64 %.0.copyload.i.i.i, -4658895280553007687 ; 2 uses
  %i.i = lshr i64 %i.h, 31
  %i.j = xor i64 %i.i, %i.h
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.g, %i.k                       ; 3 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = lshr i64 %i.m, 5
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !64
  %i.r = and i32 %i.l, 31
  %i.s = lshr i32 %i.q, %i.r
  %i.t = trunc i32 %i.s to i1
  br i1 %i.t, label %.lr.ph, label %.thread, !prof !66

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.u = phi ptr [ %i.z, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.x, %bb.c ], [ %i.l, %bb.b ]
  %.sroa.0.0.copyload.i = load i64, ptr %i.u, align 8
  %i.v = icmp eq i64 %.0.copyload.i.i.i, %.sroa.0.0.copyload.i ; 3 uses
  br i1 %i.v, label %.thread, label %bb.c, !prof !68

bb.c:                                             ; preds = %.lr.ph
  %i.w = add nuw i32 %.024, 1
  %i.x = and i32 %i.w, %i.g                       ; 3 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = lshr i64 %i.y, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !64
  %i.ad = and i32 %i.x, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph, label %.thread, !prof !67, !llvm.loop !1551

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ], [ %i.z, %bb.c ], [ %i.u, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.v, %bb.c ], [ %i.v, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1552
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.417", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !987
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 40                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #19 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !976
  store ptr %i.y, ptr %i.q, align 8, !tbaa !986
  store i32 0, ptr %i.p, align 16, !tbaa !1056
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1552   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1172 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !258
  store ptr %i.z, ptr %2, align 16, !tbaa !1552
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !258
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !1172
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !64 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !64
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !64
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !64
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !64
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS8_IS6_vEENS_6detail12DenseMapPairIS6_SA_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !64 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bh, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 8
  %i.av = and i32 %i.au, 1
  %.not.i.i.i.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !168 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !168
  %i.bb = zext i32 %i.ax to i64                   ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, 31
  %i.bd = lshr i64 %i.bc, 5
  %i.be = add nuw nsw i64 %i.bd, %i.bb
  %i.bf = shl nuw nsw i64 %i.be, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bf, i64 noundef 4) #19
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.bg = add i32 %.0.i3.i.i, -1
  %i.bh = and i32 %i.bg, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1057

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1058

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !987 ; 2 uses
  %i.bi = icmp eq i32 %.pr.i, 0
  br i1 %i.bi, label %_ZN4llvm8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS8_IS6_vEENS_6detail12DenseMapPairIS6_SA_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEv.exit.i
  %i.bj = load ptr, ptr %2, align 16, !tbaa !976
  %i.bk = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bl = mul nuw nsw i64 %i.bk, 40
  %i.bm = add nuw nsw i64 %i.bk, 31
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = and i64 %i.bn, 1073741820
  %i.bp = add nuw nsw i64 %i.bo, %i.bl
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bj, i64 noundef %i.bp, i64 noundef 8) #19
  br label %_ZN4llvm8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS8_IS6_vEENS_6detail12DenseMapPairIS6_SA_EEED2Ev.exit

_ZN4llvm8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS8_IS6_vEENS_6detail12DenseMapPairIS6_SA_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEv.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"struct.llvm::SmallDenseMap<unsigned int, llvm::detail::DenseSetEmpty, 1, llvm::DenseMapInfo<unsigned int>, llvm::detail::DenseSetPair<unsigned int>>::LargeRep", align 8 ; 4 uses
  %3 = alloca %"struct.llvm::SmallDenseMap<unsigned int, llvm::detail::DenseSetEmpty, 1, llvm::DenseMapInfo<unsigned int>, llvm::detail::DenseSetPair<unsigned int>>::LargeRep", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !976
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !986
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !987  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !986  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !976
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !987
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENSC_ISA_vEENS_6detail12DenseMapPairISA_SE_EEEESA_SE_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !64   ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.cy, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.t ; 7 uses
  %.0.copyload.i.i.i.i = load i64, ptr %i.u, align 8 ; 2 uses
  %i.v = mul i64 %.0.copyload.i.i.i.i, -4658895280553007687 ; 2 uses
  %i.w = lshr i64 %i.v, 31
  %i.x = xor i64 %i.w, %i.v
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.k, %i.y                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !64
  %i.ae = and i32 %i.z, 31                        ; 2 uses
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ai, %.lr.ph.i ], [ %i.z, %bb.b ]
  %i.ah = add i32 %.014.i, 1
  %i.ai = and i32 %i.ah, %i.k                     ; 3 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 5                       ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !64
  %i.an = and i32 %i.ai, 31                       ; 2 uses
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1558

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.aa, %bb.b ], [ %i.aj, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ae, %bb.b ], [ %i.an, %.lr.ph.i ]
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %.lcssa12.i ; 5 uses
  store i64 %.0.copyload.i.i.i.i, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 20 ; 4 uses
  store i32 1, ptr %i.ar, align 8
  store i32 0, ptr %i.at, align 4
  %i.au = load i32, ptr %i.as, align 8            ; 2 uses
  %i.av = and i32 %i.au, -2
  %i.aw = and i32 %i.au, 1
  store i32 %i.aw, ptr %i.as, align 8
  %i.ax = load i32, ptr %i.ar, align 8
  %i.ay = and i32 %i.ax, 1                        ; 2 uses
  %i.az = or disjoint i32 %i.ay, %i.av            ; 2 uses
  store i32 %i.az, ptr %i.ar, align 8
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ay, 0
  %i.ba = load i32, ptr %i.as, align 8            ; 2 uses
  %i.bb = and i32 %i.ba, 1
  %.not72.i.i.i.i.i.i = icmp eq i32 %i.bb, 0      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  br i1 %.not72.i.i.i.i.i.i, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 4 uses
  %i.bf = load i32, ptr %i.at, align 4, !tbaa !64 ; 2 uses
  %i.bg = load i32, ptr %i.bc, align 4, !tbaa !64 ; 2 uses
  %i.bh = trunc i32 %i.bg to i1
  %i.bi = and i32 %i.bf, 1
  %i.bj = and i32 %i.bi, %i.bg
  %or.cond.not.i.i.i.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %or.cond.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = load i32, ptr %i.bd, align 8, !tbaa !64
  %i.bl = load i32, ptr %i.be, align 8, !tbaa !64
  store i32 %i.bl, ptr %i.bd, align 8, !tbaa !64
  store i32 %i.bk, ptr %i.be, align 8, !tbaa !64
  br label %.preheader78.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.bm = trunc i32 %i.bf to i1
  br i1 %i.bm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bn = load i32, ptr %i.bd, align 8, !tbaa !64
  store i32 %i.bn, ptr %i.be, align 8, !tbaa !64
  br label %.preheader78.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  br i1 %i.bh, label %bb.i, label %.preheader78.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bo = load i32, ptr %i.be, align 8, !tbaa !64
  store i32 %i.bo, ptr %i.bd, align 8, !tbaa !64
  br label %.preheader78.i.i.i.i.i.i

.preheader78.i.i.i.i.i.i:                         ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  %i.bp = load i32, ptr %i.at, align 4, !tbaa !64
  %i.bq = load i32, ptr %i.bc, align 4, !tbaa !64
  store i32 %i.bq, ptr %i.at, align 4, !tbaa !64
  store i32 %i.bp, ptr %i.bc, align 4, !tbaa !64
  br label %_ZN4llvm13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEC2EOS3_.exit.i

bb.j:                                             ; preds = %._crit_edge.i
  br i1 %.not72.i.i.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false), !tbaa.struct !1197
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !tbaa.struct !1197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !1197
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN4llvm13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEC2EOS3_.exit.i

bb.l:                                             ; preds = %bb.j, %bb.c
  %i.bt = phi i32 [ %i.ba, %bb.c ], [ %i.az, %bb.j ]
  %i.bu = phi ptr [ %i.as, %bb.c ], [ %i.ar, %bb.j ] ; 3 uses
  %i.bv = phi ptr [ %i.ar, %bb.c ], [ %i.as, %bb.j ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false), !tbaa.struct !1197
  %i.bx = or i32 %i.bt, 1
  store i32 %i.bx, ptr %i.bu, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 12 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.by, align 4, !tbaa !64 ; 2 uses
  %i.cc = trunc i32 %i.cb to i1
  br i1 %i.cc, label %.split.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.l
  %i.cd = load i32, ptr %i.ca, align 4, !tbaa !64
  store i32 %i.cd, ptr %i.bw, align 8, !tbaa !64
  %.pre.i.i.i.i.i.i = load i32, ptr %i.by, align 4, !tbaa !64
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.split.i.i.i.i.i.i, %bb.l
  %i.ce = phi i32 [ %i.cb, %bb.l ], [ %.pre.i.i.i.i.i.i, %.split.i.i.i.i.i.i ]
  store i32 %i.ce, ptr %i.bz, align 4, !tbaa !64
  %i.cf = load i32, ptr %i.bv, align 8
  %i.cg = and i32 %i.cf, -2
  store i32 %i.cg, ptr %i.bv, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !1197
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN4llvm13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEC2EOS3_.exit.i

_ZN4llvm13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEC2EOS3_.exit.i: ; preds = %.preheader.i.i.i.i.i.i, %bb.k, %.preheader78.i.i.i.i.i.i
  %i.ch = shl nuw i32 1, %.lcssa.i
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !64
  %i.ck = or i32 %i.cj, %i.ch
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !64
  %i.cl = load i32, ptr %i.as, align 8
  %i.cm = and i32 %i.cl, 1
  %.not.i.i.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit

bb.m:                                             ; preds = %_ZN4llvm13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEC2EOS3_.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !168 ; 2 uses
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !168
  %i.cs = zext i32 %i.co to i64                   ; 2 uses
  %i.ct = add nuw nsw i64 %i.cs, 31
  %i.cu = lshr i64 %i.ct, 5
  %i.cv = add nuw nsw i64 %i.cu, %i.cs
  %i.cw = shl nuw nsw i64 %i.cv, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cr, i64 noundef %i.cw, i64 noundef 4) #19
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit: ; preds = %_ZN4llvm13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEC2EOS3_.exit.i, %bb.m, %bb.n
  %i.cx = add i32 %.0.i19, -1
  %i.cy = and i32 %i.cx, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.cy, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1559

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENSC_ISA_vEENS_6detail12DenseMapPairISA_SE_EEEESA_SE_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !1560

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENSC_ISA_vEENS_6detail12DenseMapPairISA_SE_EEEESA_SE_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !987
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENSC_ISA_vEENS_6detail12DenseMapPairISA_SE_EEEESA_SE_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENSC_ISA_vEENS_6detail12DenseMapPairISA_SE_EEEESA_SE_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENSC_ISA_vEENS_6detail12DenseMapPairISA_SE_EEEESA_SE_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.cz = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENSC_ISA_vEENS_6detail12DenseMapPairISA_SE_EEEESA_SE_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.db = load i32, ptr %i.da, align 8, !tbaa !1056
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_15
begin_hunk_16_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_:bb.a
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !64
  %i.ag = icmp eq i32 %i.l, %i.af                 ; 3 uses
  br i1 %i.ag, label %.thread, label %bb.c, !prof !68

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa29.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.x, %bb.c ], [ %i.ae, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ag, %bb.c ], [ %i.ag, %.lr.ph ]
  store ptr %.lcssa29.sink, ptr %2, align 8, !tbaa !1184
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.425", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 2                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEEC2EjNS_12DenseMapBaseIS7_jS2_S4_S6_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 3 uses
  %i.r = add nuw nsw i64 %i.q, 31                 ; 2 uses
  %i.s = lshr i64 %i.r, 5
  %i.t = add nuw nsw i64 %i.s, %i.q
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.u, i64 noundef 4) #19 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !168
  %i.x = shl nuw nsw i64 %i.q, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !168
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !168
  %i.ab = lshr i64 %i.r, 3
  %i.ac = and i64 %i.ab, 1073741820
  br label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEEC2EjNS_12DenseMapBaseIS7_jS2_S4_S6_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEEC2EjNS_12DenseMapBaseIS7_jS2_S4_S6_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit ]
  %i.ad = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit.thread ], [ %i.ac, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit ]
  %i.ae = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ad, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.af = load i32, ptr %2, align 8               ; 3 uses
  %i.ag = and i32 %i.af, 1
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit.thread, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEEC2EjNS_12DenseMapBaseIS7_jS2_S4_S6_E16ExactBucketCountE.exit
  store i32 %i.af, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !1197
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.aj, align 8, !tbaa !168
  br label %bb.b

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit: ; preds = %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEEC2EjNS_12DenseMapBaseIS7_jS2_S4_S6_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit
  %i.al = load i32, ptr %0, align 8
  %i.am = and i32 %i.al, -2
  store i32 %i.am, ptr %0, align 8
  %i.an = zext i32 %.0.i4 to i64                  ; 3 uses
  %i.ao = add nuw nsw i64 %i.an, 31
  %i.ap = lshr i64 %i.ao, 5
  %i.aq = add nuw nsw i64 %i.ap, %i.an
  %i.ar = shl nuw nsw i64 %i.aq, 2
  %i.as = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.ar, i64 noundef 4) #19 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !168
  %i.au = shl nuw nsw i64 %i.an, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !168
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.ax, align 8, !tbaa !168
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.ay = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ay, 0            ; 2 uses
  %i.az = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 12
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.ba
  %i.bb = zext i32 %i.az to i64
  %i.bc = add nuw nsw i64 %i.bb, 31
  %i.bd = lshr i64 %i.bc, 3
  %i.be = and i64 %i.bd, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.ay, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit.i ]
  %i.bf = phi i64 [ 4, %.thread.i ], [ %i.be, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit.i ]
  %i.bg = phi ptr [ %i.ak, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bg, i8 0, i64 %i.bf, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24initWithExactBucketCountEj.exit
  %i.bh = phi i32 [ %i.af, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24initWithExactBucketCountEj.exit ]
  %i.bi = and i32 %i.bh, 1
  %.not.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !168 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !168
  %i.bo = zext i32 %i.bk to i64                   ; 2 uses
  %i.bp = add nuw nsw i64 %i.bo, 31
  %i.bq = lshr i64 %i.bp, 5
  %i.br = add nuw nsw i64 %i.bq, %i.bo
  %i.bs = shl nuw nsw i64 %i.br, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bn, i64 noundef %i.bs, i64 noundef 4) #19
  br label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 1
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 0
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i22 = icmp eq i64 %i.ab, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !64 ; 2 uses
  %.not11.i20 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ae = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.ad, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !64 ; 2 uses
  %i.ak = mul i32 %i.aj, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.ak, %bb.b ], [ %i.as, %bb.c ]
  %.0.i11 = and i32 %.pn.i, %i.y                  ; 3 uses
  %i.al = zext i32 %.0.i11 to i64                 ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !64
  %i.ap = and i32 %.0.i11, 31                     ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  %i.as = add i32 %.0.i11, 1
  br i1 %i.ar, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit, !llvm.loop !1572

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.al
  store i32 %i.aj, ptr %i.au, align 4, !tbaa !64
  %i.av = shl nuw i32 1, %i.ap
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !64
  %i.ax = or i32 %i.aw, %i.av
  store i32 %i.ax, ptr %i.at, align 4, !tbaa !64
  %i.ay = add i32 %.0.i21, -1
  %i.az = and i32 %i.ay, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1573

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !1574

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bb = and i32 %i.ba, -2
  %i.bc = or disjoint i32 %.pre-phi, %i.bb
  store i32 %i.bc, ptr %0, align 8
  %i.bd = load i32, ptr %1, align 8               ; 3 uses
  %i.be = and i32 %i.bd, 1
  %.not.i.i12 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i12, label %bb.d, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE4killEv.exit

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.bf = load i32, ptr %i.j, align 8, !tbaa !168 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !168
  %i.bi = zext i32 %i.bf to i64                   ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 31
  %i.bk = lshr i64 %i.bj, 5
  %i.bl = add nuw nsw i64 %i.bk, %i.bi
  %i.bm = shl nuw nsw i64 %i.bl, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bh, i64 noundef %i.bm, i64 noundef 4) #19
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE4killEv.exit

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.d, %bb.e
  %i.bn = phi i32 [ %i.bd, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit ], [ %i.bd, %bb.d ], [ %.pre.i, %bb.e ]
  %i.bo = and i32 %i.bn, -2
  store i32 %i.bo, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEELb1EE15growAndPushBackES6_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !182
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #19
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = load i32, ptr %i.a, align 8, !tbaa !182
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store i64 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !182
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIS3_JS3_EEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1023, !noalias !1575 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1031, !noalias !1575 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1032, !noalias !1575 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !79     ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !64
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !66

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !79
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit, label %bb.c, !prof !68

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !64
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !67, !llvm.loop !1580

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1581
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1582
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1581
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1031
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !1023
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !64
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !64
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1582
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !79
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !79
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = load ptr, ptr %2, align 8, !tbaa !79
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !79
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1023, !noalias !1583 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1031, !noalias !1583 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1032, !noalias !1583 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !79     ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !64
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !66

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !79
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !68

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !64
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !67, !llvm.loop !1580

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1581
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.431", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1032
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #19 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1023
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1031
  store i32 0, ptr %i.p, align 16, !tbaa !1582
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !258
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1581
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !258
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !258
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !258
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !64 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !64
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !64
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !64
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !64
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #19
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1023   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1031
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1032 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1031 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1023
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1032
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !64   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !79   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !64 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !64 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !1588

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !79
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !79
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !79
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !64
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1589

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1590

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1032
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1582
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1582
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #19
  store i32 0, ptr %i.d, align 4, !tbaa !1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1056 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS8_IS6_vEENS_6detail12DenseMapPairIS6_SA_EEE18planShrinkAndClearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64)
  br label %_ZNK4llvm8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS8_IS6_vEENS_6detail12DenseMapPairIS6_SA_EEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS8_IS6_vEENS_6detail12DenseMapPairIS6_SA_EEE18planShrinkAndClearEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.a ], [ %.sroa.speculated.i, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !987  ; 3 uses
  %.not = icmp eq i32 %.0.i, %i.h                 ; 2 uses
  %spec.select10.i = select i1 %.not, i32 0, i32 %.0.i
  %.sroa.39.0.insert.ext.i = zext i32 %spec.select10.i to i64 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %_ZNK4llvm8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS8_IS6_vEENS_6detail12DenseMapPairIS6_SA_EEE18planShrinkAndClearEv.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !976
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !986
  %i.m = zext i32 %i.h to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !64   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.q, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.r = shl i32 %indvars.iv.tr.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.ak, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %i.u ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8
  %i.y = and i32 %i.x, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !168 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !168
  %i.ae = zext i32 %i.aa to i64                   ; 2 uses
  %i.af = add nuw nsw i64 %i.ae, 31
  %i.ag = lshr i64 %i.af, 5
  %i.ah = add nuw nsw i64 %i.ag, %i.ae
  %i.ai = shl nuw nsw i64 %i.ah, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ad, i64 noundef %i.ai, i64 noundef 4) #19
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.aj = add i32 %.0.i3.i, -1
  %i.ak = and i32 %i.aj, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.c, !llvm.loop !1057

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !1058

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEv.exit: ; preds = %._crit_edge.i, %_ZNK4llvm8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS8_IS6_vEENS_6detail12DenseMapPairIS6_SA_EEE18planShrinkAndClearEv.exit
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !1056
  %i.al = load i32, ptr %i.g, align 4, !tbaa !987 ; 2 uses
  %.not.i3 = icmp eq i32 %i.al, 0
  br i1 %.not.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E9initEmptyEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !986
  %i.ao = zext i32 %i.al to i64
  %i.ap = add nuw nsw i64 %i.ao, 31
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = and i64 %i.aq, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.an, i8 0, i64 %i.ar, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E9initEmptyEv.exit

bb.h:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E10destroyAllEv.exit
  %i.as = load i32, ptr %i.g, align 4, !tbaa !987 ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS8_IS6_vEENS_6detail12DenseMapPairIS6_SA_EEE17deallocateBucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %0, align 8, !tbaa !976
  %i.av = zext i32 %i.as to i64                   ; 2 uses
  %i.aw = mul nuw nsw i64 %i.av, 40
  %i.ax = add nuw nsw i64 %i.av, 31
  %i.ay = lshr i64 %i.ax, 3
  %i.az = and i64 %i.ay, 1073741820
  %i.ba = add nuw nsw i64 %i.az, %i.aw
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.au, i64 noundef %i.ba, i64 noundef 8) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS8_IS6_vEENS_6detail12DenseMapPairIS6_SA_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS8_IS6_vEENS_6detail12DenseMapPairIS6_SA_EEE17deallocateBucketsEv.exit: ; preds = %bb.h, %bb.i
  store i32 %.0.i, ptr %i.g, align 4, !tbaa !987
  %.not.i4 = icmp eq i32 %.0.i, 0
  br i1 %.not.i4, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS8_IS6_vEENS_6detail12DenseMapPairIS6_SA_EEE17deallocateBucketsEv.exit
  %i.bb = mul nuw nsw i64 %.sroa.39.0.insert.ext.i, 40
  %i.bc = add nuw nsw i64 %.sroa.39.0.insert.ext.i, 31
  %i.bd = lshr i64 %i.bc, 3
  %i.be = and i64 %i.bd, 1073741820
  %i.bf = add nuw nsw i64 %i.be, %i.bb
  %i.bg = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.bf, i64 noundef 8) #19 ; 2 uses
  %i.bh = load i32, ptr %i.g, align 4, !tbaa !987 ; 2 uses
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = mul nuw nsw i64 %i.bi, 40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bj ; 2 uses
  store ptr %i.bg, ptr %0, align 8, !tbaa !976
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !986
  store i32 0, ptr %i.a, align 8, !tbaa !1056
  %.not.i.i5 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i5, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E9initEmptyEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = add nuw nsw i64 %i.bi, 31
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = and i64 %i.bn, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bk, i8 0, i64 %i.bo, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E9initEmptyEv.exit

bb.l:                                             ; preds = %_ZN4llvm8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS8_IS6_vEENS_6detail12DenseMapPairIS6_SA_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPNS_12MachineInstrEPNS_17MachineBasicBlockEEEENS_13SmallDenseSetIjLj1ENS_12DenseMapInfoIjvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E9initEmptyEv.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !1591 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1591 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1591 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !1591
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 1 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !64     ; 2 uses
  %i.n = mul i32 %i.m, 37
  %.024.i = and i32 %i.n, %i.l                    ; 3 uses
  %i.o = zext i32 %.024.i to i64                  ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i.i.i, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !64
  %i.t = and i32 %.024.i, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !66

bb.c:                                             ; preds = %.lr.ph.i
  %i.w = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.w, %i.l                      ; 3 uses
  %i.x = zext i32 %.0.i to i64                    ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i.i.i, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !64
  %i.ac = and i32 %.0.i, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph.i, label %.loopexit, !prof !67, !llvm.loop !1566

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.af = phi ptr [ %i.y, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !64
  %i.ah = icmp eq i32 %i.m, %i.ag
  br i1 %i.ah, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit, label %bb.c, !prof !68

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa29.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.y, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa29.sink.i.ph, ptr %i.a, align 8, !tbaa !1184
  %i.ai = shl i32 %i.b, 1
  %i.aj = and i32 %i.ai, -4
  %i.ak = add i32 %i.aj, 4
  %i.al = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.ak, %i.al
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %.loopexit
  %i.am = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.am)
  %i.an = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !1184
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit: ; preds = %.loopexit, %bb.d
  %i.ao = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.ap = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aq = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa29.sink.i.ph, %.loopexit ] ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ar = select i1 %.not.i.i.i.i, ptr %i.ap, ptr %i.j
end_hunk_16
