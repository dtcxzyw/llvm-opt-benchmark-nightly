inline.NumInlined: 7594
inline.NumDeleted: 2896
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverter21ConvertGlobalSettingsEv:bb.a
  %i.aak = add i64 %i.aaj, 1
  call void @_ZdlPvm(ptr noundef %i.aah, i64 noundef %i.aak) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334: ; preds = %bb.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332, %bb.dz
  %.pn44 = phi { ptr, i32 } [ %i.aaf, %bb.dz ], [ %i.aag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332 ], [ %i.aag, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.em

bb.eb:                                            ; preds = %.thread28.i205, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196
  %i.aal = landingpad { ptr, i32 }
          cleanup
  %i.aam = load ptr, ptr %11, align 8             ; 2 uses
  %i.aan = icmp eq ptr %i.aam, %i.og
  br i1 %i.aan, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335

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
  %i.w = load ptr, ptr %i.a, align 8              ; 9 uses
  %1 = ptrtoint ptr %i.w to i64
  %i.x = load ptr, ptr %i.c, align 8              ; 4 uses
  %2 = ptrtoint ptr %i.x to i64
  %.not5.i = icmp eq ptr %i.w, %i.x
  br i1 %.not5.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.y = load ptr, ptr %i.k, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8             ; 6 uses
  %3 = ptrtoint ptr %i.x to i64
  %4 = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %3, %4
  %i.ac = add i64 %i.ab, -8                       ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 120
  br i1 %min.iters.check, label %.lr.ph.i.preheader233, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.af = add i64 %2, -8
  %i.ag = sub i64 %i.af, %1
  %i.ah = and i64 %i.ag, -8
  %i.ai = add i64 %i.ah, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ai
  %scevgep77 = getelementptr i8, ptr %i.aa, i64 %i.ai
  %bound0 = icmp ult ptr %i.w, %scevgep77
  %bound1 = icmp ult ptr %i.aa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader233, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aa, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.w, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.am ; 3 uses
  %next.gep78 = getelementptr i8, ptr %i.w, i64 %i.am ; 3 uses
  %i.an = getelementptr i8, ptr %next.gep78, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep78, align 8, !alias.scope !22, !noalias !25
  %wide.load79 = load <2 x ptr>, ptr %i.an, align 8, !alias.scope !22, !noalias !25
  %i.ao = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load80 = load <2 x ptr>, ptr %next.gep, align 8, !alias.scope !25
  %wide.load81 = load <2 x ptr>, ptr %i.ao, align 8, !alias.scope !25
  store <2 x ptr> %wide.load80, ptr %next.gep78, align 8, !alias.scope !22, !noalias !25
  store <2 x ptr> %wide.load81, ptr %i.an, align 8, !alias.scope !22, !noalias !25
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !alias.scope !25
  store <2 x ptr> %wide.load79, ptr %i.ao, align 8, !alias.scope !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i.preheader233

.lr.ph.i.preheader233:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.preheader ], [ %i.ak, %middle.block ]
  %.sroa.03.06.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader233, %.lr.ph.i
  %.07.i = phi ptr [ %i.at, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader233 ] ; 3 uses
  %.sroa.03.06.i = phi ptr [ %i.as, %.lr.ph.i ], [ %.sroa.03.06.i.ph, %.lr.ph.i.preheader233 ] ; 3 uses
  %i.aq = load ptr, ptr %.sroa.03.06.i, align 8
  %i.ar = load ptr, ptr %.07.i, align 8
  store ptr %i.ar, ptr %.sroa.03.06.i, align 8
  store ptr %i.aq, ptr %.07.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %.not.i = icmp eq ptr %i.as, %i.x
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i, !llvm.loop !30

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.b, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.av to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = tail call i64 @llvm.smax.i64(i64 %i.bb, i64 -1) ; 2 uses
  %i.bd = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bc) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bd, i8 0, i64 %i.bc, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  store ptr %i.bd, ptr %i.bg, align 8
  %i.bh = load ptr, ptr %i.aw, align 8
  %i.bi = load ptr, ptr %i.au, align 8
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = lshr exact i64 %i.bl, 3
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = load ptr, ptr %i.be, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store i32 %i.bn, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.au, align 8            ; 9 uses
  %5 = ptrtoint ptr %i.bq to i64
  %i.br = load ptr, ptr %i.aw, align 8            ; 4 uses
  %6 = ptrtoint ptr %i.br to i64
  %.not5.i14 = icmp eq ptr %i.bq, %i.br
  br i1 %.not5.i14, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i15.preheader

.lr.ph.i15.preheader:                             ; preds = %bb.c
  %i.bs = load ptr, ptr %i.be, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8            ; 6 uses
  %7 = ptrtoint ptr %i.br to i64
  %8 = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %7, %8
  %i.bw = add i64 %i.bv, -8                       ; 2 uses
  %i.bx = lshr i64 %i.bw, 3
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check90 = icmp ult i64 %i.bw, 120
  br i1 %min.iters.check90, label %.lr.ph.i15.preheader232, label %vector.memcheck83

vector.memcheck83:                                ; preds = %.lr.ph.i15.preheader
  %i.bz = add i64 %6, -8
  %i.ca = sub i64 %i.bz, %5
  %i.cb = and i64 %i.ca, -8
  %i.cc = add i64 %i.cb, 8                        ; 2 uses
  %scevgep84 = getelementptr i8, ptr %i.bq, i64 %i.cc
  %scevgep85 = getelementptr i8, ptr %i.bu, i64 %i.cc
  %bound086 = icmp ult ptr %i.bq, %scevgep85
  %bound187 = icmp ult ptr %i.bu, %scevgep84
  %found.conflict88 = and i1 %bound086, %bound187
  br i1 %found.conflict88, label %.lr.ph.i15.preheader232, label %vector.ph91

vector.ph91:                                      ; preds = %vector.memcheck83
  %n.vec93 = and i64 %i.by, 4611686018427387900   ; 3 uses
  %i.cd = shl i64 %n.vec93, 3                     ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bu, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.bq, i64 %i.cd
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph91
  %index95 = phi i64 [ 0, %vector.ph91 ], [ %index.next102, %vector.body94 ] ; 2 uses
  %i.cg = shl i64 %index95, 3                     ; 2 uses
  %next.gep96 = getelementptr i8, ptr %i.bu, i64 %i.cg ; 3 uses
  %next.gep97 = getelementptr i8, ptr %i.bq, i64 %i.cg ; 3 uses
  %i.ch = getelementptr i8, ptr %next.gep97, i64 16 ; 2 uses
  %wide.load98 = load <2 x ptr>, ptr %next.gep97, align 8, !alias.scope !31, !noalias !34
  %wide.load99 = load <2 x ptr>, ptr %i.ch, align 8, !alias.scope !31, !noalias !34
  %i.ci = getelementptr i8, ptr %next.gep96, i64 16 ; 2 uses
  %wide.load100 = load <2 x ptr>, ptr %next.gep96, align 8, !alias.scope !34
  %wide.load101 = load <2 x ptr>, ptr %i.ci, align 8, !alias.scope !34
  store <2 x ptr> %wide.load100, ptr %next.gep97, align 8, !alias.scope !31, !noalias !34
  store <2 x ptr> %wide.load101, ptr %i.ch, align 8, !alias.scope !31, !noalias !34
  store <2 x ptr> %wide.load98, ptr %next.gep96, align 8, !alias.scope !34
  store <2 x ptr> %wide.load99, ptr %i.ci, align 8, !alias.scope !34
  %index.next102 = add nuw i64 %index95, 4        ; 2 uses
  %i.cj = icmp eq i64 %index.next102, %n.vec93
  br i1 %i.cj, label %middle.block103, label %vector.body94, !llvm.loop !36

middle.block103:                                  ; preds = %vector.body94
  %cmp.n104 = icmp eq i64 %i.by, %n.vec93
  br i1 %cmp.n104, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i15.preheader232

.lr.ph.i15.preheader232:                          ; preds = %vector.memcheck83, %.lr.ph.i15.preheader, %middle.block103
  %.07.i16.ph = phi ptr [ %i.bu, %vector.memcheck83 ], [ %i.bu, %.lr.ph.i15.preheader ], [ %i.ce, %middle.block103 ]
  %.sroa.03.06.i17.ph = phi ptr [ %i.bq, %vector.memcheck83 ], [ %i.bq, %.lr.ph.i15.preheader ], [ %i.cf, %middle.block103 ]
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.lr.ph.i15.preheader232, %.lr.ph.i15
  %.07.i16 = phi ptr [ %i.cn, %.lr.ph.i15 ], [ %.07.i16.ph, %.lr.ph.i15.preheader232 ] ; 3 uses
  %.sroa.03.06.i17 = phi ptr [ %i.cm, %.lr.ph.i15 ], [ %.sroa.03.06.i17.ph, %.lr.ph.i15.preheader232 ] ; 3 uses
  %i.ck = load ptr, ptr %.sroa.03.06.i17, align 8
  %i.cl = load ptr, ptr %.07.i16, align 8
  store ptr %i.cl, ptr %.sroa.03.06.i17, align 8
  store ptr %i.ck, ptr %.07.i16, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i17, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.07.i16, i64 8
  %.not.i18 = icmp eq ptr %i.cm, %i.br
  br i1 %.not.i18, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i15, !llvm.loop !37

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i15, %middle.block103, %bb.c, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.cs = icmp eq ptr %i.cp, %i.cr
  br i1 %i.cs, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cp to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = tail call i64 @llvm.smax.i64(i64 %i.cv, i64 -1) ; 2 uses
  %i.cx = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cw) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cx, i8 0, i64 %i.cw, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  store ptr %i.cx, ptr %i.da, align 8
  %i.db = load ptr, ptr %i.cq, align 8
  %i.dc = load ptr, ptr %i.co, align 8
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = lshr exact i64 %i.df, 3
  %i.dh = trunc i64 %i.dg to i32
  %i.di = load ptr, ptr %i.cy, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  store i32 %i.dh, ptr %i.dj, align 8
  %i.dk = load ptr, ptr %i.co, align 8            ; 9 uses
  %9 = ptrtoint ptr %i.dk to i64
  %i.dl = load ptr, ptr %i.cq, align 8            ; 4 uses
  %10 = ptrtoint ptr %i.dl to i64
  %.not5.i20 = icmp eq ptr %i.dk, %i.dl
  br i1 %.not5.i20, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i21.preheader

