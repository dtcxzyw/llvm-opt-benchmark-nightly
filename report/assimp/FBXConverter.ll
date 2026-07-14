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
  %i.w = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %.not5.i = icmp eq ptr %i.w, %i.y
  br i1 %.not5.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.aa = load ptr, ptr %i.k, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8            ; 6 uses
  %1 = add i64 %i.z, -8
  %i.ad = sub i64 %1, %i.x                        ; 2 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 120
  br i1 %min.iters.check, label %.lr.ph.i.preheader233, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.ag = add i64 %i.z, -8
  %i.ah = sub i64 %i.ag, %i.x
  %i.ai = and i64 %i.ah, -8
  %i.aj = add i64 %i.ai, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.aj
  %scevgep77 = getelementptr i8, ptr %i.ac, i64 %i.aj
  %bound0 = icmp ult ptr %i.w, %scevgep77
  %bound1 = icmp ult ptr %i.ac, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader233, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.ac, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.w, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.an ; 3 uses
  %next.gep78 = getelementptr i8, ptr %i.w, i64 %i.an ; 3 uses
  %i.ao = getelementptr i8, ptr %next.gep78, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep78, align 8, !alias.scope !22, !noalias !25
  %wide.load79 = load <2 x ptr>, ptr %i.ao, align 8, !alias.scope !22, !noalias !25
  %i.ap = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load80 = load <2 x ptr>, ptr %next.gep, align 8, !alias.scope !25
  %wide.load81 = load <2 x ptr>, ptr %i.ap, align 8, !alias.scope !25
  store <2 x ptr> %wide.load80, ptr %next.gep78, align 8, !alias.scope !22, !noalias !25
  store <2 x ptr> %wide.load81, ptr %i.ao, align 8, !alias.scope !22, !noalias !25
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !alias.scope !25
  store <2 x ptr> %wide.load79, ptr %i.ap, align 8, !alias.scope !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i.preheader233

.lr.ph.i.preheader233:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.preheader ], [ %i.al, %middle.block ]
  %.sroa.03.06.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader233, %.lr.ph.i
  %.07.i = phi ptr [ %i.au, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader233 ] ; 3 uses
  %.sroa.03.06.i = phi ptr [ %i.at, %.lr.ph.i ], [ %.sroa.03.06.i.ph, %.lr.ph.i.preheader233 ] ; 3 uses
  %i.ar = load ptr, ptr %.sroa.03.06.i, align 8
  %i.as = load ptr, ptr %.07.i, align 8
  store ptr %i.as, ptr %.sroa.03.06.i, align 8
  store ptr %i.ar, ptr %.07.i, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %.not.i = icmp eq ptr %i.at, %i.y
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i, !llvm.loop !30

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.b, %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = icmp eq ptr %i.aw, %i.ay
  br i1 %i.az, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.aw to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = tail call i64 @llvm.smax.i64(i64 %i.bc, i64 -1) ; 2 uses
  %i.be = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bd) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.be, i8 0, i64 %i.bd, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store ptr %i.be, ptr %i.bh, align 8
  %i.bi = load ptr, ptr %i.ax, align 8
  %i.bj = load ptr, ptr %i.av, align 8
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = lshr exact i64 %i.bm, 3
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = load ptr, ptr %i.bf, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store i32 %i.bo, ptr %i.bq, align 8
  %i.br = load ptr, ptr %i.av, align 8            ; 8 uses
  %i.bs = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bt = load ptr, ptr %i.ax, align 8            ; 3 uses
  %i.bu = ptrtoint ptr %i.bt to i64               ; 2 uses
  %.not5.i14 = icmp eq ptr %i.br, %i.bt
  br i1 %.not5.i14, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i15.preheader

.lr.ph.i15.preheader:                             ; preds = %bb.c
  %i.bv = load ptr, ptr %i.bf, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8            ; 6 uses
  %2 = add i64 %i.bu, -8
  %i.by = sub i64 %2, %i.bs                       ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check90 = icmp ult i64 %i.by, 120
  br i1 %min.iters.check90, label %.lr.ph.i15.preheader232, label %vector.memcheck83

vector.memcheck83:                                ; preds = %.lr.ph.i15.preheader
  %i.cb = add i64 %i.bu, -8
  %i.cc = sub i64 %i.cb, %i.bs
  %i.cd = and i64 %i.cc, -8
  %i.ce = add i64 %i.cd, 8                        ; 2 uses
  %scevgep84 = getelementptr i8, ptr %i.br, i64 %i.ce
  %scevgep85 = getelementptr i8, ptr %i.bx, i64 %i.ce
  %bound086 = icmp ult ptr %i.br, %scevgep85
  %bound187 = icmp ult ptr %i.bx, %scevgep84
  %found.conflict88 = and i1 %bound086, %bound187
  br i1 %found.conflict88, label %.lr.ph.i15.preheader232, label %vector.ph91

