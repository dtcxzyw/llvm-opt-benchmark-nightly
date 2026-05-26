inline.NumInlined: 896
inline.NumDeleted: 419
begin_hunk_0_@_ZN6Assimp11Q3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1072) %i.aiq, i8 0, i64 1040, i1 false)
  store <2 x float> splat (float 6.000000e-01), ptr %i.ait, align 4
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.aiq, i64 1048
  store float 6.000000e-01, ptr %i.aiu, align 4
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiq, i64 1052
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiq, i64 1068
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aiv, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.aiw, align 4
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiq, i64 1072 ; 2 uses
  store ptr %i.aix, ptr %i.aim, align 8
  br label %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848

bb.lc:                                            ; preds = %bb.la
  invoke void @_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.aiq)
          to label %._ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848_crit_edge unwind label %bb.bj

._ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848_crit_edge: ; preds = %bb.lc
  %.pre1453 = load ptr, ptr %i.aim, align 8
  br label %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848

_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848: ; preds = %._ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848_crit_edge, %bb.lb
  %i.aiy = phi ptr [ %.pre1453, %._ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848_crit_edge ], [ %i.aix, %bb.lb ] ; 3 uses
  %i.aiz = getelementptr inbounds i8, ptr %i.aiy, i64 -32
  store float %.sroa.0948.2, ptr %i.aiz, align 4
  %i.aja = getelementptr inbounds i8, ptr %i.aiy, i64 -28
  store float %.sroa.6949.2, ptr %i.aja, align 4
  %i.ajb = getelementptr inbounds i8, ptr %i.aiy, i64 -24
  store float %.sroa.9.2, ptr %i.ajb, align 4
  %.pre1454 = load ptr, ptr %i.aim, align 8
  %.pre1455 = load ptr, ptr %8, align 8
  br label %bb.ld

bb.ld:                                            ; preds = %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848, %bb.kx
  %i.ajc = phi ptr [ %.pre1455, %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848 ], [ %i.ail, %bb.kx ] ; 2 uses
  %i.ajd = phi ptr [ %.pre1454, %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848 ], [ %i.ain, %bb.kx ] ; 2 uses
  %i.aje = ptrtoint ptr %i.ajd to i64
  %i.ajf = ptrtoint ptr %i.ajc to i64
  %i.ajg = sub i64 %i.aje, %i.ajf
  %.fr1648 = freeze i64 %i.ajg
  %i.ajh = sdiv i64 %.fr1648, 1072                ; 3 uses
  %i.aji = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ajh, i64 24) ; 2 uses
  %i.ajj = extractvalue { i64, i1 } %i.aji, 1
  %i.ajk = extractvalue { i64, i1 } %i.aji, 0
  %i.ajl = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ajk, i64 8) ; 2 uses
  %i.ajm = extractvalue { i64, i1 } %i.ajl, 1
  %i.ajn = or i1 %i.ajj, %i.ajm
  %i.ajo = extractvalue { i64, i1 } %i.ajl, 0
  %i.ajp = select i1 %i.ajn, i64 -1, i64 %i.ajo
  %i.ajq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ajp) #28
          to label %bb.le unwind label %bb.lf     ; 5 uses

bb.le:                                            ; preds = %bb.ld
  store i64 %i.ajh, ptr %i.ajq, align 16
  %.ptr519 = getelementptr i8, ptr %i.ajq, i64 8  ; 5 uses
  %i.ajr = icmp eq ptr %i.ajd, %i.ajc
  br i1 %i.ajr, label %.loopexit971, label %.loopexit971.loopexit

.loopexit971.loopexit:                            ; preds = %bb.le
  %i.ajs = mul nsw i64 %i.ajh, 24
  %i.ajt = add nsw i64 %i.ajs, -24                ; 2 uses
  %i.aju = urem i64 %i.ajt, 24
  %i.ajv = sub nuw nsw i64 %i.ajt, %i.aju
  %i.ajw = add nsw i64 %i.ajv, 24
  call void @llvm.memset.p0.i64(ptr align 8 %.ptr519, i8 0, i64 %i.ajw, i1 false)
  br label %.loopexit971

.loopexit971:                                     ; preds = %.loopexit971.loopexit, %bb.le
  %i.ajx = load ptr, ptr %9, align 8              ; 2 uses
  %i.ajy = load ptr, ptr %i.aig, align 8          ; 2 uses
  %.not9621194 = icmp eq ptr %i.ajx, %i.ajy
  br i1 %.not9621194, label %._crit_edge1199, label %.lr.ph1198

.lr.ph1198:                                       ; preds = %.loopexit971
  %i.ajz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.lg

._crit_edge1199:                                  ; preds = %._crit_edge1193, %.loopexit971
  %i.aka = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.akb = load i32, ptr %i.aka, align 8          ; 2 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.akb, ptr %i.akc, align 8
  %i.akd = zext i32 %i.akb to i64
  %i.ake = shl nuw nsw i64 %i.akd, 3              ; 2 uses
  %i.akf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ake) #28
          to label %bb.lr unwind label %bb.lt

bb.lf:                                            ; preds = %bb.ld
  %i.akg = landingpad { ptr, i32 }
          cleanup
  br label %.body589

bb.lg:                                            ; preds = %.lr.ph1198, %._crit_edge1193
  %.09531196 = phi i32 [ 0, %.lr.ph1198 ], [ %i.akm, %._crit_edge1193 ] ; 3 uses
  %.sroa.0939.01195 = phi ptr [ %i.ajx, %.lr.ph1198 ], [ %i.akl, %._crit_edge1193 ] ; 3 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %.sroa.0939.01195, i64 72
  %i.aki = load ptr, ptr %i.akh, align 8          ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %.sroa.0939.01195, i64 80
  %i.akk = load ptr, ptr %i.akj, align 8          ; 2 uses
  %.not9651188 = icmp eq ptr %i.aki, %i.akk
  br i1 %.not9651188, label %._crit_edge1193, label %.lr.ph1192

