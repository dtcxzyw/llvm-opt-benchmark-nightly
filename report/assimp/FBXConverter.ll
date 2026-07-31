inline.NumInlined: 7594
inline.NumDeleted: 2896
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverter21ConvertGlobalSettingsEv:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335: ; preds = %bb.eb
  %i.aao = load i64, ptr %i.og, align 8
  %i.aap = add i64 %i.aao, 1
  call void @_ZdlPvm(ptr noundef %i.aam, i64 noundef %i.aap) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.em

bb.ec:                                            ; preds = %.thread28.i219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
  %i.aaq = landingpad { ptr, i32 }
          cleanup
  %i.aar = load ptr, ptr %12, align 8             ; 2 uses
  %i.aas = icmp eq ptr %i.aar, %i.pm
  br i1 %i.aas, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338: ; preds = %bb.ec
  %i.aat = load i64, ptr %i.pm, align 8
  %i.aau = add i64 %i.aat, 1
  call void @_ZdlPvm(ptr noundef %i.aar, i64 noundef %i.aau) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.em

bb.ed:                                            ; preds = %.thread28.i234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  %i.aav = landingpad { ptr, i32 }
          cleanup
  %i.aaw = load ptr, ptr %13, align 8             ; 2 uses
  %i.aax = icmp eq ptr %i.aaw, %i.qu
  br i1 %i.aax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341: ; preds = %bb.ed
  %i.aay = load i64, ptr %i.qu, align 8
  %i.aaz = add i64 %i.aay, 1
  call void @_ZdlPvm(ptr noundef %i.aaw, i64 noundef %i.aaz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.em

bb.ee:                                            ; preds = %.thread28.i248, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  %i.aba = landingpad { ptr, i32 }
          cleanup
  %i.abb = load ptr, ptr %14, align 8             ; 2 uses
  %i.abc = icmp eq ptr %i.abb, %i.sc
  br i1 %i.abc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344: ; preds = %bb.ee
  %i.abd = load i64, ptr %i.sc, align 8
  %i.abe = add i64 %i.abd, 1
  call void @_ZdlPvm(ptr noundef %i.abb, i64 noundef %i.abe) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.em

bb.ef:                                            ; preds = %.thread28.i263, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253
  %i.abf = landingpad { ptr, i32 }
          cleanup
  %i.abg = load ptr, ptr %15, align 8             ; 2 uses
  %i.abh = icmp eq ptr %i.abg, %i.tk
  br i1 %i.abh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347: ; preds = %bb.ef
  %i.abi = load i64, ptr %i.tk, align 8
  %i.abj = add i64 %i.abi, 1
  call void @_ZdlPvm(ptr noundef %i.abg, i64 noundef %i.abj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349: ; preds = %bb.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.em

bb.eg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268
  %i.abk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355

bb.eh:                                            ; preds = %.noexc271
  %i.abl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352

bb.ei:                                            ; preds = %.thread29.i
  %i.abm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abn = load ptr, ptr %18, align 8             ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.abp = icmp eq ptr %i.abn, %i.abo
  br i1 %i.abp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350: ; preds = %bb.ei
  %i.abq = load i64, ptr %i.abo, align 8
  %i.abr = add i64 %i.abq, 1
  call void @_ZdlPvm(ptr noundef %i.abn, i64 noundef %i.abr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352: ; preds = %bb.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350, %bb.eh
  %.pn56 = phi { ptr, i32 } [ %i.abl, %bb.eh ], [ %i.abm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350 ], [ %i.abm, %bb.ei ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %i.abs = load ptr, ptr %16, align 8             ; 2 uses
  %i.abt = icmp eq ptr %i.abs, %i.us
  br i1 %i.abt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352
  %i.abu = load i64, ptr %i.us, align 8
  %i.abv = add i64 %i.abu, 1
  call void @_ZdlPvm(ptr noundef %i.abs, i64 noundef %i.abv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353, %bb.eg
  %.pn56.pn = phi { ptr, i32 } [ %i.abk, %bb.eg ], [ %.pn56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353 ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.em

bb.ej:                                            ; preds = %.noexc.i287
  %i.abw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358

bb.ek:                                            ; preds = %.thread29.i298
  %i.abx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  %i.aby = load ptr, ptr %19, align 8             ; 2 uses
  %i.abz = icmp eq ptr %i.aby, %i.wt
  br i1 %i.abz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356: ; preds = %bb.ek
  %i.aca = load i64, ptr %i.wt, align 8
  %i.acb = add i64 %i.aca, 1
  call void @_ZdlPvm(ptr noundef %i.aby, i64 noundef %i.acb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356, %bb.ej
  %.pn59 = phi { ptr, i32 } [ %i.abw, %bb.ej ], [ %i.abx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356 ], [ %i.abx, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.em

bb.el:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304, %bb.a
  ret void

bb.em:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307
  %.pn59.pn = phi { ptr, i32 } [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358 ], [ %.pn56.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355 ], [ %i.abf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349 ], [ %i.aba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346 ], [ %i.aav, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343 ], [ %i.aaq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340 ], [ %i.aal, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337 ], [ %.pn44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334 ], [ %i.aaa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331 ], [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328 ], [ %i.zp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325 ], [ %i.zk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322 ], [ %i.zf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319 ], [ %i.za, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316 ], [ %i.yv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313 ], [ %i.yq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310 ], [ %i.yl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307 ]
  resume { ptr, i32 } %.pn59.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter19TransferDataToSceneEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(529) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = tail call i64 @llvm.smax.i64(i64 %i.h, i64 -1) ; 2 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.j, i8 0, i64 %i.i, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.j, ptr %i.m, align 8
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = lshr exact i64 %i.r, 3
  %i.t = trunc i64 %i.s to i32
  %i.u = load ptr, ptr %i.k, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i32 %i.t, ptr %i.v, align 8
  %i.w = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.x = ptrtoaddr ptr %i.w to i64                ; 2 uses
  %i.y = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.z = ptrtoaddr ptr %i.y to i64                ; 2 uses
  %.not5.i = icmp eq ptr %i.w, %i.y
  br i1 %.not5.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.aa = load ptr, ptr %i.k, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8            ; 6 uses
  %i.ad = sub i64 %i.z, %i.x
  %i.ae = add i64 %i.ad, -8                       ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 104
  br i1 %min.iters.check, label %.lr.ph.i.preheader233, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.ah = add i64 %i.z, -8
  %i.ai = sub i64 %i.ah, %i.x
  %i.aj = and i64 %i.ai, -8
  %i.ak = add i64 %i.aj, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ak
  %scevgep77 = getelementptr i8, ptr %i.ac, i64 %i.ak
  %bound0 = icmp ult ptr %i.w, %scevgep77
  %bound1 = icmp ult ptr %i.ac, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader233, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.ac, i64 %i.al
  %i.an = getelementptr i8, ptr %i.w, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.ao ; 3 uses
  %next.gep78 = getelementptr i8, ptr %i.w, i64 %i.ao ; 3 uses
  %i.ap = getelementptr i8, ptr %next.gep78, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep78, align 8, !alias.scope !22, !noalias !25
  %wide.load79 = load <2 x ptr>, ptr %i.ap, align 8, !alias.scope !22, !noalias !25
  %i.aq = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load80 = load <2 x ptr>, ptr %next.gep, align 8, !alias.scope !25
  %wide.load81 = load <2 x ptr>, ptr %i.aq, align 8, !alias.scope !25
  store <2 x ptr> %wide.load80, ptr %next.gep78, align 8, !alias.scope !22, !noalias !25
  store <2 x ptr> %wide.load81, ptr %i.ap, align 8, !alias.scope !22, !noalias !25
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !alias.scope !25
  store <2 x ptr> %wide.load79, ptr %i.aq, align 8, !alias.scope !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i.preheader233

.lr.ph.i.preheader233:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.preheader ], [ %i.am, %middle.block ]
  %.sroa.03.06.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader233, %.lr.ph.i
  %.07.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader233 ] ; 3 uses
  %.sroa.03.06.i = phi ptr [ %i.au, %.lr.ph.i ], [ %.sroa.03.06.i.ph, %.lr.ph.i.preheader233 ] ; 3 uses
  %i.as = load ptr, ptr %.sroa.03.06.i, align 8
  %i.at = load ptr, ptr %.07.i, align 8
  store ptr %i.at, ptr %.sroa.03.06.i, align 8
  store ptr %i.as, ptr %.07.i, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %.not.i = icmp eq ptr %i.au, %i.y
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i, !llvm.loop !30

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.b, %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = icmp eq ptr %i.ax, %i.az
  br i1 %i.ba, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ax to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = tail call i64 @llvm.smax.i64(i64 %i.bd, i64 -1) ; 2 uses
  %i.bf = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.be) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bf, i8 0, i64 %i.be, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store ptr %i.bf, ptr %i.bi, align 8
  %i.bj = load ptr, ptr %i.ay, align 8
  %i.bk = load ptr, ptr %i.aw, align 8
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = lshr exact i64 %i.bn, 3
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = load ptr, ptr %i.bg, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  store i32 %i.bp, ptr %i.br, align 8
  %i.bs = load ptr, ptr %i.aw, align 8            ; 8 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64              ; 2 uses
  %i.bu = load ptr, ptr %i.ay, align 8            ; 3 uses
  %i.bv = ptrtoaddr ptr %i.bu to i64              ; 2 uses
  %.not5.i14 = icmp eq ptr %i.bs, %i.bu
  br i1 %.not5.i14, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i15.preheader

.lr.ph.i15.preheader:                             ; preds = %bb.c
  %i.bw = load ptr, ptr %i.bg, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8            ; 6 uses
  %i.bz = sub i64 %i.bv, %i.bt
  %i.ca = add i64 %i.bz, -8                       ; 2 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check90 = icmp ult i64 %i.ca, 104
  br i1 %min.iters.check90, label %.lr.ph.i15.preheader232, label %vector.memcheck83

vector.memcheck83:                                ; preds = %.lr.ph.i15.preheader
  %i.cd = add i64 %i.bv, -8
  %i.ce = sub i64 %i.cd, %i.bt
  %i.cf = and i64 %i.ce, -8
  %i.cg = add i64 %i.cf, 8                        ; 2 uses
  %scevgep84 = getelementptr i8, ptr %i.bs, i64 %i.cg
  %scevgep85 = getelementptr i8, ptr %i.by, i64 %i.cg
  %bound086 = icmp ult ptr %i.bs, %scevgep85
  %bound187 = icmp ult ptr %i.by, %scevgep84
  %found.conflict88 = and i1 %bound086, %bound187
  br i1 %found.conflict88, label %.lr.ph.i15.preheader232, label %vector.ph91

vector.ph91:                                      ; preds = %vector.memcheck83
  %n.vec93 = and i64 %i.cc, 4611686018427387900   ; 3 uses
  %i.ch = shl i64 %n.vec93, 3                     ; 2 uses
  %i.ci = getelementptr i8, ptr %i.by, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.bs, i64 %i.ch
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph91
  %index95 = phi i64 [ 0, %vector.ph91 ], [ %index.next102, %vector.body94 ] ; 2 uses
  %i.ck = shl i64 %index95, 3                     ; 2 uses
  %next.gep96 = getelementptr i8, ptr %i.by, i64 %i.ck ; 3 uses
  %next.gep97 = getelementptr i8, ptr %i.bs, i64 %i.ck ; 3 uses
  %i.cl = getelementptr i8, ptr %next.gep97, i64 16 ; 2 uses
  %wide.load98 = load <2 x ptr>, ptr %next.gep97, align 8, !alias.scope !31, !noalias !34
  %wide.load99 = load <2 x ptr>, ptr %i.cl, align 8, !alias.scope !31, !noalias !34
  %i.cm = getelementptr i8, ptr %next.gep96, i64 16 ; 2 uses
  %wide.load100 = load <2 x ptr>, ptr %next.gep96, align 8, !alias.scope !34
  %wide.load101 = load <2 x ptr>, ptr %i.cm, align 8, !alias.scope !34
  store <2 x ptr> %wide.load100, ptr %next.gep97, align 8, !alias.scope !31, !noalias !34
  store <2 x ptr> %wide.load101, ptr %i.cl, align 8, !alias.scope !31, !noalias !34
  store <2 x ptr> %wide.load98, ptr %next.gep96, align 8, !alias.scope !34
  store <2 x ptr> %wide.load99, ptr %i.cm, align 8, !alias.scope !34
  %index.next102 = add nuw i64 %index95, 4        ; 2 uses
  %i.cn = icmp eq i64 %index.next102, %n.vec93
  br i1 %i.cn, label %middle.block103, label %vector.body94, !llvm.loop !36

middle.block103:                                  ; preds = %vector.body94
  %cmp.n104 = icmp eq i64 %i.cc, %n.vec93
  br i1 %cmp.n104, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i15.preheader232

.lr.ph.i15.preheader232:                          ; preds = %vector.memcheck83, %.lr.ph.i15.preheader, %middle.block103
  %.07.i16.ph = phi ptr [ %i.by, %vector.memcheck83 ], [ %i.by, %.lr.ph.i15.preheader ], [ %i.ci, %middle.block103 ]
  %.sroa.03.06.i17.ph = phi ptr [ %i.bs, %vector.memcheck83 ], [ %i.bs, %.lr.ph.i15.preheader ], [ %i.cj, %middle.block103 ]
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.lr.ph.i15.preheader232, %.lr.ph.i15
  %.07.i16 = phi ptr [ %i.cr, %.lr.ph.i15 ], [ %.07.i16.ph, %.lr.ph.i15.preheader232 ] ; 3 uses
  %.sroa.03.06.i17 = phi ptr [ %i.cq, %.lr.ph.i15 ], [ %.sroa.03.06.i17.ph, %.lr.ph.i15.preheader232 ] ; 3 uses
  %i.co = load ptr, ptr %.sroa.03.06.i17, align 8
  %i.cp = load ptr, ptr %.07.i16, align 8
  store ptr %i.cp, ptr %.sroa.03.06.i17, align 8
  store ptr %i.co, ptr %.07.i16, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i17, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.07.i16, i64 8
  %.not.i18 = icmp eq ptr %i.cq, %i.bu
  br i1 %.not.i18, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i15, !llvm.loop !37

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i15, %middle.block103, %bb.c, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.cw = icmp eq ptr %i.ct, %i.cv
  br i1 %i.cw, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.ct to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = tail call i64 @llvm.smax.i64(i64 %i.cz, i64 -1) ; 2 uses
  %i.db = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.da) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.db, i8 0, i64 %i.da, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  store ptr %i.db, ptr %i.de, align 8
  %i.df = load ptr, ptr %i.cu, align 8
  %i.dg = load ptr, ptr %i.cs, align 8
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = lshr exact i64 %i.dj, 3
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = load ptr, ptr %i.dc, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  store i32 %i.dl, ptr %i.dn, align 8
  %i.do = load ptr, ptr %i.cs, align 8            ; 8 uses
  %i.dp = ptrtoaddr ptr %i.do to i64              ; 2 uses
  %i.dq = load ptr, ptr %i.cu, align 8            ; 3 uses
  %i.dr = ptrtoaddr ptr %i.dq to i64              ; 2 uses
  %.not5.i20 = icmp eq ptr %i.do, %i.dq
  br i1 %.not5.i20, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i21.preheader

.lr.ph.i21.preheader:                             ; preds = %bb.d
  %i.ds = load ptr, ptr %i.dc, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  %i.du = load ptr, ptr %i.dt, align 8            ; 6 uses
  %i.dv = sub i64 %i.dr, %i.dp
  %i.dw = add i64 %i.dv, -8                       ; 2 uses
  %i.dx = lshr i64 %i.dw, 3
  %i.dy = add nuw nsw i64 %i.dx, 1                ; 2 uses
  %min.iters.check114 = icmp ult i64 %i.dw, 104
  br i1 %min.iters.check114, label %.lr.ph.i21.preheader231, label %vector.memcheck107

vector.memcheck107:                               ; preds = %.lr.ph.i21.preheader
  %i.dz = add i64 %i.dr, -8
  %i.ea = sub i64 %i.dz, %i.dp
  %i.eb = and i64 %i.ea, -8
  %i.ec = add i64 %i.eb, 8                        ; 2 uses
  %scevgep108 = getelementptr i8, ptr %i.do, i64 %i.ec
  %scevgep109 = getelementptr i8, ptr %i.du, i64 %i.ec
  %bound0110 = icmp ult ptr %i.do, %scevgep109
  %bound1111 = icmp ult ptr %i.du, %scevgep108
  %found.conflict112 = and i1 %bound0110, %bound1111
  br i1 %found.conflict112, label %.lr.ph.i21.preheader231, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck107
  %n.vec117 = and i64 %i.dy, 4611686018427387900  ; 3 uses
  %i.ed = shl i64 %n.vec117, 3                    ; 2 uses
  %i.ee = getelementptr i8, ptr %i.du, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.do, i64 %i.ed
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph115
  %index119 = phi i64 [ 0, %vector.ph115 ], [ %index.next126, %vector.body118 ] ; 2 uses
  %i.eg = shl i64 %index119, 3                    ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.du, i64 %i.eg ; 3 uses
  %next.gep121 = getelementptr i8, ptr %i.do, i64 %i.eg ; 3 uses
  %i.eh = getelementptr i8, ptr %next.gep121, i64 16 ; 2 uses
  %wide.load122 = load <2 x ptr>, ptr %next.gep121, align 8, !alias.scope !38, !noalias !41
  %wide.load123 = load <2 x ptr>, ptr %i.eh, align 8, !alias.scope !38, !noalias !41
  %i.ei = getelementptr i8, ptr %next.gep120, i64 16 ; 2 uses
  %wide.load124 = load <2 x ptr>, ptr %next.gep120, align 8, !alias.scope !41
  %wide.load125 = load <2 x ptr>, ptr %i.ei, align 8, !alias.scope !41
  store <2 x ptr> %wide.load124, ptr %next.gep121, align 8, !alias.scope !38, !noalias !41
  store <2 x ptr> %wide.load125, ptr %i.eh, align 8, !alias.scope !38, !noalias !41
  store <2 x ptr> %wide.load122, ptr %next.gep120, align 8, !alias.scope !41
  store <2 x ptr> %wide.load123, ptr %i.ei, align 8, !alias.scope !41
  %index.next126 = add nuw i64 %index119, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next126, %n.vec117
  br i1 %i.ej, label %middle.block127, label %vector.body118, !llvm.loop !43

middle.block127:                                  ; preds = %vector.body118
  %cmp.n128 = icmp eq i64 %i.dy, %n.vec117
  br i1 %cmp.n128, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i21.preheader231

.lr.ph.i21.preheader231:                          ; preds = %vector.memcheck107, %.lr.ph.i21.preheader, %middle.block127
  %.07.i22.ph = phi ptr [ %i.du, %vector.memcheck107 ], [ %i.du, %.lr.ph.i21.preheader ], [ %i.ee, %middle.block127 ]
  %.sroa.03.06.i23.ph = phi ptr [ %i.do, %vector.memcheck107 ], [ %i.do, %.lr.ph.i21.preheader ], [ %i.ef, %middle.block127 ]
  br label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.preheader231, %.lr.ph.i21
  %.07.i22 = phi ptr [ %i.en, %.lr.ph.i21 ], [ %.07.i22.ph, %.lr.ph.i21.preheader231 ] ; 3 uses
  %.sroa.03.06.i23 = phi ptr [ %i.em, %.lr.ph.i21 ], [ %.sroa.03.06.i23.ph, %.lr.ph.i21.preheader231 ] ; 3 uses
  %i.ek = load ptr, ptr %.sroa.03.06.i23, align 8
  %i.el = load ptr, ptr %.07.i22, align 8
  store ptr %i.el, ptr %.sroa.03.06.i23, align 8
  store ptr %i.ek, ptr %.07.i22, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i23, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.07.i22, i64 8
  %.not.i24 = icmp eq ptr %i.em, %i.dq
  br i1 %.not.i24, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i21, !llvm.loop !44

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i21, %middle.block127, %bb.d, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ep = load ptr, ptr %i.eo, align 8            ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.er = load ptr, ptr %i.eq, align 8            ; 2 uses
  %i.es = icmp eq ptr %i.ep, %i.er
  br i1 %i.es, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = ptrtoint ptr %i.ep to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = tail call i64 @llvm.smax.i64(i64 %i.ev, i64 -1) ; 2 uses
  %i.ex = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ex, i8 0, i64 %i.ew, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 88
  store ptr %i.ex, ptr %i.fa, align 8
  %i.fb = load ptr, ptr %i.eq, align 8
  %i.fc = load ptr, ptr %i.eo, align 8
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = lshr exact i64 %i.ff, 3
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = load ptr, ptr %i.ey, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 80
  store i32 %i.fh, ptr %i.fj, align 8
  %i.fk = load ptr, ptr %i.eo, align 8            ; 8 uses
  %i.fl = ptrtoaddr ptr %i.fk to i64              ; 2 uses
  %i.fm = load ptr, ptr %i.eq, align 8            ; 3 uses
  %i.fn = ptrtoaddr ptr %i.fm to i64              ; 2 uses
  %.not5.i26 = icmp eq ptr %i.fk, %i.fm
  br i1 %.not5.i26, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i27.preheader

.lr.ph.i27.preheader:                             ; preds = %bb.e
  %i.fo = load ptr, ptr %i.ey, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 88
  %i.fq = load ptr, ptr %i.fp, align 8            ; 6 uses
  %i.fr = sub i64 %i.fn, %i.fl
  %i.fs = add i64 %i.fr, -8                       ; 2 uses
  %i.ft = lshr i64 %i.fs, 3
  %i.fu = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %min.iters.check138 = icmp ult i64 %i.fs, 104
  br i1 %min.iters.check138, label %.lr.ph.i27.preheader230, label %vector.memcheck131

vector.memcheck131:                               ; preds = %.lr.ph.i27.preheader
  %i.fv = add i64 %i.fn, -8
  %i.fw = sub i64 %i.fv, %i.fl
  %i.fx = and i64 %i.fw, -8
  %i.fy = add i64 %i.fx, 8                        ; 2 uses
  %scevgep132 = getelementptr i8, ptr %i.fk, i64 %i.fy
  %scevgep133 = getelementptr i8, ptr %i.fq, i64 %i.fy
  %bound0134 = icmp ult ptr %i.fk, %scevgep133
  %bound1135 = icmp ult ptr %i.fq, %scevgep132
  %found.conflict136 = and i1 %bound0134, %bound1135
  br i1 %found.conflict136, label %.lr.ph.i27.preheader230, label %vector.ph139

vector.ph139:                                     ; preds = %vector.memcheck131
  %n.vec141 = and i64 %i.fu, 4611686018427387900  ; 3 uses
  %i.fz = shl i64 %n.vec141, 3                    ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fq, i64 %i.fz
  %i.gb = getelementptr i8, ptr %i.fk, i64 %i.fz
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph139
  %index143 = phi i64 [ 0, %vector.ph139 ], [ %index.next150, %vector.body142 ] ; 2 uses
  %i.gc = shl i64 %index143, 3                    ; 2 uses
  %next.gep144 = getelementptr i8, ptr %i.fq, i64 %i.gc ; 3 uses
  %next.gep145 = getelementptr i8, ptr %i.fk, i64 %i.gc ; 3 uses
  %i.gd = getelementptr i8, ptr %next.gep145, i64 16 ; 2 uses
  %wide.load146 = load <2 x ptr>, ptr %next.gep145, align 8, !alias.scope !45, !noalias !48
  %wide.load147 = load <2 x ptr>, ptr %i.gd, align 8, !alias.scope !45, !noalias !48
  %i.ge = getelementptr i8, ptr %next.gep144, i64 16 ; 2 uses
  %wide.load148 = load <2 x ptr>, ptr %next.gep144, align 8, !alias.scope !48
  %wide.load149 = load <2 x ptr>, ptr %i.ge, align 8, !alias.scope !48
  store <2 x ptr> %wide.load148, ptr %next.gep145, align 8, !alias.scope !45, !noalias !48
  store <2 x ptr> %wide.load149, ptr %i.gd, align 8, !alias.scope !45, !noalias !48
  store <2 x ptr> %wide.load146, ptr %next.gep144, align 8, !alias.scope !48
  store <2 x ptr> %wide.load147, ptr %i.ge, align 8, !alias.scope !48
  %index.next150 = add nuw i64 %index143, 4       ; 2 uses
  %i.gf = icmp eq i64 %index.next150, %n.vec141
  br i1 %i.gf, label %middle.block151, label %vector.body142, !llvm.loop !50

middle.block151:                                  ; preds = %vector.body142
  %cmp.n152 = icmp eq i64 %i.fu, %n.vec141
  br i1 %cmp.n152, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i27.preheader230

.lr.ph.i27.preheader230:                          ; preds = %vector.memcheck131, %.lr.ph.i27.preheader, %middle.block151
  %.07.i28.ph = phi ptr [ %i.fq, %vector.memcheck131 ], [ %i.fq, %.lr.ph.i27.preheader ], [ %i.ga, %middle.block151 ]
  %.sroa.03.06.i29.ph = phi ptr [ %i.fk, %vector.memcheck131 ], [ %i.fk, %.lr.ph.i27.preheader ], [ %i.gb, %middle.block151 ]
  br label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph.i27.preheader230, %.lr.ph.i27
  %.07.i28 = phi ptr [ %i.gj, %.lr.ph.i27 ], [ %.07.i28.ph, %.lr.ph.i27.preheader230 ] ; 3 uses
  %.sroa.03.06.i29 = phi ptr [ %i.gi, %.lr.ph.i27 ], [ %.sroa.03.06.i29.ph, %.lr.ph.i27.preheader230 ] ; 3 uses
  %i.gg = load ptr, ptr %.sroa.03.06.i29, align 8
  %i.gh = load ptr, ptr %.07.i28, align 8
  store ptr %i.gh, ptr %.sroa.03.06.i29, align 8
  store ptr %i.gg, ptr %.07.i28, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i29, i64 8 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.07.i28, i64 8
  %.not.i30 = icmp eq ptr %i.gi, %i.fm
  br i1 %.not.i30, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i27, !llvm.loop !51

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i27, %middle.block151, %bb.e, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.gl = load ptr, ptr %i.gk, align 8            ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.gn = load ptr, ptr %i.gm, align 8            ; 2 uses
  %i.go = icmp eq ptr %i.gl, %i.gn
  br i1 %i.go, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = ptrtoint ptr %i.gl to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = tail call i64 @llvm.smax.i64(i64 %i.gr, i64 -1) ; 2 uses
  %i.gt = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gs) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.gt, i8 0, i64 %i.gs, i1 false)
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 104
  store ptr %i.gt, ptr %i.gw, align 8
  %i.gx = load ptr, ptr %i.gm, align 8
  %i.gy = load ptr, ptr %i.gk, align 8
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = lshr exact i64 %i.hb, 3
  %i.hd = trunc i64 %i.hc to i32
  %i.he = load ptr, ptr %i.gu, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 96
  store i32 %i.hd, ptr %i.hf, align 8
  %i.hg = load ptr, ptr %i.gk, align 8            ; 8 uses
  %i.hh = ptrtoaddr ptr %i.hg to i64              ; 2 uses
  %i.hi = load ptr, ptr %i.gm, align 8            ; 3 uses
  %i.hj = ptrtoaddr ptr %i.hi to i64              ; 2 uses
  %.not5.i32 = icmp eq ptr %i.hg, %i.hi
  br i1 %.not5.i32, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i33.preheader

.lr.ph.i33.preheader:                             ; preds = %bb.f
  %i.hk = load ptr, ptr %i.gu, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 104
  %i.hm = load ptr, ptr %i.hl, align 8            ; 6 uses
  %i.hn = sub i64 %i.hj, %i.hh
  %i.ho = add i64 %i.hn, -8                       ; 2 uses
  %i.hp = lshr i64 %i.ho, 3
  %i.hq = add nuw nsw i64 %i.hp, 1                ; 2 uses
  %min.iters.check162 = icmp ult i64 %i.ho, 104
  br i1 %min.iters.check162, label %.lr.ph.i33.preheader229, label %vector.memcheck155

vector.memcheck155:                               ; preds = %.lr.ph.i33.preheader
  %i.hr = add i64 %i.hj, -8
  %i.hs = sub i64 %i.hr, %i.hh
  %i.ht = and i64 %i.hs, -8
  %i.hu = add i64 %i.ht, 8                        ; 2 uses
  %scevgep156 = getelementptr i8, ptr %i.hg, i64 %i.hu
  %scevgep157 = getelementptr i8, ptr %i.hm, i64 %i.hu
  %bound0158 = icmp ult ptr %i.hg, %scevgep157
  %bound1159 = icmp ult ptr %i.hm, %scevgep156
  %found.conflict160 = and i1 %bound0158, %bound1159
  br i1 %found.conflict160, label %.lr.ph.i33.preheader229, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck155
  %n.vec165 = and i64 %i.hq, 4611686018427387900  ; 3 uses
  %i.hv = shl i64 %n.vec165, 3                    ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hm, i64 %i.hv
  %i.hx = getelementptr i8, ptr %i.hg, i64 %i.hv
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph163
  %index167 = phi i64 [ 0, %vector.ph163 ], [ %index.next174, %vector.body166 ] ; 2 uses
  %i.hy = shl i64 %index167, 3                    ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.hm, i64 %i.hy ; 3 uses
  %next.gep169 = getelementptr i8, ptr %i.hg, i64 %i.hy ; 3 uses
  %i.hz = getelementptr i8, ptr %next.gep169, i64 16 ; 2 uses
  %wide.load170 = load <2 x ptr>, ptr %next.gep169, align 8, !alias.scope !52, !noalias !55
  %wide.load171 = load <2 x ptr>, ptr %i.hz, align 8, !alias.scope !52, !noalias !55
  %i.ia = getelementptr i8, ptr %next.gep168, i64 16 ; 2 uses
  %wide.load172 = load <2 x ptr>, ptr %next.gep168, align 8, !alias.scope !55
  %wide.load173 = load <2 x ptr>, ptr %i.ia, align 8, !alias.scope !55
  store <2 x ptr> %wide.load172, ptr %next.gep169, align 8, !alias.scope !52, !noalias !55
  store <2 x ptr> %wide.load173, ptr %i.hz, align 8, !alias.scope !52, !noalias !55
  store <2 x ptr> %wide.load170, ptr %next.gep168, align 8, !alias.scope !55
  store <2 x ptr> %wide.load171, ptr %i.ia, align 8, !alias.scope !55
  %index.next174 = add nuw i64 %index167, 4       ; 2 uses
  %i.ib = icmp eq i64 %index.next174, %n.vec165
  br i1 %i.ib, label %middle.block175, label %vector.body166, !llvm.loop !57

middle.block175:                                  ; preds = %vector.body166
  %cmp.n176 = icmp eq i64 %i.hq, %n.vec165
  br i1 %cmp.n176, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i33.preheader229

.lr.ph.i33.preheader229:                          ; preds = %vector.memcheck155, %.lr.ph.i33.preheader, %middle.block175
  %.07.i34.ph = phi ptr [ %i.hm, %vector.memcheck155 ], [ %i.hm, %.lr.ph.i33.preheader ], [ %i.hw, %middle.block175 ]
  %.sroa.03.06.i35.ph = phi ptr [ %i.hg, %vector.memcheck155 ], [ %i.hg, %.lr.ph.i33.preheader ], [ %i.hx, %middle.block175 ]
  br label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.lr.ph.i33.preheader229, %.lr.ph.i33
  %.07.i34 = phi ptr [ %i.if, %.lr.ph.i33 ], [ %.07.i34.ph, %.lr.ph.i33.preheader229 ] ; 3 uses
  %.sroa.03.06.i35 = phi ptr [ %i.ie, %.lr.ph.i33 ], [ %.sroa.03.06.i35.ph, %.lr.ph.i33.preheader229 ] ; 3 uses
  %i.ic = load ptr, ptr %.sroa.03.06.i35, align 8
  %i.id = load ptr, ptr %.07.i34, align 8
  store ptr %i.id, ptr %.sroa.03.06.i35, align 8
  store ptr %i.ic, ptr %.07.i34, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i35, i64 8 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.07.i34, i64 8
  %.not.i36 = icmp eq ptr %i.ie, %i.hi
  br i1 %.not.i36, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i33, !llvm.loop !58

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i33, %middle.block175, %bb.f, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ih = load ptr, ptr %i.ig, align 8            ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ij = load ptr, ptr %i.ii, align 8            ; 2 uses
  %i.ik = icmp eq ptr %i.ih, %i.ij
  br i1 %i.ik, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = ptrtoint ptr %i.ih to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = tail call i64 @llvm.smax.i64(i64 %i.in, i64 -1) ; 2 uses
  %i.ip = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.io) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ip, i8 0, i64 %i.io, i1 false)
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 72
  store ptr %i.ip, ptr %i.is, align 8
  %i.it = load ptr, ptr %i.ii, align 8
  %i.iu = load ptr, ptr %i.ig, align 8
  %i.iv = ptrtoint ptr %i.it to i64
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = sub i64 %i.iv, %i.iw
  %i.iy = lshr exact i64 %i.ix, 3
  %i.iz = trunc i64 %i.iy to i32
  %i.ja = load ptr, ptr %i.iq, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 64
  store i32 %i.iz, ptr %i.jb, align 8
  %i.jc = load ptr, ptr %i.ig, align 8            ; 8 uses
  %i.jd = ptrtoaddr ptr %i.jc to i64              ; 2 uses
  %i.je = load ptr, ptr %i.ii, align 8            ; 3 uses
  %i.jf = ptrtoaddr ptr %i.je to i64              ; 2 uses
  %.not5.i38 = icmp eq ptr %i.jc, %i.je
  br i1 %.not5.i38, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i39.preheader

