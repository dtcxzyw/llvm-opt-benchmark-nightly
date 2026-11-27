Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmExportFileGenerator?download=true
inline.NumInlined: 1713
inline.NumDeleted: 627
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN21cmExportFileGenerator25SetImportDetailPropertiesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PK17cmGeneratorTargetRSt3mapIS5_S5_St4lessIS5_ESaISt4pairIS6_S5_EEE:bb.a
  %i.kt = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.kt, ptr %19, align 8, !tbaa !16
  %i.ku = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store i64 0, ptr %i.ku, align 8, !tbaa !19
  store i8 0, ptr %i.kt, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.kv = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.kv, ptr %20, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 23, ptr %i.a, align 8, !tbaa !46
  %i.kw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.br unwind label %bb.bu     ; 2 uses

bb.br:                                            ; preds = %.noexc.i156
  store ptr %i.kw, ptr %20, align 8, !tbaa !45
  %i.kx = load i64, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  store i64 %i.kx, ptr %i.kv, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.kw, ptr noundef nonnull align 1 dereferenceable(23) @.str.44, i64 23, i1 false)
  %i.ky = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.kx, ptr %i.ky, align 8, !tbaa !19
  %i.kz = load ptr, ptr %20, align 8, !tbaa !45
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.kx
  store i8 0, ptr %i.la, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.lb = invoke ptr @_ZNK17cmGeneratorTarget11GetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3187) %3, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.bs unwind label %bb.bv     ; 2 uses

bb.bs:                                            ; preds = %bb.br
  %i.lc = load ptr, ptr %20, align 8, !tbaa !45   ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.kv
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %bb.bs
  %i.le = load i64, ptr %i.kv, align 8, !tbaa !20
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  %.not189 = icmp eq ptr %i.lb, null
  br i1 %.not189, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %i.lb)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit164 unwind label %bb.ca

bb.bu:                                            ; preds = %.noexc.i156
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

bb.bv:                                            ; preds = %bb.br
  %i.lh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.li = load ptr, ptr %20, align 8, !tbaa !45   ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.kv
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %bb.bv
  %i.lk = load i64, ptr %i.kv, align 8, !tbaa !20
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165, %bb.bu
  %.pn66 = phi { ptr, i32 } [ %i.lg, %bb.bu ], [ %i.lh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165 ], [ %i.lh, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.cb

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %i.lm = invoke noundef zeroext i1 @_ZNK17cmGeneratorTarget12IsCSharpOnlyEv(ptr noundef nonnull align 8 dereferenceable(3187) %3)
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.lm, label %bb.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit164

bb.by:                                            ; preds = %bb.bx
  %i.ln = load i64, ptr %i.ku, align 8, !tbaa !19
  %i.lo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 0, i64 noundef %i.ln, ptr noundef nonnull @.str.45, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit164 unwind label %bb.ca ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit164: ; preds = %bb.by, %bb.bt, %bb.bx
  %i.lp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit164
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.lp, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit171 unwind label %bb.ca

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit171: ; preds = %bb.bz
  %i.lq = load ptr, ptr %19, align 8, !tbaa !45   ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.kt
  br i1 %i.lr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit171
  %i.ls = load i64, ptr %i.kt, align 8, !tbaa !20
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %i.lu = load ptr, ptr %18, align 8, !tbaa !45   ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.lw = icmp eq ptr %i.lu, %i.lv
  br i1 %i.lw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %i.lx = load i64, ptr %i.lv, align 8, !tbaa !20
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.ly) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.cc