.lr.ph.i21.preheader:                             ; preds = %bb.d
  %i.dm = load ptr, ptr %i.cy, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %i.do = load ptr, ptr %i.dn, align 8            ; 6 uses
  %11 = ptrtoint ptr %i.dl to i64
  %12 = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %11, %12
  %i.dq = add i64 %i.dp, -8                       ; 2 uses
  %i.dr = lshr i64 %i.dq, 3
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %min.iters.check114 = icmp ult i64 %i.dq, 120
  br i1 %min.iters.check114, label %.lr.ph.i21.preheader231, label %vector.memcheck107

vector.memcheck107:                               ; preds = %.lr.ph.i21.preheader
  %i.dt = add i64 %10, -8
  %i.du = sub i64 %i.dt, %9
  %i.dv = and i64 %i.du, -8
  %i.dw = add i64 %i.dv, 8                        ; 2 uses
  %scevgep108 = getelementptr i8, ptr %i.dk, i64 %i.dw
  %scevgep109 = getelementptr i8, ptr %i.do, i64 %i.dw
  %bound0110 = icmp ult ptr %i.dk, %scevgep109
  %bound1111 = icmp ult ptr %i.do, %scevgep108
  %found.conflict112 = and i1 %bound0110, %bound1111
  br i1 %found.conflict112, label %.lr.ph.i21.preheader231, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck107
  %n.vec117 = and i64 %i.ds, 4611686018427387900  ; 3 uses
  %i.dx = shl i64 %n.vec117, 3                    ; 2 uses
  %i.dy = getelementptr i8, ptr %i.do, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.dk, i64 %i.dx
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph115
  %index119 = phi i64 [ 0, %vector.ph115 ], [ %index.next126, %vector.body118 ] ; 2 uses
  %i.ea = shl i64 %index119, 3                    ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.do, i64 %i.ea ; 3 uses
  %next.gep121 = getelementptr i8, ptr %i.dk, i64 %i.ea ; 3 uses
  %i.eb = getelementptr i8, ptr %next.gep121, i64 16 ; 2 uses
  %wide.load122 = load <2 x ptr>, ptr %next.gep121, align 8, !alias.scope !38, !noalias !41
  %wide.load123 = load <2 x ptr>, ptr %i.eb, align 8, !alias.scope !38, !noalias !41
  %i.ec = getelementptr i8, ptr %next.gep120, i64 16 ; 2 uses
  %wide.load124 = load <2 x ptr>, ptr %next.gep120, align 8, !alias.scope !41
  %wide.load125 = load <2 x ptr>, ptr %i.ec, align 8, !alias.scope !41
  store <2 x ptr> %wide.load124, ptr %next.gep121, align 8, !alias.scope !38, !noalias !41
  store <2 x ptr> %wide.load125, ptr %i.eb, align 8, !alias.scope !38, !noalias !41
  store <2 x ptr> %wide.load122, ptr %next.gep120, align 8, !alias.scope !41
  store <2 x ptr> %wide.load123, ptr %i.ec, align 8, !alias.scope !41
  %index.next126 = add nuw i64 %index119, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next126, %n.vec117
  br i1 %i.ed, label %middle.block127, label %vector.body118, !llvm.loop !43

middle.block127:                                  ; preds = %vector.body118
  %cmp.n128 = icmp eq i64 %i.ds, %n.vec117
  br i1 %cmp.n128, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i21.preheader231

.lr.ph.i21.preheader231:                          ; preds = %vector.memcheck107, %.lr.ph.i21.preheader, %middle.block127
  %.07.i22.ph = phi ptr [ %i.do, %vector.memcheck107 ], [ %i.do, %.lr.ph.i21.preheader ], [ %i.dy, %middle.block127 ]
  %.sroa.03.06.i23.ph = phi ptr [ %i.dk, %vector.memcheck107 ], [ %i.dk, %.lr.ph.i21.preheader ], [ %i.dz, %middle.block127 ]
  br label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.preheader231, %.lr.ph.i21
  %.07.i22 = phi ptr [ %i.eh, %.lr.ph.i21 ], [ %.07.i22.ph, %.lr.ph.i21.preheader231 ] ; 3 uses
  %.sroa.03.06.i23 = phi ptr [ %i.eg, %.lr.ph.i21 ], [ %.sroa.03.06.i23.ph, %.lr.ph.i21.preheader231 ] ; 3 uses
  %i.ee = load ptr, ptr %.sroa.03.06.i23, align 8
  %i.ef = load ptr, ptr %.07.i22, align 8
  store ptr %i.ef, ptr %.sroa.03.06.i23, align 8
  store ptr %i.ee, ptr %.07.i22, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i23, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.07.i22, i64 8
  %.not.i24 = icmp eq ptr %i.eg, %i.dl
  br i1 %.not.i24, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i21, !llvm.loop !44

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i21, %middle.block127, %bb.d, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ej = load ptr, ptr %i.ei, align 8            ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %i.em = icmp eq ptr %i.ej, %i.el
  br i1 %i.em, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.ej to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = tail call i64 @llvm.smax.i64(i64 %i.ep, i64 -1) ; 2 uses
  %i.er = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eq) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.er, i8 0, i64 %i.eq, i1 false)
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 88
  store ptr %i.er, ptr %i.eu, align 8
  %i.ev = load ptr, ptr %i.ek, align 8
  %i.ew = load ptr, ptr %i.ei, align 8
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = lshr exact i64 %i.ez, 3
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = load ptr, ptr %i.es, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 80
  store i32 %i.fb, ptr %i.fd, align 8
  %i.fe = load ptr, ptr %i.ei, align 8            ; 9 uses
  %13 = ptrtoint ptr %i.fe to i64
  %i.ff = load ptr, ptr %i.ek, align 8            ; 4 uses
  %14 = ptrtoint ptr %i.ff to i64
  %.not5.i26 = icmp eq ptr %i.fe, %i.ff
  br i1 %.not5.i26, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i27.preheader

.lr.ph.i27.preheader:                             ; preds = %bb.e
  %i.fg = load ptr, ptr %i.es, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 88
  %i.fi = load ptr, ptr %i.fh, align 8            ; 6 uses
  %15 = ptrtoint ptr %i.ff to i64
  %16 = ptrtoint ptr %i.fe to i64
  %i.fj = sub i64 %15, %16
  %i.fk = add i64 %i.fj, -8                       ; 2 uses
  %i.fl = lshr i64 %i.fk, 3
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %min.iters.check138 = icmp ult i64 %i.fk, 120
  br i1 %min.iters.check138, label %.lr.ph.i27.preheader230, label %vector.memcheck131

vector.memcheck131:                               ; preds = %.lr.ph.i27.preheader
  %i.fn = add i64 %14, -8
  %i.fo = sub i64 %i.fn, %13
  %i.fp = and i64 %i.fo, -8
  %i.fq = add i64 %i.fp, 8                        ; 2 uses
  %scevgep132 = getelementptr i8, ptr %i.fe, i64 %i.fq
  %scevgep133 = getelementptr i8, ptr %i.fi, i64 %i.fq
  %bound0134 = icmp ult ptr %i.fe, %scevgep133
  %bound1135 = icmp ult ptr %i.fi, %scevgep132
  %found.conflict136 = and i1 %bound0134, %bound1135
  br i1 %found.conflict136, label %.lr.ph.i27.preheader230, label %vector.ph139

vector.ph139:                                     ; preds = %vector.memcheck131
  %n.vec141 = and i64 %i.fm, 4611686018427387900  ; 3 uses
  %i.fr = shl i64 %n.vec141, 3                    ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fi, i64 %i.fr
  %i.ft = getelementptr i8, ptr %i.fe, i64 %i.fr
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph139
  %index143 = phi i64 [ 0, %vector.ph139 ], [ %index.next150, %vector.body142 ] ; 2 uses
  %i.fu = shl i64 %index143, 3                    ; 2 uses
  %next.gep144 = getelementptr i8, ptr %i.fi, i64 %i.fu ; 3 uses
  %next.gep145 = getelementptr i8, ptr %i.fe, i64 %i.fu ; 3 uses
  %i.fv = getelementptr i8, ptr %next.gep145, i64 16 ; 2 uses
  %wide.load146 = load <2 x ptr>, ptr %next.gep145, align 8, !alias.scope !45, !noalias !48
  %wide.load147 = load <2 x ptr>, ptr %i.fv, align 8, !alias.scope !45, !noalias !48
  %i.fw = getelementptr i8, ptr %next.gep144, i64 16 ; 2 uses
  %wide.load148 = load <2 x ptr>, ptr %next.gep144, align 8, !alias.scope !48
  %wide.load149 = load <2 x ptr>, ptr %i.fw, align 8, !alias.scope !48
  store <2 x ptr> %wide.load148, ptr %next.gep145, align 8, !alias.scope !45, !noalias !48
  store <2 x ptr> %wide.load149, ptr %i.fv, align 8, !alias.scope !45, !noalias !48
  store <2 x ptr> %wide.load146, ptr %next.gep144, align 8, !alias.scope !48
  store <2 x ptr> %wide.load147, ptr %i.fw, align 8, !alias.scope !48
  %index.next150 = add nuw i64 %index143, 4       ; 2 uses
  %i.fx = icmp eq i64 %index.next150, %n.vec141
  br i1 %i.fx, label %middle.block151, label %vector.body142, !llvm.loop !50

middle.block151:                                  ; preds = %vector.body142
  %cmp.n152 = icmp eq i64 %i.fm, %n.vec141
  br i1 %cmp.n152, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i27.preheader230

