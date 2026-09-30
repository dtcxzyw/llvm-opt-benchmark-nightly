Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BitcodeWriter?download=true
inline.NumInlined: 12476
inline.NumDeleted: 5487
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN12_GLOBAL__N_119ModuleBitcodeWriter16writeInstructionERKN4llvm11InstructionEjRNS1_15SmallVectorImplIjEE:bb.a
bb.lm:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit874
  %i.bxv = zext i32 %i.bxq to i64
  %i.bxw = load ptr, ptr %3, align 8, !tbaa !52
  %i.bxx = getelementptr inbounds nuw [4 x i8], ptr %i.bxw, i64 %i.bxv
  store i32 %i.bxt, ptr %i.bxx, align 1
  %i.bxy = load i32, ptr %i.bwc, align 8, !tbaa !87
  %i.bxz = add i32 %i.bxy, 1
  store i32 %i.bxz, ptr %i.bwc, align 8, !tbaa !87
  br label %_ZN12_GLOBAL__N_119ModuleBitcodeWriter9pushValueEPKN4llvm5ValueEjRNS1_15SmallVectorImplIjEE.exit597

switch.lookup1615:                                ; preds = %bb.a
  %i.bya = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.byb = load i16, ptr %i.bya, align 2, !tbaa !611
  %i.byc = and i16 %i.byb, 7
  %i.byd = zext nneg i16 %i.byc to i64
  %switch.gep1616 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_119ModuleBitcodeWriter16writeInstructionERKN4llvm11InstructionEjRNS1_15SmallVectorImplIjEE.133, i64 %i.byd
  %switch.load1617 = load i8, ptr %switch.gep1616, align 1
  %switch.ext1618 = zext i8 %switch.load1617 to i32 ; 2 uses
  %i.bye = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.byf = load i32, ptr %i.bye, align 8, !tbaa !87 ; 2 uses
  %i.byg = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.byh = load i32, ptr %i.byg, align 4, !tbaa !88
  %.not.i882 = icmp ult i32 %i.byf, %i.byh
  br i1 %.not.i882, label %bb.lo, label %bb.ln, !prof !265

bb.ln:                                            ; preds = %switch.lookup1615
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %switch.ext1618)
  %.pre = load i32, ptr %i.bye, align 8, !tbaa !87
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit883

bb.lo:                                            ; preds = %switch.lookup1615
  %i.byi = zext i32 %i.byf to i64
  %i.byj = load ptr, ptr %3, align 8, !tbaa !52
  %i.byk = getelementptr inbounds nuw [4 x i8], ptr %i.byj, i64 %i.byi
  store i32 %switch.ext1618, ptr %i.byk, align 1
  %i.byl = load i32, ptr %i.bye, align 8, !tbaa !87
  %i.bym = add i32 %i.byl, 1                      ; 2 uses
  store i32 %i.bym, ptr %i.bye, align 8, !tbaa !87
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit883

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit883: ; preds = %bb.ln, %bb.lo
  %i.byn = phi i32 [ %.pre, %bb.ln ], [ %i.bym, %bb.lo ] ; 2 uses
  %i.byo = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.byp = load i8, ptr %i.byo, align 8, !tbaa !3201
  %i.byq = zext i8 %i.byp to i32                  ; 2 uses
  %i.byr = load i32, ptr %i.byg, align 4, !tbaa !88
  %.not.i884 = icmp ult i32 %i.byn, %i.byr
  br i1 %.not.i884, label %bb.lq, label %bb.lp, !prof !265

bb.lp:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit883
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %i.byq)
  br label %_ZN12_GLOBAL__N_119ModuleBitcodeWriter9pushValueEPKN4llvm5ValueEjRNS1_15SmallVectorImplIjEE.exit597