bb.ca:                                            ; preds = %bb.bw, %bb.bt, %bb.by, %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit164
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %bb.ca
  %.pn70 = phi { ptr, i32 } [ %i.lz, %bb.ca ], [ %.pn66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ]
  %i.ma = load ptr, ptr %19, align 8, !tbaa !45   ; 2 uses
  %i.mb = icmp eq ptr %i.ma, %i.kt
  br i1 %i.mb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %bb.cb
  %i.mc = load i64, ptr %i.kt, align 8, !tbaa !20
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.md) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %i.me = load ptr, ptr %18, align 8, !tbaa !45   ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.mg = icmp eq ptr %i.me, %i.mf
  br i1 %i.mg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180
  %i.mh = load i64, ptr %i.mf, align 8, !tbaa !20
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.me, i64 noundef %i.mi) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.cd

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %bb.bq
  ret void

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %bb.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %.pn70.pn = phi { ptr, i32 } [ %.pn70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ], [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ], [ %.pn61.pn, %bb.bp ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ]
  resume { ptr, i32 } %.pn70.pn
}

declare noundef zeroext i1 @_ZNK17cmGeneratorTarget13IsDLLPlatformEv(ptr noundef nonnull align 8 dereferenceable(3187)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZNK17cmGeneratorTarget9HasSONameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3187), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZNK10cmMakefile4IsOnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare void @_ZNK17cmGeneratorTarget9GetSONameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12cmStateEnums12ArtifactTypeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(3187), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #0

declare noundef ptr @_ZNK17cmGeneratorTarget16GetLinkInterfaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKS_(ptr noundef nonnull align 8 dereferenceable(3187), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN21cmExportFileGenerator21SetImportLinkPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS6_PK17cmGeneratorTargetS8_RKSt6vectorIT_SaISD_EERSt3mapIS6_S6_St4lessIS6_ESaISt4pairIS7_S6_EEENS_29ImportLinkPropertyTargetNamesE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %6) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %7 = alloca [2 x %"struct.std::pair.571"], align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = load ptr, ptr %4, align 8, !tbaa !201
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !201
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZNK17cmGeneratorTarget17GetLocalGeneratorEv(ptr noundef nonnull align 8 dereferenceable(3187) %2) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.g, ptr %8, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  store i64 0, ptr %i.h, align 8, !tbaa !19
  store i8 0, ptr %i.g, align 8, !tbaa !20
  %i.i = load ptr, ptr %4, align 8, !tbaa !201    ; 7 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !201  ; 5 uses
  %.not62 = icmp eq ptr %i.i, %i.j
  br i1 %.not62, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = icmp eq i32 %6, 0
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.us.peel, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel: ; preds = %.lr.ph
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.16, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19   ; 2 uses
  %i.q = load i64, ptr %i.h, align 8, !tbaa !19
  %i.r = sub i64 4611686018427387903, %i.q
  %i.s = icmp ult i64 %i.r, %i.p
  br i1 %i.s, label %.loopexit.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i33.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i33.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.t, i64 noundef %i.p)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit36.peel unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit36.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i33.peel
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %.not.peel = icmp eq ptr %i.v, %i.j
  br i1 %.not.peel, label %._crit_edge, label %.lr.ph.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.us.peel: ; preds = %.lr.ph
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.16, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.us.peel unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.us.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.us.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %i.l, ptr %9, align 8, !tbaa !16
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !45   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !19   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.z, ptr %i.a, align 8, !tbaa !46
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %.noexc.i.us.peel, label %._crit_edge.i.i.us.peel

.noexc.i.us.peel:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.us.peel
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27.us.peel unwind label %.split66.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc27.us.peel:                                 ; preds = %.noexc.i.us.peel
  store ptr %i.ab, ptr %9, align 8, !tbaa !45
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !46
  store i64 %i.ac, ptr %i.l, align 8, !tbaa !20
  br label %._crit_edge.i.i.us.peel