.lr.ph.i39.preheader:                             ; preds = %bb.g
  %i.jg = load ptr, ptr %i.iq, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 72
  %i.ji = load ptr, ptr %i.jh, align 8            ; 6 uses
  %i.jj = sub i64 %i.jf, %i.jd
  %i.jk = add i64 %i.jj, -8                       ; 2 uses
  %i.jl = lshr i64 %i.jk, 3
  %i.jm = add nuw nsw i64 %i.jl, 1                ; 2 uses
  %min.iters.check186 = icmp ult i64 %i.jk, 104
  br i1 %min.iters.check186, label %.lr.ph.i39.preheader228, label %vector.memcheck179

vector.memcheck179:                               ; preds = %.lr.ph.i39.preheader
  %i.jn = add i64 %i.jf, -8
  %i.jo = sub i64 %i.jn, %i.jd
  %i.jp = and i64 %i.jo, -8
  %i.jq = add i64 %i.jp, 8                        ; 2 uses
  %scevgep180 = getelementptr i8, ptr %i.jc, i64 %i.jq
  %scevgep181 = getelementptr i8, ptr %i.ji, i64 %i.jq
  %bound0182 = icmp ult ptr %i.jc, %scevgep181
  %bound1183 = icmp ult ptr %i.ji, %scevgep180
  %found.conflict184 = and i1 %bound0182, %bound1183
  br i1 %found.conflict184, label %.lr.ph.i39.preheader228, label %vector.ph187