.lr.ph.i27.preheader230:                          ; preds = %vector.memcheck131, %.lr.ph.i27.preheader, %middle.block151
  %.07.i28.ph = phi ptr [ %i.fi, %vector.memcheck131 ], [ %i.fi, %.lr.ph.i27.preheader ], [ %i.fs, %middle.block151 ]
  %.sroa.03.06.i29.ph = phi ptr [ %i.fe, %vector.memcheck131 ], [ %i.fe, %.lr.ph.i27.preheader ], [ %i.ft, %middle.block151 ]
  br label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph.i27.preheader230, %.lr.ph.i27
  %.07.i28 = phi ptr [ %i.gb, %.lr.ph.i27 ], [ %.07.i28.ph, %.lr.ph.i27.preheader230 ] ; 3 uses
  %.sroa.03.06.i29 = phi ptr [ %i.ga, %.lr.ph.i27 ], [ %.sroa.03.06.i29.ph, %.lr.ph.i27.preheader230 ] ; 3 uses
  %i.fy = load ptr, ptr %.sroa.03.06.i29, align 8
  %i.fz = load ptr, ptr %.07.i28, align 8
  store ptr %i.fz, ptr %.sroa.03.06.i29, align 8
  store ptr %i.fy, ptr %.07.i28, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i29, i64 8 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.07.i28, i64 8
  %.not.i30 = icmp eq ptr %i.ga, %i.ff
  br i1 %.not.i30, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i27, !llvm.loop !51

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i27, %middle.block151, %bb.e, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.gd = load ptr, ptr %i.gc, align 8            ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.gf = load ptr, ptr %i.ge, align 8            ; 2 uses
  %i.gg = icmp eq ptr %i.gd, %i.gf
  br i1 %i.gg, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gd to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = tail call i64 @llvm.smax.i64(i64 %i.gj, i64 -1) ; 2 uses
  %i.gl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gk) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.gl, i8 0, i64 %i.gk, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 104
  store ptr %i.gl, ptr %i.go, align 8
  %i.gp = load ptr, ptr %i.ge, align 8
  %i.gq = load ptr, ptr %i.gc, align 8
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = lshr exact i64 %i.gt, 3
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = load ptr, ptr %i.gm, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 96
  store i32 %i.gv, ptr %i.gx, align 8
  %i.gy = load ptr, ptr %i.gc, align 8            ; 9 uses
  %17 = ptrtoint ptr %i.gy to i64
  %i.gz = load ptr, ptr %i.ge, align 8            ; 4 uses
  %18 = ptrtoint ptr %i.gz to i64
  %.not5.i32 = icmp eq ptr %i.gy, %i.gz
  br i1 %.not5.i32, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i33.preheader

.lr.ph.i33.preheader:                             ; preds = %bb.f
  %i.ha = load ptr, ptr %i.gm, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 104
  %i.hc = load ptr, ptr %i.hb, align 8            ; 6 uses
  %19 = ptrtoint ptr %i.gz to i64
  %20 = ptrtoint ptr %i.gy to i64
  %i.hd = sub i64 %19, %20
  %i.he = add i64 %i.hd, -8                       ; 2 uses
  %i.hf = lshr i64 %i.he, 3
  %i.hg = add nuw nsw i64 %i.hf, 1                ; 2 uses
  %min.iters.check162 = icmp ult i64 %i.he, 120
  br i1 %min.iters.check162, label %.lr.ph.i33.preheader229, label %vector.memcheck155

vector.memcheck155:                               ; preds = %.lr.ph.i33.preheader
  %i.hh = add i64 %18, -8
  %i.hi = sub i64 %i.hh, %17
  %i.hj = and i64 %i.hi, -8
  %i.hk = add i64 %i.hj, 8                        ; 2 uses
  %scevgep156 = getelementptr i8, ptr %i.gy, i64 %i.hk
  %scevgep157 = getelementptr i8, ptr %i.hc, i64 %i.hk
  %bound0158 = icmp ult ptr %i.gy, %scevgep157
  %bound1159 = icmp ult ptr %i.hc, %scevgep156
  %found.conflict160 = and i1 %bound0158, %bound1159
  br i1 %found.conflict160, label %.lr.ph.i33.preheader229, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck155
  %n.vec165 = and i64 %i.hg, 4611686018427387900  ; 3 uses
  %i.hl = shl i64 %n.vec165, 3                    ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hc, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.gy, i64 %i.hl
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph163
  %index167 = phi i64 [ 0, %vector.ph163 ], [ %index.next174, %vector.body166 ] ; 2 uses
  %i.ho = shl i64 %index167, 3                    ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.hc, i64 %i.ho ; 3 uses
  %next.gep169 = getelementptr i8, ptr %i.gy, i64 %i.ho ; 3 uses
  %i.hp = getelementptr i8, ptr %next.gep169, i64 16 ; 2 uses
  %wide.load170 = load <2 x ptr>, ptr %next.gep169, align 8, !alias.scope !52, !noalias !55
  %wide.load171 = load <2 x ptr>, ptr %i.hp, align 8, !alias.scope !52, !noalias !55
  %i.hq = getelementptr i8, ptr %next.gep168, i64 16 ; 2 uses
  %wide.load172 = load <2 x ptr>, ptr %next.gep168, align 8, !alias.scope !55
  %wide.load173 = load <2 x ptr>, ptr %i.hq, align 8, !alias.scope !55
  store <2 x ptr> %wide.load172, ptr %next.gep169, align 8, !alias.scope !52, !noalias !55
  store <2 x ptr> %wide.load173, ptr %i.hp, align 8, !alias.scope !52, !noalias !55
  store <2 x ptr> %wide.load170, ptr %next.gep168, align 8, !alias.scope !55
  store <2 x ptr> %wide.load171, ptr %i.hq, align 8, !alias.scope !55
  %index.next174 = add nuw i64 %index167, 4       ; 2 uses
  %i.hr = icmp eq i64 %index.next174, %n.vec165
  br i1 %i.hr, label %middle.block175, label %vector.body166, !llvm.loop !57

middle.block175:                                  ; preds = %vector.body166
  %cmp.n176 = icmp eq i64 %i.hg, %n.vec165
  br i1 %cmp.n176, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i33.preheader229

.lr.ph.i33.preheader229:                          ; preds = %vector.memcheck155, %.lr.ph.i33.preheader, %middle.block175
  %.07.i34.ph = phi ptr [ %i.hc, %vector.memcheck155 ], [ %i.hc, %.lr.ph.i33.preheader ], [ %i.hm, %middle.block175 ]
  %.sroa.03.06.i35.ph = phi ptr [ %i.gy, %vector.memcheck155 ], [ %i.gy, %.lr.ph.i33.preheader ], [ %i.hn, %middle.block175 ]
  br label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.lr.ph.i33.preheader229, %.lr.ph.i33
  %.07.i34 = phi ptr [ %i.hv, %.lr.ph.i33 ], [ %.07.i34.ph, %.lr.ph.i33.preheader229 ] ; 3 uses
  %.sroa.03.06.i35 = phi ptr [ %i.hu, %.lr.ph.i33 ], [ %.sroa.03.06.i35.ph, %.lr.ph.i33.preheader229 ] ; 3 uses
  %i.hs = load ptr, ptr %.sroa.03.06.i35, align 8
  %i.ht = load ptr, ptr %.07.i34, align 8
  store ptr %i.ht, ptr %.sroa.03.06.i35, align 8
  store ptr %i.hs, ptr %.07.i34, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i35, i64 8 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.07.i34, i64 8
  %.not.i36 = icmp eq ptr %i.hu, %i.gz
  br i1 %.not.i36, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i33, !llvm.loop !58

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i33, %middle.block175, %bb.f, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.hx = load ptr, ptr %i.hw, align 8            ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.hz = load ptr, ptr %i.hy, align 8            ; 2 uses
  %i.ia = icmp eq ptr %i.hx, %i.hz
  br i1 %i.ia, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = ptrtoint ptr %i.hx to i64
  %i.id = sub i64 %i.ib, %i.ic
  %i.ie = tail call i64 @llvm.smax.i64(i64 %i.id, i64 -1) ; 2 uses
  %i.if = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ie) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.if, i8 0, i64 %i.ie, i1 false)
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 72
  store ptr %i.if, ptr %i.ii, align 8
  %i.ij = load ptr, ptr %i.hy, align 8
  %i.ik = load ptr, ptr %i.hw, align 8
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = lshr exact i64 %i.in, 3
  %i.ip = trunc i64 %i.io to i32
  %i.iq = load ptr, ptr %i.ig, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 64
  store i32 %i.ip, ptr %i.ir, align 8
  %i.is = load ptr, ptr %i.hw, align 8            ; 9 uses
  %21 = ptrtoint ptr %i.is to i64
  %i.it = load ptr, ptr %i.hy, align 8            ; 4 uses
  %22 = ptrtoint ptr %i.it to i64
  %.not5.i38 = icmp eq ptr %i.is, %i.it
  br i1 %.not5.i38, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i39.preheader

.lr.ph.i39.preheader:                             ; preds = %bb.g
  %i.iu = load ptr, ptr %i.ig, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 72
  %i.iw = load ptr, ptr %i.iv, align 8            ; 6 uses
  %23 = ptrtoint ptr %i.it to i64
  %24 = ptrtoint ptr %i.is to i64
  %i.ix = sub i64 %23, %24
  %i.iy = add i64 %i.ix, -8                       ; 2 uses
  %i.iz = lshr i64 %i.iy, 3
  %i.ja = add nuw nsw i64 %i.iz, 1                ; 2 uses
  %min.iters.check186 = icmp ult i64 %i.iy, 120
  br i1 %min.iters.check186, label %.lr.ph.i39.preheader228, label %vector.memcheck179

vector.memcheck179:                               ; preds = %.lr.ph.i39.preheader
  %i.jb = add i64 %22, -8
  %i.jc = sub i64 %i.jb, %21
  %i.jd = and i64 %i.jc, -8
  %i.je = add i64 %i.jd, 8                        ; 2 uses
  %scevgep180 = getelementptr i8, ptr %i.is, i64 %i.je
  %scevgep181 = getelementptr i8, ptr %i.iw, i64 %i.je
  %bound0182 = icmp ult ptr %i.is, %scevgep181
  %bound1183 = icmp ult ptr %i.iw, %scevgep180
  %found.conflict184 = and i1 %bound0182, %bound1183
  br i1 %found.conflict184, label %.lr.ph.i39.preheader228, label %vector.ph187