._crit_edge.i.i.us.peel:                          ; preds = %.noexc27.us.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.us.peel
  %i.ad = phi ptr [ %i.ab, %.noexc27.us.peel ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.us.peel ] ; 2 uses
  switch i64 %i.z, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.us.peel
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !20
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !20
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.us.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.x, i64 %i.z, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.us.peel
  %i.af = load i64, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  store i64 %i.af, ptr %i.m, align 8, !tbaa !19
  %i.ag = load ptr, ptr %9, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store i8 0, ptr %i.ah, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ai = invoke noundef zeroext i1 @_ZN21cmExportFileGenerator18AddTargetNamespaceERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK17cmGeneratorTargetPK16cmLocalGenerator(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %2, ptr noundef %i.f)
          to label %bb.f unwind label %.loopexit.split-lp54.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.aj = load i64, ptr %i.m, align 8, !tbaa !19  ; 2 uses
  %i.ak = load i64, ptr %i.h, align 8, !tbaa !19
  %i.al = sub i64 4611686018427387903, %i.ak
  %i.am = icmp ult i64 %i.al, %i.aj
  br i1 %i.am, label %.split72.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us.peel: ; preds = %bb.f
  %i.an = load ptr, ptr %9, align 8, !tbaa !45
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.an, i64 noundef %i.aj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us.peel unwind label %.loopexit.split-lp54.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us.peel
  %i.ap = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.l
  br i1 %i.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.us.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us.peel
  %i.ar = load i64, ptr %i.l, align 8, !tbaa !20
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.us.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us.peel
  %11 = load i64, ptr %i.m, align 8, !tbaa !19
  %12 = icmp ult i64 %11, 16
  call void @llvm.assume(i1 %12)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.us.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %.not.us.peel = icmp eq ptr %i.at, %i.j
  br i1 %.not.us.peel, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us
  %.sroa.050.063.us = phi ptr [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.peel ] ; 3 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !19
  %i.av = icmp eq i64 %i.au, 4611686018427387903
  br i1 %i.av, label %.loopexit.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.us: ; preds = %.lr.ph.split.us
  %i.aw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.us unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %i.l, ptr %9, align 8, !tbaa !16
  %i.ax = load ptr, ptr %.sroa.050.063.us, align 8, !tbaa !45 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.050.063.us, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.az, ptr %i.a, align 8, !tbaa !46
  %i.ba = icmp ugt i64 %i.az, 15
  br i1 %i.ba, label %.noexc.i.us, label %._crit_edge.i.i.us

.noexc.i.us:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.us
  %i.bb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27.us unwind label %.split66.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc27.us:                                      ; preds = %.noexc.i.us
  store ptr %i.bb, ptr %9, align 8, !tbaa !45
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !46
  store i64 %i.bc, ptr %i.l, align 8, !tbaa !20
  br label %._crit_edge.i.i.us

._crit_edge.i.i.us:                               ; preds = %.noexc27.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.us
  %i.bd = phi ptr [ %i.bb, %.noexc27.us ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.us ] ; 2 uses
  switch i64 %i.az, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.us
  %i.be = load i8, ptr %i.ax, align 1, !tbaa !20
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !20
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.us
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.ax, i64 %i.az, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.us
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  store i64 %i.bf, ptr %i.m, align 8, !tbaa !19
  %i.bg = load ptr, ptr %9, align 8, !tbaa !45
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  store i8 0, ptr %i.bh, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bi = invoke noundef zeroext i1 @_ZN21cmExportFileGenerator18AddTargetNamespaceERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK17cmGeneratorTargetPK16cmLocalGenerator(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %2, ptr noundef %i.f)
          to label %bb.j unwind label %.loopexit.split-lp54.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bj = load i64, ptr %i.m, align 8, !tbaa !19  ; 2 uses
  %i.bk = load i64, ptr %i.h, align 8, !tbaa !19
  %i.bl = sub i64 4611686018427387903, %i.bk
  %i.bm = icmp ult i64 %i.bl, %i.bj
  br i1 %i.bm, label %.split72.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us: ; preds = %bb.j
  %i.bn = load ptr, ptr %9, align 8, !tbaa !45
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.bn, i64 noundef %i.bj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us unwind label %.loopexit.split-lp54.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us
  %i.bp = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.l
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us
  %i.br = load i64, ptr %i.l, align 8, !tbaa !20
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.050.063.us, i64 32 ; 2 uses
  %.not.us = icmp eq ptr %i.bt, %i.j
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !394