._crit_edge1193:                                  ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit, %bb.lg
  %i.akl = getelementptr inbounds nuw i8, ptr %.sroa.0939.01195, i64 104 ; 2 uses
  %i.akm = add i32 %.09531196, 1
  %.not962 = icmp eq ptr %i.akl, %i.ajy
  br i1 %.not962, label %._crit_edge1199, label %bb.lg, !llvm.loop !26

.lr.ph1192:                                       ; preds = %bb.lg, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit
  %.09541190 = phi i32 [ %i.amt, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ], [ 0, %bb.lg ] ; 3 uses
  %.sroa.0930.01189 = phi ptr [ %i.ams, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ], [ %i.aki, %bb.lg ] ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %.sroa.0930.01189, i64 48 ; 3 uses
  %i.ako = load i32, ptr %i.akn, align 8          ; 2 uses
  %i.akp = zext i32 %i.ako to i64
  %i.akq = load ptr, ptr %i.aim, align 8
  %i.akr = load ptr, ptr %8, align 8
  %i.aks = ptrtoint ptr %i.akq to i64
  %i.akt = ptrtoint ptr %i.akr to i64
  %i.aku = sub i64 %i.aks, %i.akt
  %i.akv = sdiv exact i64 %i.aku, 1072
  %.not545 = icmp ugt i64 %i.akv, %i.akp
  br i1 %.not545, label %bb.lk, label %bb.lh

bb.lh:                                            ; preds = %.lr.ph1192
  %i.akw = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.li unwind label %.loopexit970

bb.li:                                            ; preds = %bb.lh
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.akw, ptr noundef nonnull @.str.23)
          to label %bb.lj unwind label %.loopexit970

bb.lj:                                            ; preds = %bb.li
  store i32 0, ptr %i.akn, align 8
  br label %bb.lk

.loopexit970:                                     ; preds = %bb.lh, %bb.li, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body589

.loopexit.split-lp:                               ; preds = %bb.lp
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body589

bb.lk:                                            ; preds = %bb.lj, %.lr.ph1192
  %i.akx = phi i32 [ 0, %bb.lj ], [ %i.ako, %.lr.ph1192 ]
  %i.aky = zext i32 %i.akx to i64                 ; 2 uses
  %i.akz = getelementptr inbounds nuw [24 x i8], ptr %.ptr519, i64 %i.aky ; 2 uses
  %i.ala = load ptr, ptr %i.akz, align 8
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akz, i64 8
  %i.alc = load ptr, ptr %i.alb, align 8          ; 2 uses
  %i.ald = icmp eq ptr %i.ala, %i.alc
  br i1 %i.ald, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  %i.ale = load i32, ptr %i.ajz, align 8
  %i.alf = add i32 %i.ale, 1
  store i32 %i.alf, ptr %i.ajz, align 8
  %.pre1456 = load i32, ptr %i.akn, align 8
  %.phi.trans.insert = zext i32 %.pre1456 to i64  ; 2 uses
  %.phi.trans.insert1457 = getelementptr inbounds nuw [24 x i8], ptr %.ptr519, i64 %.phi.trans.insert
  %.phi.trans.insert1458 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert1457, i64 8
  %.pre1459 = load ptr, ptr %.phi.trans.insert1458, align 8
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %bb.lk
  %.pre-phi = phi i64 [ %.phi.trans.insert, %bb.ll ], [ %i.aky, %bb.lk ]
  %i.alg = phi ptr [ %.pre1459, %bb.ll ], [ %i.alc, %bb.lk ] ; 6 uses
  %i.alh = getelementptr inbounds nuw [24 x i8], ptr %.ptr519, i64 %.pre-phi ; 4 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 8 ; 3 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alh, i64 16 ; 2 uses
  %i.alk = load ptr, ptr %i.alj, align 8
  %.not.i849 = icmp eq ptr %i.alg, %i.alk
  br i1 %.not.i849, label %bb.lo, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  store i32 %.09531196, ptr %i.alg, align 4
  %i.all = getelementptr inbounds nuw i8, ptr %i.alg, i64 4
  store i32 %.09541190, ptr %i.all, align 4
  %i.alm = load ptr, ptr %i.ali, align 8
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 8
  store ptr %i.aln, ptr %i.ali, align 8
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit

bb.lo:                                            ; preds = %bb.lm
  %i.alo = load ptr, ptr %i.alh, align 8          ; 7 uses
  %i.alp = ptrtoint ptr %i.alg to i64             ; 2 uses
  %i.alq = ptrtoint ptr %i.alo to i64             ; 3 uses
  %i.alr = sub i64 %i.alp, %i.alq                 ; 4 uses
  %i.als = icmp eq i64 %i.alr, 9223372036854775800
  br i1 %i.als, label %bb.lp, label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.lp:                                            ; preds = %bb.lo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #26
          to label %.noexc850 unwind label %.loopexit.split-lp

.noexc850:                                        ; preds = %bb.lp
  unreachable

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.lo
  %i.alt = ashr exact i64 %i.alr, 3               ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.alt, i64 1)
  %i.alu = add nsw i64 %.sroa.speculated.i.i.i, %i.alt ; 2 uses
  %10 = icmp ult i64 %i.alu, %i.alt
  %i.alv = call i64 @llvm.umin.i64(i64 %i.alu, i64 1152921504606846975)
  %11 = select i1 %10, i64 1152921504606846975, i64 %i.alv ; 3 uses
  %.not.i.i.i = icmp ne i64 %11, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.alw = shl nuw nsw i64 %11, 3
  %i.alx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.alw) #28
          to label %.noexc851 unwind label %.loopexit970 ; 8 uses