vector.ph91:                                      ; preds = %vector.memcheck83
  %n.vec93 = and i64 %i.ca, 4611686018427387900   ; 3 uses
  %i.cf = shl i64 %n.vec93, 3                     ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.br, i64 %i.cf
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph91
  %index95 = phi i64 [ 0, %vector.ph91 ], [ %index.next102, %vector.body94 ] ; 2 uses
  %i.ci = shl i64 %index95, 3                     ; 2 uses
  %next.gep96 = getelementptr i8, ptr %i.bx, i64 %i.ci ; 3 uses
  %next.gep97 = getelementptr i8, ptr %i.br, i64 %i.ci ; 3 uses
  %i.cj = getelementptr i8, ptr %next.gep97, i64 16 ; 2 uses
  %wide.load98 = load <2 x ptr>, ptr %next.gep97, align 8, !alias.scope !31, !noalias !34
  %wide.load99 = load <2 x ptr>, ptr %i.cj, align 8, !alias.scope !31, !noalias !34
  %i.ck = getelementptr i8, ptr %next.gep96, i64 16 ; 2 uses
  %wide.load100 = load <2 x ptr>, ptr %next.gep96, align 8, !alias.scope !34
  %wide.load101 = load <2 x ptr>, ptr %i.ck, align 8, !alias.scope !34
  store <2 x ptr> %wide.load100, ptr %next.gep97, align 8, !alias.scope !31, !noalias !34
  store <2 x ptr> %wide.load101, ptr %i.cj, align 8, !alias.scope !31, !noalias !34
  store <2 x ptr> %wide.load98, ptr %next.gep96, align 8, !alias.scope !34
  store <2 x ptr> %wide.load99, ptr %i.ck, align 8, !alias.scope !34
  %index.next102 = add nuw i64 %index95, 4        ; 2 uses
  %i.cl = icmp eq i64 %index.next102, %n.vec93
  br i1 %i.cl, label %middle.block103, label %vector.body94, !llvm.loop !36

middle.block103:                                  ; preds = %vector.body94
  %cmp.n104 = icmp eq i64 %i.ca, %n.vec93
  br i1 %cmp.n104, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i15.preheader232

.lr.ph.i15.preheader232:                          ; preds = %vector.memcheck83, %.lr.ph.i15.preheader, %middle.block103
  %.07.i16.ph = phi ptr [ %i.bx, %vector.memcheck83 ], [ %i.bx, %.lr.ph.i15.preheader ], [ %i.cg, %middle.block103 ]
  %.sroa.03.06.i17.ph = phi ptr [ %i.br, %vector.memcheck83 ], [ %i.br, %.lr.ph.i15.preheader ], [ %i.ch, %middle.block103 ]
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.lr.ph.i15.preheader232, %.lr.ph.i15
  %.07.i16 = phi ptr [ %i.cp, %.lr.ph.i15 ], [ %.07.i16.ph, %.lr.ph.i15.preheader232 ] ; 3 uses
  %.sroa.03.06.i17 = phi ptr [ %i.co, %.lr.ph.i15 ], [ %.sroa.03.06.i17.ph, %.lr.ph.i15.preheader232 ] ; 3 uses
  %i.cm = load ptr, ptr %.sroa.03.06.i17, align 8
  %i.cn = load ptr, ptr %.07.i16, align 8
  store ptr %i.cn, ptr %.sroa.03.06.i17, align 8
  store ptr %i.cm, ptr %.07.i16, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i17, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.07.i16, i64 8
  %.not.i18 = icmp eq ptr %i.co, %i.bt
  br i1 %.not.i18, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i15, !llvm.loop !37

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i15, %middle.block103, %bb.c, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.cu = icmp eq ptr %i.cr, %i.ct
  br i1 %i.cu, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cr to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = tail call i64 @llvm.smax.i64(i64 %i.cx, i64 -1) ; 2 uses
  %i.cz = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cy) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cz, i8 0, i64 %i.cy, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  store ptr %i.cz, ptr %i.dc, align 8
  %i.dd = load ptr, ptr %i.cs, align 8
  %i.de = load ptr, ptr %i.cq, align 8
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = lshr exact i64 %i.dh, 3
  %i.dj = trunc i64 %i.di to i32
  %i.dk = load ptr, ptr %i.da, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  store i32 %i.dj, ptr %i.dl, align 8
  %i.dm = load ptr, ptr %i.cq, align 8            ; 8 uses
  %i.dn = ptrtoint ptr %i.dm to i64               ; 2 uses
  %i.do = load ptr, ptr %i.cs, align 8            ; 3 uses
  %i.dp = ptrtoint ptr %i.do to i64               ; 2 uses
  %.not5.i20 = icmp eq ptr %i.dm, %i.do
  br i1 %.not5.i20, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i21.preheader

.lr.ph.i21.preheader:                             ; preds = %bb.d
  %i.dq = load ptr, ptr %i.da, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load ptr, ptr %i.dr, align 8            ; 6 uses
  %3 = add i64 %i.dp, -8
  %i.dt = sub i64 %3, %i.dn                       ; 2 uses
  %i.du = lshr i64 %i.dt, 3
  %i.dv = add nuw nsw i64 %i.du, 1                ; 2 uses
  %min.iters.check114 = icmp ult i64 %i.dt, 120
  br i1 %min.iters.check114, label %.lr.ph.i21.preheader231, label %vector.memcheck107