.split66.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.us, %.noexc.i.us.peel
  %lpad.loopexit.split-lp127 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit36.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.peel, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !402
  %i.bu = load ptr, ptr %3, align 8, !tbaa !45, !noalias !402
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !19, !noalias !402
  store i64 %i.bw, ptr %7, align 8, !tbaa !46, !alias.scope !403, !noalias !402
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bu, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !54, !alias.scope !403, !noalias !402
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.bx, align 8, !tbaa !57, !alias.scope !403, !noalias !402
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bz = load ptr, ptr %1, align 8, !tbaa !45, !noalias !402
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !19, !noalias !402
  store i64 %i.cb, ptr %i.by, align 8, !tbaa !46, !alias.scope !404, !noalias !402
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.bz, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !tbaa !54, !alias.scope !404, !noalias !402
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr null, ptr %i.cc, align 8, !tbaa !57, !alias.scope !404, !noalias !402
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull %7, i64 2)
          to label %bb.k unwind label %bb.n

.lr.ph.split:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit36.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit36
  %.sroa.050.063 = phi ptr [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit36 ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit36.peel ] ; 3 uses
  %i.cd = load i64, ptr %i.h, align 8, !tbaa !19
  %i.ce = icmp eq i64 %i.cd, 4611686018427387903
  br i1 %i.ce, label %.loopexit.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.lr.ph.split
  %i.cf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.050.063, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !19 ; 2 uses
  %i.ci = load i64, ptr %i.h, align 8, !tbaa !19
  %i.cj = sub i64 4611686018427387903, %i.ci
  %i.ck = icmp ult i64 %i.cj, %i.ch
  br i1 %i.ck, label %.loopexit.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i33

.split72.us:                                      ; preds = %bb.j, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #26
          to label %.noexc28 unwind label %.loopexit.split-lp54.loopexit.split-lp.loopexit.split-lp

.noexc28:                                         ; preds = %.split72.us
  unreachable

.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %.loopexit.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i33.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.us.peel
  %lpad.loopexit.split-lp134 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split

.loopexit.split-lp54.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us.peel, %bb.e, %.split72.us
  %lpad.loopexit.split-lp130 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.l
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %.loopexit.split-lp54.loopexit.split-lp.loopexit.split-lp
  %i.cn = load i64, ptr %i.l, align 8, !tbaa !20
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %.loopexit.split-lp54.loopexit.split-lp.loopexit.split-lp, %.split66.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  %.pn22 = phi { ptr, i32 } [ %lpad.loopexit.split-lp130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %lpad.loopexit.split-lp127, %.split66.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp130, %.loopexit.split-lp54.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.loopexit.split

.loopexit.invoke:                                 ; preds = %.lr.ph.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %.lr.ph.split.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #26
          to label %.loopexit.cont unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.cont:                                   ; preds = %.loopexit.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.cp = load ptr, ptr %.sroa.050.063, align 8, !tbaa !45
  %i.cq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.cp, i64 noundef %i.ch)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit36 unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i33
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.050.063, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.cr, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !401

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !402
  %i.cs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.l
  %i.ct = load ptr, ptr %10, align 8, !tbaa !45   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !20
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.cy = load ptr, ptr %8, align 8, !tbaa !45    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.g
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.da = load i64, ptr %i.g, align 8, !tbaa !20
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  ret void

bb.n:                                             ; preds = %._crit_edge
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.o:                                             ; preds = %bb.l, %bb.k
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.de = load ptr, ptr %10, align 8, !tbaa !45   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.o
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !20
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dc, %bb.n ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.dd, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.loopexit.split