bb.lq:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit883
  %i.bys = zext i32 %i.byn to i64
  %i.byt = load ptr, ptr %3, align 8, !tbaa !52
  %i.byu = getelementptr inbounds nuw [4 x i8], ptr %i.byt, i64 %i.bys
  store i32 %i.byq, ptr %i.byu, align 1
  %i.byv = load i32, ptr %i.bye, align 8, !tbaa !87
  %i.byw = add i32 %i.byv, 1
  store i32 %i.byw, ptr %i.bye, align 8, !tbaa !87
  br label %_ZN12_GLOBAL__N_119ModuleBitcodeWriter9pushValueEPKN4llvm5ValueEjRNS1_15SmallVectorImplIjEE.exit597

bb.lr:                                            ; preds = %bb.a
  %i.byx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.byy = load ptr, ptr %i.byx, align 8, !tbaa !3161 ; 4 uses
  %i.byz = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.bza = load i32, ptr %i.byz, align 4
  %i.bzb = icmp slt i32 %i.bza, 0
  br i1 %i.bzb, label %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i888, label %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit890

_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i888: ; preds = %bb.lr
  %i.bzc = tail call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #26
  %i.bzd = extractvalue { ptr, i64 } %i.bzc, 0    ; 2 uses
  %.pr.i.i889 = load i32, ptr %i.byz, align 4
  %i.bze = icmp slt i32 %.pr.i.i889, 0
  br i1 %i.bze, label %bb.ls, label %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit890

bb.ls:                                            ; preds = %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i888
  %i.bzf = tail call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #26 ; 2 uses
  %i.bzg = extractvalue { ptr, i64 } %i.bzf, 0
  %i.bzh = extractvalue { ptr, i64 } %i.bzf, 1
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bzg, i64 %i.bzh
  %i.bzj = ptrtoint ptr %i.bzi to i64
  br label %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit890

_ZNK4llvm8CallBase17hasOperandBundlesEv.exit890:  ; preds = %bb.lr, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i888, %bb.ls
  %.0.i.i3.i.i886 = phi ptr [ %i.bzd, %bb.ls ], [ %i.bzd, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i888 ], [ null, %bb.lr ]
  %.0.i.i1.i.i887 = phi i64 [ %i.bzj, %bb.ls ], [ 0, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i888 ], [ 0, %bb.lr ]
  %i.bzk = ptrtoint ptr %.0.i.i3.i.i886 to i64
  %i.bzl = sub i64 %.0.i.i1.i.i887, %i.bzk
  %i.bzm = and i64 %i.bzl, 68719476720
  %.not970 = icmp eq i64 %i.bzm, 0
  br i1 %.not970, label %bb.lu, label %bb.lt

bb.lt:                                            ; preds = %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit890
  tail call fastcc void @_ZN12_GLOBAL__N_119ModuleBitcodeWriter19writeOperandBundlesERKN4llvm8CallBaseEj(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2)
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit890
  %i.bzn = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.0.0.copyload.i891 = load ptr, ptr %i.bzn, align 8, !tbaa !621 ; 3 uses
  %i.bzo = icmp eq ptr %.sroa.0.0.copyload.i891, null
  br i1 %i.bzo, label %_ZNK4llvm15ValueEnumerator18getAttributeListIDENS_13AttributeListE.exit898, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.bzp = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bzq = load ptr, ptr %i.bzp, align 8, !tbaa !617, !noalias !3202 ; 2 uses
  %i.bzr = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bzs = load ptr, ptr %i.bzr, align 8, !tbaa !618, !noalias !3202 ; 2 uses
  %i.bzt = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.bzu = load i32, ptr %i.bzt, align 4, !tbaa !619, !noalias !3202 ; 3 uses
  %i.bzv = icmp eq i32 %i.bzu, 0
  br i1 %i.bzv, label %.loopexit.i.i.i892, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.bzw = add i32 %i.bzu, -1                     ; 2 uses
  %i.bzx = ptrtoint ptr %.sroa.0.0.copyload.i891 to i64
  %i.bzy = mul i64 %i.bzx, -4658895280553007687   ; 2 uses
  %i.bzz = lshr i64 %i.bzy, 31
  %i.caa = xor i64 %i.bzz, %i.bzy
  %i.cab = trunc i64 %i.caa to i32
  %i.cac = and i32 %i.bzw, %i.cab                 ; 3 uses
  %i.cad = zext i32 %i.cac to i64                 ; 2 uses
  %i.cae = lshr i64 %i.cad, 5
  %i.caf = getelementptr inbounds nuw [4 x i8], ptr %i.bzs, i64 %i.cae
  %i.cag = load i32, ptr %i.caf, align 4, !tbaa !126, !noalias !3203
  %i.cah = and i32 %i.cac, 31
  %i.cai = lshr i32 %i.cag, %i.cah
  %i.caj = trunc i32 %i.cai to i1
  br i1 %i.caj, label %.lr.ph.i.i.i.i895, label %.loopexit.i.i.i892, !prof !281