.noexc851:                                        ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 %i.alr ; 2 uses
  store i32 %.09531196, ptr %i.aly, align 4
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 4
  store i32 %.09541190, ptr %i.alz, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.alo, %i.alg
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc851
  %i.ama = ptrtoaddr ptr %i.alx to i64
  %i.amb = add i64 %i.alp, -8
  %i.amc = sub i64 %i.amb, %i.alq                 ; 2 uses
  %i.amd = lshr i64 %i.amc, 3
  %i.ame = add nuw nsw i64 %i.amd, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.amc, 24
  %i.amf = sub i64 %i.ama, %i.alq
  %diff.check = icmp ult i64 %i.amf, 32
  %or.cond1966 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1966, label %.lr.ph.i.i.i.i.i.preheader1979, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ame, 4611686018427387900    ; 3 uses
  %i.amg = shl i64 %n.vec, 3                      ; 2 uses
  %i.amh = getelementptr i8, ptr %i.alx, i64 %i.amg ; 2 uses
  %i.ami = getelementptr i8, ptr %i.alo, i64 %i.amg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.amj = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.alx, i64 %i.amj ; 2 uses
  %next.gep1963 = getelementptr i8, ptr %i.alo, i64 %i.amj ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.amk = getelementptr i8, ptr %next.gep1963, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1963, align 4, !alias.scope !30, !noalias !27
  %wide.load1964 = load <2 x i64>, ptr %i.amk, align 4, !alias.scope !30, !noalias !27
  %i.aml = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !27, !noalias !30
  store <2 x i64> %wide.load1964, ptr %i.aml, align 4, !alias.scope !27, !noalias !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.amm = icmp eq i64 %index.next, %n.vec
  br i1 %i.amm, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ame, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader1979

.lr.ph.i.i.i.i.i.preheader1979:                   ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.alx, %.lr.ph.i.i.i.i.i.preheader ], [ %i.amh, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.alo, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ami, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader1979, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.amp, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader1979 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.amo, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader1979 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.amn = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !30, !noalias !27
  store i64 %i.amn, ptr %.012.i.i.i.i.i, align 4, !alias.scope !27, !noalias !30
  %i.amo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.amo, %i.alg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !35

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc851
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.alx, %.noexc851 ], [ %i.amh, %middle.block ], [ %i.amp, %.lr.ph.i.i.i.i.i ]
  %i.amq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i34.i.i = icmp eq ptr %i.alo, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.lq

bb.lq:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.alo, i64 noundef %i.alr) #25
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.lq, %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.alx, ptr %i.alh, align 8
  store ptr %i.amq, ptr %i.ali, align 8
  %i.amr = getelementptr inbounds nuw [8 x i8], ptr %i.alx, i64 %11
  store ptr %i.amr, ptr %i.alj, align 8
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRjS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ln
  %i.ams = getelementptr inbounds nuw i8, ptr %.sroa.0930.01189, i64 56 ; 2 uses
  %i.amt = add i32 %.09541190, 1
  %.not965 = icmp eq ptr %i.ams, %i.akk
  br i1 %.not965, label %._crit_edge1193, label %.lr.ph1192, !llvm.loop !36

bb.lr:                                            ; preds = %._crit_edge1199
  %i.amu = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %i.akf, ptr %i.amu, align 8
  %i.amv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ake) #28
          to label %bb.ls unwind label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  %i.amw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.amv, ptr %i.amw, align 8
  %i.amx = load ptr, ptr %i.aim, align 8          ; 2 uses
  %i.amy = load ptr, ptr %8, align 8              ; 2 uses
  %i.amz = ptrtoint ptr %i.amx to i64
  %i.ana = ptrtoint ptr %i.amy to i64
  %i.anb = sub i64 %i.amz, %i.ana
  %i.anc = sdiv exact i64 %i.anb, 1072
  %i.and = and i64 %i.anc, 4294967295
  %.not1248 = icmp eq i64 %i.and, 0
  br i1 %.not1248, label %._crit_edge1235, label %.lr.ph1234

.lr.ph1234:                                       ; preds = %bb.ls
  %i.ane = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  br label %bb.lu

bb.lt:                                            ; preds = %bb.ob, %.loopexit, %bb.lr, %._crit_edge1199
  %i.anf = landingpad { ptr, i32 }
          cleanup
  br label %.body589

bb.lu:                                            ; preds = %.lr.ph1234, %bb.nx
  %i.ang = phi ptr [ %i.amy, %.lr.ph1234 ], [ %i.ayx, %bb.nx ]
  %i.anh = phi ptr [ %i.amx, %.lr.ph1234 ], [ %i.ayy, %bb.nx ]
  %indvars.iv1440 = phi i64 [ 0, %.lr.ph1234 ], [ %indvars.iv.next1441, %bb.nx ] ; 3 uses
  %.04441232 = phi i32 [ 0, %.lr.ph1234 ], [ %.1445, %bb.nx ] ; 7 uses
  %i.ani = getelementptr inbounds nuw [24 x i8], ptr %.ptr519, i64 %indvars.iv1440 ; 3 uses
  %i.anj = load ptr, ptr %i.ani, align 8
  %i.ank = getelementptr inbounds nuw i8, ptr %i.ani, i64 8 ; 2 uses
  %i.anl = load ptr, ptr %i.ank, align 8
  %i.anm = icmp eq ptr %i.anj, %i.anl
  br i1 %i.anm, label %bb.nx, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.ann = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #28
          to label %bb.lw unwind label %bb.ma     ; 13 uses