vector.memcheck107:                               ; preds = %.lr.ph.i21.preheader
  %i.dw = add i64 %i.dp, -8
  %i.dx = sub i64 %i.dw, %i.dn
  %i.dy = and i64 %i.dx, -8
  %i.dz = add i64 %i.dy, 8                        ; 2 uses
  %scevgep108 = getelementptr i8, ptr %i.dm, i64 %i.dz
  %scevgep109 = getelementptr i8, ptr %i.ds, i64 %i.dz
  %bound0110 = icmp ult ptr %i.dm, %scevgep109
  %bound1111 = icmp ult ptr %i.ds, %scevgep108
  %found.conflict112 = and i1 %bound0110, %bound1111
  br i1 %found.conflict112, label %.lr.ph.i21.preheader231, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck107
  %n.vec117 = and i64 %i.dv, 4611686018427387900  ; 3 uses
  %i.ea = shl i64 %n.vec117, 3                    ; 2 uses
  %i.eb = getelementptr i8, ptr %i.ds, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.dm, i64 %i.ea
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph115
  %index119 = phi i64 [ 0, %vector.ph115 ], [ %index.next126, %vector.body118 ] ; 2 uses
  %i.ed = shl i64 %index119, 3                    ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.ds, i64 %i.ed ; 3 uses
  %next.gep121 = getelementptr i8, ptr %i.dm, i64 %i.ed ; 3 uses
  %i.ee = getelementptr i8, ptr %next.gep121, i64 16 ; 2 uses
  %wide.load122 = load <2 x ptr>, ptr %next.gep121, align 8, !alias.scope !38, !noalias !41
  %wide.load123 = load <2 x ptr>, ptr %i.ee, align 8, !alias.scope !38, !noalias !41
  %i.ef = getelementptr i8, ptr %next.gep120, i64 16 ; 2 uses
  %wide.load124 = load <2 x ptr>, ptr %next.gep120, align 8, !alias.scope !41
  %wide.load125 = load <2 x ptr>, ptr %i.ef, align 8, !alias.scope !41
  store <2 x ptr> %wide.load124, ptr %next.gep121, align 8, !alias.scope !38, !noalias !41
  store <2 x ptr> %wide.load125, ptr %i.ee, align 8, !alias.scope !38, !noalias !41
  store <2 x ptr> %wide.load122, ptr %next.gep120, align 8, !alias.scope !41
  store <2 x ptr> %wide.load123, ptr %i.ef, align 8, !alias.scope !41
  %index.next126 = add nuw i64 %index119, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next126, %n.vec117
  br i1 %i.eg, label %middle.block127, label %vector.body118, !llvm.loop !43

middle.block127:                                  ; preds = %vector.body118
  %cmp.n128 = icmp eq i64 %i.dv, %n.vec117
  br i1 %cmp.n128, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i21.preheader231

.lr.ph.i21.preheader231:                          ; preds = %vector.memcheck107, %.lr.ph.i21.preheader, %middle.block127
  %.07.i22.ph = phi ptr [ %i.ds, %vector.memcheck107 ], [ %i.ds, %.lr.ph.i21.preheader ], [ %i.eb, %middle.block127 ]
  %.sroa.03.06.i23.ph = phi ptr [ %i.dm, %vector.memcheck107 ], [ %i.dm, %.lr.ph.i21.preheader ], [ %i.ec, %middle.block127 ]
  br label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.preheader231, %.lr.ph.i21
  %.07.i22 = phi ptr [ %i.ek, %.lr.ph.i21 ], [ %.07.i22.ph, %.lr.ph.i21.preheader231 ] ; 3 uses
  %.sroa.03.06.i23 = phi ptr [ %i.ej, %.lr.ph.i21 ], [ %.sroa.03.06.i23.ph, %.lr.ph.i21.preheader231 ] ; 3 uses
  %i.eh = load ptr, ptr %.sroa.03.06.i23, align 8
  %i.ei = load ptr, ptr %.07.i22, align 8
  store ptr %i.ei, ptr %.sroa.03.06.i23, align 8
  store ptr %i.eh, ptr %.07.i22, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i23, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.07.i22, i64 8
  %.not.i24 = icmp eq ptr %i.ej, %i.do
  br i1 %.not.i24, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i21, !llvm.loop !44

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i21, %middle.block127, %bb.d, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.em = load ptr, ptr %i.el, align 8            ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8            ; 2 uses
  %i.ep = icmp eq ptr %i.em, %i.eo
  br i1 %i.ep, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.em to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = tail call i64 @llvm.smax.i64(i64 %i.es, i64 -1) ; 2 uses
  %i.eu = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.et) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.eu, i8 0, i64 %i.et, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 88
  store ptr %i.eu, ptr %i.ex, align 8
  %i.ey = load ptr, ptr %i.en, align 8
  %i.ez = load ptr, ptr %i.el, align 8
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = lshr exact i64 %i.fc, 3
  %i.fe = trunc i64 %i.fd to i32
  %i.ff = load ptr, ptr %i.ev, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 80
  store i32 %i.fe, ptr %i.fg, align 8
  %i.fh = load ptr, ptr %i.el, align 8            ; 8 uses
  %i.fi = ptrtoint ptr %i.fh to i64               ; 2 uses
  %i.fj = load ptr, ptr %i.en, align 8            ; 3 uses
  %i.fk = ptrtoint ptr %i.fj to i64               ; 2 uses
  %.not5.i26 = icmp eq ptr %i.fh, %i.fj
  br i1 %.not5.i26, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i27.preheader