vector.ph187:                                     ; preds = %vector.memcheck179
  %n.vec189 = and i64 %i.ja, 4611686018427387900  ; 3 uses
  %i.jf = shl i64 %n.vec189, 3                    ; 2 uses
  %i.jg = getelementptr i8, ptr %i.iw, i64 %i.jf
  %i.jh = getelementptr i8, ptr %i.is, i64 %i.jf
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph187
  %index191 = phi i64 [ 0, %vector.ph187 ], [ %index.next198, %vector.body190 ] ; 2 uses
  %i.ji = shl i64 %index191, 3                    ; 2 uses
  %next.gep192 = getelementptr i8, ptr %i.iw, i64 %i.ji ; 3 uses
  %next.gep193 = getelementptr i8, ptr %i.is, i64 %i.ji ; 3 uses
  %i.jj = getelementptr i8, ptr %next.gep193, i64 16 ; 2 uses
  %wide.load194 = load <2 x ptr>, ptr %next.gep193, align 8, !alias.scope !59, !noalias !62
  %wide.load195 = load <2 x ptr>, ptr %i.jj, align 8, !alias.scope !59, !noalias !62
  %i.jk = getelementptr i8, ptr %next.gep192, i64 16 ; 2 uses
  %wide.load196 = load <2 x ptr>, ptr %next.gep192, align 8, !alias.scope !62
  %wide.load197 = load <2 x ptr>, ptr %i.jk, align 8, !alias.scope !62
  store <2 x ptr> %wide.load196, ptr %next.gep193, align 8, !alias.scope !59, !noalias !62
  store <2 x ptr> %wide.load197, ptr %i.jj, align 8, !alias.scope !59, !noalias !62
  store <2 x ptr> %wide.load194, ptr %next.gep192, align 8, !alias.scope !62
  store <2 x ptr> %wide.load195, ptr %i.jk, align 8, !alias.scope !62
  %index.next198 = add nuw i64 %index191, 4       ; 2 uses
  %i.jl = icmp eq i64 %index.next198, %n.vec189
  br i1 %i.jl, label %middle.block199, label %vector.body190, !llvm.loop !64

middle.block199:                                  ; preds = %vector.body190
  %cmp.n200 = icmp eq i64 %i.ja, %n.vec189
  br i1 %cmp.n200, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i39.preheader228

.lr.ph.i39.preheader228:                          ; preds = %vector.memcheck179, %.lr.ph.i39.preheader, %middle.block199
  %.07.i40.ph = phi ptr [ %i.iw, %vector.memcheck179 ], [ %i.iw, %.lr.ph.i39.preheader ], [ %i.jg, %middle.block199 ]
  %.sroa.03.06.i41.ph = phi ptr [ %i.is, %vector.memcheck179 ], [ %i.is, %.lr.ph.i39.preheader ], [ %i.jh, %middle.block199 ]
  br label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %.lr.ph.i39.preheader228, %.lr.ph.i39
  %.07.i40 = phi ptr [ %i.jp, %.lr.ph.i39 ], [ %.07.i40.ph, %.lr.ph.i39.preheader228 ] ; 3 uses
  %.sroa.03.06.i41 = phi ptr [ %i.jo, %.lr.ph.i39 ], [ %.sroa.03.06.i41.ph, %.lr.ph.i39.preheader228 ] ; 3 uses
  %i.jm = load ptr, ptr %.sroa.03.06.i41, align 8
  %i.jn = load ptr, ptr %.07.i40, align 8
  store ptr %i.jn, ptr %.sroa.03.06.i41, align 8
  store ptr %i.jm, ptr %.07.i40, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i41, i64 8 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.07.i40, i64 8
  %.not.i42 = icmp eq ptr %i.jo, %i.it
  br i1 %.not.i42, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i39, !llvm.loop !65

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i39, %middle.block199, %bb.g, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.jr = load ptr, ptr %i.jq, align 8            ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.jt = load ptr, ptr %i.js, align 8            ; 2 uses
  %i.ju = icmp eq ptr %i.jr, %i.jt
  br i1 %i.ju, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiSkeletonSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = ptrtoint ptr %i.jr to i64
  %i.jx = sub i64 %i.jv, %i.jw
  %i.jy = tail call i64 @llvm.smax.i64(i64 %i.jx, i64 -1)
  %i.jz = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.jy) #30
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 1152
  store ptr %i.jz, ptr %i.kc, align 8
  %i.kd = load ptr, ptr %i.js, align 8
  %i.ke = load ptr, ptr %i.jq, align 8
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = sub i64 %i.kf, %i.kg
  %i.ki = lshr exact i64 %i.kh, 3
  %i.kj = trunc i64 %i.ki to i32
  %i.kk = load ptr, ptr %i.ka, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 1148
  store i32 %i.kj, ptr %i.kl, align 4
  %i.km = load ptr, ptr %i.jq, align 8            ; 9 uses
  %25 = ptrtoint ptr %i.km to i64
  %i.kn = load ptr, ptr %i.js, align 8            ; 4 uses
  %26 = ptrtoint ptr %i.kn to i64
  %.not5.i44 = icmp eq ptr %i.km, %i.kn
  br i1 %.not5.i44, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiSkeletonSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i45.preheader

.lr.ph.i45.preheader:                             ; preds = %bb.h
  %i.ko = load ptr, ptr %i.ka, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 1152
  %i.kq = load ptr, ptr %i.kp, align 8            ; 6 uses
  %27 = ptrtoint ptr %i.kn to i64
  %28 = ptrtoint ptr %i.km to i64
  %i.kr = sub i64 %27, %28
  %i.ks = add i64 %i.kr, -8                       ; 2 uses
  %i.kt = lshr i64 %i.ks, 3
  %i.ku = add nuw nsw i64 %i.kt, 1                ; 2 uses
  %min.iters.check210 = icmp ult i64 %i.ks, 120
  br i1 %min.iters.check210, label %.lr.ph.i45.preheader227, label %vector.memcheck203

vector.memcheck203:                               ; preds = %.lr.ph.i45.preheader
  %i.kv = add i64 %26, -8
  %i.kw = sub i64 %i.kv, %25
  %i.kx = and i64 %i.kw, -8
  %i.ky = add i64 %i.kx, 8                        ; 2 uses
  %scevgep204 = getelementptr i8, ptr %i.km, i64 %i.ky
  %scevgep205 = getelementptr i8, ptr %i.kq, i64 %i.ky
  %bound0206 = icmp ult ptr %i.km, %scevgep205
  %bound1207 = icmp ult ptr %i.kq, %scevgep204
  %found.conflict208 = and i1 %bound0206, %bound1207
  br i1 %found.conflict208, label %.lr.ph.i45.preheader227, label %vector.ph211

vector.ph211:                                     ; preds = %vector.memcheck203
  %n.vec213 = and i64 %i.ku, 4611686018427387900  ; 3 uses
  %i.kz = shl i64 %n.vec213, 3                    ; 2 uses
  %i.la = getelementptr i8, ptr %i.kq, i64 %i.kz
  %i.lb = getelementptr i8, ptr %i.km, i64 %i.kz
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph211
  %index215 = phi i64 [ 0, %vector.ph211 ], [ %index.next222, %vector.body214 ] ; 2 uses
  %i.lc = shl i64 %index215, 3                    ; 2 uses
  %next.gep216 = getelementptr i8, ptr %i.kq, i64 %i.lc ; 3 uses
  %next.gep217 = getelementptr i8, ptr %i.km, i64 %i.lc ; 3 uses
  %i.ld = getelementptr i8, ptr %next.gep217, i64 16 ; 2 uses
  %wide.load218 = load <2 x ptr>, ptr %next.gep217, align 8, !alias.scope !66, !noalias !69
  %wide.load219 = load <2 x ptr>, ptr %i.ld, align 8, !alias.scope !66, !noalias !69
  %i.le = getelementptr i8, ptr %next.gep216, i64 16 ; 2 uses
  %wide.load220 = load <2 x ptr>, ptr %next.gep216, align 8, !alias.scope !69
  %wide.load221 = load <2 x ptr>, ptr %i.le, align 8, !alias.scope !69
  store <2 x ptr> %wide.load220, ptr %next.gep217, align 8, !alias.scope !66, !noalias !69
  store <2 x ptr> %wide.load221, ptr %i.ld, align 8, !alias.scope !66, !noalias !69
  store <2 x ptr> %wide.load218, ptr %next.gep216, align 8, !alias.scope !69
  store <2 x ptr> %wide.load219, ptr %i.le, align 8, !alias.scope !69
  %index.next222 = add nuw i64 %index215, 4       ; 2 uses
  %i.lf = icmp eq i64 %index.next222, %n.vec213
  br i1 %i.lf, label %middle.block223, label %vector.body214, !llvm.loop !71

middle.block223:                                  ; preds = %vector.body214
  %cmp.n224 = icmp eq i64 %i.ku, %n.vec213
  br i1 %cmp.n224, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiSkeletonSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i45.preheader227

.lr.ph.i45.preheader227:                          ; preds = %vector.memcheck203, %.lr.ph.i45.preheader, %middle.block223
  %.07.i46.ph = phi ptr [ %i.kq, %vector.memcheck203 ], [ %i.kq, %.lr.ph.i45.preheader ], [ %i.la, %middle.block223 ]
  %.sroa.03.06.i47.ph = phi ptr [ %i.km, %vector.memcheck203 ], [ %i.km, %.lr.ph.i45.preheader ], [ %i.lb, %middle.block223 ]
  br label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.lr.ph.i45.preheader227, %.lr.ph.i45
  %.07.i46 = phi ptr [ %i.lj, %.lr.ph.i45 ], [ %.07.i46.ph, %.lr.ph.i45.preheader227 ] ; 3 uses
  %.sroa.03.06.i47 = phi ptr [ %i.li, %.lr.ph.i45 ], [ %.sroa.03.06.i47.ph, %.lr.ph.i45.preheader227 ] ; 3 uses
  %i.lg = load ptr, ptr %.sroa.03.06.i47, align 8
  %i.lh = load ptr, ptr %.07.i46, align 8
  store ptr %i.lh, ptr %.sroa.03.06.i47, align 8
  store ptr %i.lg, ptr %.07.i46, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i47, i64 8 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.07.i46, i64 8
  %.not.i48 = icmp eq ptr %i.li, %i.kn
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

_ZNSt10_HashtableIPKN6Assimp3FBX5VideoESt4pairIKS4_jESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX12FBXConverter17SetupNodeMetadataERKNS0_5ModelER6aiNode:bb.a

bb.bv:                                            ; preds = %bb.bu
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.0231.0241, i64 16
  %i.lt = load i64, ptr %i.ls, align 8            ; 5 uses
  %i.lu = icmp eq i64 %i.lt, 0
  br i1 %i.lu, label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit224, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lv = zext i32 %.075243 to i64                ; 3 uses
  %i.lw = icmp ugt i64 %i.lt, 1023
  br i1 %i.lw, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i217, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lx = load ptr, ptr %i.dx, align 8
  %i.ly = getelementptr inbounds nuw [1028 x i8], ptr %i.lx, i64 %i.lv ; 2 uses
  %i.lz = trunc nuw nsw i64 %i.lt to i32
  store i32 %i.lz, ptr %i.ly, align 4
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 4 ; 2 uses
  %i.mb = load ptr, ptr %i.ff, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ma, ptr align 1 %i.mb, i64 %i.lt, i1 false)
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.lt
  store i8 0, ptr %i.mc, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i217

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i217: ; preds = %bb.bx, %bb.bw
  %i.md = load ptr, ptr %i.dy, align 8
  %i.me = getelementptr inbounds nuw [16 x i8], ptr %i.md, i64 %i.lv
  store i32 5, ptr %i.me, align 8
  %i.mf = load ptr, ptr %i.dy, align 8
  %i.mg = getelementptr inbounds nuw [16 x i8], ptr %i.mf, i64 %i.lv ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8 ; 2 uses
  %i.mi = load ptr, ptr %i.mh, align 8            ; 4 uses
  %.not24.i218 = icmp eq ptr %i.mi, null
  br i1 %.not24.i218, label %.thread29.i221, label %bb.by