bb.lw:                                            ; preds = %bb.lv
  store i32 0, ptr %i.ann, align 8
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 4 ; 3 uses
  store i32 0, ptr %i.ano, align 4
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ann, i64 8 ; 2 uses
  store i32 0, ptr %i.anp, align 8
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ann, i64 16 ; 2 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.ann, i64 224
  %i.ans = getelementptr inbounds nuw i8, ptr %i.ann, i64 1272
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ann, i64 1312
  store ptr null, ptr %i.ant, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.anq, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.anr, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ans, i8 0, i64 36, i1 false)
  %i.anu = load ptr, ptr %i.amw, align 8
  %i.anv = zext i32 %.04441232 to i64             ; 2 uses
  %i.anw = getelementptr inbounds nuw [8 x i8], ptr %i.anu, i64 %i.anv
  store ptr %i.ann, ptr %i.anw, align 8
  %i.anx = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28
          to label %bb.lx unwind label %bb.mb     ; 10 uses

bb.lx:                                            ; preds = %bb.lw
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.anx)
          to label %bb.ly unwind label %bb.mc

bb.ly:                                            ; preds = %bb.lx
  %i.any = load ptr, ptr %i.amu, align 8
  %i.anz = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %i.anv
  store ptr %i.anx, ptr %i.anz, align 8
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.ann, i64 232
  store i32 %.04441232, ptr %i.aoa, align 8
  %i.aob = load ptr, ptr %8, align 8
  %i.aoc = getelementptr inbounds nuw [1072 x i8], ptr %i.aob, i64 %indvars.iv1440 ; 12 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 1040
  %i.aoe = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.anx, ptr noundef nonnull %i.aod, i32 noundef 12, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit unwind label %bb.md ; 0 uses

_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit: ; preds = %bb.ly
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoc, i64 1052
  %i.aog = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.anx, ptr noundef nonnull %i.aof, i32 noundef 12, ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit854 unwind label %bb.md ; 0 uses

_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit854: ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aoc, i64 1028
  %i.aoi = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.anx, ptr noundef nonnull %i.aoh, i32 noundef 12, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit856 unwind label %bb.md ; 0 uses

_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit856: ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit854
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoc, i64 1064 ; 2 uses
  store float 1.600000e+01, ptr %i.aoj, align 4
  %i.aok = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.anx, ptr noundef nonnull %i.aoj, i32 noundef 4, ptr noundef nonnull @.str.27, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit unwind label %bb.md ; 0 uses

_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit:      ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit856
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 3, ptr %i.b, align 4
  %i.aol = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.anx, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.28, i32 noundef 0, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit unwind label %bb.me ; 0 uses

_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit:      ; preds = %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit
  %i.aom = load i32, ptr %i.aoc, align 4
  %.not524 = icmp eq i32 %i.aom, 0
  br i1 %.not524, label %bb.mf, label %bb.lz

bb.lz:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit
  %i.aon = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.anx, ptr noundef nonnull %i.aoc, ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef 0)
          to label %bb.mf unwind label %bb.me     ; 0 uses

bb.ma:                                            ; preds = %bb.lv
  %i.aoo = landingpad { ptr, i32 }
          cleanup
  br label %.body589

bb.mb:                                            ; preds = %bb.lw
  %i.aop = landingpad { ptr, i32 }
          cleanup
  br label %.body589

bb.mc:                                            ; preds = %bb.lx
  %i.aoq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.anx, i64 noundef 16) #25
  br label %.body589

bb.md:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit856, %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit854, %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit, %bb.ly
  %i.aor = landingpad { ptr, i32 }
          cleanup
  br label %.body589

bb.me:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit, %_ZN6Assimp13ASSIMP_itoa10EPcji.exit, %bb.lz
  %i.aos = landingpad { ptr, i32 }
          cleanup
  br label %bb.ny

bb.mf:                                            ; preds = %bb.lz, %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aoc, i64 1068
  %i.aou = load i32, ptr %i.aot, align 4          ; 3 uses
  %i.aov = load i32, ptr %i.ane, align 8          ; 2 uses
  %i.aow = icmp ult i32 %i.aou, %i.aov
  %i.aox = icmp ult i32 %.04441232, %i.aov
  %or.cond561 = select i1 %i.aow, i1 true, i1 %i.aox
  br i1 %or.cond561, label %bb.mg, label %bb.mk

bb.mg:                                            ; preds = %bb.mf
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aoc, i64 4
  store i8 42, ptr %i.aoy, align 4
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoc, i64 5 ; 2 uses
  %i.apa = load i32, ptr %i.ane, align 8
  %i.apb = icmp ult i32 %i.aou, %i.apa
  %..0444 = select i1 %i.apb, i32 %i.aou, i32 %.04441232 ; 3 uses
  %i.apc = icmp slt i32 %..0444, 0
  br i1 %i.apc, label %bb.mh, label %.lr.ph.i.preheader