vector.ph187:                                     ; preds = %vector.memcheck179
  %n.vec189 = and i64 %i.jm, 4611686018427387900  ; 3 uses
  %i.jr = shl i64 %n.vec189, 3                    ; 2 uses
  %i.js = getelementptr i8, ptr %i.ji, i64 %i.jr
  %i.jt = getelementptr i8, ptr %i.jc, i64 %i.jr
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph187
  %index191 = phi i64 [ 0, %vector.ph187 ], [ %index.next198, %vector.body190 ] ; 2 uses
  %i.ju = shl i64 %index191, 3                    ; 2 uses
  %next.gep192 = getelementptr i8, ptr %i.ji, i64 %i.ju ; 3 uses
  %next.gep193 = getelementptr i8, ptr %i.jc, i64 %i.ju ; 3 uses
  %i.jv = getelementptr i8, ptr %next.gep193, i64 16 ; 2 uses
  %wide.load194 = load <2 x ptr>, ptr %next.gep193, align 8, !alias.scope !59, !noalias !62
  %wide.load195 = load <2 x ptr>, ptr %i.jv, align 8, !alias.scope !59, !noalias !62
  %i.jw = getelementptr i8, ptr %next.gep192, i64 16 ; 2 uses
  %wide.load196 = load <2 x ptr>, ptr %next.gep192, align 8, !alias.scope !62
  %wide.load197 = load <2 x ptr>, ptr %i.jw, align 8, !alias.scope !62
  store <2 x ptr> %wide.load196, ptr %next.gep193, align 8, !alias.scope !59, !noalias !62
  store <2 x ptr> %wide.load197, ptr %i.jv, align 8, !alias.scope !59, !noalias !62
  store <2 x ptr> %wide.load194, ptr %next.gep192, align 8, !alias.scope !62
  store <2 x ptr> %wide.load195, ptr %i.jw, align 8, !alias.scope !62
  %index.next198 = add nuw i64 %index191, 4       ; 2 uses
  %i.jx = icmp eq i64 %index.next198, %n.vec189
  br i1 %i.jx, label %middle.block199, label %vector.body190, !llvm.loop !64