bb.by:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i217
  %i.mj = load i32, ptr %i.mg, align 8
  %.not25.i219 = icmp eq i32 %i.mj, 7
  br i1 %.not25.i219, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1028) %i.mi, ptr noundef nonnull align 4 dereferenceable(1028) %10, i64 1028, i1 false)
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit224

bb.ca:                                            ; preds = %bb.by
  store i32 %spec.select.i214, ptr %i.mi, align 4
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mk, ptr nonnull align 4 %i.dz, i64 %i.lp, i1 false)
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.lp
  store i8 0, ptr %i.ml, align 1
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit224

.thread29.i221:                                   ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i217
  %i.mm = invoke noalias noundef nonnull dereferenceable(1028) ptr @_Znwm(i64 noundef 1028) #30
          to label %.noexc223 unwind label %bb.cb ; 3 uses

.noexc223:                                        ; preds = %.thread29.i221
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.mn, i8 0, i64 1024, i1 false)
  store i32 %spec.select.i214, ptr %i.mm, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mn, ptr nonnull align 4 %i.dz, i64 %i.lp, i1 false)
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.lp
  store i8 0, ptr %i.mo, align 1
  store ptr %i.mm, ptr %i.mh, align 8
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit224

_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit224: ; preds = %.noexc223, %bb.ca, %bb.bz, %bb.bv, %bb.bu
  %i.mp = add nsw i32 %.075243, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit177

bb.cb:                                            ; preds = %.thread29.i221
  %i.mq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.cj

bb.cc:                                            ; preds = %bb.bt
  %i.mr = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.fh, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE, i64 0) #27 ; 2 uses
  %.not104 = icmp eq ptr %i.mr, null
  br i1 %.not104, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit177, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ms = add nsw i32 %.075243, 1                 ; 4 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 8 ; 2 uses
  %i.mu = load i32, ptr %.0.i, align 8
  %.not.i225 = icmp ult i32 %.075243, %i.mu
  br i1 %.not.i225, label %bb.ce, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit177

bb.ce:                                            ; preds = %bb.cd
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.0231.0241, i64 16
  %i.mw = load i64, ptr %i.mv, align 8            ; 5 uses
  %i.mx = icmp eq i64 %i.mw, 0
  br i1 %i.mx, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit177, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.my = zext i32 %.075243 to i64                ; 3 uses
  %i.mz = icmp ugt i64 %i.mw, 1023
  br i1 %i.mz, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i227, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.na = load ptr, ptr %i.dx, align 8
  %i.nb = getelementptr inbounds nuw [1028 x i8], ptr %i.na, i64 %i.my ; 2 uses
  %i.nc = trunc nuw nsw i64 %i.mw to i32
  store i32 %i.nc, ptr %i.nb, align 4
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 4 ; 2 uses
  %i.ne = load ptr, ptr %i.ff, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.nd, ptr align 1 %i.ne, i64 %i.mw, i1 false)
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.mw
  store i8 0, ptr %i.nf, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i227

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i227: ; preds = %bb.cg, %bb.cf
  %i.ng = load ptr, ptr %i.dy, align 8
  %i.nh = getelementptr inbounds nuw [16 x i8], ptr %i.ng, i64 %i.my
  store i32 6, ptr %i.nh, align 8
  %i.ni = load ptr, ptr %i.dy, align 8
  %i.nj = getelementptr inbounds nuw [16 x i8], ptr %i.ni, i64 %i.my
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8 ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8            ; 2 uses
  %.not24.i228 = icmp eq ptr %i.nl, null
  br i1 %.not24.i228, label %.thread28.i229, label %bb.ch

bb.ch:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.nl, ptr noundef nonnull align 4 dereferenceable(12) %i.mt, i64 12, i1 false)
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit177

.thread28.i229:                                   ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i227
  %i.nm = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #30
          to label %.noexc230 unwind label %bb.ci ; 2 uses

.noexc230:                                        ; preds = %.thread28.i229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.nm, ptr noundef nonnull align 4 dereferenceable(12) %i.mt, i64 12, i1 false)
  store ptr %i.nm, ptr %i.nk, align 8
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit177

bb.ci:                                            ; preds = %.thread28.i229
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit177: ; preds = %.noexc230, %bb.ch, %bb.ce, %bb.cd, %.noexc212, %bb.br, %bb.bq, %bb.bm, %bb.bl, %.noexc205, %bb.bi, %bb.bh, %bb.bd, %bb.bc, %.noexc198, %bb.az, %bb.ay, %bb.au, %bb.at, %.noexc191, %bb.aq, %bb.ap, %bb.al, %bb.ak, %.noexc184, %bb.ah, %bb.ag, %bb.ac, %bb.ab, %.noexc176, %bb.y, %bb.v, %bb.u, %bb.cc, %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit224
  %.883 = phi i32 [ %.075243, %bb.cc ], [ %i.fj, %.noexc176 ], [ %i.gi, %.noexc184 ], [ %i.hi, %.noexc191 ], [ %i.ii, %.noexc198 ], [ %i.ji, %.noexc205 ], [ %i.mp, %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit224 ], [ %i.ki, %.noexc212 ], [ %i.fj, %bb.u ], [ %i.fj, %bb.v ], [ %i.fj, %bb.y ], [ %i.gi, %bb.ab ], [ %i.gi, %bb.ac ], [ %i.gi, %bb.ag ], [ %i.gi, %bb.ah ], [ %i.hi, %bb.ak ], [ %i.hi, %bb.al ], [ %i.hi, %bb.ap ], [ %i.hi, %bb.aq ], [ %i.ii, %bb.at ], [ %i.ii, %bb.au ], [ %i.ii, %bb.ay ], [ %i.ii, %bb.az ], [ %i.ji, %bb.bc ], [ %i.ji, %bb.bd ], [ %i.ji, %bb.bh ], [ %i.ji, %bb.bi ], [ %i.ki, %bb.bl ], [ %i.ki, %bb.bm ], [ %i.ki, %bb.bq ], [ %i.ki, %bb.br ], [ %i.ms, %bb.cd ], [ %i.ms, %bb.ce ], [ %i.ms, %bb.ch ], [ %i.ms, %.noexc230 ]
  %i.no = load ptr, ptr %.sroa.0231.0241, align 8 ; 2 uses
  %.not239 = icmp eq ptr %i.no, null
  br i1 %.not239, label %._crit_edge, label %bb.t

bb.cj:                                            ; preds = %bb.z, %bb.ar, %bb.bj, %bb.cb, %bb.ci, %bb.bs, %bb.ba, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %bb.p
  %.pn117.pn.pn = phi { ptr, i32 } [ %i.eg, %bb.p ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ], [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ], [ %i.gg, %bb.z ], [ %i.hg, %bb.ai ], [ %i.ig, %bb.ar ], [ %i.jg, %bb.ba ], [ %i.kg, %bb.bj ], [ %i.lh, %bb.bs ], [ %i.mq, %bb.cb ], [ %i.nn, %bb.ci ]
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6Assimp3FBX8PropertyEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn117.pn.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter12ConvertModelERKNS0_5ModelEP6aiNodeS6_RK12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef captures(address) %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::vector.311", align 8   ; 9 uses
  %6 = alloca %"class.std::vector.311", align 8   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  %i.k = icmp ugt i64 %i.j, 2305843009213693951
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.223) #31
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not116 = icmp eq ptr %i.e, %i.f
  br i1 %.not116, label %_ZNSt6vectorIjSaIjEED2Ev.exit86, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.i, 1
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #30
          to label %.lr.ph unwind label %bb.d     ; 3 uses

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit
  %i.s = ptrtoint ptr %.sroa.16.1 to i64          ; 3 uses
  %i.t = ptrtoint ptr %.sroa.092.2 to i64         ; 4 uses
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = ashr exact i64 %i.u, 2                   ; 2 uses
  %.not = icmp eq ptr %.sroa.16.1, %.sroa.092.2
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit, label %bb.ai

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %bb.b, %bb.ai
  %.sroa.30.1 = phi ptr [ null, %bb.b ], [ %.sroa.30.2, %bb.ai ], [ null, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ]
  %.sroa.092.1 = phi ptr [ null, %bb.b ], [ %.sroa.092.2, %bb.ai ], [ null, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ]
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.e:                                             ; preds = %.lr.ph, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit
  %.sroa.092.0161 = phi ptr [ %i.m, %.lr.ph ], [ %.sroa.092.2, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit ] ; 11 uses
  %.sroa.089.0160 = phi ptr [ %i.f, %.lr.ph ], [ %i.dh, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit ] ; 2 uses
  %.sroa.30.0159 = phi ptr [ %i.n, %.lr.ph ], [ %.sroa.30.2, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit ] ; 11 uses
  %.sroa.16.0158 = phi ptr [ %i.m, %.lr.ph ], [ %.sroa.16.1, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit ] ; 8 uses
  %i.x = load ptr, ptr %.sroa.089.0160, align 8   ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.ag, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = call ptr @__dynamic_cast(ptr nonnull %i.x, ptr nonnull @_ZTIN6Assimp3FBX8GeometryE, ptr nonnull @_ZTIN6Assimp3FBX12MeshGeometryE, i64 0) #27 ; 2 uses
  %i.aa = call ptr @__dynamic_cast(ptr nonnull %i.x, ptr nonnull @_ZTIN6Assimp3FBX8GeometryE, ptr nonnull @_ZTIN6Assimp3FBX12LineGeometryE, i64 0) #27 ; 2 uses
  %.not45 = icmp eq ptr %i.z, null
  br i1 %.not45, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZN6Assimp3FBX12FBXConverter11ConvertMeshERKNS0_12MeshGeometryERKNS0_5ModelEP6aiNodeS9_RK12aiMatrix4x4tIfE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.311") align 8 %5, ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(1000) %i.z, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %4)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %5, align 8               ; 3 uses
  %i.ac = load ptr, ptr %i.o, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i.i.i.i.i
  %.sroa.30.6 = phi ptr [ %.sroa.30.7, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i.i.i.i.i ], [ %.sroa.30.0159, %bb.h ] ; 4 uses
  %.sroa.092.6 = phi ptr [ %.sroa.092.7, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i.i.i.i.i ], [ %.sroa.092.0161, %bb.h ] ; 6 uses
  %i.ai = phi ptr [ %.sroa.16.4, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i.i.i.i.i ], [ %.sroa.16.0158, %bb.h ] ; 3 uses
  %.07.i.i.i.i.i = phi i64 [ %i.ba, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i.i.i.i.i ], [ %i.ag, %bb.h ] ; 2 uses
  %.056.i.i.i.i.i = phi ptr [ %i.az, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i.i.i.i.i ], [ %i.ab, %bb.h ] ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ai, %.sroa.30.6
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aj = load i32, ptr %.056.i.i.i.i.i, align 4
  store i32 %i.aj, ptr %i.ai, align 4
  br label %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ak = ptrtoint ptr %.sroa.30.6 to i64
  %i.al = ptrtoint ptr %.sroa.092.6 to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 6 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775804
  br i1 %i.an, label %bb.k, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.noexc54 unwind label %.loopexit.split-lp120