bb.mh:                                            ; preds = %bb.mg
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aoc, i64 6
  store i8 45, ptr %i.aoz, align 1
  %i.ape = sub nsw i32 0, %..0444
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.mh, %bb.mg
  %.153.i.ph = phi ptr [ %i.aoz, %bb.mg ], [ %i.apd, %bb.mh ]
  %.13350.i.ph = phi i32 [ 1, %bb.mg ], [ 2, %bb.mh ]
  %.13849.i.ph = phi i32 [ %..0444, %bb.mg ], [ %i.ape, %bb.mh ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.mj
  %.153.i = phi ptr [ %.2.i, %bb.mj ], [ %.153.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.02752.i = phi i1 [ %or.cond3.i, %bb.mj ], [ false, %.lr.ph.i.preheader ]
  %.03051.i = phi i32 [ %i.apo, %bb.mj ], [ 1000000000, %.lr.ph.i.preheader ] ; 5 uses
  %.13350.i = phi i32 [ %.234.i, %bb.mj ], [ %.13350.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.13849.i = phi i32 [ %.239.i, %bb.mj ], [ %.13849.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.apf = sdiv i32 %.13849.i, %.03051.i          ; 3 uses
  %.recomposed = srem i32 %.13849.i, %.03051.i
  %i.apg = icmp ne i32 %i.apf, 0
  %i.aph = icmp eq i32 %.03051.i, 1               ; 2 uses
  %i.api = or i1 %i.aph, %i.apg
  %or.cond3.i = select i1 %.02752.i, i1 true, i1 %i.api ; 2 uses
  br i1 %or.cond3.i, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %.lr.ph.i
  %i.apj = trunc i32 %i.apf to i8
  %i.apk = add i8 %i.apj, 48
  %i.apl = getelementptr inbounds nuw i8, ptr %.153.i, i64 1 ; 2 uses
  store i8 %i.apk, ptr %.153.i, align 1
  %i.apm = add nuw nsw i32 %.13350.i, 1           ; 2 uses
  %i.apn = mul i32 %i.apf, %.03051.i              ; 0 uses
  br i1 %i.aph, label %_ZN6Assimp13ASSIMP_itoa10EPcji.exit, label %bb.mj
end_hunk_0
begin_hunk_1_@_ZN6Assimp6Logger13formatMessageIJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_:bb.a
  %i.j = load ptr, ptr %i.i, align 8, !noalias !83 ; 2 uses
  %i.k = icmp ugt ptr %i.h, %i.j
  %.08.i.i.i.i.i = select i1 %i.k, ptr %i.h, ptr %i.j ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !noalias !83 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %0, align 8, !alias.scope !83 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.e, align 8, !alias.scope !83
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #25
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %4, align 8
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %4, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.ah = load i64, ptr %i.af, align 8
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #25
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ak) #24
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #24
  resume { ptr, i32 } %i.r
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #21

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp11Q3DImporter4MeshD2Ev(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable(100) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp11Q3DImporter4FaceES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6Assimp11Q3DImporter4FaceEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyIN6Assimp11Q3DImporter4FaceEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i:          ; preds = %bb.b, %.lr.ph.i.i.i
  %i.l = load ptr, ptr %.05.i.i.i, align 8        ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp11Q3DImporter4FaceEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #25
  br label %_ZSt8_DestroyIN6Assimp11Q3DImporter4FaceEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp11Q3DImporter4FaceEEvPT_.exit.i.i.i: ; preds = %bb.c, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6Assimp11Q3DImporter4FaceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !84

_ZSt8_DestroyIPN6Assimp11Q3DImporter4FaceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp11Q3DImporter4FaceEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8
  br label %_ZSt8_DestroyIPN6Assimp11Q3DImporter4FaceES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp11Q3DImporter4FaceES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp11Q3DImporter4FaceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.s = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp11Q3DImporter4FaceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6Assimp11Q3DImporter4FaceES2_EvT_S4_RSaIT0_E.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25
  br label %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp11Q3DImporter4FaceES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #25
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EED2Ev.exit, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit3, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #25
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit3

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit3:   ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, %bb.f
  %i.am = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit5, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit3
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #25
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit5

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit5:   ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit3, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #26
  unreachable

_ZNKSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 104                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %2 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 88686269585142075)
  %3 = select i1 %2, i64 88686269585142075, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %3, 104
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #28 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.o, i8 0, i64 104, i1 false)
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %i.n, %_ZNKSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EE12_M_check_lenEmPKc.exit ] ; 10 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EE12_M_check_lenEmPKc.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.p = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !alias.scope !88, !noalias !85
  store <2 x ptr> %i.p, ptr %.012.i.i.i, align 8, !alias.scope !85, !noalias !88
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !88, !noalias !85
  store ptr %i.s, ptr %i.q, align 8, !alias.scope !85, !noalias !88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(100) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !88, !noalias !85
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !alias.scope !88, !noalias !85
  store <2 x ptr> %i.v, ptr %i.t, align 8, !alias.scope !85, !noalias !88
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !88, !noalias !85
  store ptr %i.y, ptr %i.w, align 8, !alias.scope !85, !noalias !88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false), !alias.scope !88, !noalias !85
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8, !alias.scope !88, !noalias !85
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !alias.scope !85, !noalias !88
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !88, !noalias !85
  store ptr %i.ae, ptr %i.ac, align 8, !alias.scope !85, !noalias !88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false), !alias.scope !88, !noalias !85
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.ag, align 8, !alias.scope !88, !noalias !85
  store <2 x ptr> %i.ah, ptr %i.af, align 8, !alias.scope !85, !noalias !88
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !88, !noalias !85
  store ptr %i.ak, ptr %i.ai, align 8, !alias.scope !85, !noalias !88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false), !alias.scope !88, !noalias !85
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96
  %i.an = load i32, ptr %i.am, align 8, !alias.scope !88, !noalias !85
  store i32 %i.an, ptr %i.al, align 8, !alias.scope !85, !noalias !88
  tail call void @_ZN6Assimp11Q3DImporter4MeshD2Ev(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable(100) %.0911.i.i.i) #24, !noalias !85
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 104 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !58