.lr.ph.i.i.i.i895:                                ; preds = %bb.lw, %bb.lx
  %i.cak = phi i64 [ %i.cap, %bb.lx ], [ %i.cad, %bb.lw ] ; 2 uses
  %.01419.i.i.i.i896 = phi i32 [ %i.cao, %bb.lx ], [ %i.cac, %bb.lw ]
  %i.cal = getelementptr inbounds nuw [16 x i8], ptr %i.bzq, i64 %i.cak
  %.sroa.0.0.copyload.i.i.i.i897 = load ptr, ptr %i.cal, align 8, !tbaa !621, !noalias !3203
  %i.cam = icmp eq ptr %.sroa.0.0.copyload.i891, %.sroa.0.0.copyload.i.i.i.i897
  br i1 %i.cam, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_13AttributeListEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit.i893, label %bb.lx, !prof !265

bb.lx:                                            ; preds = %.lr.ph.i.i.i.i895
  %i.can = add nuw i32 %.01419.i.i.i.i896, 1
  %i.cao = and i32 %i.can, %i.bzw                 ; 3 uses
  %i.cap = zext i32 %i.cao to i64                 ; 2 uses
  %i.caq = lshr i64 %i.cap, 5
  %i.car = getelementptr inbounds nuw [4 x i8], ptr %i.bzs, i64 %i.caq
  %i.cas = load i32, ptr %i.car, align 4, !tbaa !126, !noalias !3203
  %i.cat = and i32 %i.cao, 31
  %i.cau = lshr i32 %i.cas, %i.cat
  %i.cav = trunc i32 %i.cau to i1
  br i1 %i.cav, label %.lr.ph.i.i.i.i895, label %.loopexit.i.i.i892, !prof !282

.loopexit.i.i.i892:                               ; preds = %bb.lx, %bb.lw, %bb.lv
  %i.caw = zext i32 %i.bzu to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_13AttributeListEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit.i893

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_13AttributeListEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit.i893: ; preds = %.lr.ph.i.i.i.i895, %.loopexit.i.i.i892
  %i.cax = phi i64 [ %i.caw, %.loopexit.i.i.i892 ], [ %i.cak, %.lr.ph.i.i.i.i895 ]
  %i.cay = getelementptr inbounds nuw [16 x i8], ptr %i.bzq, i64 %i.cax
  %i.caz = getelementptr inbounds nuw i8, ptr %i.cay, i64 8
  %i.cba = load i32, ptr %i.caz, align 8, !tbaa !624
  br label %_ZNK4llvm15ValueEnumerator18getAttributeListIDENS_13AttributeListE.exit898

_ZNK4llvm15ValueEnumerator18getAttributeListIDENS_13AttributeListE.exit898: ; preds = %bb.lu, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_13AttributeListEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit.i893
  %.0.i894 = phi i32 [ %i.cba, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_13AttributeListEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit.i893 ], [ 0, %bb.lu ] ; 2 uses
  %i.cbb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 12 uses
  %i.cbc = load i32, ptr %i.cbb, align 8, !tbaa !87 ; 2 uses
  %i.cbd = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 4 uses
  %i.cbe = load i32, ptr %i.cbd, align 4, !tbaa !88
  %.not.i899 = icmp ult i32 %i.cbc, %i.cbe
  br i1 %.not.i899, label %bb.lz, label %bb.ly, !prof !265

bb.ly:                                            ; preds = %_ZNK4llvm15ValueEnumerator18getAttributeListIDENS_13AttributeListE.exit898
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %.0.i894)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit900