.noexc54:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.ao = ashr exact i64 %i.am, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = call i64 @llvm.umin.i64(i64 %i.ap, i64 2305843009213693951)
  %i.as = select i1 %i.aq, i64 2305843009213693951, i64 %i.ar ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.as, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i)
  %i.at = shl nuw nsw i64 %i.as, 2
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #30
          to label %.noexc55 unwind label %.loopexit119 ; 4 uses

.noexc55:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.am ; 2 uses
  %i.aw = load i32, ptr %.056.i.i.i.i.i, align 4
  store i32 %i.aw, ptr %i.av, align 4
  %i.ax = icmp sgt i64 %i.am, 0
  br i1 %i.ax, label %bb.l, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %.noexc55
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.au, ptr align 4 %.sroa.092.6, i64 %i.am, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i: ; preds = %bb.l, %.noexc55
  %.not.i17.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.092.6, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.092.6, i64 noundef %i.am) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i.i.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.as
  br label %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i.i.i.i.i

_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i.i.i.i, %bb.i
  %.pn = phi ptr [ %i.av, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i.i.i.i ], [ %i.ai, %bb.i ]
  %.sroa.30.7 = phi ptr [ %i.ay, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i.i.i.i ], [ %.sroa.30.6, %bb.i ] ; 2 uses
  %.sroa.092.7 = phi ptr [ %i.au, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i.i.i.i ], [ %.sroa.092.6, %bb.i ] ; 2 uses
  %.sroa.16.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 4
  %i.ba = add nsw i64 %.07.i.i.i.i.i, -1
  %i.bb = icmp sgt i64 %.07.i.i.i.i.i, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit.loopexit, !llvm.loop !107

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit.loopexit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i.i.i.i.i
  %.pre = load ptr, ptr %5, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit.loopexit, %bb.h
  %i.bc = phi ptr [ %i.ab, %bb.h ], [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit.loopexit ] ; 3 uses
  %.sroa.16.5 = phi ptr [ %.sroa.16.0158, %bb.h ], [ %.sroa.16.4, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit.loopexit ]
  %.sroa.30.8 = phi ptr [ %.sroa.30.0159, %bb.h ], [ %.sroa.30.7, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit.loopexit ]
  %.sroa.092.8 = phi ptr [ %.sroa.092.0161, %bb.h ], [ %.sroa.092.7, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit
  %i.bd = load ptr, ptr %i.p, align 8
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

bb.o:                                             ; preds = %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit119:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i
  %lpad.loopexit121 = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp120:                            ; preds = %bb.k
  %lpad.loopexit.split-lp122 = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp120, %.loopexit119
  %lpad.phi123 = phi { ptr, i32 } [ %lpad.loopexit121, %.loopexit119 ], [ %lpad.loopexit.split-lp122, %.loopexit.split-lp120 ]
  %i.bi = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i56 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i56, label %_ZNSt6vectorIjSaIjEED2Ev.exit57, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.p, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit57

_ZNSt6vectorIjSaIjEED2Ev.exit57:                  ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.al

bb.r:                                             ; preds = %bb.f
  %.not46 = icmp eq ptr %i.aa, null
  br i1 %.not46, label %bb.ad, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN6Assimp3FBX12FBXConverter11ConvertLineERKNS0_12LineGeometryEP6aiNode(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.311") align 8 %6, ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.aa, ptr noundef %3)
          to label %bb.t unwind label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.bn = load ptr, ptr %6, align 8               ; 3 uses
  %i.bo = load ptr, ptr %i.q, align 8
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 2                 ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i58, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit72

.lr.ph.i.i.i.i.i58:                               ; preds = %bb.t, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i.i.i.i.i63
  %.sroa.30.9 = phi ptr [ %.sroa.30.10, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i.i.i.i.i63 ], [ %.sroa.30.0159, %bb.t ] ; 4 uses
  %.sroa.092.9 = phi ptr [ %.sroa.092.10, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i.i.i.i.i63 ], [ %.sroa.092.0161, %bb.t ] ; 6 uses
  %i.bu = phi ptr [ %.sroa.16.7, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i.i.i.i.i63 ], [ %.sroa.16.0158, %bb.t ] ; 3 uses
  %.07.i.i.i.i.i60 = phi i64 [ %i.cm, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i.i.i.i.i63 ], [ %i.bs, %bb.t ] ; 2 uses
  %.056.i.i.i.i.i61 = phi ptr [ %i.cl, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i.i.i.i.i63 ], [ %i.bn, %bb.t ] ; 3 uses
  %.not.i.i.i.i.i.i.i62 = icmp eq ptr %i.bu, %.sroa.30.9
  br i1 %.not.i.i.i.i.i.i.i62, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i58
  %i.bv = load i32, ptr %.056.i.i.i.i.i61, align 4
  store i32 %i.bv, ptr %i.bu, align 4
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
  %.sroa.16.1 = phi ptr [ %.sroa.16.0158, %.noexc80 ], [ %.sroa.16.5, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %.sroa.16.8, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ], [ %.sroa.16.0158, %.noexc77 ], [ %.sroa.16.0158, %.noexc81 ], [ %.sroa.16.0158, %.noexc84 ] ; 4 uses
  %.sroa.30.2 = phi ptr [ %.sroa.30.0159, %.noexc80 ], [ %.sroa.30.8, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %.sroa.30.11, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ], [ %.sroa.30.0159, %.noexc77 ], [ %.sroa.30.0159, %.noexc81 ], [ %.sroa.30.0159, %.noexc84 ] ; 3 uses
  %.sroa.092.2 = phi ptr [ %.sroa.092.0161, %.noexc80 ], [ %.sroa.092.8, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %.sroa.092.11, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ], [ %.sroa.092.0161, %.noexc77 ], [ %.sroa.092.0161, %.noexc81 ], [ %.sroa.092.0161, %.noexc84 ] ; 12 uses
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
  %i.do = sub i64 %i.s, %i.t
  %i.dp = add i64 %i.do, -4                       ; 2 uses
  %i.dq = lshr i64 %i.dp, 2
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dp, 60
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.aj
  %scevgep = getelementptr i8, ptr %.sroa.092.2, i64 4
  %i.ds = add i64 %i.s, -4
  %i.dt = sub i64 %i.ds, %i.t
  %i.du = and i64 %i.dt, -4                       ; 2 uses
  %scevgep270 = getelementptr i8, ptr %scevgep, i64 %i.du
  %scevgep271 = getelementptr i8, ptr %i.dk, i64 4
  %scevgep272 = getelementptr i8, ptr %scevgep271, i64 %i.du
  %bound0 = icmp ult ptr %.sroa.092.2, %scevgep272
  %bound1 = icmp ult ptr %i.dk, %scevgep270
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
  %next.gep273 = getelementptr i8, ptr %.sroa.092.2, i64 %i.dy ; 3 uses
  %i.dz = getelementptr i8, ptr %next.gep273, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep273, align 4, !alias.scope !108, !noalias !111
  %wide.load274 = load <4 x i32>, ptr %i.dz, align 4, !alias.scope !108, !noalias !111
  %i.ea = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load275 = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !111
  %wide.load276 = load <4 x i32>, ptr %i.ea, align 4, !alias.scope !111
  store <4 x i32> %wide.load275, ptr %next.gep273, align 4, !alias.scope !108, !noalias !111
  store <4 x i32> %wide.load276, ptr %i.dz, align 4, !alias.scope !108, !noalias !111
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !alias.scope !111
  store <4 x i32> %wide.load274, ptr %i.ea, align 4, !alias.scope !111
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
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29
  br label %_ZNSt12_Vector_baseIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EED2Ev.exit
end_hunk_1
begin_hunk_2_@_ZN6Assimp3FBX12FBXConverter25ConvertMeshSingleMaterialERKNS0_12MeshGeometryERKNS0_5ModelERK12aiMatrix4x4tIfEP6aiNodeSD_:bb.a
  %i.mq = load ptr, ptr %i.lz, align 8            ; 3 uses
  %i.mr = load ptr, ptr %i.mb, align 8
  %i.ms = ptrtoint ptr %i.mr to i64
  %i.mt = ptrtoint ptr %i.mq to i64
  %i.mu = sub i64 %i.ms, %i.mt                    ; 3 uses
  %i.mv = icmp sgt i64 %i.mu, 16
  br i1 %i.mv, label %bb.al, label %bb.am, !prof !127

bb.al:                                            ; preds = %.loopexit434
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mn, ptr align 4 %i.mq, i64 %i.mu, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit

bb.am:                                            ; preds = %.loopexit434
  %i.mw = icmp eq i64 %i.mu, 16
  br i1 %i.mw, label %bb.an, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mn, ptr noundef nonnull align 4 dereferenceable(16) %i.mq, i64 16, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit: ; preds = %bb.an, %bb.am, %bb.al
  %indvars.iv.next769 = add nuw nsw i64 %indvars.iv768, 1 ; 2 uses
  %exitcond771.not = icmp eq i64 %indvars.iv.next769, 8
  br i1 %exitcond771.not, label %.critedge254, label %bb.aj, !llvm.loop !139

.critedge254:                                     ; preds = %bb.aj, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 4 uses
  %i.my = load ptr, ptr %i.mx, align 8, !nonnull !3, !align !9
  %i.mz = load ptr, ptr %i.my, align 8, !nonnull !3
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 3
  %i.nb = load i8, ptr %i.na, align 1, !range !4, !noundef !3
  %i.nc = trunc nuw i8 %i.nb to i1
  br i1 %i.nc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.critedge254
  %i.nd = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = icmp eq ptr %i.nd, %i.nf
  br i1 %i.ng, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao, %.critedge254
  %i.nh = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.nh, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA55_KcEEEvDpOT_.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ni = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.nj = call noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
  store ptr %i.nj, ptr %i.e, align 8
  call void @_ZN6Assimp6Logger5errorIJPKcRA55_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ni, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(55) @.str.46)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA55_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA55_KcEEEvDpOT_.exit: ; preds = %bb.ap, %bb.aq
  %i.nk = call noundef i32 @_ZN6Assimp3FBX12FBXConverter18GetDefaultMaterialEv(ptr noundef nonnull align 8 dereferenceable(529) %0)
  %i.nl = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  store i32 %i.nk, ptr %i.nl, align 8
  br label %bb.as

bb.ar:                                            ; preds = %bb.ao
  %i.nm = load i32, ptr %i.nd, align 4
  call void @_ZN6Assimp3FBX12FBXConverter22ConvertMaterialForMeshEP6aiMeshRKNS0_5ModelERKNS0_12MeshGeometryEi(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(1000) %1, i32 noundef %i.nm)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA55_KcEEEvDpOT_.exit
  %i.nn = load ptr, ptr %i.mx, align 8, !nonnull !3, !align !9
  %i.no = load ptr, ptr %i.nn, align 8, !nonnull !3 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load i8, ptr %i.np, align 1, !range !4, !noundef !3
  %i.nr = trunc nuw i8 %i.nq to i1
  br i1 %i.nr, label %bb.at, label %._crit_edge780

bb.at:                                            ; preds = %bb.as
  %i.ns = call noundef ptr @_ZNK6Assimp3FBX8Geometry12DeformerSkinEv(ptr noundef nonnull align 8 dereferenceable(120) %1)
  %.not227 = icmp eq ptr %i.ns, null
  %.pre779 = load ptr, ptr %i.mx, align 8
  %.pre781 = load ptr, ptr %.pre779, align 8      ; 3 uses
  br i1 %.not227, label %._crit_edge780, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.nt = getelementptr inbounds nuw i8, ptr %.pre781, i64 9
  %i.nu = load i8, ptr %i.nt, align 1, !range !4, !noundef !3
  %i.nv = trunc nuw i8 %i.nu to i1
  br i1 %i.nv, label %._crit_edge780, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZN6Assimp3FBX12FBXConverter14ConvertWeightsEP6aiMeshRKNS0_12MeshGeometryERK12aiMatrix4x4tIfEP6aiNodejPSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(1000) %1, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef %4, i32 noundef -1, ptr noundef null)
  br label %bb.bm