.lr.ph.i27.preheader:                             ; preds = %bb.e
  %i.fl = load ptr, ptr %i.ev, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 88
  %i.fn = load ptr, ptr %i.fm, align 8            ; 6 uses
  %4 = add i64 %i.fk, -8
  %i.fo = sub i64 %4, %i.fi                       ; 2 uses
  %i.fp = lshr i64 %i.fo, 3
  %i.fq = add nuw nsw i64 %i.fp, 1                ; 2 uses
  %min.iters.check138 = icmp ult i64 %i.fo, 120
  br i1 %min.iters.check138, label %.lr.ph.i27.preheader230, label %vector.memcheck131

vector.memcheck131:                               ; preds = %.lr.ph.i27.preheader
  %i.fr = add i64 %i.fk, -8
  %i.fs = sub i64 %i.fr, %i.fi
  %i.ft = and i64 %i.fs, -8
  %i.fu = add i64 %i.ft, 8                        ; 2 uses
  %scevgep132 = getelementptr i8, ptr %i.fh, i64 %i.fu
  %scevgep133 = getelementptr i8, ptr %i.fn, i64 %i.fu
  %bound0134 = icmp ult ptr %i.fh, %scevgep133
  %bound1135 = icmp ult ptr %i.fn, %scevgep132
  %found.conflict136 = and i1 %bound0134, %bound1135
  br i1 %found.conflict136, label %.lr.ph.i27.preheader230, label %vector.ph139

vector.ph139:                                     ; preds = %vector.memcheck131
  %n.vec141 = and i64 %i.fq, 4611686018427387900  ; 3 uses
  %i.fv = shl i64 %n.vec141, 3                    ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fn, i64 %i.fv
  %i.fx = getelementptr i8, ptr %i.fh, i64 %i.fv
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph139
  %index143 = phi i64 [ 0, %vector.ph139 ], [ %index.next150, %vector.body142 ] ; 2 uses
  %i.fy = shl i64 %index143, 3                    ; 2 uses
  %next.gep144 = getelementptr i8, ptr %i.fn, i64 %i.fy ; 3 uses
  %next.gep145 = getelementptr i8, ptr %i.fh, i64 %i.fy ; 3 uses
  %i.fz = getelementptr i8, ptr %next.gep145, i64 16 ; 2 uses
  %wide.load146 = load <2 x ptr>, ptr %next.gep145, align 8, !alias.scope !45, !noalias !48
  %wide.load147 = load <2 x ptr>, ptr %i.fz, align 8, !alias.scope !45, !noalias !48
  %i.ga = getelementptr i8, ptr %next.gep144, i64 16 ; 2 uses
  %wide.load148 = load <2 x ptr>, ptr %next.gep144, align 8, !alias.scope !48
  %wide.load149 = load <2 x ptr>, ptr %i.ga, align 8, !alias.scope !48
  store <2 x ptr> %wide.load148, ptr %next.gep145, align 8, !alias.scope !45, !noalias !48
  store <2 x ptr> %wide.load149, ptr %i.fz, align 8, !alias.scope !45, !noalias !48
  store <2 x ptr> %wide.load146, ptr %next.gep144, align 8, !alias.scope !48
  store <2 x ptr> %wide.load147, ptr %i.ga, align 8, !alias.scope !48
  %index.next150 = add nuw i64 %index143, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next150, %n.vec141
  br i1 %i.gb, label %middle.block151, label %vector.body142, !llvm.loop !50

middle.block151:                                  ; preds = %vector.body142
  %cmp.n152 = icmp eq i64 %i.fq, %n.vec141
  br i1 %cmp.n152, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i27.preheader230