bb.lz:                                            ; preds = %_ZNK4llvm15ValueEnumerator18getAttributeListIDENS_13AttributeListE.exit898
  %i.cbf = zext i32 %i.cbc to i64
  %i.cbg = load ptr, ptr %3, align 8, !tbaa !52
  %i.cbh = getelementptr inbounds nuw [4 x i8], ptr %i.cbg, i64 %i.cbf
  store i32 %.0.i894, ptr %i.cbh, align 1
  %i.cbi = load i32, ptr %i.cbb, align 8, !tbaa !87
  %i.cbj = add i32 %i.cbi, 1
  store i32 %i.cbj, ptr %i.cbb, align 8, !tbaa !87
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit900

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit900: ; preds = %bb.ly, %bb.lz
  %i.cbk = tail call fastcc noundef i64 @_ZL20getOptimizationFlagsPKN4llvm5ValueE(ptr noundef nonnull %1) ; 2 uses
  %i.cbl = trunc nuw nsw i64 %i.cbk to i32
  %i.cbm = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cbn = load i16, ptr %i.cbm, align 2, !tbaa !611 ; 2 uses
  %i.cbo = lshr i16 %i.cbn, 1
  %i.cbp = and i16 %i.cbo, 2046
  %i.cbq = and i16 %i.cbn, 3                      ; 3 uses
  %i.cbr = add nsw i16 %i.cbq, -1
  %i.cbs = icmp ult i16 %i.cbr, 2
  %i.cbt = zext i1 %i.cbs to i16
  %i.cbu = or disjoint i16 %i.cbp, %i.cbt
  %i.cbv = zext nneg i16 %i.cbu to i32
  %i.cbw = icmp eq i16 %i.cbq, 2
  %5 = icmp eq i16 %i.cbq, 3
  %6 = select i1 %5, i32 65536, i32 0
  %i.cbx = select i1 %i.cbw, i32 16384, i32 %6
  %.not = icmp eq i64 %i.cbk, 0                   ; 2 uses
  %i.cby = select i1 %.not, i32 32768, i32 163840
  %i.cbz = or disjoint i32 %i.cbx, %i.cby
  %i.cca = or disjoint i32 %i.cbz, %i.cbv         ; 2 uses
  %i.ccb = load i32, ptr %i.cbb, align 8, !tbaa !87 ; 2 uses
  %i.ccc = load i32, ptr %i.cbd, align 4, !tbaa !88
  %.not.i901 = icmp ult i32 %i.ccb, %i.ccc
  br i1 %.not.i901, label %bb.mb, label %bb.ma, !prof !265

bb.ma:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit900
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %i.cca)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit902

bb.mb:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit900
  %i.ccd = zext i32 %i.ccb to i64
  %i.cce = load ptr, ptr %3, align 8, !tbaa !52
  %i.ccf = getelementptr inbounds nuw [4 x i8], ptr %i.cce, i64 %i.ccd
  store i32 %i.cca, ptr %i.ccf, align 1
  %i.ccg = load i32, ptr %i.cbb, align 8, !tbaa !87
  %i.cch = add i32 %i.ccg, 1
  store i32 %i.cch, ptr %i.cbb, align 8, !tbaa !87
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit902

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit902: ; preds = %bb.ma, %bb.mb
  br i1 %.not, label %bb.md, label %bb.mc

bb.mc:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit902
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %i.cbl)
  br label %bb.md