_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZNKSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ap, %.lr.ph.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 104 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i16
  %.012.i.i.i17 = phi ptr [ %i.br, %.lr.ph.i.i.i16 ], [ %i.aq, %_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 10 uses
  %.0911.i.i.i18 = phi ptr [ %i.bq, %.lr.ph.i.i.i16 ], [ %1, %_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.ar = load <2 x ptr>, ptr %.0911.i.i.i18, align 8, !alias.scope !93, !noalias !90
  store <2 x ptr> %i.ar, ptr %.012.i.i.i17, align 8, !alias.scope !90, !noalias !93
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !93, !noalias !90
  store ptr %i.au, ptr %i.as, align 8, !alias.scope !90, !noalias !93
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(100) %.0911.i.i.i18, i8 0, i64 24, i1 false), !alias.scope !93, !noalias !90
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 24 ; 2 uses
  %i.ax = load <2 x ptr>, ptr %i.aw, align 8, !alias.scope !93, !noalias !90
  store <2 x ptr> %i.ax, ptr %i.av, align 8, !alias.scope !90, !noalias !93
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !93, !noalias !90
  store ptr %i.ba, ptr %i.ay, align 8, !alias.scope !90, !noalias !93
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false), !alias.scope !93, !noalias !90
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 48 ; 2 uses
  %i.bd = load <2 x ptr>, ptr %i.bc, align 8, !alias.scope !93, !noalias !90
  store <2 x ptr> %i.bd, ptr %i.bb, align 8, !alias.scope !90, !noalias !93
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !93, !noalias !90
  store ptr %i.bg, ptr %i.be, align 8, !alias.scope !90, !noalias !93
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false), !alias.scope !93, !noalias !90
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 72
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 72 ; 2 uses
  %i.bj = load <2 x ptr>, ptr %i.bi, align 8, !alias.scope !93, !noalias !90
  store <2 x ptr> %i.bj, ptr %i.bh, align 8, !alias.scope !90, !noalias !93
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 88
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !93, !noalias !90
  store ptr %i.bm, ptr %i.bk, align 8, !alias.scope !90, !noalias !93
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false), !alias.scope !93, !noalias !90
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 96
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 96
  %i.bp = load i32, ptr %i.bo, align 8, !alias.scope !93, !noalias !90
  store i32 %i.bp, ptr %i.bn, align 8, !alias.scope !90, !noalias !93
  tail call void @_ZN6Assimp11Q3DImporter4MeshD2Ev(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable(100) %.0911.i.i.i18) #24, !noalias !90
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 104 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 104 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.bq, %i.b
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21, label %.lr.ph.i.i.i16, !llvm.loop !58

_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21: ; preds = %.lr.ph.i.i.i16, %_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i20 = phi ptr [ %i.aq, %_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.br, %.lr.ph.i.i.i16 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i22 = icmp eq ptr %i.c, null
  br i1 %.not.i22, label %_ZNSt12_Vector_baseIN6Assimp11Q3DImporter4MeshESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bv) #25
  br label %_ZNSt12_Vector_baseIN6Assimp11Q3DImporter4MeshESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp11Q3DImporter4MeshESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21, %bb.c
  store ptr %i.n, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i20, ptr %i.a, align 8
  %i.bw = getelementptr inbounds nuw [104 x i8], ptr %i.n, i64 %3
  store ptr %i.bw, ptr %i.bs, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 12                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 768614336404564650, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 12                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #26
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 768614336404564650) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 12
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #28 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, i64 12, i1 false), !alias.scope !95
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !99

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.z = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #25
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %1
  store ptr %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ab, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #26
  unreachable

_ZNKSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %3 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %4 = select i1 %3, i64 164703072086692425, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %4, 56                   ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #28 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 9 uses
  %i.p = load i16, ptr %2, align 2                ; 2 uses
  %i.q = sext i16 %i.p to i64
  %i.r = and i64 %i.q, 4294967295                 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.o, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i10.i, label %.noexc.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE12_M_check_lenEmPKc.exit
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #28
          to label %.noexc unwind label %bb.f     ; 5 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.t, ptr %i.o, align 8
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.u, ptr %i.v, align 8
  store i32 0, ptr %i.t, align 4
  %i.w = getelementptr i8, ptr %i.t, i64 4        ; 3 uses
  %i.x = add nsw i64 %i.r, -1                     ; 3 uses
  %i.y = icmp eq i64 %i.x, 0                      ; 2 uses
  br i1 %i.y, label %bb.c, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.x, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i.i.i.i.i.i.i.i
  br label %bb.c

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i10.i: ; preds = %_ZNKSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE12_M_check_lenEmPKc.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.o, i8 0, i64 48, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc
  %.0.i.i.i.i.i.ph.i = phi ptr [ %i.z, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.w, %.noexc ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.0.i.i.i.i.i.ph.i, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #28
          to label %.noexc11.i unwind label %_ZNSt6vectorIjSaIjEED2Ev.exit.i ; 4 uses

.noexc11.i:                                       ; preds = %bb.c
  store ptr %i.ac, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.r
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr %i.ad, ptr %i.ae, align 8
  store i32 0, ptr %i.ac, align 4
  %i.af = getelementptr i8, ptr %i.ac, i64 4      ; 3 uses
  br i1 %i.y, label %bb.d, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i7.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i7.i: ; preds = %.noexc11.i
  %.idx.i.i.i.i.i.i.i8.i = shl nuw nsw i64 %i.x, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %.idx.i.i.i.i.i.i.i8.i, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i.i.i.i.i.i.i8.i
  br label %bb.d

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.c
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.s) #25
  br label %bb.h