.lr.ph.i27.preheader230:                          ; preds = %vector.memcheck131, %.lr.ph.i27.preheader, %middle.block151
  %.07.i28.ph = phi ptr [ %i.fn, %vector.memcheck131 ], [ %i.fn, %.lr.ph.i27.preheader ], [ %i.fw, %middle.block151 ]
  %.sroa.03.06.i29.ph = phi ptr [ %i.fh, %vector.memcheck131 ], [ %i.fh, %.lr.ph.i27.preheader ], [ %i.fx, %middle.block151 ]
  br label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph.i27.preheader230, %.lr.ph.i27
  %.07.i28 = phi ptr [ %i.gf, %.lr.ph.i27 ], [ %.07.i28.ph, %.lr.ph.i27.preheader230 ] ; 3 uses
  %.sroa.03.06.i29 = phi ptr [ %i.ge, %.lr.ph.i27 ], [ %.sroa.03.06.i29.ph, %.lr.ph.i27.preheader230 ] ; 3 uses
  %i.gc = load ptr, ptr %.sroa.03.06.i29, align 8
  %i.gd = load ptr, ptr %.07.i28, align 8
  store ptr %i.gd, ptr %.sroa.03.06.i29, align 8
  store ptr %i.gc, ptr %.07.i28, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i29, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.07.i28, i64 8
  %.not.i30 = icmp eq ptr %i.ge, %i.fj
  br i1 %.not.i30, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i27, !llvm.loop !51

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i27, %middle.block151, %bb.e, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.gh = load ptr, ptr %i.gg, align 8            ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.gj = load ptr, ptr %i.gi, align 8            ; 2 uses
  %i.gk = icmp eq ptr %i.gh, %i.gj
  br i1 %i.gk, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gh to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = tail call i64 @llvm.smax.i64(i64 %i.gn, i64 -1) ; 2 uses
  %i.gp = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.go) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.gp, i8 0, i64 %i.go, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 104
  store ptr %i.gp, ptr %i.gs, align 8
  %i.gt = load ptr, ptr %i.gi, align 8
  %i.gu = load ptr, ptr %i.gg, align 8
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = lshr exact i64 %i.gx, 3
  %i.gz = trunc i64 %i.gy to i32
  %i.ha = load ptr, ptr %i.gq, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 96
  store i32 %i.gz, ptr %i.hb, align 8
  %i.hc = load ptr, ptr %i.gg, align 8            ; 8 uses
  %i.hd = ptrtoint ptr %i.hc to i64               ; 2 uses
  %i.he = load ptr, ptr %i.gi, align 8            ; 3 uses
  %i.hf = ptrtoint ptr %i.he to i64               ; 2 uses
  %.not5.i32 = icmp eq ptr %i.hc, %i.he
  br i1 %.not5.i32, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i33.preheader

.lr.ph.i33.preheader:                             ; preds = %bb.f
  %i.hg = load ptr, ptr %i.gq, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 104
  %i.hi = load ptr, ptr %i.hh, align 8            ; 6 uses
  %5 = add i64 %i.hf, -8
  %i.hj = sub i64 %5, %i.hd                       ; 2 uses
  %i.hk = lshr i64 %i.hj, 3
  %i.hl = add nuw nsw i64 %i.hk, 1                ; 2 uses
  %min.iters.check162 = icmp ult i64 %i.hj, 120
  br i1 %min.iters.check162, label %.lr.ph.i33.preheader229, label %vector.memcheck155

vector.memcheck155:                               ; preds = %.lr.ph.i33.preheader
  %i.hm = add i64 %i.hf, -8
  %i.hn = sub i64 %i.hm, %i.hd
  %i.ho = and i64 %i.hn, -8
  %i.hp = add i64 %i.ho, 8                        ; 2 uses
  %scevgep156 = getelementptr i8, ptr %i.hc, i64 %i.hp
  %scevgep157 = getelementptr i8, ptr %i.hi, i64 %i.hp
  %bound0158 = icmp ult ptr %i.hc, %scevgep157
  %bound1159 = icmp ult ptr %i.hi, %scevgep156
  %found.conflict160 = and i1 %bound0158, %bound1159
  br i1 %found.conflict160, label %.lr.ph.i33.preheader229, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck155
  %n.vec165 = and i64 %i.hl, 4611686018427387900  ; 3 uses
  %i.hq = shl i64 %n.vec165, 3                    ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hi, i64 %i.hq
  %i.hs = getelementptr i8, ptr %i.hc, i64 %i.hq
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph163
  %index167 = phi i64 [ 0, %vector.ph163 ], [ %index.next174, %vector.body166 ] ; 2 uses
  %i.ht = shl i64 %index167, 3                    ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.hi, i64 %i.ht ; 3 uses
  %next.gep169 = getelementptr i8, ptr %i.hc, i64 %i.ht ; 3 uses
  %i.hu = getelementptr i8, ptr %next.gep169, i64 16 ; 2 uses
  %wide.load170 = load <2 x ptr>, ptr %next.gep169, align 8, !alias.scope !52, !noalias !55
  %wide.load171 = load <2 x ptr>, ptr %i.hu, align 8, !alias.scope !52, !noalias !55
  %i.hv = getelementptr i8, ptr %next.gep168, i64 16 ; 2 uses
  %wide.load172 = load <2 x ptr>, ptr %next.gep168, align 8, !alias.scope !55
  %wide.load173 = load <2 x ptr>, ptr %i.hv, align 8, !alias.scope !55
  store <2 x ptr> %wide.load172, ptr %next.gep169, align 8, !alias.scope !52, !noalias !55
  store <2 x ptr> %wide.load173, ptr %i.hu, align 8, !alias.scope !52, !noalias !55
  store <2 x ptr> %wide.load170, ptr %next.gep168, align 8, !alias.scope !55
  store <2 x ptr> %wide.load171, ptr %i.hv, align 8, !alias.scope !55
  %index.next174 = add nuw i64 %index167, 4       ; 2 uses
  %i.hw = icmp eq i64 %index.next174, %n.vec165
  br i1 %i.hw, label %middle.block175, label %vector.body166, !llvm.loop !57

middle.block175:                                  ; preds = %vector.body166
  %cmp.n176 = icmp eq i64 %i.hl, %n.vec165
  br i1 %cmp.n176, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i33.preheader229