bb.md:                                            ; preds = %bb.mc, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit902
  %i.cci = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ccj = load ptr, ptr %i.cci, align 8, !tbaa !278, !noalias !3204 ; 2 uses
  %i.cck = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ccl = load ptr, ptr %i.cck, align 8, !tbaa !279, !noalias !3204 ; 2 uses
  %i.ccm = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ccn = load i32, ptr %i.ccm, align 4, !tbaa !280, !noalias !3204 ; 3 uses
  %i.cco = icmp eq i32 %i.ccn, 0
  br i1 %i.cco, label %.loopexit.i.i.i903, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.ccp = add i32 %i.ccn, -1                     ; 2 uses
  %i.ccq = ptrtoint ptr %i.byy to i64
  %i.ccr = mul i64 %i.ccq, -4658895280553007687   ; 2 uses
  %i.ccs = lshr i64 %i.ccr, 31
  %i.cct = xor i64 %i.ccs, %i.ccr
  %i.ccu = trunc i64 %i.cct to i32
  %i.ccv = and i32 %i.ccp, %i.ccu                 ; 3 uses
  %i.ccw = zext i32 %i.ccv to i64                 ; 2 uses
  %i.ccx = lshr i64 %i.ccw, 5
  %i.ccy = getelementptr inbounds nuw [4 x i8], ptr %i.ccl, i64 %i.ccx
  %i.ccz = load i32, ptr %i.ccy, align 4, !tbaa !126, !noalias !3205
  %i.cda = and i32 %i.ccv, 31
  %i.cdb = lshr i32 %i.ccz, %i.cda
  %i.cdc = trunc i32 %i.cdb to i1
  br i1 %i.cdc, label %.lr.ph.i.i.i.i904, label %.loopexit.i.i.i903, !prof !281

.lr.ph.i.i.i.i904:                                ; preds = %bb.me, %bb.mf
  %i.cdd = phi i64 [ %i.cdj, %bb.mf ], [ %i.ccw, %bb.me ] ; 2 uses
  %.017.i.i.i.i905 = phi i32 [ %i.cdi, %bb.mf ], [ %i.ccv, %bb.me ]
  %i.cde = getelementptr inbounds nuw [16 x i8], ptr %i.ccj, i64 %i.cdd
  %i.cdf = load ptr, ptr %i.cde, align 8, !tbaa !273, !noalias !3205
  %i.cdg = icmp eq ptr %i.byy, %i.cdf
  br i1 %i.cdg, label %_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit906, label %bb.mf, !prof !265

bb.mf:                                            ; preds = %.lr.ph.i.i.i.i904
  %i.cdh = add nuw i32 %.017.i.i.i.i905, 1
  %i.cdi = and i32 %i.cdh, %i.ccp                 ; 3 uses
  %i.cdj = zext i32 %i.cdi to i64                 ; 2 uses
  %i.cdk = lshr i64 %i.cdj, 5
  %i.cdl = getelementptr inbounds nuw [4 x i8], ptr %i.ccl, i64 %i.cdk
  %i.cdm = load i32, ptr %i.cdl, align 4, !tbaa !126, !noalias !3205
  %i.cdn = and i32 %i.cdi, 31
  %i.cdo = lshr i32 %i.cdm, %i.cdn
  %i.cdp = trunc i32 %i.cdo to i1
  br i1 %i.cdp, label %.lr.ph.i.i.i.i904, label %.loopexit.i.i.i903, !prof !282

.loopexit.i.i.i903:                               ; preds = %bb.mf, %bb.me, %bb.md
  %i.cdq = zext i32 %i.ccn to i64
  br label %_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit906

_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit906: ; preds = %.lr.ph.i.i.i.i904, %.loopexit.i.i.i903
  %i.cdr = phi i64 [ %i.cdq, %.loopexit.i.i.i903 ], [ %i.cdd, %.lr.ph.i.i.i.i904 ]
  %i.cds = getelementptr inbounds nuw [16 x i8], ptr %i.ccj, i64 %i.cdr
  %i.cdt = getelementptr inbounds nuw i8, ptr %i.cds, i64 8
  %i.cdu = load i32, ptr %i.cdt, align 8, !tbaa !284
  %i.cdv = add i32 %i.cdu, -1                     ; 2 uses
  %i.cdw = load i32, ptr %i.cbb, align 8, !tbaa !87 ; 2 uses
  %i.cdx = load i32, ptr %i.cbd, align 4, !tbaa !88
  %.not.i907 = icmp ult i32 %i.cdw, %i.cdx
  br i1 %.not.i907, label %bb.mh, label %bb.mg, !prof !265

bb.mg:                                            ; preds = %_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit906
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %i.cdv)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit908