bb.d:                                             ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i7.i, %.noexc11.i, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i10.i
  %.0.i.i.i.i.i9.i = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i10.i ], [ %i.af, %.noexc11.i ], [ %i.ag, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i7.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %.0.i.i.i.i.i9.i, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i32 0, ptr %i.aj, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %i.n, %bb.d ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %i.c, %bb.d ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.ak = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !alias.scope !103, !noalias !100
  store <2 x ptr> %i.ak, ptr %.012.i.i.i, align 8, !alias.scope !100, !noalias !103
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !103, !noalias !100
  store ptr %i.an, ptr %i.al, align 8, !alias.scope !100, !noalias !103
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !103, !noalias !100
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.aq = load <2 x ptr>, ptr %i.ap, align 8, !alias.scope !103, !noalias !100
  store <2 x ptr> %i.aq, ptr %i.ao, align 8, !alias.scope !100, !noalias !103
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !103, !noalias !100
  store ptr %i.at, ptr %i.ar, align 8, !alias.scope !100, !noalias !103
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false), !alias.scope !103, !noalias !100
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.aw = load i32, ptr %i.av, align 8, !alias.scope !103, !noalias !100
  store i32 %i.aw, ptr %i.au, align 8, !alias.scope !100, !noalias !103
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !11

_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %bb.d
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.ay, %.lr.ph.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.bo, %.lr.ph.i.i.i27 ], [ %i.az, %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 6 uses
  %.0911.i.i.i29 = phi ptr [ %i.bn, %.lr.ph.i.i.i27 ], [ %1, %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.ba = load <2 x ptr>, ptr %.0911.i.i.i29, align 8, !alias.scope !108, !noalias !105
  store <2 x ptr> %i.ba, ptr %.012.i.i.i28, align 8, !alias.scope !105, !noalias !108
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !108, !noalias !105
  store ptr %i.bd, ptr %i.bb, align 8, !alias.scope !105, !noalias !108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.0911.i.i.i29, i8 0, i64 24, i1 false), !alias.scope !108, !noalias !105
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24 ; 2 uses
  %i.bg = load <2 x ptr>, ptr %i.bf, align 8, !alias.scope !108, !noalias !105
  store <2 x ptr> %i.bg, ptr %i.be, align 8, !alias.scope !105, !noalias !108
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !108, !noalias !105
  store ptr %i.bj, ptr %i.bh, align 8, !alias.scope !105, !noalias !108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false), !alias.scope !108, !noalias !105
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48
  %i.bm = load i32, ptr %i.bl, align 8, !alias.scope !108, !noalias !105
  store i32 %i.bm, ptr %i.bk, align 8, !alias.scope !105, !noalias !108
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 56 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 56 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.bn, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !11

_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32: ; preds = %.lr.ph.i.i.i27, %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.az, %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bo, %.lr.ph.i.i.i27 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN6Assimp11Q3DImporter4FaceESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bs) #25
  br label %_ZNSt12_Vector_baseIN6Assimp11Q3DImporter4FaceESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp11Q3DImporter4FaceESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32, %bb.e
  store ptr %i.n, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8
  %i.bt = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %4
  store ptr %i.bt, ptr %i.bp, align 8
  ret void

bb.f:                                             ; preds = %.noexc.i
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.bu, %bb.f ], [ %i.ah, %_ZNSt6vectorIjSaIjEED2Ev.exit.i ]
  %i.bw = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bx = tail call ptr @__cxa_begin_catch(ptr %i.bw) #24 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.m) #25
  invoke void @__cxa_rethrow() #26
          to label %bb.k unwind label %bb.g

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.bv

bb.j:                                             ; preds = %bb.g
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  tail call void @__clang_call_terminate(ptr %i.bz) #29
  unreachable

bb.k:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775632
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #26
  unreachable

_ZNKSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 1072                ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %2 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 8603891825424231)
  %3 = select i1 %2, i64 8603891825424231, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %3, 1072
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #28 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1040
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1072) %i.o, i8 0, i64 1040, i1 false)
  store <2 x float> splat (float 6.000000e-01), ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1048
  store float 6.000000e-01, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1052
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 1068
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.s, align 4
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %i.n, %_ZNKSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12_M_check_lenEmPKc.exit ] ; 13 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12_M_check_lenEmPKc.exit ] ; 13 uses
  %i.t = load i32, ptr %.01214.i.i.i.i.i, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.u, i8 0, i64 1024, i1 false)
  %spec.select.i.i.i.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.t, i32 1023) ; 2 uses
  store i32 %spec.select.i.i.i.i.i.i.i.i, ptr %.015.i.i.i.i.i, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4
  %i.w = zext nneg i32 %spec.select.i.i.i.i.i.i.i.i to i64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.u, ptr nonnull align 4 %i.v, i64 %i.w, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  store i8 0, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1028
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1028
  %i.aa = load float, ptr %i.z, align 4
  store float %i.aa, ptr %i.y, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1032
  %i.ac = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1032
  %i.ad = load float, ptr %i.ac, align 4
  store float %i.ad, ptr %i.ab, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1036
  %i.af = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1036
  %i.ag = load float, ptr %i.af, align 4
  store float %i.ag, ptr %i.ae, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1040
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1040
  %i.aj = load float, ptr %i.ai, align 4
  store float %i.aj, ptr %i.ah, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1044
  %i.al = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1044
  %i.am = load float, ptr %i.al, align 4
  store float %i.am, ptr %i.ak, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1048
  %i.ao = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1048
  %i.ap = load float, ptr %i.ao, align 4
  store float %i.ap, ptr %i.an, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1052
  %i.ar = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1052
  %i.as = load float, ptr %i.ar, align 4
  store float %i.as, ptr %i.aq, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1056
  %i.au = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1056
  %i.av = load float, ptr %i.au, align 4
  store float %i.av, ptr %i.at, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1060
  %i.ax = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1060
  %i.ay = load float, ptr %i.ax, align 4
  store float %i.ay, ptr %i.aw, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1064
  %i.ba = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1064
  %i.bb = load i64, ptr %i.ba, align 4
  store i64 %i.bb, ptr %i.az, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1072 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1072 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !52

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.n, %_ZNKSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.bd, %.lr.ph.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 1072 ; 2 uses
  %.not13.i.i.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i.i.i.i27, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i28