.lr.ph.i33.preheader229:                          ; preds = %vector.memcheck155, %.lr.ph.i33.preheader, %middle.block175
  %.07.i34.ph = phi ptr [ %i.hi, %vector.memcheck155 ], [ %i.hi, %.lr.ph.i33.preheader ], [ %i.hr, %middle.block175 ]
  %.sroa.03.06.i35.ph = phi ptr [ %i.hc, %vector.memcheck155 ], [ %i.hc, %.lr.ph.i33.preheader ], [ %i.hs, %middle.block175 ]
  br label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.lr.ph.i33.preheader229, %.lr.ph.i33
  %.07.i34 = phi ptr [ %i.ia, %.lr.ph.i33 ], [ %.07.i34.ph, %.lr.ph.i33.preheader229 ] ; 3 uses
  %.sroa.03.06.i35 = phi ptr [ %i.hz, %.lr.ph.i33 ], [ %.sroa.03.06.i35.ph, %.lr.ph.i33.preheader229 ] ; 3 uses
  %i.hx = load ptr, ptr %.sroa.03.06.i35, align 8
  %i.hy = load ptr, ptr %.07.i34, align 8
  store ptr %i.hy, ptr %.sroa.03.06.i35, align 8
  store ptr %i.hx, ptr %.07.i34, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i35, i64 8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.07.i34, i64 8
  %.not.i36 = icmp eq ptr %i.hz, %i.he
  br i1 %.not.i36, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i33, !llvm.loop !58

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i33, %middle.block175, %bb.f, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ic = load ptr, ptr %i.ib, align 8            ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ie = load ptr, ptr %i.id, align 8            ; 2 uses
  %i.if = icmp eq ptr %i.ic, %i.ie
  br i1 %i.if, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = ptrtoint ptr %i.ic to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = tail call i64 @llvm.smax.i64(i64 %i.ii, i64 -1) ; 2 uses
  %i.ik = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ij) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ik, i8 0, i64 %i.ij, i1 false)
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.im = load ptr, ptr %i.il, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 72
  store ptr %i.ik, ptr %i.in, align 8
  %i.io = load ptr, ptr %i.id, align 8
  %i.ip = load ptr, ptr %i.ib, align 8
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = sub i64 %i.iq, %i.ir
  %i.it = lshr exact i64 %i.is, 3
  %i.iu = trunc i64 %i.it to i32
  %i.iv = load ptr, ptr %i.il, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 64
  store i32 %i.iu, ptr %i.iw, align 8
  %i.ix = load ptr, ptr %i.ib, align 8            ; 8 uses
  %i.iy = ptrtoint ptr %i.ix to i64               ; 2 uses
  %i.iz = load ptr, ptr %i.id, align 8            ; 3 uses
  %i.ja = ptrtoint ptr %i.iz to i64               ; 2 uses
  %.not5.i38 = icmp eq ptr %i.ix, %i.iz
  br i1 %.not5.i38, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i39.preheader

.lr.ph.i39.preheader:                             ; preds = %bb.g
  %i.jb = load ptr, ptr %i.il, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 72
  %i.jd = load ptr, ptr %i.jc, align 8            ; 6 uses
  %6 = add i64 %i.ja, -8
  %i.je = sub i64 %6, %i.iy                       ; 2 uses
  %i.jf = lshr i64 %i.je, 3
  %i.jg = add nuw nsw i64 %i.jf, 1                ; 2 uses
  %min.iters.check186 = icmp ult i64 %i.je, 120
  br i1 %min.iters.check186, label %.lr.ph.i39.preheader228, label %vector.memcheck179

vector.memcheck179:                               ; preds = %.lr.ph.i39.preheader
  %i.jh = add i64 %i.ja, -8
  %i.ji = sub i64 %i.jh, %i.iy
  %i.jj = and i64 %i.ji, -8
  %i.jk = add i64 %i.jj, 8                        ; 2 uses
  %scevgep180 = getelementptr i8, ptr %i.ix, i64 %i.jk
  %scevgep181 = getelementptr i8, ptr %i.jd, i64 %i.jk
  %bound0182 = icmp ult ptr %i.ix, %scevgep181
  %bound1183 = icmp ult ptr %i.jd, %scevgep180
  %found.conflict184 = and i1 %bound0182, %bound1183
  br i1 %found.conflict184, label %.lr.ph.i39.preheader228, label %vector.ph187