middle.block199:                                  ; preds = %vector.body190
  %cmp.n200 = icmp eq i64 %i.jm, %n.vec189
  br i1 %cmp.n200, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i39.preheader228

.lr.ph.i39.preheader228:                          ; preds = %vector.memcheck179, %.lr.ph.i39.preheader, %middle.block199
  %.07.i40.ph = phi ptr [ %i.ji, %vector.memcheck179 ], [ %i.ji, %.lr.ph.i39.preheader ], [ %i.js, %middle.block199 ]
  %.sroa.03.06.i41.ph = phi ptr [ %i.jc, %vector.memcheck179 ], [ %i.jc, %.lr.ph.i39.preheader ], [ %i.jt, %middle.block199 ]
  br label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %.lr.ph.i39.preheader228, %.lr.ph.i39
  %.07.i40 = phi ptr [ %i.kb, %.lr.ph.i39 ], [ %.07.i40.ph, %.lr.ph.i39.preheader228 ] ; 3 uses
  %.sroa.03.06.i41 = phi ptr [ %i.ka, %.lr.ph.i39 ], [ %.sroa.03.06.i41.ph, %.lr.ph.i39.preheader228 ] ; 3 uses
  %i.jy = load ptr, ptr %.sroa.03.06.i41, align 8
  %i.jz = load ptr, ptr %.07.i40, align 8
  store ptr %i.jz, ptr %.sroa.03.06.i41, align 8
  store ptr %i.jy, ptr %.07.i40, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i41, i64 8 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.07.i40, i64 8
  %.not.i42 = icmp eq ptr %i.ka, %i.je
  br i1 %.not.i42, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i39, !llvm.loop !65

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i39, %middle.block199, %bb.g, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.kd = load ptr, ptr %i.kc, align 8            ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.kf = load ptr, ptr %i.ke, align 8            ; 2 uses
  %i.kg = icmp eq ptr %i.kd, %i.kf
  br i1 %i.kg, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiSkeletonSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = ptrtoint ptr %i.kd to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = tail call i64 @llvm.smax.i64(i64 %i.kj, i64 -1)
  %i.kl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.kk) #30
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 1152
  store ptr %i.kl, ptr %i.ko, align 8
  %i.kp = load ptr, ptr %i.ke, align 8
  %i.kq = load ptr, ptr %i.kc, align 8
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = sub i64 %i.kr, %i.ks
  %i.ku = lshr exact i64 %i.kt, 3
  %i.kv = trunc i64 %i.ku to i32
  %i.kw = load ptr, ptr %i.km, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 1148
  store i32 %i.kv, ptr %i.kx, align 4
  %i.ky = load ptr, ptr %i.kc, align 8            ; 8 uses
  %i.kz = ptrtoaddr ptr %i.ky to i64              ; 2 uses
  %i.la = load ptr, ptr %i.ke, align 8            ; 3 uses
  %i.lb = ptrtoaddr ptr %i.la to i64              ; 2 uses
  %.not5.i44 = icmp eq ptr %i.ky, %i.la
  br i1 %.not5.i44, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiSkeletonSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i45.preheader

.lr.ph.i45.preheader:                             ; preds = %bb.h
  %i.lc = load ptr, ptr %i.km, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 1152
  %i.le = load ptr, ptr %i.ld, align 8            ; 6 uses
  %i.lf = sub i64 %i.lb, %i.kz
  %i.lg = add i64 %i.lf, -8                       ; 2 uses
  %i.lh = lshr i64 %i.lg, 3
  %i.li = add nuw nsw i64 %i.lh, 1                ; 2 uses
  %min.iters.check210 = icmp ult i64 %i.lg, 104
  br i1 %min.iters.check210, label %.lr.ph.i45.preheader227, label %vector.memcheck203

vector.memcheck203:                               ; preds = %.lr.ph.i45.preheader
  %i.lj = add i64 %i.lb, -8
  %i.lk = sub i64 %i.lj, %i.kz
  %i.ll = and i64 %i.lk, -8
  %i.lm = add i64 %i.ll, 8                        ; 2 uses
  %scevgep204 = getelementptr i8, ptr %i.ky, i64 %i.lm
  %scevgep205 = getelementptr i8, ptr %i.le, i64 %i.lm
  %bound0206 = icmp ult ptr %i.ky, %scevgep205
  %bound1207 = icmp ult ptr %i.le, %scevgep204
  %found.conflict208 = and i1 %bound0206, %bound1207
  br i1 %found.conflict208, label %.lr.ph.i45.preheader227, label %vector.ph211

vector.ph211:                                     ; preds = %vector.memcheck203
  %n.vec213 = and i64 %i.li, 4611686018427387900  ; 3 uses
  %i.ln = shl i64 %n.vec213, 3                    ; 2 uses
  %i.lo = getelementptr i8, ptr %i.le, i64 %i.ln
  %i.lp = getelementptr i8, ptr %i.ky, i64 %i.ln
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph211
  %index215 = phi i64 [ 0, %vector.ph211 ], [ %index.next222, %vector.body214 ] ; 2 uses
  %i.lq = shl i64 %index215, 3                    ; 2 uses
  %next.gep216 = getelementptr i8, ptr %i.le, i64 %i.lq ; 3 uses
  %next.gep217 = getelementptr i8, ptr %i.ky, i64 %i.lq ; 3 uses
  %i.lr = getelementptr i8, ptr %next.gep217, i64 16 ; 2 uses
  %wide.load218 = load <2 x ptr>, ptr %next.gep217, align 8, !alias.scope !66, !noalias !69
  %wide.load219 = load <2 x ptr>, ptr %i.lr, align 8, !alias.scope !66, !noalias !69
  %i.ls = getelementptr i8, ptr %next.gep216, i64 16 ; 2 uses
  %wide.load220 = load <2 x ptr>, ptr %next.gep216, align 8, !alias.scope !69
  %wide.load221 = load <2 x ptr>, ptr %i.ls, align 8, !alias.scope !69
  store <2 x ptr> %wide.load220, ptr %next.gep217, align 8, !alias.scope !66, !noalias !69
  store <2 x ptr> %wide.load221, ptr %i.lr, align 8, !alias.scope !66, !noalias !69
  store <2 x ptr> %wide.load218, ptr %next.gep216, align 8, !alias.scope !69
  store <2 x ptr> %wide.load219, ptr %i.ls, align 8, !alias.scope !69
  %index.next222 = add nuw i64 %index215, 4       ; 2 uses
  %i.lt = icmp eq i64 %index.next222, %n.vec213
  br i1 %i.lt, label %middle.block223, label %vector.body214, !llvm.loop !71

middle.block223:                                  ; preds = %vector.body214
  %cmp.n224 = icmp eq i64 %i.li, %n.vec213
  br i1 %cmp.n224, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiSkeletonSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i45.preheader227

.lr.ph.i45.preheader227:                          ; preds = %vector.memcheck203, %.lr.ph.i45.preheader, %middle.block223
  %.07.i46.ph = phi ptr [ %i.le, %vector.memcheck203 ], [ %i.le, %.lr.ph.i45.preheader ], [ %i.lo, %middle.block223 ]
  %.sroa.03.06.i47.ph = phi ptr [ %i.ky, %vector.memcheck203 ], [ %i.ky, %.lr.ph.i45.preheader ], [ %i.lp, %middle.block223 ]
  br label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.lr.ph.i45.preheader227, %.lr.ph.i45
  %.07.i46 = phi ptr [ %i.lx, %.lr.ph.i45 ], [ %.07.i46.ph, %.lr.ph.i45.preheader227 ] ; 3 uses
  %.sroa.03.06.i47 = phi ptr [ %i.lw, %.lr.ph.i45 ], [ %.sroa.03.06.i47.ph, %.lr.ph.i45.preheader227 ] ; 3 uses
  %i.lu = load ptr, ptr %.sroa.03.06.i47, align 8
  %i.lv = load ptr, ptr %.07.i46, align 8
  store ptr %i.lv, ptr %.sroa.03.06.i47, align 8
  store ptr %i.lu, ptr %.07.i46, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i47, i64 8 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.07.i46, i64 8
  %.not.i48 = icmp eq ptr %i.lw, %i.la
  br i1 %.not.i48, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiSkeletonSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i45, !llvm.loop !72

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiSkeletonSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i45, %middle.block223, %bb.h, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6aiBoneSt4lessIS6_ESaISt4pairIS6_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_P6aiBoneESt10_Select1stISA_ESt4lessIS6_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_P6aiBoneESt10_Select1stISA_ESt4lessIS6_ESaISA_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #32
  unreachable

_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_P6aiBoneESt10_Select1stISA_ESt4lessIS6_ESaISA_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #29
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 56) #29
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !73

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %bb.a
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = shl i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.m, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %0, align 8                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.q = load i64, ptr %i.k, align 8
  %i.r = shl i64 %i.q, 3
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #29
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt13unordered_mapIPKN6Assimp3FBX8GeometryESt6vectorIjSaIjEESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIPKN6Assimp3FBX8GeometryESt4pairIKS4_St6vectorIjSaIjEEESaISA_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN6Assimp3FBX8GeometryESt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN6Assimp3FBX8GeometryESt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN6Assimp3FBX8GeometryESt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #29
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN6Assimp3FBX8GeometryESt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN6Assimp3FBX8GeometryESt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 40) #29
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIPKN6Assimp3FBX8GeometryESt4pairIKS4_St6vectorIjSaIjEEESaISA_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !74

_ZNSt10_HashtableIPKN6Assimp3FBX8GeometryESt4pairIKS4_St6vectorIjSaIjEEESaISA_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN6Assimp3FBX8GeometryESt6vectorIjSaIjEEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i, %bb.a
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = shl i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.n, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %0, align 8                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt10_HashtableIPKN6Assimp3FBX8GeometryESt4pairIKS4_St6vectorIjSaIjEEESaISA_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIPKN6Assimp3FBX8GeometryESt4pairIKS4_St6vectorIjSaIjEEESaISA_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i
  %i.r = load i64, ptr %i.l, align 8
  %i.s = shl i64 %i.r, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #29
  br label %_ZNSt10_HashtableIPKN6Assimp3FBX8GeometryESt4pairIKS4_St6vectorIjSaIjEEESaISA_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIPKN6Assimp3FBX8GeometryESt4pairIKS4_St6vectorIjSaIjEEESaISA_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIPKN6Assimp3FBX8GeometryESt4pairIKS4_St6vectorIjSaIjEEESaISA_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIPKN6Assimp3FBX5VideoESt4pairIKS4_jESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8        ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #29
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIPKN6Assimp3FBX5VideoESt4pairIKS4_jESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !75
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX12FBXConverter12ConvertModelERKNS0_5ModelEP6aiNodeS6_RK12aiMatrix4x4tIfE:bb.a
  br label %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i.i.i.i.i63

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i58
  %i.bw = ptrtoint ptr %.sroa.30.9 to i64
  %i.bx = ptrtoint ptr %.sroa.092.9 to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 6 uses
  %i.bz = icmp eq i64 %i.by, 9223372036854775804
  br i1 %i.bz, label %bb.w, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i64

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.noexc70 unwind label %.loopexit.split-lp