._crit_edge780:                                   ; preds = %bb.at, %bb.au, %bb.as
  %i.nw = phi ptr [ %.pre781, %bb.au ], [ %i.no, %bb.as ], [ %.pre781, %bb.at ]
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.ny = load i8, ptr %i.nx, align 1, !range !4, !noundef !3
  %i.nz = trunc nuw i8 %i.ny to i1
  br i1 %i.nz, label %bb.aw, label %bb.bm

bb.aw:                                            ; preds = %._crit_edge780
  %i.oa = call noundef ptr @_ZNK6Assimp3FBX8Geometry12DeformerSkinEv(ptr noundef nonnull align 8 dereferenceable(120) %1)
  %.not228 = icmp eq ptr %i.oa, null
  br i1 %.not228, label %bb.bm, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ob = load ptr, ptr %i.mx, align 8, !nonnull !3, !align !9
  %i.oc = load ptr, ptr %i.ob, align 8, !nonnull !3
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 9
  %i.oe = load i8, ptr %i.od, align 1, !range !4, !noundef !3
  %i.of = trunc nuw i8 %i.oe to i1
  br i1 %i.of, label %bb.ay, label %bb.bm

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %9, i8 0, i64 24, i1 false)
  %i.og = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 5 uses
  store i32 0, ptr %i.og, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  store ptr null, ptr %i.oh, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %i.og, ptr %i.oi, align 8
  %i.oj = getelementptr inbounds nuw i8, ptr %9, i64 56
  store ptr %i.og, ptr %i.oj, align 8
  %i.ok = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  store i64 0, ptr %i.ok, align 8
  invoke void @_ZN6Assimp3FBX12FBXConverter24ConvertWeightsToSkeletonEP6aiMeshRKNS0_12MeshGeometryERK12aiMatrix4x4tIfEP6aiNodejPSt6vectorIjSaIjEERNS0_21SkeletonBoneContainerE(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(1000) %1, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef %4, i32 noundef -1, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.az unwind label %bb.bi

bb.az:                                            ; preds = %bb.ay
  %i.ol = load ptr, ptr %9, align 8               ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.on = load ptr, ptr %i.om, align 8            ; 2 uses
  %i.oo = icmp eq ptr %i.ol, %i.on
  %i.op = load i64, ptr %i.ok, align 8
  %i.oq = icmp eq i64 %i.op, 0
  %or.cond.i = select i1 %i.oo, i1 true, i1 %i.oq
  br i1 %or.cond.i, label %_ZN6Assimp3FBXL16createAiSkeletonERNS0_21SkeletonBoneContainerE.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.or = invoke noalias noundef nonnull dereferenceable(1040) ptr @_Znwm(i64 noundef 1040) #30
          to label %.noexc267 unwind label %.loopexit.split-lp429 ; 5 uses

.noexc267:                                        ; preds = %bb.ba
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.or, i8 0, i64 1040, i1 false)
  %i.os = load ptr, ptr %i.oh, align 8            ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.os, null
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 1028
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 1032
  br i1 %.not10.i.i.i.i, label %.loopexit433, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %.noexc267, %_ZNSt3mapIP6aiMeshPSt6vectorIP14aiSkeletonBoneSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE4findERSB_.exit.thread.i
  %.sroa.031.041.i = phi ptr [ %i.qi, %_ZNSt3mapIP6aiMeshPSt6vectorIP14aiSkeletonBoneSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE4findERSB_.exit.thread.i ], [ %i.ol, %.noexc267 ] ; 2 uses
  %i.ov = load ptr, ptr %.sroa.031.041.i, align 8 ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.preheader.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.os, %.lr.ph.i.i.i.preheader.i ] ; 5 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.og, %.lr.ph.i.i.i.preheader.i ] ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ox = load ptr, ptr %i.ow, align 8
  %i.oy = icmp ult ptr %i.ox, %i.ov               ; 4 uses
  %.19.i.i.i.i = select i1 %i.oy, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i = select i1 %i.oy, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIP6aiMeshSt4pairIKS1_PSt6vectorIP14aiSkeletonBoneSaIS6_EEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !140

_ZNSt8_Rb_treeIP6aiMeshSt4pairIKS1_PSt6vectorIP14aiSkeletonBoneSaIS6_EEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.oz = icmp eq ptr %.19.i.i.i.i, %i.og
  br i1 %i.oz, label %_ZNSt3mapIP6aiMeshPSt6vectorIP14aiSkeletonBoneSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE4findERSB_.exit.thread.i, label %_ZNSt3mapIP6aiMeshPSt6vectorIP14aiSkeletonBoneSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE4findERSB_.exit.i

_ZNSt3mapIP6aiMeshPSt6vectorIP14aiSkeletonBoneSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE4findERSB_.exit.i: ; preds = %_ZNSt8_Rb_treeIP6aiMeshSt4pairIKS1_PSt6vectorIP14aiSkeletonBoneSaIS6_EEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.oy, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.pa = load ptr, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  %i.pb = icmp ult ptr %i.ov, %i.pa
  br i1 %i.pb, label %_ZNSt3mapIP6aiMeshPSt6vectorIP14aiSkeletonBoneSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE4findERSB_.exit.thread.i, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt3mapIP6aiMeshPSt6vectorIP14aiSkeletonBoneSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE4findERSB_.exit.i
  %.19.i.i.i.i.sroa.sel377.v.sroa.sel.v.sroa.sel.v = select i1 %i.oy, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel377.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel377.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.pc = load ptr, ptr %.19.i.i.i.i.sroa.sel377.v.sroa.sel.v.sroa.sel, align 8 ; 4 uses
  %i.pd = icmp eq ptr %i.pc, null
  br i1 %i.pd, label %_ZNSt3mapIP6aiMeshPSt6vectorIP14aiSkeletonBoneSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE4findERSB_.exit.thread.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 8 ; 2 uses
  %i.pf = load ptr, ptr %i.pe, align 8
  %i.pg = load ptr, ptr %i.pc, align 8
  %i.ph = ptrtoint ptr %i.pf to i64
  %i.pi = ptrtoint ptr %i.pg to i64
  %i.pj = sub i64 %i.ph, %i.pi                    ; 2 uses
  %i.pk = lshr exact i64 %i.pj, 3
  %i.pl = trunc i64 %i.pk to i32
  store i32 %i.pl, ptr %i.ot, align 4
  %i.pm = and i64 %i.pj, 34359738360
  %i.pn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.pm) #30
          to label %.noexc268 unwind label %.loopexit428 ; 4 uses

.noexc268:                                        ; preds = %bb.bc
  store ptr %i.pn, ptr %i.ou, align 8
  %i.po = load ptr, ptr %i.pc, align 8            ; 6 uses
  %i.pp = load ptr, ptr %i.pe, align 8            ; 3 uses
  %.not3538.i = icmp eq ptr %i.po, %i.pp
  br i1 %.not3538.i, label %_ZNSt3mapIP6aiMeshPSt6vectorIP14aiSkeletonBoneSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE4findERSB_.exit.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.noexc268
  %i.pq = ptrtoaddr ptr %i.po to i64
  %i.pr = ptrtoaddr ptr %i.pn to i64
  %13 = ptrtoint ptr %i.pp to i64
  %14 = ptrtoint ptr %i.po to i64
  %i.ps = sub i64 %13, %14
  %i.pt = add i64 %i.ps, -8                       ; 2 uses
  %i.pu = lshr i64 %i.pt, 3
  %i.pv = add nuw nsw i64 %i.pu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.pt, 24
  %i.pw = sub i64 %i.pq, %i.pr
  %diff.check = icmp ugt i64 %i.pw, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader1109, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.pv, 4611686018427387900     ; 4 uses
  %i.px = shl i64 %n.vec, 3
  %i.py = getelementptr i8, ptr %i.po, i64 %i.px
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.pz = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.po, i64 %i.pz ; 2 uses
  %i.qa = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8
  %wide.load1032 = load <2 x ptr>, ptr %i.qa, align 8
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %index ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  store <2 x ptr> %wide.load, ptr %i.qb, align 8
  store <2 x ptr> %wide.load1032, ptr %i.qc, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qd = icmp eq i64 %index.next, %n.vec
  br i1 %i.qd, label %middle.block, label %vector.body, !llvm.loop !141

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.pv, %n.vec
  br i1 %cmp.n, label %_ZNSt3mapIP6aiMeshPSt6vectorIP14aiSkeletonBoneSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE4findERSB_.exit.thread.i, label %.lr.ph.i.preheader1109