bb.mh:                                            ; preds = %_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit906
  %i.cdy = zext i32 %i.cdw to i64
  %i.cdz = load ptr, ptr %3, align 8, !tbaa !52
  %i.cea = getelementptr inbounds nuw [4 x i8], ptr %i.cdz, i64 %i.cdy
  store i32 %i.cdv, ptr %i.cea, align 1
  %i.ceb = load i32, ptr %i.cbb, align 8, !tbaa !87
  %i.cec = add i32 %i.ceb, 1
  store i32 %i.cec, ptr %i.cbb, align 8, !tbaa !87
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit908

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit908: ; preds = %bb.mg, %bb.mh
  %i.ced = getelementptr inbounds i8, ptr %1, i64 -32
  %i.cee = load ptr, ptr %i.ced, align 8, !tbaa !615
  %i.cef = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119ModuleBitcodeWriter16pushValueAndTypeEPKN4llvm5ValueEjRNS1_15SmallVectorImplIjEE(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr noundef %i.cee, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  %i.ceg = getelementptr inbounds nuw i8, ptr %i.byy, i64 12 ; 2 uses
  %i.ceh = load i32, ptr %i.ceg, align 4, !tbaa !285
  %i.cei = add i32 %i.ceh, -1                     ; 2 uses
  %.not5171020 = icmp eq i32 %i.cei, 0
  br i1 %.not5171020, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit908
  %i.cej = zext i32 %i.cei to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_119ModuleBitcodeWriter9pushValueEPKN4llvm5ValueEjRNS1_15SmallVectorImplIjEE.exit910, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit908
  %i.cek = getelementptr inbounds nuw i8, ptr %i.byy, i64 8
  %i.cel = load i32, ptr %i.cek, align 8
  %i.cem = icmp ugt i32 %i.cel, 255
  br i1 %i.cem, label %bb.mk, label %_ZN12_GLOBAL__N_119ModuleBitcodeWriter9pushValueEPKN4llvm5ValueEjRNS1_15SmallVectorImplIjEE.exit597

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN12_GLOBAL__N_119ModuleBitcodeWriter9pushValueEPKN4llvm5ValueEjRNS1_15SmallVectorImplIjEE.exit910
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_119ModuleBitcodeWriter9pushValueEPKN4llvm5ValueEjRNS1_15SmallVectorImplIjEE.exit910 ] ; 2 uses
  %i.cen = load i32, ptr %i.byz, align 4
  %i.ceo = and i32 %i.cen, 268435455
  %i.cep = zext nneg i32 %i.ceo to i64
  %i.ceq = sub nsw i64 0, %i.cep
  %i.cer = getelementptr inbounds [32 x i8], ptr %1, i64 %i.ceq
  %i.ces = getelementptr inbounds nuw [32 x i8], ptr %i.cer, i64 %indvars.iv
  %i.cet = load ptr, ptr %i.ces, align 8, !tbaa !615
  %i.ceu = tail call noundef i32 @_ZNK4llvm15ValueEnumerator10getValueIDEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(500) %i.a, ptr noundef %i.cet) #26
  %i.cev = sub i32 %2, %i.ceu                     ; 2 uses
  %i.cew = load i32, ptr %i.cbb, align 8, !tbaa !87 ; 2 uses
  %i.cex = load i32, ptr %i.cbd, align 4, !tbaa !88
  %.not.i.i909 = icmp ult i32 %i.cew, %i.cex
  br i1 %.not.i.i909, label %bb.mj, label %bb.mi, !prof !265

bb.mi:                                            ; preds = %.lr.ph
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %i.cev)
  br label %_ZN12_GLOBAL__N_119ModuleBitcodeWriter9pushValueEPKN4llvm5ValueEjRNS1_15SmallVectorImplIjEE.exit910