vector.ph187:                                     ; preds = %vector.memcheck179
  %n.vec189 = and i64 %i.jg, 4611686018427387900  ; 3 uses
  %i.jl = shl i64 %n.vec189, 3                    ; 2 uses
  %i.jm = getelementptr i8, ptr %i.jd, i64 %i.jl
  %i.jn = getelementptr i8, ptr %i.ix, i64 %i.jl
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph187
  %index191 = phi i64 [ 0, %vector.ph187 ], [ %index.next198, %vector.body190 ] ; 2 uses
  %i.jo = shl i64 %index191, 3                    ; 2 uses
  %next.gep192 = getelementptr i8, ptr %i.jd, i64 %i.jo ; 3 uses
  %next.gep193 = getelementptr i8, ptr %i.ix, i64 %i.jo ; 3 uses
  %i.jp = getelementptr i8, ptr %next.gep193, i64 16 ; 2 uses
  %wide.load194 = load <2 x ptr>, ptr %next.gep193, align 8, !alias.scope !59, !noalias !62
  %wide.load195 = load <2 x ptr>, ptr %i.jp, align 8, !alias.scope !59, !noalias !62
  %i.jq = getelementptr i8, ptr %next.gep192, i64 16 ; 2 uses
  %wide.load196 = load <2 x ptr>, ptr %next.gep192, align 8, !alias.scope !62
  %wide.load197 = load <2 x ptr>, ptr %i.jq, align 8, !alias.scope !62
  store <2 x ptr> %wide.load196, ptr %next.gep193, align 8, !alias.scope !59, !noalias !62
  store <2 x ptr> %wide.load197, ptr %i.jp, align 8, !alias.scope !59, !noalias !62
  store <2 x ptr> %wide.load194, ptr %next.gep192, align 8, !alias.scope !62
  store <2 x ptr> %wide.load195, ptr %i.jq, align 8, !alias.scope !62
  %index.next198 = add nuw i64 %index191, 4       ; 2 uses
  %i.jr = icmp eq i64 %index.next198, %n.vec189
  br i1 %i.jr, label %middle.block199, label %vector.body190, !llvm.loop !64

middle.block199:                                  ; preds = %vector.body190
  %cmp.n200 = icmp eq i64 %i.jg, %n.vec189
  br i1 %cmp.n200, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i39.preheader228

.lr.ph.i39.preheader228:                          ; preds = %vector.memcheck179, %.lr.ph.i39.preheader, %middle.block199
  %.07.i40.ph = phi ptr [ %i.jd, %vector.memcheck179 ], [ %i.jd, %.lr.ph.i39.preheader ], [ %i.jm, %middle.block199 ]
  %.sroa.03.06.i41.ph = phi ptr [ %i.ix, %vector.memcheck179 ], [ %i.ix, %.lr.ph.i39.preheader ], [ %i.jn, %middle.block199 ]
  br label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %.lr.ph.i39.preheader228, %.lr.ph.i39
  %.07.i40 = phi ptr [ %i.jv, %.lr.ph.i39 ], [ %.07.i40.ph, %.lr.ph.i39.preheader228 ] ; 3 uses
  %.sroa.03.06.i41 = phi ptr [ %i.ju, %.lr.ph.i39 ], [ %.sroa.03.06.i41.ph, %.lr.ph.i39.preheader228 ] ; 3 uses
  %i.js = load ptr, ptr %.sroa.03.06.i41, align 8
  %i.jt = load ptr, ptr %.07.i40, align 8
  store ptr %i.jt, ptr %.sroa.03.06.i41, align 8
  store ptr %i.js, ptr %.07.i40, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i41, i64 8 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.07.i40, i64 8
  %.not.i42 = icmp eq ptr %i.ju, %i.iz
  br i1 %.not.i42, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i39, !llvm.loop !65

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i39, %middle.block199, %bb.g, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.jx = load ptr, ptr %i.jw, align 8            ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.jz = load ptr, ptr %i.jy, align 8            ; 2 uses
  %i.ka = icmp eq ptr %i.jx, %i.jz
  br i1 %i.ka, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiSkeletonSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = ptrtoint ptr %i.jx to i64
  %i.kd = sub i64 %i.kb, %i.kc
  %i.ke = tail call i64 @llvm.smax.i64(i64 %i.kd, i64 -1)
  %i.kf = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ke) #30
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.kh = load ptr, ptr %i.kg, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1152
  store ptr %i.kf, ptr %i.ki, align 8
  %i.kj = load ptr, ptr %i.jy, align 8
  %i.kk = load ptr, ptr %i.jw, align 8
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = sub i64 %i.kl, %i.km
  %i.ko = lshr exact i64 %i.kn, 3
  %i.kp = trunc i64 %i.ko to i32
  %i.kq = load ptr, ptr %i.kg, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 1148
  store i32 %i.kp, ptr %i.kr, align 4
  %i.ks = load ptr, ptr %i.jw, align 8            ; 8 uses
  %i.kt = ptrtoint ptr %i.ks to i64               ; 2 uses
  %i.ku = load ptr, ptr %i.jy, align 8            ; 3 uses
  %i.kv = ptrtoint ptr %i.ku to i64               ; 2 uses
  %.not5.i44 = icmp eq ptr %i.ks, %i.ku
  br i1 %.not5.i44, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiSkeletonSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i45.preheader

.lr.ph.i45.preheader:                             ; preds = %bb.h
  %i.kw = load ptr, ptr %i.kg, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 1152
  %i.ky = load ptr, ptr %i.kx, align 8            ; 6 uses
  %7 = add i64 %i.kv, -8
  %i.kz = sub i64 %7, %i.kt                       ; 2 uses
  %i.la = lshr i64 %i.kz, 3
  %i.lb = add nuw nsw i64 %i.la, 1                ; 2 uses
  %min.iters.check210 = icmp ult i64 %i.kz, 120
  br i1 %min.iters.check210, label %.lr.ph.i45.preheader227, label %vector.memcheck203