.noexc70:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i64: ; preds = %bb.v
  %i.ca = ashr exact i64 %i.by, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i65 = call i64 @llvm.umax.i64(i64 %i.ca, i64 1)
  %i.cb = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i65, %i.ca ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.ca
  %i.cd = call i64 @llvm.umin.i64(i64 %i.cb, i64 2305843009213693951)
  %i.ce = select i1 %i.cc, i64 2305843009213693951, i64 %i.cd ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i66 = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i66)
  %i.cf = shl nuw nsw i64 %i.ce, 2
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #30
          to label %.noexc71 unwind label %.loopexit ; 4 uses

.noexc71:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i64
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.by ; 2 uses
  %i.ci = load i32, ptr %.056.i.i.i.i.i61, align 4
  store i32 %i.ci, ptr %i.ch, align 4
  %i.cj = icmp sgt i64 %i.by, 0
  br i1 %i.cj, label %bb.x, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i67

bb.x:                                             ; preds = %.noexc71
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cg, ptr align 4 %.sroa.092.9, i64 %i.by, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i67

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i67: ; preds = %bb.x, %.noexc71
  %.not.i17.i.i.i.i.i.i.i.i68 = icmp eq ptr %.sroa.092.9, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i68, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i.i.i.i69, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i67
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.092.9, i64 noundef %i.by) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i.i.i.i69

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i.i.i.i69: ; preds = %bb.y, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i67
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ce
  br label %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i.i.i.i.i63

_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i.i.i.i.i63: ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i.i.i.i69, %bb.u
  %.pn118 = phi ptr [ %i.ch, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i.i.i.i69 ], [ %i.bu, %bb.u ]
  %.sroa.30.10 = phi ptr [ %i.ck, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i.i.i.i69 ], [ %.sroa.30.9, %bb.u ] ; 2 uses
  %.sroa.092.10 = phi ptr [ %i.cg, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i.i.i.i69 ], [ %.sroa.092.9, %bb.u ] ; 2 uses
  %.sroa.16.7 = getelementptr inbounds nuw i8, ptr %.pn118, i64 4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i61, i64 4
  %i.cm = add nsw i64 %.07.i.i.i.i.i60, -1
  %i.cn = icmp sgt i64 %.07.i.i.i.i.i60, 1
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i58, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit72.loopexit, !llvm.loop !107

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit72.loopexit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i.i.i.i.i63
  %.pre190 = load ptr, ptr %6, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit72

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit72: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit72.loopexit, %bb.t
  %i.co = phi ptr [ %i.bn, %bb.t ], [ %.pre190, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit72.loopexit ] ; 3 uses
  %.sroa.16.8 = phi ptr [ %.sroa.16.0158, %bb.t ], [ %.sroa.16.7, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit72.loopexit ]
  %.sroa.30.11 = phi ptr [ %.sroa.30.0159, %bb.t ], [ %.sroa.30.10, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit72.loopexit ]
  %.sroa.092.11 = phi ptr [ %.sroa.092.0161, %bb.t ], [ %.sroa.092.10, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit72.loopexit ]
  %.not.i.i.i73 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorIjSaIjEED2Ev.exit74, label %bb.z

bb.z:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit72
  %i.cp = load ptr, ptr %i.r, align 8
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cs) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit74

_ZNSt6vectorIjSaIjEED2Ev.exit74:                  ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit72, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

bb.aa:                                            ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i64
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cu = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i75 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i75, label %_ZNSt6vectorIjSaIjEED2Ev.exit76, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cv = load ptr, ptr %i.r, align 8
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cy) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit76

_ZNSt6vectorIjSaIjEED2Ev.exit76:                  ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.al

bb.ad:                                            ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.da = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc77 unwind label %bb.af

.noexc77:                                         ; preds = %bb.ad
  br i1 %i.da, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit, label %bb.ae

bb.ae:                                            ; preds = %.noexc77
  %i.db = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc78 unwind label %bb.af

.noexc78:                                         ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.dc = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc79 unwind label %bb.af

.noexc79:                                         ; preds = %.noexc78
  store ptr %i.dc, ptr %i.b, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA33_S2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(33) @.str.41, ptr noundef nonnull align 8 dereferenceable(32) %i.cz)
          to label %.noexc80 unwind label %bb.af

.noexc80:                                         ; preds = %.noexc79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

bb.af:                                            ; preds = %.noexc83, %.noexc82, %bb.ah, %bb.ag, %.noexc79, %.noexc78, %bb.ae, %bb.ad
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ag:                                            ; preds = %bb.e
  %i.de = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc81 unwind label %bb.af

.noexc81:                                         ; preds = %bb.ag
  br i1 %i.de, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit, label %bb.ah

bb.ah:                                            ; preds = %.noexc81
  %i.df = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc82 unwind label %bb.af

.noexc82:                                         ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.dg = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc83 unwind label %bb.af

.noexc83:                                         ; preds = %.noexc82
  store ptr %i.dg, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA23_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.df, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(23) @.str.42)
          to label %.noexc84 unwind label %bb.af

.noexc84:                                         ; preds = %.noexc83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit: ; preds = %.noexc84, %.noexc81, %.noexc80, %.noexc77, %_ZNSt6vectorIjSaIjEED2Ev.exit74, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.16.1 = phi ptr [ %.sroa.16.0158, %.noexc80 ], [ %.sroa.16.5, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %.sroa.16.8, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ], [ %.sroa.16.0158, %.noexc77 ], [ %.sroa.16.0158, %.noexc81 ], [ %.sroa.16.0158, %.noexc84 ] ; 5 uses
  %.sroa.30.2 = phi ptr [ %.sroa.30.0159, %.noexc80 ], [ %.sroa.30.8, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %.sroa.30.11, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ], [ %.sroa.30.0159, %.noexc77 ], [ %.sroa.30.0159, %.noexc81 ], [ %.sroa.30.0159, %.noexc84 ] ; 3 uses
  %.sroa.092.2 = phi ptr [ %.sroa.092.0161, %.noexc80 ], [ %.sroa.092.8, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %.sroa.092.11, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ], [ %.sroa.092.0161, %.noexc77 ], [ %.sroa.092.0161, %.noexc81 ], [ %.sroa.092.0161, %.noexc84 ] ; 13 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.089.0160, i64 8 ; 2 uses
  %.not117 = icmp eq ptr %i.dh, %i.e
  br i1 %.not117, label %._crit_edge, label %bb.e

bb.ai:                                            ; preds = %._crit_edge
  %i.di = icmp ugt i64 %i.v, 4611686018427387903
  %i.dj = select i1 %i.di, i64 -1, i64 %i.u       ; 2 uses
  %i.dk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dj) #30
          to label %bb.aj unwind label %bb.d      ; 8 uses

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dk, i8 0, i64 %i.dj, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 1128
  store ptr %i.dk, ptr %i.dl, align 8
  %i.dm = trunc i64 %i.v to i32
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 1120
  store i32 %i.dm, ptr %i.dn, align 8
  %i.do = sub i64 %.sroa.16.1270.le, %.sroa.092.2271.le
  %i.dp = add i64 %i.do, -4                       ; 2 uses
  %i.dq = lshr i64 %i.dp, 2
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dp, 44
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.aj
  %scevgep = getelementptr i8, ptr %.sroa.092.2, i64 4
  %i.ds = add i64 %.sroa.16.1270.le, -4
  %i.dt = sub i64 %i.ds, %.sroa.092.2271.le
  %i.du = and i64 %i.dt, -4                       ; 2 uses
  %scevgep272 = getelementptr i8, ptr %scevgep, i64 %i.du
  %scevgep273 = getelementptr i8, ptr %i.dk, i64 4
  %scevgep274 = getelementptr i8, ptr %scevgep273, i64 %i.du
  %bound0 = icmp ult ptr %.sroa.092.2, %scevgep274
  %bound1 = icmp ult ptr %i.dk, %scevgep272
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dr, 9223372036854775800     ; 3 uses
  %i.dv = shl i64 %n.vec, 2                       ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dk, i64 %i.dv
  %i.dx = getelementptr i8, ptr %.sroa.092.2, i64 %i.dv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dy = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dk, i64 %i.dy ; 3 uses
  %next.gep275 = getelementptr i8, ptr %.sroa.092.2, i64 %i.dy ; 3 uses
  %i.dz = getelementptr i8, ptr %next.gep275, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep275, align 4, !alias.scope !108, !noalias !111
  %wide.load276 = load <4 x i32>, ptr %i.dz, align 4, !alias.scope !108, !noalias !111
  %i.ea = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load277 = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !111
  %wide.load278 = load <4 x i32>, ptr %i.ea, align 4, !alias.scope !111
  store <4 x i32> %wide.load277, ptr %next.gep275, align 4, !alias.scope !108, !noalias !111
  store <4 x i32> %wide.load278, ptr %i.dz, align 4, !alias.scope !108, !noalias !111
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !alias.scope !111
  store <4 x i32> %wide.load276, ptr %i.ea, align 4, !alias.scope !111
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %bb.aj, %middle.block
  %.07.i.ph = phi ptr [ %i.dk, %vector.memcheck ], [ %i.dk, %bb.aj ], [ %i.dw, %middle.block ]
  %.sroa.03.06.i.ph = phi ptr [ %.sroa.092.2, %vector.memcheck ], [ %.sroa.092.2, %bb.aj ], [ %i.dx, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.07.i = phi ptr [ %i.ef, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.03.06.i = phi ptr [ %i.ee, %.lr.ph.i ], [ %.sroa.03.06.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ec = load i32, ptr %.sroa.03.06.i, align 4
  %i.ed = load i32, ptr %.07.i, align 4
  store i32 %i.ed, ptr %.sroa.03.06.i, align 4
  store i32 %i.ec, ptr %.07.i, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i, i64 4 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.07.i, i64 4
  %.not.i = icmp eq ptr %i.ee, %.sroa.16.1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit, label %.lr.ph.i, !llvm.loop !114

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.i, %middle.block, %._crit_edge
  %.not.i.i.i85 = icmp eq ptr %.sroa.092.2, null
  br i1 %.not.i.i.i85, label %_ZNSt6vectorIjSaIjEED2Ev.exit86, label %bb.ak

bb.ak:                                            ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit
  %i.eg = ptrtoint ptr %.sroa.30.2 to i64
  %i.eh = sub i64 %i.eg, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.092.2, i64 noundef %i.eh) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit86

_ZNSt6vectorIjSaIjEED2Ev.exit86:                  ; preds = %bb.c, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit, %bb.ak
  ret void

bb.al:                                            ; preds = %bb.af, %_ZNSt6vectorIjSaIjEED2Ev.exit57, %bb.o, %_ZNSt6vectorIjSaIjEED2Ev.exit76, %bb.aa, %bb.d
  %.sroa.30.4 = phi ptr [ %.sroa.30.1, %bb.d ], [ %.sroa.30.0159, %bb.af ], [ %.sroa.30.9, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %.sroa.30.0159, %bb.aa ], [ %.sroa.30.6, %_ZNSt6vectorIjSaIjEED2Ev.exit57 ], [ %.sroa.30.0159, %bb.o ]
  %.sroa.092.4 = phi ptr [ %.sroa.092.1, %bb.d ], [ %.sroa.092.0161, %bb.af ], [ %.sroa.092.9, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %.sroa.092.0161, %bb.aa ], [ %.sroa.092.6, %_ZNSt6vectorIjSaIjEED2Ev.exit57 ], [ %.sroa.092.0161, %bb.o ] ; 3 uses
  %.pn49.pn.pn = phi { ptr, i32 } [ %i.w, %bb.d ], [ %i.dd, %bb.af ], [ %lpad.phi, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %i.ct, %bb.aa ], [ %lpad.phi123, %_ZNSt6vectorIjSaIjEED2Ev.exit57 ], [ %i.bh, %bb.o ]
  %.not.i.i.i87 = icmp eq ptr %.sroa.092.4, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorIjSaIjEED2Ev.exit88, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ei = ptrtoint ptr %.sroa.30.4 to i64
  %i.ej = ptrtoint ptr %.sroa.092.4 to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.092.4, i64 noundef %i.ek) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit88

_ZNSt6vectorIjSaIjEED2Ev.exit88:                  ; preds = %bb.al, %bb.am
  resume { ptr, i32 } %.pn49.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter13ConvertLightsERKNS0_5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(529) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not1415 = icmp eq ptr %i.b, %i.d
  br i1 %.not1415, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.thread, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.thread
  %.sroa.010.016 = phi ptr [ %i.h, %.thread ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.010.016, align 8    ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = tail call ptr @__dynamic_cast(ptr nonnull %i.e, ptr nonnull @_ZTIN6Assimp3FBX13NodeAttributeE, ptr nonnull @_ZTIN6Assimp3FBX5LightE, i64 0) #27 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6Assimp3FBX12FBXConverter12ConvertLightERKNS0_5LightERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 8 ; 2 uses
  %.not14 = icmp eq ptr %i.h, %i.d
  br i1 %.not14, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter14ConvertCamerasERKNS0_5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(529) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not1415 = icmp eq ptr %i.b, %i.d
  br i1 %.not1415, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.thread, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.thread
  %.sroa.010.016 = phi ptr [ %i.h, %.thread ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.010.016, align 8    ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = tail call ptr @__dynamic_cast(ptr nonnull %i.e, ptr nonnull @_ZTIN6Assimp3FBX13NodeAttributeE, ptr nonnull @_ZTIN6Assimp3FBX6CameraE, i64 0) #27 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6Assimp3FBX12FBXConverter13ConvertCameraERKNS0_6CameraERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 8 ; 2 uses
  %.not14 = icmp eq ptr %i.h, %i.d
  br i1 %.not14, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.e, %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8          ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i, label %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i.i.i

_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %i.d) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1144) #29
  br label %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i

_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i.i.i, %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !92

_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
begin_hunk_2_@_ZN6Assimp3FBX12FBXConverter14ConvertWeightsEP6aiMeshRKNS0_12MeshGeometryERK12aiMatrix4x4tIfEP6aiNodejPSt6vectorIjSaIjEE:bb.a
_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i: ; preds = %bb.ac
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv
  %i.ej = load i32, ptr %i.ei, align 4
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.eg, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %i.eb, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %i.ek = lshr i64 %.016.i.i, 1                   ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.015.i.i, i64 %i.ek ; 2 uses
  %i.em = load i32, ptr %i.el, align 4
  %i.en = icmp ult i32 %i.em, %i.ej               ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.ep = xor i64 %i.ek, -1
  %i.eq = add nsw i64 %.016.i.i, %i.ep
  %.sroa.011.1.i.i = select i1 %i.en, ptr %i.eo, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.en, i64 %i.eq, i64 %i.ek ; 2 uses
  %i.er = icmp sgt i64 %.1.i.i, 0
  br i1 %i.er, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %.loopexit.loopexit, !llvm.loop !173

.loopexit.loopexit:                               ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.pre196 = ptrtoint ptr %.sroa.011.1.i.i to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ac
  %.pre-phi = phi i64 [ %.pre196, %.loopexit.loopexit ], [ %i.ee, %bb.ac ]
  %i.es = sub i64 %.pre-phi, %i.ee
  %i.et = ashr exact i64 %i.es, 2                 ; 2 uses
  %i.eu = load ptr, ptr %i.o, align 8
  %.not.i.i84 = icmp eq ptr %i.cn, %i.eu
  br i1 %.not.i.i84, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.loopexit
  store i64 %i.et, ptr %i.cn, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit83

bb.ae:                                            ; preds = %.loopexit
  %i.ew = ptrtoint ptr %i.cn to i64
  %i.ex = ptrtoint ptr %i.co to i64
  %i.ey = sub i64 %i.ew, %i.ex                    ; 6 uses
  %i.ez = icmp eq i64 %i.ey, 9223372036854775800
  br i1 %i.ez, label %bb.af, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i85

bb.af:                                            ; preds = %bb.ae
  store ptr %i.cn, ptr %i.j, align 8
  store ptr %i.co, ptr %7, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.noexc91 unwind label %.loopexit.split-lp

.noexc91:                                         ; preds = %bb.af
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i85: ; preds = %bb.ae
  %i.fa = ashr exact i64 %i.ey, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i86 = call i64 @llvm.umax.i64(i64 %i.fa, i64 1)
  %i.fb = add nsw i64 %.sroa.speculated.i.i.i.i86, %i.fa ; 2 uses
  %i.fc = icmp ult i64 %i.fb, %i.fa
  %i.fd = call i64 @llvm.umin.i64(i64 %i.fb, i64 1152921504606846975)
  %i.fe = select i1 %i.fc, i64 1152921504606846975, i64 %i.fd ; 3 uses
  %.not.i.i.i.i87 = icmp ne i64 %i.fe, 0
  call void @llvm.assume(i1 %.not.i.i.i.i87)
  %i.ff = shl nuw nsw i64 %i.fe, 3
  %i.fg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ff) #30
          to label %.noexc92 unwind label %.loopexit129 ; 4 uses