bb.mj:                                            ; preds = %.lr.ph
  %i.cey = zext i32 %i.cew to i64
  %i.cez = load ptr, ptr %3, align 8, !tbaa !52
  %i.cfa = getelementptr inbounds nuw [4 x i8], ptr %i.cez, i64 %i.cey
  store i32 %i.cev, ptr %i.cfa, align 1
  %i.cfb = load i32, ptr %i.cbb, align 8, !tbaa !87
  %i.cfc = add i32 %i.cfb, 1
  store i32 %i.cfc, ptr %i.cbb, align 8, !tbaa !87
  br label %_ZN12_GLOBAL__N_119ModuleBitcodeWriter9pushValueEPKN4llvm5ValueEjRNS1_15SmallVectorImplIjEE.exit910

_ZN12_GLOBAL__N_119ModuleBitcodeWriter9pushValueEPKN4llvm5ValueEjRNS1_15SmallVectorImplIjEE.exit910: ; preds = %bb.mi, %bb.mj
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not517 = icmp eq i64 %indvars.iv.next, %i.cej
  br i1 %.not517, label %._crit_edge, label %.lr.ph, !llvm.loop !3121

bb.mk:                                            ; preds = %._crit_edge
  %i.cfd = load i32, ptr %i.ceg, align 4, !tbaa !285
  %i.cfe = add i32 %i.cfd, -1                     ; 2 uses
  %i.cff = tail call noundef ptr @_ZN4llvm8CallBase7arg_endEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.cfg = load i32, ptr %i.byz, align 4
  %i.cfh = and i32 %i.cfg, 268435455
  %i.cfi = zext nneg i32 %i.cfh to i64
  %i.cfj = sub nsw i64 0, %i.cfi
  %i.cfk = getelementptr inbounds [32 x i8], ptr %1, i64 %i.cfj
  %i.cfl = ptrtoint ptr %i.cff to i64
  %i.cfm = ptrtoint ptr %i.cfk to i64
  %i.cfn = sub i64 %i.cfl, %i.cfm
  %i.cfo = lshr exact i64 %i.cfn, 5
  %i.cfp = trunc i64 %i.cfo to i32                ; 2 uses
  %.not5181022 = icmp eq i32 %i.cfe, %i.cfp
  br i1 %.not5181022, label %_ZN12_GLOBAL__N_119ModuleBitcodeWriter9pushValueEPKN4llvm5ValueEjRNS1_15SmallVectorImplIjEE.exit597, label %.lr.ph1025

.lr.ph1025:                                       ; preds = %bb.mk, %.lr.ph1025
  %.01023 = phi i32 [ %i.cfz, %.lr.ph1025 ], [ %i.cfe, %bb.mk ] ; 2 uses
  %i.cfq = load i32, ptr %i.byz, align 4
  %i.cfr = and i32 %i.cfq, 268435455
  %i.cfs = zext nneg i32 %i.cfr to i64
  %i.cft = sub nsw i64 0, %i.cfs
  %i.cfu = getelementptr inbounds [32 x i8], ptr %1, i64 %i.cft
  %i.cfv = zext i32 %.01023 to i64
  %i.cfw = getelementptr inbounds nuw [32 x i8], ptr %i.cfu, i64 %i.cfv
  %i.cfx = load ptr, ptr %i.cfw, align 8, !tbaa !615
  %i.cfy = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119ModuleBitcodeWriter16pushValueAndTypeEPKN4llvm5ValueEjRNS1_15SmallVectorImplIjEE(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr noundef %i.cfx, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  %i.cfz = add i32 %.01023, 1                     ; 2 uses
  %.not518 = icmp eq i32 %i.cfz, %i.cfp
  br i1 %.not518, label %_ZN12_GLOBAL__N_119ModuleBitcodeWriter9pushValueEPKN4llvm5ValueEjRNS1_15SmallVectorImplIjEE.exit597, label %.lr.ph1025, !llvm.loop !3122

bb.ml:                                            ; preds = %bb.a
  %i.cga = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.cgb = load i32, ptr %i.cga, align 4          ; 2 uses
  %i.cgc = and i32 %i.cgb, 1073741824
  %.not.i.i911 = icmp eq i32 %i.cgc, 0
  br i1 %.not.i.i911, label %bb.mn, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.cgd = getelementptr inbounds i8, ptr %1, i64 -8
  %i.cge = load ptr, ptr %i.cgd, align 8, !tbaa !649
end_hunk_0