.lr.ph.i.i.i.i.i28:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i28
  %.015.i.i.i.i.i29 = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i28 ], [ %i.be, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 13 uses
  %.01214.i.i.i.i.i30 = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i28 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 13 uses
  %i.bf = load i32, ptr %.01214.i.i.i.i.i30, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 4 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.bg, i8 0, i64 1024, i1 false)
  %spec.select.i.i.i.i.i.i.i.i31 = tail call i32 @llvm.umin.i32(i32 %i.bf, i32 1023) ; 2 uses
  store i32 %spec.select.i.i.i.i.i.i.i.i31, ptr %.015.i.i.i.i.i29, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 4
  %i.bi = zext nneg i32 %spec.select.i.i.i.i.i.i.i.i31 to i64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bg, ptr nonnull align 4 %i.bh, i64 %i.bi, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi
  store i8 0, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1028
  %i.bl = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1028
  %i.bm = load float, ptr %i.bl, align 4
  store float %i.bm, ptr %i.bk, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1032
  %i.bo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1032
  %i.bp = load float, ptr %i.bo, align 4
  store float %i.bp, ptr %i.bn, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1036
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1036
  %i.bs = load float, ptr %i.br, align 4
  store float %i.bs, ptr %i.bq, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1040
  %i.bu = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1040
  %i.bv = load float, ptr %i.bu, align 4
  store float %i.bv, ptr %i.bt, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1044
  %i.bx = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1044
  %i.by = load float, ptr %i.bx, align 4
  store float %i.by, ptr %i.bw, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1048
  %i.ca = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1048
  %i.cb = load float, ptr %i.ca, align 4
  store float %i.cb, ptr %i.bz, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1052
  %i.cd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1052
  %i.ce = load float, ptr %i.cd, align 4
  store float %i.ce, ptr %i.cc, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1056
  %i.cg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1056
  %i.ch = load float, ptr %i.cg, align 4
  store float %i.ch, ptr %i.cf, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1060
  %i.cj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1060
  %i.ck = load float, ptr %i.cj, align 4
  store float %i.ck, ptr %i.ci, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1064
  %i.cm = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1064
  %i.cn = load i64, ptr %i.cm, align 4
  store i64 %i.cn, ptr %i.cl, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1072 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1072 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.co, %i.b
  br i1 %.not.i.i.i.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i28, !llvm.loop !52

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit34: ; preds = %.lr.ph.i.i.i.i.i28, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i33 = phi ptr [ %i.be, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.cp, %.lr.ph.i.i.i.i.i28 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN6Assimp11Q3DImporter8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit34
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.cs, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ct) #25
  br label %_ZNSt12_Vector_baseIN6Assimp11Q3DImporter8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp11Q3DImporter8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, %bb.c
  store ptr %i.n, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i33, ptr %i.a, align 8
  %i.cu = getelementptr inbounds nuw [1072 x i8], ptr %i.n, i64 %3
  store ptr %i.cu, ptr %i.cq, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold noreturn }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(none) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{null}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!8 = distinct !{!8, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4FaceES2_SaIS2_EEvPT_PT0_RT1_"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!29 = distinct !{!29, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_"}
!30 = !{!31}
!31 = distinct !{!31, !29, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!32 = distinct !{!32, !5, !33, !34}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = distinct !{!35, !5, !33}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{null, ptr @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!46 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!47 = distinct !{null, null, null, null}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc: argument 0"}
!50 = distinct !{!50, !"_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc"}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4MeshES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!55 = distinct !{!55, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4MeshES2_SaIS2_EEvPT_PT0_RT1_"}
!56 = !{!57}
!57 = distinct !{!57, !55, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4MeshES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!58 = distinct !{!58, !5}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!61 = distinct !{!61, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!64 = distinct !{!64, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!67 = distinct !{!67, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!68 = !{!66, !63, !60}
!69 = distinct !{null, null}
!70 = distinct !{null}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!73 = distinct !{!73, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!76 = distinct !{!76, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!79 = distinct !{!79, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!82 = distinct !{!82, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!83 = !{!81, !78, !75, !72}
!84 = distinct !{!84, !5}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4MeshES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!87 = distinct !{!87, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4MeshES2_SaIS2_EEvPT_PT0_RT1_"}
!88 = !{!89}
!89 = distinct !{!89, !87, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4MeshES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4MeshES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!92 = distinct !{!92, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4MeshES2_SaIS2_EEvPT_PT0_RT1_"}
!93 = !{!94}
!94 = distinct !{!94, !92, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4MeshES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!95 = !{!96, !98}
!96 = distinct !{!96, !97, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!97 = distinct !{!97, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!98 = distinct !{!98, !97, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!99 = distinct !{!99, !5}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!102 = distinct !{!102, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4FaceES2_SaIS2_EEvPT_PT0_RT1_"}
!103 = !{!104}
!104 = distinct !{!104, !102, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!107 = distinct !{!107, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4FaceES2_SaIS2_EEvPT_PT0_RT1_"}
!108 = !{!109}
!109 = distinct !{!109, !107, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
end_hunk_1