.lr.ph.i.preheader1109:                           ; preds = %.lr.ph.i.preheader, %middle.block
  %.02240.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.024.039.i.ph = phi ptr [ %i.po, %.lr.ph.i.preheader ], [ %i.py, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader1109, %.lr.ph.i
  %.02240.i = phi i64 [ %i.qg, %.lr.ph.i ], [ %.02240.i.ph, %.lr.ph.i.preheader1109 ] ; 2 uses
  %.sroa.024.039.i = phi ptr [ %i.qh, %.lr.ph.i ], [ %.sroa.024.039.i.ph, %.lr.ph.i.preheader1109 ] ; 2 uses
  %i.qe = load ptr, ptr %.sroa.024.039.i, align 8
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %.02240.i
  store ptr %i.qe, ptr %i.qf, align 8
  %i.qg = add nuw nsw i64 %.02240.i, 1
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.024.039.i, i64 8 ; 2 uses
  %.not35.i = icmp eq ptr %i.qh, %i.pp
  br i1 %.not35.i, label %_ZNSt3mapIP6aiMeshPSt6vectorIP14aiSkeletonBoneSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE4findERSB_.exit.thread.i, label %.lr.ph.i, !llvm.loop !142

_ZNSt3mapIP6aiMeshPSt6vectorIP14aiSkeletonBoneSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE4findERSB_.exit.thread.i: ; preds = %.lr.ph.i, %middle.block, %.noexc268, %bb.bb, %_ZNSt3mapIP6aiMeshPSt6vectorIP14aiSkeletonBoneSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE4findERSB_.exit.i, %_ZNSt8_Rb_treeIP6aiMeshSt4pairIKS1_PSt6vectorIP14aiSkeletonBoneSaIS6_EEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.031.041.i, i64 8 ; 2 uses
  %.not.i265 = icmp eq ptr %i.qi, %i.on
  br i1 %.not.i265, label %.loopexit433, label %.lr.ph.i.i.i.preheader.i

.loopexit433:                                     ; preds = %_ZNSt3mapIP6aiMeshPSt6vectorIP14aiSkeletonBoneSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE4findERSB_.exit.thread.i, %.noexc267
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 4 uses
  %i.ql = load ptr, ptr %i.qk, align 8            ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.qn = load ptr, ptr %i.qm, align 8
  %.not.i269 = icmp eq ptr %i.ql, %i.qn
  br i1 %.not.i269, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.loopexit433
  store ptr %i.or, ptr %i.ql, align 8
  %i.qo = load ptr, ptr %i.qk, align 8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  store ptr %i.qp, ptr %i.qk, align 8
  br label %_ZN6Assimp3FBXL16createAiSkeletonERNS0_21SkeletonBoneContainerE.exit

bb.be:                                            ; preds = %.loopexit433
  %i.qq = load ptr, ptr %i.qj, align 8            ; 4 uses
  %i.qr = ptrtoint ptr %i.ql to i64
  %i.qs = ptrtoint ptr %i.qq to i64
  %i.qt = sub i64 %i.qr, %i.qs                    ; 6 uses
  %i.qu = icmp eq i64 %i.qt, 9223372036854775800
  br i1 %i.qu, label %bb.bf, label %_ZNKSt6vectorIP10aiSkeletonSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.noexc271 unwind label %.loopexit.split-lp429

.noexc271:                                        ; preds = %bb.bf
  unreachable

_ZNKSt6vectorIP10aiSkeletonSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.be
  %i.qv = ashr exact i64 %i.qt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.qv, i64 1)
  %i.qw = add nsw i64 %.sroa.speculated.i.i.i, %i.qv ; 2 uses
  %i.qx = icmp ult i64 %i.qw, %i.qv
  %i.qy = call i64 @llvm.umin.i64(i64 %i.qw, i64 1152921504606846975)
  %i.qz = select i1 %i.qx, i64 1152921504606846975, i64 %i.qy ; 3 uses
  %.not.i.i.i270 = icmp ne i64 %i.qz, 0
  call void @llvm.assume(i1 %.not.i.i.i270)
  %i.ra = shl nuw nsw i64 %i.qz, 3
  %i.rb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ra) #30
          to label %.noexc272 unwind label %.loopexit.split-lp429 ; 4 uses

.noexc272:                                        ; preds = %_ZNKSt6vectorIP10aiSkeletonSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.rc = getelementptr inbounds i8, ptr %i.rb, i64 %i.qt ; 2 uses
  store ptr %i.or, ptr %i.rc, align 8
  %i.rd = icmp sgt i64 %i.qt, 0
  br i1 %i.rd, label %bb.bg, label %_ZNSt6vectorIP10aiSkeletonSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.bg:                                            ; preds = %.noexc272
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rb, ptr align 8 %i.qq, i64 %i.qt, i1 false)
  br label %_ZNSt6vectorIP10aiSkeletonSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10aiSkeletonSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.bg, %.noexc272
  %i.re = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %.not.i17.i.i = icmp eq ptr %i.qq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP10aiSkeletonSaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIP10aiSkeletonSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.qq, i64 noundef %i.qt) #29
  br label %_ZNSt6vectorIP10aiSkeletonSaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10aiSkeletonSaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.bh, %_ZNSt6vectorIP10aiSkeletonSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.rb, ptr %i.qj, align 8
  store ptr %i.re, ptr %i.qk, align 8
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %i.qz
  store ptr %i.rf, ptr %i.qm, align 8
  br label %_ZN6Assimp3FBXL16createAiSkeletonERNS0_21SkeletonBoneContainerE.exit

bb.bi:                                            ; preds = %bb.ay
  %i.rg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.loopexit428:                                     ; preds = %bb.bc
  %lpad.loopexit430 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.loopexit.split-lp429:                            ; preds = %bb.ba, %bb.bf, %_ZNKSt6vectorIP10aiSkeletonSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit.split-lp431 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

_ZN6Assimp3FBXL16createAiSkeletonERNS0_21SkeletonBoneContainerE.exit: ; preds = %_ZNSt6vectorIP10aiSkeletonSaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.bd, %bb.az
  %i.rh = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ri = load ptr, ptr %i.oh, align 8
  invoke void @_ZNSt8_Rb_treeIP6aiMeshSt4pairIKS1_PSt6vectorIP14aiSkeletonBoneSaIS6_EEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.rh, ptr noundef %i.ri)
          to label %_ZNSt3mapIP6aiMeshPSt6vectorIP14aiSkeletonBoneSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit.i unwind label %bb.bj

bb.bj:                                            ; preds = %_ZN6Assimp3FBXL16createAiSkeletonERNS0_21SkeletonBoneContainerE.exit
  %i.rj = landingpad { ptr, i32 }
          catch ptr null
  %i.rk = extractvalue { ptr, i32 } %i.rj, 0
  call void @__clang_call_terminate(ptr %i.rk) #32
  unreachable

_ZNSt3mapIP6aiMeshPSt6vectorIP14aiSkeletonBoneSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit.i: ; preds = %_ZN6Assimp3FBXL16createAiSkeletonERNS0_21SkeletonBoneContainerE.exit
  %i.rl = load ptr, ptr %9, align 8               ; 3 uses
  %.not.i.i.i.i273 = icmp eq ptr %i.rl, null
  br i1 %.not.i.i.i.i273, label %_ZN6Assimp3FBX21SkeletonBoneContainerD2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt3mapIP6aiMeshPSt6vectorIP14aiSkeletonBoneSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit.i
  %i.rm = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.rn = load ptr, ptr %i.rm, align 8
  %i.ro = ptrtoint ptr %i.rn to i64
  %i.rp = ptrtoint ptr %i.rl to i64
  %i.rq = sub i64 %i.ro, %i.rp
  call void @_ZdlPvm(ptr noundef nonnull %i.rl, i64 noundef %i.rq) #29
  br label %_ZN6Assimp3FBX21SkeletonBoneContainerD2Ev.exit

_ZN6Assimp3FBX21SkeletonBoneContainerD2Ev.exit:   ; preds = %_ZNSt3mapIP6aiMeshPSt6vectorIP14aiSkeletonBoneSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.bm

bb.bl:                                            ; preds = %.loopexit428, %.loopexit.split-lp429, %bb.bi
  %.pn230 = phi { ptr, i32 } [ %i.rg, %bb.bi ], [ %lpad.loopexit430, %.loopexit428 ], [ %lpad.loopexit.split-lp431, %.loopexit.split-lp429 ]
  call void @_ZN6Assimp3FBX21SkeletonBoneContainerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %_ZNSt6vectorIP10aiAnimMeshSaIS1_EED2Ev.exit334

bb.bm:                                            ; preds = %._crit_edge780, %bb.aw, %bb.ax, %_ZN6Assimp3FBX21SkeletonBoneContainerD2Ev.exit, %bb.av
  %i.rr = call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6Assimp3FBX8Geometry14GetBlendShapesEv(ptr noundef nonnull align 8 dereferenceable(120) %1)
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 16
  %.sroa.0360.0683 = load ptr, ptr %i.rs, align 8 ; 2 uses
  %.not402684 = icmp eq ptr %.sroa.0360.0683, null
  br i1 %.not402684, label %.loopexit.thread, label %.lr.ph690

.loopexit.thread:                                 ; preds = %bb.bm
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rv = load ptr, ptr %i.ru, align 8
  %i.rw = load ptr, ptr %i.rt, align 8
  br label %_ZNSt6vectorIP10aiAnimMeshSaIS1_EED2Ev.exit

.lr.ph690:                                        ; preds = %bb.bm
  %i.rx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 14 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.sa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 14 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.sd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.se = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
end_hunk_2