vector.memcheck203:                               ; preds = %.lr.ph.i45.preheader
  %i.lc = add i64 %i.kv, -8
  %i.ld = sub i64 %i.lc, %i.kt
  %i.le = and i64 %i.ld, -8
  %i.lf = add i64 %i.le, 8                        ; 2 uses
  %scevgep204 = getelementptr i8, ptr %i.ks, i64 %i.lf
  %scevgep205 = getelementptr i8, ptr %i.ky, i64 %i.lf
  %bound0206 = icmp ult ptr %i.ks, %scevgep205
  %bound1207 = icmp ult ptr %i.ky, %scevgep204
  %found.conflict208 = and i1 %bound0206, %bound1207
  br i1 %found.conflict208, label %.lr.ph.i45.preheader227, label %vector.ph211

vector.ph211:                                     ; preds = %vector.memcheck203
  %n.vec213 = and i64 %i.lb, 4611686018427387900  ; 3 uses
  %i.lg = shl i64 %n.vec213, 3                    ; 2 uses
  %i.lh = getelementptr i8, ptr %i.ky, i64 %i.lg
  %i.li = getelementptr i8, ptr %i.ks, i64 %i.lg
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph211
  %index215 = phi i64 [ 0, %vector.ph211 ], [ %index.next222, %vector.body214 ] ; 2 uses
  %i.lj = shl i64 %index215, 3                    ; 2 uses
  %next.gep216 = getelementptr i8, ptr %i.ky, i64 %i.lj ; 3 uses
  %next.gep217 = getelementptr i8, ptr %i.ks, i64 %i.lj ; 3 uses
  %i.lk = getelementptr i8, ptr %next.gep217, i64 16 ; 2 uses
  %wide.load218 = load <2 x ptr>, ptr %next.gep217, align 8, !alias.scope !66, !noalias !69
  %wide.load219 = load <2 x ptr>, ptr %i.lk, align 8, !alias.scope !66, !noalias !69
  %i.ll = getelementptr i8, ptr %next.gep216, i64 16 ; 2 uses
  %wide.load220 = load <2 x ptr>, ptr %next.gep216, align 8, !alias.scope !69
  %wide.load221 = load <2 x ptr>, ptr %i.ll, align 8, !alias.scope !69
  store <2 x ptr> %wide.load220, ptr %next.gep217, align 8, !alias.scope !66, !noalias !69
  store <2 x ptr> %wide.load221, ptr %i.lk, align 8, !alias.scope !66, !noalias !69
  store <2 x ptr> %wide.load218, ptr %next.gep216, align 8, !alias.scope !69
  store <2 x ptr> %wide.load219, ptr %i.ll, align 8, !alias.scope !69
  %index.next222 = add nuw i64 %index215, 4       ; 2 uses
  %i.lm = icmp eq i64 %index.next222, %n.vec213
  br i1 %i.lm, label %middle.block223, label %vector.body214, !llvm.loop !71

middle.block223:                                  ; preds = %vector.body214
  %cmp.n224 = icmp eq i64 %i.lb, %n.vec213
  br i1 %cmp.n224, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiSkeletonSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i45.preheader227

.lr.ph.i45.preheader227:                          ; preds = %vector.memcheck203, %.lr.ph.i45.preheader, %middle.block223
  %.07.i46.ph = phi ptr [ %i.ky, %vector.memcheck203 ], [ %i.ky, %.lr.ph.i45.preheader ], [ %i.lh, %middle.block223 ]
  %.sroa.03.06.i47.ph = phi ptr [ %i.ks, %vector.memcheck203 ], [ %i.ks, %.lr.ph.i45.preheader ], [ %i.li, %middle.block223 ]
  br label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.lr.ph.i45.preheader227, %.lr.ph.i45
  %.07.i46 = phi ptr [ %i.lq, %.lr.ph.i45 ], [ %.07.i46.ph, %.lr.ph.i45.preheader227 ] ; 3 uses
  %.sroa.03.06.i47 = phi ptr [ %i.lp, %.lr.ph.i45 ], [ %.sroa.03.06.i47.ph, %.lr.ph.i45.preheader227 ] ; 3 uses
  %i.ln = load ptr, ptr %.sroa.03.06.i47, align 8
  %i.lo = load ptr, ptr %.07.i46, align 8
  store ptr %i.lo, ptr %.sroa.03.06.i47, align 8
  store ptr %i.ln, ptr %.07.i46, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i47, i64 8 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.07.i46, i64 8
  %.not.i48 = icmp eq ptr %i.lp, %i.ku
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
begin_hunk_1_@_ZN6Assimp3FBX12FBXConverter25ConvertMeshSingleMaterialERKNS0_12MeshGeometryERKNS0_5ModelERK12aiMatrix4x4tIfEP6aiNodeSD_:bb.a
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
  %i.ps = ptrtoint ptr %i.pp to i64
  %i.pt = ptrtoint ptr %i.po to i64
  %13 = add i64 %i.ps, -8
  %14 = sub i64 %13, %i.pt                        ; 2 uses
  %i.pu = lshr i64 %14, 3
  %i.pv = add nuw nsw i64 %i.pu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %14, 24
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
  br label %bb.bn
end_hunk_1