.noexc92:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i85
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 %i.ey ; 2 uses
  store i64 %i.et, ptr %i.fh, align 8
  %i.fi = icmp sgt i64 %i.ey, 0
  br i1 %i.fi, label %bb.ag, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i88

bb.ag:                                            ; preds = %.noexc92
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fg, ptr align 8 %i.co, i64 %i.ey, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i88

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i88: ; preds = %bb.ag, %.noexc92
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.not.i17.i.i.i89 = icmp eq ptr %i.co, null
  br i1 %.not.i17.i.i.i89, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i90, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i88
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ey) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i90

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i90: ; preds = %bb.ah, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i88
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fe
  store ptr %i.fk, ptr %i.o, align 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit83

.loopexit129:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i85
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  store ptr %i.cn, ptr %i.j, align 8
  store ptr %i.co, ptr %7, align 8
  br label %bb.aj

.loopexit.split-lp:                               ; preds = %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.aj

_ZNSt6vectorImSaImEE9push_backEOm.exit83:         ; preds = %bb.ad, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i90, %bb.x, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i80
  %i.fl = phi ptr [ %i.co, %bb.ad ], [ %i.fg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i90 ], [ %i.co, %bb.x ], [ %i.dw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i80 ]
  %i.fm = phi ptr [ %i.ev, %bb.ad ], [ %i.fj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i90 ], [ %i.dl, %bb.x ], [ %i.dz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i80 ]
  %i.fn = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -8 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8
  %i.fq = add i64 %i.fp, 1
  store i64 %i.fq, ptr %i.fo, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.r, %_ZNSt6vectorImSaImEE9push_backEOm.exit83
  %i.fr = phi ptr [ %i.cm, %bb.r ], [ %i.fn, %_ZNSt6vectorImSaImEE9push_backEOm.exit83 ] ; 2 uses
  %i.fs = phi ptr [ %i.co, %bb.r ], [ %i.fl, %_ZNSt6vectorImSaImEE9push_backEOm.exit83 ] ; 2 uses
  %i.ft = phi ptr [ %i.cn, %bb.r ], [ %i.fm, %_ZNSt6vectorImSaImEE9push_backEOm.exit83 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fu = load i32, ptr %i.a, align 4
  %i.fv = zext i32 %i.fu to i64
  %i.fw = icmp samesign ult i64 %indvars.iv.next, %i.fv
  br i1 %i.fw, label %.lr.ph, label %._crit_edge, !llvm.loop !174

bb.aj:                                            ; preds = %.loopexit129, %.loopexit.split-lp, %.loopexit130, %.loopexit.split-lp131, %.loopexit140, %.loopexit.split-lp141, %.loopexit135, %.loopexit.split-lp136, %bb.u
  %i.fx = phi ptr [ %i.co, %.loopexit.split-lp131 ], [ %.promoted155194, %.loopexit.split-lp136 ], [ %.promoted155194, %.loopexit.split-lp141 ], [ %i.co, %bb.u ], [ %.promoted155194, %.loopexit135 ], [ %.promoted155194, %.loopexit140 ], [ %i.co, %.loopexit130 ], [ %i.co, %.loopexit129 ], [ %i.co, %.loopexit.split-lp ]
  %.pn58.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp133, %.loopexit.split-lp131 ], [ %lpad.loopexit.split-lp138, %.loopexit.split-lp136 ], [ %lpad.loopexit.split-lp143, %.loopexit.split-lp141 ], [ %i.dg, %bb.u ], [ %lpad.loopexit137, %.loopexit135 ], [ %lpad.loopexit142, %.loopexit140 ], [ %lpad.loopexit132, %.loopexit130 ], [ %lpad.loopexit, %.loopexit129 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.am

bb.ak:                                            ; preds = %._crit_edge169
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0120.0171, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fy, %i.g
  br i1 %.not, label %._crit_edge174, label %bb.d

bb.al:                                            ; preds = %._crit_edge169
  %i.fz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.am

bb.am:                                            ; preds = %bb.aj, %bb.al, %bb.e
  %i.ga = phi ptr [ %i.af, %bb.e ], [ %i.fx, %bb.aj ], [ %i.ar, %bb.al ] ; 2 uses
  %.pn58.pn.pn.pn = phi { ptr, i32 } [ %i.at, %bb.e ], [ %.pn58.pn, %bb.aj ], [ %i.fz, %bb.al ] ; 3 uses
  %.452 = extractvalue { ptr, i32 } %.pn58.pn.pn.pn, 1
  %i.gb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #27
  %i.gc = icmp eq i32 %.452, %i.gb
  br i1 %i.gc, label %bb.an, label %._crit_edge195

._crit_edge195:                                   ; preds = %bb.am
  %.pre = load ptr, ptr %10, align 8
  br label %bb.ay

bb.an:                                            ; preds = %bb.am
  %.4 = extractvalue { ptr, i32 } %.pn58.pn.pn.pn, 0
  %i.gd = call ptr @__cxa_begin_catch(ptr %.4) #27 ; 0 uses
  %i.ge = load ptr, ptr %10, align 8              ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8
  invoke void @_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEEN6Assimp3FBX4Util10delete_funIS2_EEET0_T_SF_SE_(ptr %i.ge, ptr %i.gg)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  invoke void @__cxa_rethrow() #31
          to label %bb.bf unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ay unwind label %bb.be

bb.aq:                                            ; preds = %_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6aiBoneSt4lessIS6_ESaISt4pairIS6_S8_EEE5clearEv.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr null, ptr %i.gi, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i32 0, ptr %i.gj, align 8
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.ar:                                            ; preds = %_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6aiBoneSt4lessIS6_ESaISt4pairIS6_S8_EEE5clearEv.exit
  %i.gk = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.gl = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.gm = sub i64 %i.gk, %i.gl                    ; 2 uses
  %i.gn = ashr exact i64 %i.gm, 3                 ; 2 uses
  %i.go = icmp ugt i64 %i.gn, 2305843009213693951
  %i.gp = select i1 %i.go, i64 -1, i64 %i.gm      ; 2 uses
  %i.gq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gp) #30
          to label %bb.as unwind label %bb.ax     ; 8 uses

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.gq, i8 0, i64 %i.gp, i1 false)
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %i.gq, ptr %i.gr, align 8
  %i.gs = trunc i64 %i.gn to i32
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i32 %i.gs, ptr %i.gt, align 8
  %i.gu = sub i64 %i.gk, %i.gl
  %i.gv = add i64 %i.gu, -8                       ; 2 uses
  %i.gw = lshr i64 %i.gv, 3
  %i.gx = add nuw nsw i64 %i.gw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gv, 104
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.as
  %i.gy = add i64 %i.gk, -8
  %i.gz = sub i64 %i.gy, %i.gl
  %i.ha = and i64 %i.gz, -8
  %i.hb = add i64 %i.ha, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.z, i64 %i.hb
  %scevgep308 = getelementptr i8, ptr %i.gq, i64 %i.hb
  %bound0 = icmp ult ptr %i.z, %scevgep308
  %bound1 = icmp ult ptr %i.gq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gx, 4611686018427387900     ; 3 uses
  %i.hc = shl i64 %n.vec, 3                       ; 2 uses
  %i.hd = getelementptr i8, ptr %i.gq, i64 %i.hc
  %i.he = getelementptr i8, ptr %i.z, i64 %i.hc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gq, i64 %i.hf ; 3 uses
  %next.gep309 = getelementptr i8, ptr %i.z, i64 %i.hf ; 3 uses
  %i.hg = getelementptr i8, ptr %next.gep309, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep309, align 8, !alias.scope !175, !noalias !178
  %wide.load310 = load <2 x ptr>, ptr %i.hg, align 8, !alias.scope !175, !noalias !178
  %i.hh = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load311 = load <2 x ptr>, ptr %next.gep, align 8, !alias.scope !178
  %wide.load312 = load <2 x ptr>, ptr %i.hh, align 8, !alias.scope !178
  store <2 x ptr> %wide.load311, ptr %next.gep309, align 8, !alias.scope !175, !noalias !178
  store <2 x ptr> %wide.load312, ptr %i.hg, align 8, !alias.scope !175, !noalias !178
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !alias.scope !178
  store <2 x ptr> %wide.load310, ptr %i.hh, align 8, !alias.scope !178
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hi = icmp eq i64 %index.next, %n.vec
  br i1 %i.hi, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gx, %n.vec
  br i1 %cmp.n, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %bb.as, %middle.block
  %.07.i.ph = phi ptr [ %i.gq, %vector.memcheck ], [ %i.gq, %bb.as ], [ %i.hd, %middle.block ]
  %.sroa.03.06.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %bb.as ], [ %i.he, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.07.i = phi ptr [ %i.hm, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.03.06.i = phi ptr [ %i.hl, %.lr.ph.i ], [ %.sroa.03.06.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.hj = load ptr, ptr %.sroa.03.06.i, align 8
  %i.hk = load ptr, ptr %.07.i, align 8
  store ptr %i.hk, ptr %.sroa.03.06.i, align 8
  store ptr %i.hj, ptr %.07.i, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i, i64 8 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %.not.i94 = icmp eq ptr %i.hl, %i.ab
  br i1 %.not.i94, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i, !llvm.loop !181

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.aq
  %.not.i.i.i95 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.hn = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.z to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.hr) #29
  br label %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit:           ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.hs = load ptr, ptr %9, align 8               ; 3 uses
  %.not.i.i.i96 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i96, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit
  %i.ht = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = ptrtoint ptr %i.hs to i64
  %i.hx = sub i64 %i.hv, %i.hw
  call void @_ZdlPvm(ptr noundef nonnull %i.hs, i64 noundef %i.hx) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.hy = load ptr, ptr %8, align 8               ; 3 uses
  %.not.i.i.i97 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i97, label %_ZNSt6vectorImSaImEED2Ev.exit98, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.hz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = ptrtoint ptr %i.hy to i64
  %i.id = sub i64 %i.ib, %i.ic
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef %i.id) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit98

_ZNSt6vectorImSaImEED2Ev.exit98:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %.not.i.i.i99 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i99, label %_ZNSt6vectorImSaImEED2Ev.exit100, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit98
  %i.ie = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = ptrtoint ptr %i.if to i64
  %i.ih = ptrtoint ptr %i.p to i64
  %i.ii = sub i64 %i.ig, %i.ih
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.ii) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit100