.loopexit.split:                                  ; preds = %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %lpad.loopexit.split-lp134, %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dj = load ptr, ptr %8, align 8, !tbaa !45    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.g
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %.loopexit.split
  %i.dl = load i64, ptr %i.g, align 8, !tbaa !20
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %.loopexit.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  resume { ptr, i32 } %.pn22.pn.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN21cmExportFileGenerator21SetImportLinkPropertyI10cmLinkItemEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK17cmGeneratorTargetS9_RKSt6vectorIT_SaISE_EERSt3mapIS7_S7_St4lessIS7_ESaISt4pairIS8_S7_EEENS_29ImportLinkPropertyTargetNamesE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %6) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %7 = alloca [2 x %"struct.std::pair.571"], align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = load ptr, ptr %4, align 8, !tbaa !413
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !413
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZNK17cmGeneratorTarget17GetLocalGeneratorEv(ptr noundef nonnull align 8 dereferenceable(3187) %2) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.g, ptr %8, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  store i64 0, ptr %i.h, align 8, !tbaa !19
  store i8 0, ptr %i.g, align 8, !tbaa !20
  %i.i = load ptr, ptr %4, align 8, !tbaa !413    ; 5 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !413  ; 5 uses
  %.not64 = icmp eq ptr %i.i, %i.j
  br i1 %.not64, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = icmp eq i32 %6, 0
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.us.peel, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel: ; preds = %.lr.ph
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.16, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK10cmLinkItem5AsStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.i)
          to label %_ZN12_GLOBAL__N_18asStringB5cxx11ERK10cmLinkItem.exit35.peel unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZN12_GLOBAL__N_18asStringB5cxx11ERK10cmLinkItem.exit35.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !19   ; 2 uses
  %i.r = load i64, ptr %i.h, align 8, !tbaa !19
  %i.s = sub i64 4611686018427387903, %i.r
  %i.t = icmp ult i64 %i.s, %i.q
  br i1 %i.t, label %.loopexit.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i36.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i36.peel: ; preds = %_ZN12_GLOBAL__N_18asStringB5cxx11ERK10cmLinkItem.exit35.peel
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !45
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.u, i64 noundef %i.q)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit39.peel unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit39.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i36.peel
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 112 ; 2 uses
  %.not.peel = icmp eq ptr %i.w, %i.j
  br i1 %.not.peel, label %._crit_edge, label %.lr.ph.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.us.peel: ; preds = %.lr.ph
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.16, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.us.peel unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.us.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.us.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK10cmLinkItem5AsStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.i)
          to label %_ZN12_GLOBAL__N_18asStringB5cxx11ERK10cmLinkItem.exit.us.peel unwind label %.split68.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZN12_GLOBAL__N_18asStringB5cxx11ERK10cmLinkItem.exit.us.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.us.peel
  store ptr %i.l, ptr %9, align 8, !tbaa !16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !46
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %.noexc.i.us.peel, label %._crit_edge.i.i.us.peel

.noexc.i.us.peel:                                 ; preds = %_ZN12_GLOBAL__N_18asStringB5cxx11ERK10cmLinkItem.exit.us.peel
  %i.ad = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc28.us.peel unwind label %.split68.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc28.us.peel:                                 ; preds = %.noexc.i.us.peel
  store ptr %i.ad, ptr %9, align 8, !tbaa !45
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !46
  store i64 %i.ae, ptr %i.l, align 8, !tbaa !20
  br label %._crit_edge.i.i.us.peel