_ZNSt6vectorImSaImEED2Ev.exit100:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit98, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.ax:                                            ; preds = %bb.ar
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge195, %bb.ap, %bb.ax
  %i.ik = phi ptr [ %i.p, %bb.ax ], [ %i.ga, %._crit_edge195 ], [ %i.ga, %bb.ap ]
  %i.il = phi ptr [ %i.z, %bb.ax ], [ %.pre, %._crit_edge195 ], [ %i.ge, %bb.ap ] ; 3 uses
  %.merged63 = phi { ptr, i32 } [ %i.ij, %bb.ax ], [ %.pn58.pn.pn.pn, %._crit_edge195 ], [ %i.gh, %bb.ap ]
  %.not.i.i.i101 = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i101, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.im = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.in = load ptr, ptr %i.im, align 8
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = ptrtoint ptr %i.il to i64
  %i.iq = sub i64 %i.io, %i.ip
  call void @_ZdlPvm(ptr noundef nonnull %i.il, i64 noundef %i.iq) #29
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %.pr = load ptr, ptr %9, align 8                ; 3 uses
  %.not.i.i.i103 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i103, label %_ZNSt6vectorImSaImEED2Ev.exit104thread-pre-split, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ir = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = ptrtoint ptr %.pr to i64
  %i.iv = sub i64 %i.it, %i.iu
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.iv) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit104thread-pre-split

_ZNSt6vectorImSaImEED2Ev.exit104thread-pre-split: ; preds = %bb.bb, %bb.ba
  %.pr229 = load ptr, ptr %8, align 8
  br label %_ZNSt6vectorImSaImEED2Ev.exit104

_ZNSt6vectorImSaImEED2Ev.exit104:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit104thread-pre-split, %.thread
  %i.iw = phi ptr [ %.pr229, %_ZNSt6vectorImSaImEED2Ev.exit104thread-pre-split ], [ null, %.thread ] ; 3 uses
  %.merged228 = phi { ptr, i32 } [ %.merged63, %_ZNSt6vectorImSaImEED2Ev.exit104thread-pre-split ], [ %i.ad, %.thread ]
  %i.ix = phi ptr [ %i.ik, %_ZNSt6vectorImSaImEED2Ev.exit104thread-pre-split ], [ null, %.thread ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %.not.i.i.i105 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i105, label %_ZNSt6vectorImSaImEED2Ev.exit106, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit104
  %i.iy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = ptrtoint ptr %i.iw to i64
  %i.jc = sub i64 %i.ja, %i.jb
  call void @_ZdlPvm(ptr noundef nonnull %i.iw, i64 noundef %i.jc) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit106

_ZNSt6vectorImSaImEED2Ev.exit106:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit104, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %.not.i.i.i107 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i107, label %_ZNSt6vectorImSaImEED2Ev.exit108, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit106
  %i.jd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %i.ix to i64
  %i.jh = sub i64 %i.jf, %i.jg
  call void @_ZdlPvm(ptr noundef nonnull %i.ix, i64 noundef %i.jh) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit108

_ZNSt6vectorImSaImEED2Ev.exit108:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit106, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %.merged228

bb.be:                                            ; preds = %bb.ap
  %i.ji = landingpad { ptr, i32 }
          catch ptr null
end_hunk_2
begin_hunk_3_@_ZN6Assimp3FBX12FBXConverter21ConvertAnimationStackERKNS0_14AnimationStackE:bb.a
  %i.lm = add i64 %i.ll, 1
  store i64 %i.lm, ptr %i.fr, align 8
  br label %bb.bu

_ZNSt8_Rb_treeIPKN6Assimp3FBX18AnimationCurveNodeESt4pairIKS4_PKNS1_14AnimationLayerEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE10_Auto_nodeD2Ev.exit.i.i: ; preds = %.noexc238
  %i.ln = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.kz, i64 noundef 48) #29
  br label %.body

bb.bt:                                            ; preds = %bb.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.kz, i64 noundef 48) #29
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.thread.i.i, %bb.bp
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i231, %bb.bp ], [ %i.kz, %.thread.i.i ], [ %i.ld, %bb.bt ]
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 40
  store ptr %i.gh, ptr %i.lo, align 8
  %i.lp = load ptr, ptr %15, align 8              ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.gc
  br i1 %i.lq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %bb.bu
  %i.lr = load i64, ptr %i.gc, align 8
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.ls) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %.thread313

bb.bv:                                            ; preds = %.noexc.i.i, %.noexc10.i.i.i
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