._crit_edge.i.i.us.peel:                          ; preds = %.noexc28.us.peel, %_ZN12_GLOBAL__N_18asStringB5cxx11ERK10cmLinkItem.exit.us.peel
  %i.af = phi ptr [ %i.ad, %.noexc28.us.peel ], [ %i.l, %_ZN12_GLOBAL__N_18asStringB5cxx11ERK10cmLinkItem.exit.us.peel ] ; 2 uses
  switch i64 %i.ab, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.us.peel
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !20
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !20
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.us.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.z, i64 %i.ab, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.us.peel
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  store i64 %i.ah, ptr %i.m, align 8, !tbaa !19
  %i.ai = load ptr, ptr %9, align 8, !tbaa !45
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ah
  store i8 0, ptr %i.aj, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ak = invoke noundef zeroext i1 @_ZN21cmExportFileGenerator18AddTargetNamespaceERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK17cmGeneratorTargetPK16cmLocalGenerator(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %2, ptr noundef %i.f)
          to label %bb.f unwind label %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.al = load i64, ptr %i.m, align 8, !tbaa !19  ; 2 uses
  %i.am = load i64, ptr %i.h, align 8, !tbaa !19
  %i.an = sub i64 4611686018427387903, %i.am
  %i.ao = icmp ult i64 %i.an, %i.al
  br i1 %i.ao, label %.split74.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us.peel: ; preds = %bb.f
  %i.ap = load ptr, ptr %9, align 8, !tbaa !45
  %i.aq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.ap, i64 noundef %i.al)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us.peel unwind label %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us.peel
  %i.ar = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.l
  br i1 %i.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.us.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us.peel
  %i.at = load i64, ptr %i.l, align 8, !tbaa !20
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.us.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us.peel
  %11 = load i64, ptr %i.m, align 8, !tbaa !19
  %12 = icmp ult i64 %11, 16
  call void @llvm.assume(i1 %12)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.us.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 112 ; 2 uses
  %.not.us.peel = icmp eq ptr %i.av, %i.j
  br i1 %.not.us.peel, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us
  %.sroa.053.065.us = phi ptr [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.peel ] ; 2 uses
  %i.aw = load i64, ptr %i.h, align 8, !tbaa !19
  %i.ax = icmp eq i64 %i.aw, 4611686018427387903
  br i1 %i.ax, label %.loopexit.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.us: ; preds = %.lr.ph.split.us
  %i.ay = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.us unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK10cmLinkItem5AsStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.053.065.us)
          to label %_ZN12_GLOBAL__N_18asStringB5cxx11ERK10cmLinkItem.exit.us unwind label %.split68.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZN12_GLOBAL__N_18asStringB5cxx11ERK10cmLinkItem.exit.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.us
  store ptr %i.l, ptr %9, align 8, !tbaa !16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !45 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.bc, ptr %i.a, align 8, !tbaa !46
  %i.bd = icmp ugt i64 %i.bc, 15
  br i1 %i.bd, label %.noexc.i.us, label %._crit_edge.i.i.us

.noexc.i.us:                                      ; preds = %_ZN12_GLOBAL__N_18asStringB5cxx11ERK10cmLinkItem.exit.us
  %i.be = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc28.us unwind label %.split68.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc28.us:                                      ; preds = %.noexc.i.us
  store ptr %i.be, ptr %9, align 8, !tbaa !45
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !46
  store i64 %i.bf, ptr %i.l, align 8, !tbaa !20
  br label %._crit_edge.i.i.us

._crit_edge.i.i.us:                               ; preds = %.noexc28.us, %_ZN12_GLOBAL__N_18asStringB5cxx11ERK10cmLinkItem.exit.us
  %i.bg = phi ptr [ %i.be, %.noexc28.us ], [ %i.l, %_ZN12_GLOBAL__N_18asStringB5cxx11ERK10cmLinkItem.exit.us ] ; 2 uses
  switch i64 %i.bc, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.us
  %i.bh = load i8, ptr %i.ba, align 1, !tbaa !20
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !20
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.us
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.ba, i64 %i.bc, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.us
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  store i64 %i.bi, ptr %i.m, align 8, !tbaa !19
  %i.bj = load ptr, ptr %9, align 8, !tbaa !45
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 0, ptr %i.bk, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bl = invoke noundef zeroext i1 @_ZN21cmExportFileGenerator18AddTargetNamespaceERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK17cmGeneratorTargetPK16cmLocalGenerator(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %2, ptr noundef %i.f)
          to label %bb.j unwind label %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bm = load i64, ptr %i.m, align 8, !tbaa !19  ; 2 uses
  %i.bn = load i64, ptr %i.h, align 8, !tbaa !19
  %i.bo = sub i64 4611686018427387903, %i.bn
  %i.bp = icmp ult i64 %i.bo, %i.bm
  br i1 %i.bp, label %.split74.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us: ; preds = %bb.j
  %i.bq = load ptr, ptr %9, align 8, !tbaa !45
  %i.br = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.bq, i64 noundef %i.bm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us unwind label %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us
  %i.bs = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.l
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us
  %i.bu = load i64, ptr %i.l, align 8, !tbaa !20
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.053.065.us, i64 112 ; 2 uses
  %.not.us = icmp eq ptr %i.bw, %i.j
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !405

.split68.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.us.peel, %.noexc.i.us.peel
  %lpad.loopexit.split-lp129 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit39.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.peel, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !414
  %i.bx = load ptr, ptr %3, align 8, !tbaa !45, !noalias !414
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !19, !noalias !414
  store i64 %i.bz, ptr %7, align 8, !tbaa !46, !alias.scope !415, !noalias !414
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bx, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !54, !alias.scope !415, !noalias !414
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.ca, align 8, !tbaa !57, !alias.scope !415, !noalias !414
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cc = load ptr, ptr %1, align 8, !tbaa !45, !noalias !414
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !19, !noalias !414
  store i64 %i.ce, ptr %i.cb, align 8, !tbaa !46, !alias.scope !416, !noalias !414
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.cc, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !tbaa !54, !alias.scope !416, !noalias !414
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr null, ptr %i.cf, align 8, !tbaa !57, !alias.scope !416, !noalias !414
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull %7, i64 2)
          to label %bb.k unwind label %bb.n

.lr.ph.split:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit39.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit39
  %.sroa.053.065 = phi ptr [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit39 ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit39.peel ] ; 2 uses
  %i.cg = load i64, ptr %i.h, align 8, !tbaa !19
  %i.ch = icmp eq i64 %i.cg, 4611686018427387903
  br i1 %i.ch, label %.loopexit.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.lr.ph.split
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.cj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK10cmLinkItem5AsStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.053.065)
          to label %_ZN12_GLOBAL__N_18asStringB5cxx11ERK10cmLinkItem.exit35 unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.split74.us:                                      ; preds = %bb.j, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #26
          to label %.noexc29 unwind label %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %.split74.us
  unreachable

.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %.loopexit.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i36.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.us.peel
  %lpad.loopexit.split-lp136 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split

.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us.peel, %bb.e, %.split74.us
  %lpad.loopexit.split-lp132 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.l
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp
  %i.cm = load i64, ptr %i.l, align 8, !tbaa !20
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp, %.split68.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  %.pn22 = phi { ptr, i32 } [ %lpad.loopexit.split-lp132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %lpad.loopexit.split-lp129, %.split68.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp132, %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.loopexit.split

_ZN12_GLOBAL__N_18asStringB5cxx11ERK10cmLinkItem.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !19 ; 2 uses
  %i.cq = load i64, ptr %i.h, align 8, !tbaa !19
  %i.cr = sub i64 4611686018427387903, %i.cq
  %i.cs = icmp ult i64 %i.cr, %i.cp
  br i1 %i.cs, label %.loopexit.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i36

.loopexit.invoke:                                 ; preds = %.lr.ph.split, %_ZN12_GLOBAL__N_18asStringB5cxx11ERK10cmLinkItem.exit35, %.lr.ph.split.us, %_ZN12_GLOBAL__N_18asStringB5cxx11ERK10cmLinkItem.exit35.peel
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #26
          to label %.loopexit.cont unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.cont:                                   ; preds = %.loopexit.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i36: ; preds = %_ZN12_GLOBAL__N_18asStringB5cxx11ERK10cmLinkItem.exit35
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !45
  %i.cu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.ct, i64 noundef %i.cp)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit39 unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i36
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.053.065, i64 112 ; 2 uses
  %.not = icmp eq ptr %i.cv, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !412

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !414
  %i.cw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.o
end_hunk_0