.loopexit326:                                     ; preds = %_ZNKSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %.critedge.i236, %.critedge.i, %.noexc269
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.bm
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit326, %.loopexit.split-lp, %bb.bg, %_ZNSt8_Rb_treeIPKN6Assimp3FBX18AnimationCurveNodeESt4pairIKS4_PKNS1_14AnimationLayerEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE10_Auto_nodeD2Ev.exit.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ln, %_ZNSt8_Rb_treeIPKN6Assimp3FBX18AnimationCurveNodeESt4pairIKS4_PKNS1_14AnimationLayerEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE10_Auto_nodeD2Ev.exit.i.i ], [ %i.ji, %bb.bg ], [ %lpad.loopexit, %.loopexit326 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.lu = load ptr, ptr %15, align 8              ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.gc
  br i1 %i.lv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %.body
  %i.lw = load i64, ptr %i.gc, align 8
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.lx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.bz

bb.bw:                                            ; preds = %bb.by
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bx:                                            ; preds = %bb.as
  %i.lz = call ptr @__dynamic_cast(ptr nonnull %i.gt, ptr nonnull @_ZTIN6Assimp3FBX6ObjectE, ptr nonnull @_ZTIN6Assimp3FBX17BlendShapeChannelE, i64 0) #27 ; 2 uses
  %.not160 = icmp eq ptr %i.lz, null
  br i1 %.not160, label %.thread313, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN6Assimp3FBX12FBXConverter21ProcessMorphAnimDatasEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_IlP12morphKeyDataSt4lessIlESaISt4pairIKlSA_EEESB_IS8_ESaISD_IKS8_SI_EEEPKNS0_17BlendShapeChannelEPKNS0_18AnimationCurveNodeE(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull %13, ptr noundef nonnull %i.lz, ptr noundef nonnull %i.gr)
          to label %.thread313 unwind label %bb.bw

.thread313:                                       ; preds = %.lr.ph, %bb.bx, %bb.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.0288.0338, i64 8 ; 2 uses
  %.not322 = icmp eq ptr %i.ma, %i.gj
  br i1 %.not322, label %._crit_edge.loopexit, label %.lr.ph

bb.bz:                                            ; preds = %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, %bb.bw
  %.pn161.pn = phi { ptr, i32 } [ %i.ly, %bb.bw ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ], [ %i.lt, %bb.bv ]
  %i.mb = load ptr, ptr %14, align 8              ; 3 uses
  %.not.i.i.i245 = icmp eq ptr %i.mb, null
  br i1 %.not.i.i.i245, label %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EED2Ev.exit246, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mc = load ptr, ptr %i.gf, align 8
  %i.md = ptrtoint ptr %i.mc to i64
  %i.me = ptrtoint ptr %i.mb to i64
  %i.mf = sub i64 %i.md, %i.me
  call void @_ZdlPvm(ptr noundef nonnull %i.mb, i64 noundef %i.mf) #29
  br label %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EED2Ev.exit246

_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EED2Ev.exit246: ; preds = %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.ds

bb.cb:                                            ; preds = %._crit_edge342
  %i.mg = invoke noundef i64 @_ZNK6Assimp3FBX14AnimationStack9LocalStopEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.cc unwind label %bb.ce     ; 3 uses

bb.cc:                                            ; preds = %bb.cb
  %i.mh = or i64 %i.mg, %i.gg
  %.not = icmp eq i64 %i.mh, 0                    ; 3 uses
  %spec.select = select i1 %.not, i64 9223372036854755807, i64 %i.mg
  %spec.select169 = select i1 %.not, i64 -9223372036854755807, i64 %i.gg
  %i.mi = load ptr, ptr %i.fk, align 8            ; 2 uses
  %.not319343 = icmp eq ptr %i.mi, %i.fi
  br i1 %.not319343, label %._crit_edge347.thread, label %.lr.ph346

bb.cd:                                            ; preds = %._crit_edge342
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ce:                                            ; preds = %bb.cb
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %.thread

._crit_edge347:                                   ; preds = %bb.cf
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.pre422 = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  %.pre423 = load ptr, ptr %16, align 8           ; 12 uses
  %i.ml = ptrtoint ptr %.pre422 to i64            ; 3 uses
  %i.mm = ptrtoint ptr %.pre423 to i64            ; 6 uses
  %i.mn = sub i64 %i.ml, %i.mm                    ; 2 uses
  %i.mo = ashr exact i64 %i.mn, 3                 ; 2 uses
  %.not151 = icmp eq ptr %.pre422, %.pre423
  br i1 %.not151, label %._crit_edge347.thread, label %bb.ck

.lr.ph346:                                        ; preds = %bb.cc, %bb.cf
  %.sroa.0281.0344 = phi ptr [ %i.mr, %bb.cf ], [ %i.mi, %bb.cc ] ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.0281.0344, i64 32
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.0281.0344, i64 64
  invoke void @_ZN6Assimp3FBX12FBXConverter22GenerateNodeAnimationsERSt6vectorIP10aiNodeAnimSaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS2_IPKNS0_18AnimationCurveNodeESaISI_EERKSt3mapISI_PKNS0_14AnimationLayerESt4lessISI_ESaISt4pairIKSI_SQ_EEEllRdS10_(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.mp, ptr noundef nonnull align 8 dereferenceable(24) %i.mq, ptr noundef nonnull align 8 dereferenceable(48) %12, i64 noundef %spec.select169, i64 noundef %spec.select, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %.lr.ph346
  %i.mr = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0281.0344) #28 ; 2 uses
  %.not319 = icmp eq ptr %i.mr, %i.fi
  br i1 %.not319, label %._crit_edge347, label %.lr.ph346

bb.cg:                                            ; preds = %.lr.ph346
  %i.ms = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.mt = extractvalue { ptr, i32 } %i.ms, 1
  %i.mu = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #27
  %i.mv = icmp eq i32 %i.mt, %i.mu
  br i1 %i.mv, label %bb.ch, label %._crit_edge425

._crit_edge425:                                   ; preds = %bb.cg
  %.pre426 = load ptr, ptr %16, align 8
  br label %bb.dq

bb.ch:                                            ; preds = %bb.cg
  %i.mw = extractvalue { ptr, i32 } %i.ms, 0
  %i.mx = call ptr @__cxa_begin_catch(ptr %i.mw) #27 ; 0 uses
  %i.my = load ptr, ptr %16, align 8              ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.na = load ptr, ptr %i.mz, align 8
  invoke void @_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEEN6Assimp3FBX4Util10delete_funIS2_EEET0_T_SF_SE_(ptr %i.my, ptr %i.na)
          to label %bb.ci unwind label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  invoke void @__cxa_rethrow() #31
          to label %bb.dv unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.nb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dq unwind label %bb.du

._crit_edge347.thread:                            ; preds = %bb.cc, %._crit_edge347
  %i.nc = phi i64 [ %i.mm, %._crit_edge347 ], [ 0, %bb.cc ] ; 3 uses
  %i.nd = phi ptr [ %.pre423, %._crit_edge347 ], [ null, %bb.cc ] ; 7 uses
  %i.ne = load i64, ptr %i.fw, align 8            ; 2 uses
  %.not152 = icmp eq i64 %i.ne, 0
  br i1 %.not152, label %bb.dc, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.thread

bb.ck:                                            ; preds = %._crit_edge347
  %i.nf = icmp ugt i64 %i.mo, 2305843009213693951
  %i.ng = select i1 %i.nf, i64 -1, i64 %i.mn      ; 2 uses
  %i.nh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ng) #30
          to label %bb.cl unwind label %bb.cm     ; 8 uses

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.nh, i8 0, i64 %i.ng, i1 false)
  store ptr %i.nh, ptr %i.t, align 8
  %i.ni = trunc i64 %i.mo to i32
  store i32 %i.ni, ptr %i.s, align 8
  %i.nj = sub i64 %i.ml, %i.mm
  %i.nk = add i64 %i.nj, -8                       ; 2 uses
  %i.nl = lshr i64 %i.nk, 3
  %i.nm = add nuw nsw i64 %i.nl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.nk, 104
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.cl
  %i.nn = add i64 %i.ml, -8
  %i.no = sub i64 %i.nn, %i.mm
  %i.np = and i64 %i.no, -8
  %i.nq = add i64 %i.np, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %.pre423, i64 %i.nq
  %scevgep527 = getelementptr i8, ptr %i.nh, i64 %i.nq
  %bound0 = icmp ult ptr %.pre423, %scevgep527
  %bound1 = icmp ult ptr %i.nh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.nm, 4611686018427387900     ; 3 uses
  %i.nr = shl i64 %n.vec, 3                       ; 2 uses
  %i.ns = getelementptr i8, ptr %i.nh, i64 %i.nr
  %i.nt = getelementptr i8, ptr %.pre423, i64 %i.nr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.nh, i64 %i.nu ; 3 uses
  %next.gep528 = getelementptr i8, ptr %.pre423, i64 %i.nu ; 3 uses
  %i.nv = getelementptr i8, ptr %next.gep528, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep528, align 8, !alias.scope !316, !noalias !319
  %wide.load529 = load <2 x ptr>, ptr %i.nv, align 8, !alias.scope !316, !noalias !319
  %i.nw = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load530 = load <2 x ptr>, ptr %next.gep, align 8, !alias.scope !319
  %wide.load531 = load <2 x ptr>, ptr %i.nw, align 8, !alias.scope !319
  store <2 x ptr> %wide.load530, ptr %next.gep528, align 8, !alias.scope !316, !noalias !319
  store <2 x ptr> %wide.load531, ptr %i.nv, align 8, !alias.scope !316, !noalias !319
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !alias.scope !319
  store <2 x ptr> %wide.load529, ptr %i.nw, align 8, !alias.scope !319
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nx = icmp eq i64 %index.next, %n.vec
  br i1 %i.nx, label %middle.block, label %vector.body, !llvm.loop !321

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.nm, %n.vec
  br i1 %cmp.n, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %bb.cl, %middle.block
  %.07.i.ph = phi ptr [ %i.nh, %vector.memcheck ], [ %i.nh, %bb.cl ], [ %i.ns, %middle.block ]
  %.sroa.03.06.i.ph = phi ptr [ %.pre423, %vector.memcheck ], [ %.pre423, %bb.cl ], [ %i.nt, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.07.i = phi ptr [ %i.ob, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.03.06.i = phi ptr [ %i.oa, %.lr.ph.i ], [ %.sroa.03.06.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ny = load ptr, ptr %.sroa.03.06.i, align 8
  %i.nz = load ptr, ptr %.07.i, align 8
  store ptr %i.nz, ptr %.sroa.03.06.i, align 8
  store ptr %i.ny, ptr %.07.i, align 8
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i, i64 8 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %.not.i247 = icmp eq ptr %i.oa, %.pre422
  br i1 %.not.i247, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i, !llvm.loop !322

bb.cm:                                            ; preds = %.noexc255, %.noexc254, %bb.dd, %bb.dc, %bb.ck
  %i.oc = phi ptr [ %i.nd, %.noexc255 ], [ %i.nd, %.noexc254 ], [ %i.nd, %bb.dd ], [ %i.nd, %bb.dc ], [ %.pre423, %bb.ck ]
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i, %middle.block
  %.pr = load i64, ptr %i.fw, align 8             ; 2 uses
  %.not154 = icmp eq i64 %.pr, 0
  br i1 %.not154, label %.loopexit325, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.thread

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.thread: ; preds = %._crit_edge347.thread, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.oe = phi i64 [ %i.mm, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ], [ %i.nc, %._crit_edge347.thread ] ; 2 uses
  %i.of = phi ptr [ %.pre423, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ], [ %i.nd, %._crit_edge347.thread ] ; 6 uses
  %i.og = phi i64 [ %.pr, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ], [ %i.ne, %._crit_edge347.thread ] ; 2 uses
  %i.oh = shl i64 %i.og, 3
  %i.oi = and i64 %i.oh, 34359738360
  %i.oj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.oi) #30
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.thread
  %i.ok = trunc i64 %i.og to i32
  store ptr %i.oj, ptr %i.x, align 8
  store i32 %i.ok, ptr %i.w, align 8
  %i.ol = load ptr, ptr %i.fu, align 8            ; 2 uses
  %.not320358 = icmp eq ptr %i.ol, %i.fs
  br i1 %.not320358, label %.loopexit325, label %.lr.ph362

.lr.ph362:                                        ; preds = %bb.cn
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 480
  br label %bb.cp

bb.co:                                            ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.thread
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.cp:                                            ; preds = %.lr.ph362, %._crit_edge357
  %.0139360 = phi i32 [ 0, %.lr.ph362 ], [ %i.qe, %._crit_edge357 ] ; 2 uses
  %.sroa.0277.0359 = phi ptr [ %i.ol, %.lr.ph362 ], [ %i.qh, %._crit_edge357 ] ; 4 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.0277.0359, i64 32
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.0277.0359, i64 64
  %i.oq = load ptr, ptr %i.op, align 8            ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 40
  %i.os = load i64, ptr %i.or, align 8            ; 3 uses
  %i.ot = invoke noalias noundef nonnull dereferenceable(1040) ptr @_Znwm(i64 noundef 1040) #30
          to label %bb.cq unwind label %bb.cu     ; 6 uses

bb.cq:                                            ; preds = %bb.cp
  %i.ou = trunc i64 %i.os to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.ot, i8 0, i64 1040, i1 false)
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.0277.0359, i64 40
  %i.ow = load i64, ptr %i.ov, align 8            ; 4 uses
  %i.ox = icmp ugt i64 %i.ow, 1023
  br i1 %i.ox, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit248, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.oy = trunc nuw nsw i64 %i.ow to i32
  store i32 %i.oy, ptr %i.ot, align 4
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ot, i64 4 ; 2 uses
  %i.pa = load ptr, ptr %i.oo, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.oz, ptr align 1 %i.pa, i64 %i.ow, i1 false)
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.ow
  store i8 0, ptr %i.pb, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit248

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit248: ; preds = %bb.cq, %bb.cr
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ot, i64 1028
  store i32 %i.ou, ptr %i.pc, align 4
  %i.pd = and i64 %i.os, 4294967295               ; 5 uses
  %i.pe = shl nuw nsw i64 %i.pd, 5
  %i.pf = or disjoint i64 %i.pe, 8
  %i.pg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.pf) #30
          to label %bb.cs unwind label %bb.cu     ; 2 uses

bb.cs:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit248
  store i64 %i.pd, ptr %i.pg, align 16
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8 ; 4 uses
  %i.pi = icmp eq i64 %i.pd, 0
  br i1 %i.pi, label %.loopexit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.pj = getelementptr inbounds nuw [32 x i8], ptr %i.ph, i64 %i.pd
  %i.pk = add nuw nsw i64 %i.pd, 576460752303423487
  %i.pl = and i64 %i.pk, 576460752303423487
  %xtraiter = and i64 %i.os, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ct, %.prol.preheader
  %i.pm = phi ptr [ %i.pn, %.prol.preheader ], [ %i.ph, %bb.ct ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.ct ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.pm, i8 0, i64 28, i1 false)
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !323

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ct
  %.unr = phi ptr [ %i.ph, %bb.ct ], [ %i.pn, %.prol.preheader ]
  %i.po = icmp samesign ult i64 %i.pl, 7
  br i1 %i.po, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.pp = phi ptr [ %i.px, %.new ], [ %.unr, %.prol.loopexit ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.pp, i8 0, i64 28, i1 false)
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.pq, i8 0, i64 28, i1 false)
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.pr, i8 0, i64 28, i1 false)
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ps, i8 0, i64 28, i1 false)
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pp, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.pt, i8 0, i64 28, i1 false)
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pp, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.pu, i8 0, i64 28, i1 false)
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pp, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.pv, i8 0, i64 28, i1 false)
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pp, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.pw, i8 0, i64 28, i1 false)
  %i.px = getelementptr inbounds nuw i8, ptr %i.pp, i64 256 ; 2 uses
  %i.py = icmp eq ptr %i.px, %i.pj
  br i1 %i.py, label %.loopexit, label %.new

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %bb.cs
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ot, i64 1032 ; 7 uses
  store ptr %i.ph, ptr %i.pz, align 8
  %i.qa = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  %i.qb = load ptr, ptr %i.qa, align 8            ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.oq, i64 8 ; 2 uses
  %.not321352 = icmp eq ptr %i.qb, %i.qc
  br i1 %.not321352, label %._crit_edge357, label %.lr.ph356

._crit_edge357:                                   ; preds = %._crit_edge351, %.loopexit
  %i.qd = load ptr, ptr %i.x, align 8
  %i.qe = add i32 %.0139360, 1
  %i.qf = zext i32 %.0139360 to i64
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %i.qf
  store ptr %i.ot, ptr %i.qg, align 8
end_hunk_3
