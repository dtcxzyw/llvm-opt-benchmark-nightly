Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/FBXConverter?download=true
inline.NumInlined: 7596
inline.NumDeleted: 2895
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverter21ConvertGlobalSettingsEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.em

bb.eb:                                            ; preds = %.thread28.i205, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196
  %i.abu = landingpad { ptr, i32 }
          cleanup
  %i.abv = load ptr, ptr %11, align 8             ; 2 uses
  %i.abw = icmp eq ptr %i.abv, %i.pb
  br i1 %i.abw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335: ; preds = %bb.eb
  %i.abx = load i64, ptr %i.pb, align 8
  %i.aby = add i64 %i.abx, 1
  call void @_ZdlPvm(ptr noundef %i.abv, i64 noundef %i.aby) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.em

bb.ec:                                            ; preds = %.thread28.i219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
  %i.abz = landingpad { ptr, i32 }
          cleanup
  %i.aca = load ptr, ptr %12, align 8             ; 2 uses
  %i.acb = icmp eq ptr %i.aca, %i.qj
  br i1 %i.acb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338: ; preds = %bb.ec
  %i.acc = load i64, ptr %i.qj, align 8
  %i.acd = add i64 %i.acc, 1
  call void @_ZdlPvm(ptr noundef %i.aca, i64 noundef %i.acd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.em

bb.ed:                                            ; preds = %.thread28.i234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  %i.ace = landingpad { ptr, i32 }
          cleanup
  %i.acf = load ptr, ptr %13, align 8             ; 2 uses
  %i.acg = icmp eq ptr %i.acf, %i.rt
  br i1 %i.acg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341: ; preds = %bb.ed
  %i.ach = load i64, ptr %i.rt, align 8
  %i.aci = add i64 %i.ach, 1
  call void @_ZdlPvm(ptr noundef %i.acf, i64 noundef %i.aci) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.em

bb.ee:                                            ; preds = %.thread28.i248, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  %i.acj = landingpad { ptr, i32 }
          cleanup
  %i.ack = load ptr, ptr %14, align 8             ; 2 uses
  %i.acl = icmp eq ptr %i.ack, %i.td
  br i1 %i.acl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344: ; preds = %bb.ee
  %i.acm = load i64, ptr %i.td, align 8
  %i.acn = add i64 %i.acm, 1
  call void @_ZdlPvm(ptr noundef %i.ack, i64 noundef %i.acn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.em

bb.ef:                                            ; preds = %.thread28.i263, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253
  %i.aco = landingpad { ptr, i32 }
          cleanup
  %i.acp = load ptr, ptr %15, align 8             ; 2 uses
  %i.acq = icmp eq ptr %i.acp, %i.un
  br i1 %i.acq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347: ; preds = %bb.ef
  %i.acr = load i64, ptr %i.un, align 8
  %i.acs = add i64 %i.acr, 1
  call void @_ZdlPvm(ptr noundef %i.acp, i64 noundef %i.acs) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349: ; preds = %bb.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.em

bb.eg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268
  %i.act = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355

bb.eh:                                            ; preds = %.noexc271
  %i.acu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352

bb.ei:                                            ; preds = %.thread29.i
  %i.acv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acw = load ptr, ptr %18, align 8             ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.acy = icmp eq ptr %i.acw, %i.acx
  br i1 %i.acy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350: ; preds = %bb.ei
  %i.acz = load i64, ptr %i.acx, align 8
  %i.ada = add i64 %i.acz, 1
  call void @_ZdlPvm(ptr noundef %i.acw, i64 noundef %i.ada) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352: ; preds = %bb.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350, %bb.eh
  %.pn56 = phi { ptr, i32 } [ %i.acu, %bb.eh ], [ %i.acv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350 ], [ %i.acv, %bb.ei ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %i.adb = load ptr, ptr %16, align 8             ; 2 uses
  %i.adc = icmp eq ptr %i.adb, %i.vx
  br i1 %i.adc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352
  %i.add = load i64, ptr %i.vx, align 8
  %i.ade = add i64 %i.add, 1
  call void @_ZdlPvm(ptr noundef %i.adb, i64 noundef %i.ade) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353, %bb.eg
  %.pn56.pn = phi { ptr, i32 } [ %i.act, %bb.eg ], [ %.pn56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353 ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.em

bb.ej:                                            ; preds = %.noexc.i287
  %i.adf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358

bb.ek:                                            ; preds = %.thread29.i298
  %i.adg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  %i.adh = load ptr, ptr %19, align 8             ; 2 uses
  %i.adi = icmp eq ptr %i.adh, %i.ya
  br i1 %i.adi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356: ; preds = %bb.ek
  %i.adj = load i64, ptr %i.ya, align 8
  %i.adk = add i64 %i.adj, 1
  call void @_ZdlPvm(ptr noundef %i.adh, i64 noundef %i.adk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356, %bb.ej
  %.pn59 = phi { ptr, i32 } [ %i.adf, %bb.ej ], [ %i.adg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356 ], [ %i.adg, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.em

bb.el:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304, %bb.a
  ret void

bb.em:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307
  %.pn59.pn = phi { ptr, i32 } [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358 ], [ %.pn56.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355 ], [ %i.aco, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349 ], [ %i.acj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346 ], [ %i.ace, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343 ], [ %i.abz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340 ], [ %i.abu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337 ], [ %.pn44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334 ], [ %i.abj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331 ], [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328 ], [ %i.aay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325 ], [ %i.aat, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322 ], [ %i.aao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319 ], [ %i.aaj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316 ], [ %i.aae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313 ], [ %i.zz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310 ], [ %i.zu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307 ]
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
  %i.x = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not5.i = icmp eq ptr %i.w, %i.x
  br i1 %.not5.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %1 = ptrtoaddr ptr %i.x to i64
  %2 = ptrtoaddr ptr %i.w to i64
  %i.y = load ptr, ptr %i.k, align 8
  %3 = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %4 = load ptr, ptr %3, align 8                  ; 6 uses
  %i.z = add i64 %1, -8
  %i.aa = sub i64 %i.z, %2                        ; 3 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 104
  br i1 %min.iters.check, label %.lr.ph.i.preheader245, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.ad = and i64 %i.aa, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %i.af = getelementptr i8, ptr %i.w, i64 %i.ae
  %i.ag = getelementptr i8, ptr %4, i64 %i.ae
  %bound0 = icmp ult ptr %i.w, %i.ag
  %bound1 = icmp ult ptr %4, %i.af
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader245, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %4, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.w, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %4, i64 %i.ak ; 3 uses
  %next.gep78 = getelementptr i8, ptr %i.w, i64 %i.ak ; 3 uses
  %i.al = getelementptr i8, ptr %next.gep78, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep78, align 8, !alias.scope !81, !noalias !82
  %wide.load79 = load <2 x ptr>, ptr %i.al, align 8, !alias.scope !81, !noalias !82
  %i.am = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load80 = load <2 x ptr>, ptr %next.gep, align 8, !alias.scope !82
  %wide.load81 = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !82
  store <2 x ptr> %wide.load80, ptr %next.gep78, align 8, !alias.scope !81, !noalias !82
  store <2 x ptr> %wide.load81, ptr %i.al, align 8, !alias.scope !81, !noalias !82
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !alias.scope !82
  store <2 x ptr> %wide.load79, ptr %i.am, align 8, !alias.scope !82
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i.preheader245

.lr.ph.i.preheader245:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph.i.preheader ], [ %i.ai, %middle.block ]
  %.sroa.03.06.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader245, %.lr.ph.i
  %.07.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader245 ] ; 3 uses
  %.sroa.03.06.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %.sroa.03.06.i.ph, %.lr.ph.i.preheader245 ] ; 3 uses
  %i.ao = load ptr, ptr %.sroa.03.06.i, align 8
  %i.ap = load ptr, ptr %.07.i, align 8
  store ptr %i.ap, ptr %.sroa.03.06.i, align 8
  store ptr %i.ao, ptr %.07.i, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %.not.i = icmp eq ptr %i.aq, %i.x
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i, !llvm.loop !50

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.b, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = icmp eq ptr %i.at, %i.av
  br i1 %i.aw, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.at to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = tail call i64 @llvm.smax.i64(i64 %i.az, i64 -1) ; 2 uses
  %i.bb = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ba) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bb, i8 0, i64 %i.ba, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store ptr %i.bb, ptr %i.be, align 8
  %i.bf = load ptr, ptr %i.au, align 8
  %i.bg = load ptr, ptr %i.as, align 8
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = lshr exact i64 %i.bj, 3
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = load ptr, ptr %i.bc, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store i32 %i.bl, ptr %i.bn, align 8
  %i.bo = load ptr, ptr %i.as, align 8            ; 8 uses
  %i.bp = load ptr, ptr %i.au, align 8            ; 3 uses
  %.not5.i14 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not5.i14, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i15.preheader

.lr.ph.i15.preheader:                             ; preds = %bb.c
  %5 = ptrtoaddr ptr %i.bp to i64
  %6 = ptrtoaddr ptr %i.bo to i64
  %i.bq = load ptr, ptr %i.bc, align 8
  %7 = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %8 = load ptr, ptr %7, align 8                  ; 6 uses
  %i.br = add i64 %5, -8
  %i.bs = sub i64 %i.br, %6                       ; 3 uses
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check89 = icmp ult i64 %i.bs, 104
  br i1 %min.iters.check89, label %.lr.ph.i15.preheader244, label %vector.memcheck90

vector.memcheck90:                                ; preds = %.lr.ph.i15.preheader
  %i.bv = and i64 %i.bs, -8
  %i.bw = add i64 %i.bv, 8                        ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bo, i64 %i.bw
  %i.by = getelementptr i8, ptr %8, i64 %i.bw
  %bound091 = icmp ult ptr %i.bo, %i.by
  %bound192 = icmp ult ptr %8, %i.bx
  %found.conflict93 = and i1 %bound091, %bound192
  br i1 %found.conflict93, label %.lr.ph.i15.preheader244, label %vector.ph94

vector.ph94:                                      ; preds = %vector.memcheck90
  %n.vec95 = and i64 %i.bu, 4611686018427387900   ; 3 uses
  %i.bz = shl i64 %n.vec95, 3                     ; 2 uses
  %i.ca = getelementptr i8, ptr %8, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.bo, i64 %i.bz
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph94
  %index97 = phi i64 [ 0, %vector.ph94 ], [ %index.next104, %vector.body96 ] ; 2 uses
  %i.cc = shl i64 %index97, 3                     ; 2 uses
  %next.gep98 = getelementptr i8, ptr %8, i64 %i.cc ; 3 uses
  %next.gep99 = getelementptr i8, ptr %i.bo, i64 %i.cc ; 3 uses
  %i.cd = getelementptr i8, ptr %next.gep99, i64 16 ; 2 uses
  %wide.load100 = load <2 x ptr>, ptr %next.gep99, align 8, !alias.scope !83, !noalias !84
  %wide.load101 = load <2 x ptr>, ptr %i.cd, align 8, !alias.scope !83, !noalias !84
  %i.ce = getelementptr i8, ptr %next.gep98, i64 16 ; 2 uses
  %wide.load102 = load <2 x ptr>, ptr %next.gep98, align 8, !alias.scope !84
  %wide.load103 = load <2 x ptr>, ptr %i.ce, align 8, !alias.scope !84
  store <2 x ptr> %wide.load102, ptr %next.gep99, align 8, !alias.scope !83, !noalias !84
  store <2 x ptr> %wide.load103, ptr %i.cd, align 8, !alias.scope !83, !noalias !84
  store <2 x ptr> %wide.load100, ptr %next.gep98, align 8, !alias.scope !84
  store <2 x ptr> %wide.load101, ptr %i.ce, align 8, !alias.scope !84
  %index.next104 = add nuw i64 %index97, 4        ; 2 uses
  %i.cf = icmp eq i64 %index.next104, %n.vec95
  br i1 %i.cf, label %middle.block105, label %vector.body96, !llvm.loop !54

middle.block105:                                  ; preds = %vector.body96
  %cmp.n106 = icmp eq i64 %i.bu, %n.vec95
  br i1 %cmp.n106, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i15.preheader244

.lr.ph.i15.preheader244:                          ; preds = %vector.memcheck90, %.lr.ph.i15.preheader, %middle.block105
  %.07.i16.ph = phi ptr [ %8, %vector.memcheck90 ], [ %8, %.lr.ph.i15.preheader ], [ %i.ca, %middle.block105 ]
  %.sroa.03.06.i17.ph = phi ptr [ %i.bo, %vector.memcheck90 ], [ %i.bo, %.lr.ph.i15.preheader ], [ %i.cb, %middle.block105 ]
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.lr.ph.i15.preheader244, %.lr.ph.i15
  %.07.i16 = phi ptr [ %i.cj, %.lr.ph.i15 ], [ %.07.i16.ph, %.lr.ph.i15.preheader244 ] ; 3 uses
  %.sroa.03.06.i17 = phi ptr [ %i.ci, %.lr.ph.i15 ], [ %.sroa.03.06.i17.ph, %.lr.ph.i15.preheader244 ] ; 3 uses
  %i.cg = load ptr, ptr %.sroa.03.06.i17, align 8
  %i.ch = load ptr, ptr %.07.i16, align 8
  store ptr %i.ch, ptr %.sroa.03.06.i17, align 8
  store ptr %i.cg, ptr %.07.i16, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i17, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.07.i16, i64 8
  %.not.i18 = icmp eq ptr %i.ci, %i.bp
  br i1 %.not.i18, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i15, !llvm.loop !55

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i15, %middle.block105, %bb.c, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %i.co = icmp eq ptr %i.cl, %i.cn
  br i1 %i.co, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.cl to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = tail call i64 @llvm.smax.i64(i64 %i.cr, i64 -1) ; 2 uses
  %i.ct = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cs) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ct, i8 0, i64 %i.cs, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  store ptr %i.ct, ptr %i.cw, align 8
  %i.cx = load ptr, ptr %i.cm, align 8
  %i.cy = load ptr, ptr %i.ck, align 8
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = lshr exact i64 %i.db, 3
  %i.dd = trunc i64 %i.dc to i32
  %i.de = load ptr, ptr %i.cu, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  store i32 %i.dd, ptr %i.df, align 8
  %i.dg = load ptr, ptr %i.ck, align 8            ; 8 uses
  %i.dh = load ptr, ptr %i.cm, align 8            ; 3 uses
  %.not5.i20 = icmp eq ptr %i.dg, %i.dh
  br i1 %.not5.i20, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i21.preheader

.lr.ph.i21.preheader:                             ; preds = %bb.d
  %9 = ptrtoaddr ptr %i.dh to i64
  %10 = ptrtoaddr ptr %i.dg to i64
  %i.di = load ptr, ptr %i.cu, align 8
  %11 = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %12 = load ptr, ptr %11, align 8                ; 6 uses
  %i.dj = add i64 %9, -8
  %i.dk = sub i64 %i.dj, %10                      ; 3 uses
  %i.dl = lshr i64 %i.dk, 3
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check115 = icmp ult i64 %i.dk, 104
  br i1 %min.iters.check115, label %.lr.ph.i21.preheader243, label %vector.memcheck116

vector.memcheck116:                               ; preds = %.lr.ph.i21.preheader
  %i.dn = and i64 %i.dk, -8
  %i.do = add i64 %i.dn, 8                        ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dg, i64 %i.do
  %i.dq = getelementptr i8, ptr %12, i64 %i.do
  %bound0117 = icmp ult ptr %i.dg, %i.dq
  %bound1118 = icmp ult ptr %12, %i.dp
  %found.conflict119 = and i1 %bound0117, %bound1118
  br i1 %found.conflict119, label %.lr.ph.i21.preheader243, label %vector.ph120

vector.ph120:                                     ; preds = %vector.memcheck116
  %n.vec121 = and i64 %i.dm, 4611686018427387900  ; 3 uses
  %i.dr = shl i64 %n.vec121, 3                    ; 2 uses
  %i.ds = getelementptr i8, ptr %12, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.dg, i64 %i.dr
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next130, %vector.body122 ] ; 2 uses
  %i.du = shl i64 %index123, 3                    ; 2 uses
  %next.gep124 = getelementptr i8, ptr %12, i64 %i.du ; 3 uses
  %next.gep125 = getelementptr i8, ptr %i.dg, i64 %i.du ; 3 uses
  %i.dv = getelementptr i8, ptr %next.gep125, i64 16 ; 2 uses
  %wide.load126 = load <2 x ptr>, ptr %next.gep125, align 8, !alias.scope !85, !noalias !86
  %wide.load127 = load <2 x ptr>, ptr %i.dv, align 8, !alias.scope !85, !noalias !86
  %i.dw = getelementptr i8, ptr %next.gep124, i64 16 ; 2 uses
  %wide.load128 = load <2 x ptr>, ptr %next.gep124, align 8, !alias.scope !86
  %wide.load129 = load <2 x ptr>, ptr %i.dw, align 8, !alias.scope !86
  store <2 x ptr> %wide.load128, ptr %next.gep125, align 8, !alias.scope !85, !noalias !86
  store <2 x ptr> %wide.load129, ptr %i.dv, align 8, !alias.scope !85, !noalias !86
  store <2 x ptr> %wide.load126, ptr %next.gep124, align 8, !alias.scope !86
  store <2 x ptr> %wide.load127, ptr %i.dw, align 8, !alias.scope !86
  %index.next130 = add nuw i64 %index123, 4       ; 2 uses
  %i.dx = icmp eq i64 %index.next130, %n.vec121
  br i1 %i.dx, label %middle.block131, label %vector.body122, !llvm.loop !59

middle.block131:                                  ; preds = %vector.body122
  %cmp.n132 = icmp eq i64 %i.dm, %n.vec121
  br i1 %cmp.n132, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i21.preheader243

.lr.ph.i21.preheader243:                          ; preds = %vector.memcheck116, %.lr.ph.i21.preheader, %middle.block131
  %.07.i22.ph = phi ptr [ %12, %vector.memcheck116 ], [ %12, %.lr.ph.i21.preheader ], [ %i.ds, %middle.block131 ]
  %.sroa.03.06.i23.ph = phi ptr [ %i.dg, %vector.memcheck116 ], [ %i.dg, %.lr.ph.i21.preheader ], [ %i.dt, %middle.block131 ]
  br label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.preheader243, %.lr.ph.i21
  %.07.i22 = phi ptr [ %i.eb, %.lr.ph.i21 ], [ %.07.i22.ph, %.lr.ph.i21.preheader243 ] ; 3 uses
  %.sroa.03.06.i23 = phi ptr [ %i.ea, %.lr.ph.i21 ], [ %.sroa.03.06.i23.ph, %.lr.ph.i21.preheader243 ] ; 3 uses
  %i.dy = load ptr, ptr %.sroa.03.06.i23, align 8
  %i.dz = load ptr, ptr %.07.i22, align 8
  store ptr %i.dz, ptr %.sroa.03.06.i23, align 8
  store ptr %i.dy, ptr %.07.i22, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i23, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.07.i22, i64 8
  %.not.i24 = icmp eq ptr %i.ea, %i.dh
  br i1 %.not.i24, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i21, !llvm.loop !60

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i21, %middle.block131, %bb.d, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ef = load ptr, ptr %i.ee, align 8            ; 2 uses
  %i.eg = icmp eq ptr %i.ed, %i.ef
  br i1 %i.eg, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.ed to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = tail call i64 @llvm.smax.i64(i64 %i.ej, i64 -1) ; 2 uses
  %i.el = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ek) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.el, i8 0, i64 %i.ek, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 88
  store ptr %i.el, ptr %i.eo, align 8
  %i.ep = load ptr, ptr %i.ee, align 8
  %i.eq = load ptr, ptr %i.ec, align 8
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = lshr exact i64 %i.et, 3
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = load ptr, ptr %i.em, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 80
  store i32 %i.ev, ptr %i.ex, align 8
  %i.ey = load ptr, ptr %i.ec, align 8            ; 8 uses
  %i.ez = load ptr, ptr %i.ee, align 8            ; 3 uses
  %.not5.i26 = icmp eq ptr %i.ey, %i.ez
  br i1 %.not5.i26, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i27.preheader

.lr.ph.i27.preheader:                             ; preds = %bb.e
  %13 = ptrtoaddr ptr %i.ez to i64
  %14 = ptrtoaddr ptr %i.ey to i64
  %i.fa = load ptr, ptr %i.em, align 8
  %15 = getelementptr inbounds nuw i8, ptr %i.fa, i64 88
  %16 = load ptr, ptr %15, align 8                ; 6 uses
  %i.fb = add i64 %13, -8
  %i.fc = sub i64 %i.fb, %14                      ; 3 uses
  %i.fd = lshr i64 %i.fc, 3
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.fc, 104
  br i1 %min.iters.check141, label %.lr.ph.i27.preheader242, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph.i27.preheader
  %i.ff = and i64 %i.fc, -8
  %i.fg = add i64 %i.ff, 8                        ; 2 uses
  %i.fh = getelementptr i8, ptr %i.ey, i64 %i.fg
  %i.fi = getelementptr i8, ptr %16, i64 %i.fg
  %bound0143 = icmp ult ptr %i.ey, %i.fi
  %bound1144 = icmp ult ptr %16, %i.fh
  %found.conflict145 = and i1 %bound0143, %bound1144
  br i1 %found.conflict145, label %.lr.ph.i27.preheader242, label %vector.ph146

vector.ph146:                                     ; preds = %vector.memcheck142
  %n.vec147 = and i64 %i.fe, 4611686018427387900  ; 3 uses
  %i.fj = shl i64 %n.vec147, 3                    ; 2 uses
  %i.fk = getelementptr i8, ptr %16, i64 %i.fj
  %i.fl = getelementptr i8, ptr %i.ey, i64 %i.fj
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph146
  %index149 = phi i64 [ 0, %vector.ph146 ], [ %index.next156, %vector.body148 ] ; 2 uses
  %i.fm = shl i64 %index149, 3                    ; 2 uses
  %next.gep150 = getelementptr i8, ptr %16, i64 %i.fm ; 3 uses
  %next.gep151 = getelementptr i8, ptr %i.ey, i64 %i.fm ; 3 uses
  %i.fn = getelementptr i8, ptr %next.gep151, i64 16 ; 2 uses
  %wide.load152 = load <2 x ptr>, ptr %next.gep151, align 8, !alias.scope !87, !noalias !88
  %wide.load153 = load <2 x ptr>, ptr %i.fn, align 8, !alias.scope !87, !noalias !88
  %i.fo = getelementptr i8, ptr %next.gep150, i64 16 ; 2 uses
  %wide.load154 = load <2 x ptr>, ptr %next.gep150, align 8, !alias.scope !88
  %wide.load155 = load <2 x ptr>, ptr %i.fo, align 8, !alias.scope !88
  store <2 x ptr> %wide.load154, ptr %next.gep151, align 8, !alias.scope !87, !noalias !88
  store <2 x ptr> %wide.load155, ptr %i.fn, align 8, !alias.scope !87, !noalias !88
  store <2 x ptr> %wide.load152, ptr %next.gep150, align 8, !alias.scope !88
  store <2 x ptr> %wide.load153, ptr %i.fo, align 8, !alias.scope !88
  %index.next156 = add nuw i64 %index149, 4       ; 2 uses
  %i.fp = icmp eq i64 %index.next156, %n.vec147
  br i1 %i.fp, label %middle.block157, label %vector.body148, !llvm.loop !64

middle.block157:                                  ; preds = %vector.body148
  %cmp.n158 = icmp eq i64 %i.fe, %n.vec147
  br i1 %cmp.n158, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i27.preheader242

.lr.ph.i27.preheader242:                          ; preds = %vector.memcheck142, %.lr.ph.i27.preheader, %middle.block157
  %.07.i28.ph = phi ptr [ %16, %vector.memcheck142 ], [ %16, %.lr.ph.i27.preheader ], [ %i.fk, %middle.block157 ]
  %.sroa.03.06.i29.ph = phi ptr [ %i.ey, %vector.memcheck142 ], [ %i.ey, %.lr.ph.i27.preheader ], [ %i.fl, %middle.block157 ]
  br label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph.i27.preheader242, %.lr.ph.i27
  %.07.i28 = phi ptr [ %i.ft, %.lr.ph.i27 ], [ %.07.i28.ph, %.lr.ph.i27.preheader242 ] ; 3 uses
  %.sroa.03.06.i29 = phi ptr [ %i.fs, %.lr.ph.i27 ], [ %.sroa.03.06.i29.ph, %.lr.ph.i27.preheader242 ] ; 3 uses
  %i.fq = load ptr, ptr %.sroa.03.06.i29, align 8
  %i.fr = load ptr, ptr %.07.i28, align 8
  store ptr %i.fr, ptr %.sroa.03.06.i29, align 8
  store ptr %i.fq, ptr %.07.i28, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i29, i64 8 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.07.i28, i64 8
  %.not.i30 = icmp eq ptr %i.fs, %i.ez
  br i1 %.not.i30, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i27, !llvm.loop !65

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i27, %middle.block157, %bb.e, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP11aiAnimationSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8            ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8            ; 2 uses
  %i.fy = icmp eq ptr %i.fv, %i.fx
  br i1 %i.fy, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = ptrtoint ptr %i.fv to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = tail call i64 @llvm.smax.i64(i64 %i.gb, i64 -1) ; 2 uses
  %i.gd = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gc) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.gd, i8 0, i64 %i.gc, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 104
  store ptr %i.gd, ptr %i.gg, align 8
  %i.gh = load ptr, ptr %i.fw, align 8
  %i.gi = load ptr, ptr %i.fu, align 8
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = lshr exact i64 %i.gl, 3
  %i.gn = trunc i64 %i.gm to i32
  %i.go = load ptr, ptr %i.ge, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 96
  store i32 %i.gn, ptr %i.gp, align 8
  %i.gq = load ptr, ptr %i.fu, align 8            ; 8 uses
  %i.gr = load ptr, ptr %i.fw, align 8            ; 3 uses
  %.not5.i32 = icmp eq ptr %i.gq, %i.gr
  br i1 %.not5.i32, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i33.preheader

.lr.ph.i33.preheader:                             ; preds = %bb.f
  %17 = ptrtoaddr ptr %i.gr to i64
  %18 = ptrtoaddr ptr %i.gq to i64
  %i.gs = load ptr, ptr %i.ge, align 8
  %19 = getelementptr inbounds nuw i8, ptr %i.gs, i64 104
  %20 = load ptr, ptr %19, align 8                ; 6 uses
  %i.gt = add i64 %17, -8
  %i.gu = sub i64 %i.gt, %18                      ; 3 uses
  %i.gv = lshr i64 %i.gu, 3
  %i.gw = add nuw nsw i64 %i.gv, 1                ; 2 uses
  %min.iters.check167 = icmp ult i64 %i.gu, 104
  br i1 %min.iters.check167, label %.lr.ph.i33.preheader241, label %vector.memcheck168

vector.memcheck168:                               ; preds = %.lr.ph.i33.preheader
  %i.gx = and i64 %i.gu, -8
  %i.gy = add i64 %i.gx, 8                        ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gq, i64 %i.gy
  %i.ha = getelementptr i8, ptr %20, i64 %i.gy
  %bound0169 = icmp ult ptr %i.gq, %i.ha
  %bound1170 = icmp ult ptr %20, %i.gz
  %found.conflict171 = and i1 %bound0169, %bound1170
  br i1 %found.conflict171, label %.lr.ph.i33.preheader241, label %vector.ph172

vector.ph172:                                     ; preds = %vector.memcheck168
  %n.vec173 = and i64 %i.gw, 4611686018427387900  ; 3 uses
  %i.hb = shl i64 %n.vec173, 3                    ; 2 uses
  %i.hc = getelementptr i8, ptr %20, i64 %i.hb
  %i.hd = getelementptr i8, ptr %i.gq, i64 %i.hb
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next182, %vector.body174 ] ; 2 uses
  %i.he = shl i64 %index175, 3                    ; 2 uses
  %next.gep176 = getelementptr i8, ptr %20, i64 %i.he ; 3 uses
  %next.gep177 = getelementptr i8, ptr %i.gq, i64 %i.he ; 3 uses
  %i.hf = getelementptr i8, ptr %next.gep177, i64 16 ; 2 uses
  %wide.load178 = load <2 x ptr>, ptr %next.gep177, align 8, !alias.scope !89, !noalias !90
  %wide.load179 = load <2 x ptr>, ptr %i.hf, align 8, !alias.scope !89, !noalias !90
  %i.hg = getelementptr i8, ptr %next.gep176, i64 16 ; 2 uses
  %wide.load180 = load <2 x ptr>, ptr %next.gep176, align 8, !alias.scope !90
  %wide.load181 = load <2 x ptr>, ptr %i.hg, align 8, !alias.scope !90
  store <2 x ptr> %wide.load180, ptr %next.gep177, align 8, !alias.scope !89, !noalias !90
  store <2 x ptr> %wide.load181, ptr %i.hf, align 8, !alias.scope !89, !noalias !90
  store <2 x ptr> %wide.load178, ptr %next.gep176, align 8, !alias.scope !90
  store <2 x ptr> %wide.load179, ptr %i.hg, align 8, !alias.scope !90
  %index.next182 = add nuw i64 %index175, 4       ; 2 uses
  %i.hh = icmp eq i64 %index.next182, %n.vec173
  br i1 %i.hh, label %middle.block183, label %vector.body174, !llvm.loop !69

middle.block183:                                  ; preds = %vector.body174
  %cmp.n184 = icmp eq i64 %i.gw, %n.vec173
  br i1 %cmp.n184, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i33.preheader241

.lr.ph.i33.preheader241:                          ; preds = %vector.memcheck168, %.lr.ph.i33.preheader, %middle.block183
  %.07.i34.ph = phi ptr [ %20, %vector.memcheck168 ], [ %20, %.lr.ph.i33.preheader ], [ %i.hc, %middle.block183 ]
  %.sroa.03.06.i35.ph = phi ptr [ %i.gq, %vector.memcheck168 ], [ %i.gq, %.lr.ph.i33.preheader ], [ %i.hd, %middle.block183 ]
  br label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.lr.ph.i33.preheader241, %.lr.ph.i33
  %.07.i34 = phi ptr [ %i.hl, %.lr.ph.i33 ], [ %.07.i34.ph, %.lr.ph.i33.preheader241 ] ; 3 uses
  %.sroa.03.06.i35 = phi ptr [ %i.hk, %.lr.ph.i33 ], [ %.sroa.03.06.i35.ph, %.lr.ph.i33.preheader241 ] ; 3 uses
  %i.hi = load ptr, ptr %.sroa.03.06.i35, align 8
  %i.hj = load ptr, ptr %.07.i34, align 8
  store ptr %i.hj, ptr %.sroa.03.06.i35, align 8
  store ptr %i.hi, ptr %.07.i34, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i35, i64 8 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.07.i34, i64 8
  %.not.i36 = icmp eq ptr %i.hk, %i.gr
  br i1 %.not.i36, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i33, !llvm.loop !70

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i33, %middle.block183, %bb.f, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP7aiLightSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.hn = load ptr, ptr %i.hm, align 8            ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.hp = load ptr, ptr %i.ho, align 8            ; 2 uses
  %i.hq = icmp eq ptr %i.hn, %i.hp
  br i1 %i.hq, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = ptrtoint ptr %i.hn to i64
  %i.ht = sub i64 %i.hr, %i.hs
  %i.hu = tail call i64 @llvm.smax.i64(i64 %i.ht, i64 -1) ; 2 uses
  %i.hv = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.hu) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hv, i8 0, i64 %i.hu, i1 false)
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 72
  store ptr %i.hv, ptr %i.hy, align 8
  %i.hz = load ptr, ptr %i.ho, align 8
  %i.ia = load ptr, ptr %i.hm, align 8
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = sub i64 %i.ib, %i.ic
  %i.ie = lshr exact i64 %i.id, 3
  %i.if = trunc i64 %i.ie to i32
  %i.ig = load ptr, ptr %i.hw, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 64
  store i32 %i.if, ptr %i.ih, align 8
  %i.ii = load ptr, ptr %i.hm, align 8            ; 8 uses
  %i.ij = load ptr, ptr %i.ho, align 8            ; 3 uses
  %.not5.i38 = icmp eq ptr %i.ii, %i.ij
  br i1 %.not5.i38, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i39.preheader

.lr.ph.i39.preheader:                             ; preds = %bb.g
  %21 = ptrtoaddr ptr %i.ij to i64
  %22 = ptrtoaddr ptr %i.ii to i64
  %i.ik = load ptr, ptr %i.hw, align 8
  %23 = getelementptr inbounds nuw i8, ptr %i.ik, i64 72
  %24 = load ptr, ptr %23, align 8                ; 6 uses
  %i.il = add i64 %21, -8
  %i.im = sub i64 %i.il, %22                      ; 3 uses
  %i.in = lshr i64 %i.im, 3
  %i.io = add nuw nsw i64 %i.in, 1                ; 2 uses
  %min.iters.check193 = icmp ult i64 %i.im, 104
  br i1 %min.iters.check193, label %.lr.ph.i39.preheader240, label %vector.memcheck194

vector.memcheck194:                               ; preds = %.lr.ph.i39.preheader
  %i.ip = and i64 %i.im, -8
  %i.iq = add i64 %i.ip, 8                        ; 2 uses
  %i.ir = getelementptr i8, ptr %i.ii, i64 %i.iq
  %i.is = getelementptr i8, ptr %24, i64 %i.iq
  %bound0195 = icmp ult ptr %i.ii, %i.is
  %bound1196 = icmp ult ptr %24, %i.ir
  %found.conflict197 = and i1 %bound0195, %bound1196
  br i1 %found.conflict197, label %.lr.ph.i39.preheader240, label %vector.ph198

vector.ph198:                                     ; preds = %vector.memcheck194
  %n.vec199 = and i64 %i.io, 4611686018427387900  ; 3 uses
  %i.it = shl i64 %n.vec199, 3                    ; 2 uses
  %i.iu = getelementptr i8, ptr %24, i64 %i.it
  %i.iv = getelementptr i8, ptr %i.ii, i64 %i.it
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph198
  %index201 = phi i64 [ 0, %vector.ph198 ], [ %index.next208, %vector.body200 ] ; 2 uses
  %i.iw = shl i64 %index201, 3                    ; 2 uses
  %next.gep202 = getelementptr i8, ptr %24, i64 %i.iw ; 3 uses
  %next.gep203 = getelementptr i8, ptr %i.ii, i64 %i.iw ; 3 uses
  %i.ix = getelementptr i8, ptr %next.gep203, i64 16 ; 2 uses
  %wide.load204 = load <2 x ptr>, ptr %next.gep203, align 8, !alias.scope !91, !noalias !92
  %wide.load205 = load <2 x ptr>, ptr %i.ix, align 8, !alias.scope !91, !noalias !92
  %i.iy = getelementptr i8, ptr %next.gep202, i64 16 ; 2 uses
  %wide.load206 = load <2 x ptr>, ptr %next.gep202, align 8, !alias.scope !92
  %wide.load207 = load <2 x ptr>, ptr %i.iy, align 8, !alias.scope !92
  store <2 x ptr> %wide.load206, ptr %next.gep203, align 8, !alias.scope !91, !noalias !92
  store <2 x ptr> %wide.load207, ptr %i.ix, align 8, !alias.scope !91, !noalias !92
  store <2 x ptr> %wide.load204, ptr %next.gep202, align 8, !alias.scope !92
  store <2 x ptr> %wide.load205, ptr %i.iy, align 8, !alias.scope !92
  %index.next208 = add nuw i64 %index201, 4       ; 2 uses
  %i.iz = icmp eq i64 %index.next208, %n.vec199
  br i1 %i.iz, label %middle.block209, label %vector.body200, !llvm.loop !74

middle.block209:                                  ; preds = %vector.body200
  %cmp.n210 = icmp eq i64 %i.io, %n.vec199
  br i1 %cmp.n210, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i39.preheader240

.lr.ph.i39.preheader240:                          ; preds = %vector.memcheck194, %.lr.ph.i39.preheader, %middle.block209
  %.07.i40.ph = phi ptr [ %24, %vector.memcheck194 ], [ %24, %.lr.ph.i39.preheader ], [ %i.iu, %middle.block209 ]
  %.sroa.03.06.i41.ph = phi ptr [ %i.ii, %vector.memcheck194 ], [ %i.ii, %.lr.ph.i39.preheader ], [ %i.iv, %middle.block209 ]
  br label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %.lr.ph.i39.preheader240, %.lr.ph.i39
  %.07.i40 = phi ptr [ %i.jd, %.lr.ph.i39 ], [ %.07.i40.ph, %.lr.ph.i39.preheader240 ] ; 3 uses
  %.sroa.03.06.i41 = phi ptr [ %i.jc, %.lr.ph.i39 ], [ %.sroa.03.06.i41.ph, %.lr.ph.i39.preheader240 ] ; 3 uses
  %i.ja = load ptr, ptr %.sroa.03.06.i41, align 8
  %i.jb = load ptr, ptr %.07.i40, align 8
  store ptr %i.jb, ptr %.sroa.03.06.i41, align 8
  store ptr %i.ja, ptr %.07.i40, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i41, i64 8 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.07.i40, i64 8
  %.not.i42 = icmp eq ptr %i.jc, %i.ij
  br i1 %.not.i42, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i39, !llvm.loop !75

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i39, %middle.block209, %bb.g, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.jf = load ptr, ptr %i.je, align 8            ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.jh = load ptr, ptr %i.jg, align 8            ; 2 uses
  %i.ji = icmp eq ptr %i.jf, %i.jh
  br i1 %i.ji, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiSkeletonSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = ptrtoint ptr %i.jf to i64
  %i.jl = sub i64 %i.jj, %i.jk
  %i.jm = tail call i64 @llvm.smax.i64(i64 %i.jl, i64 -1)
  %i.jn = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.jm) #30
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 1152
  store ptr %i.jn, ptr %i.jq, align 8
  %i.jr = load ptr, ptr %i.jg, align 8
  %i.js = load ptr, ptr %i.je, align 8
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = ptrtoint ptr %i.js to i64
  %i.jv = sub i64 %i.jt, %i.ju
  %i.jw = lshr exact i64 %i.jv, 3
  %i.jx = trunc i64 %i.jw to i32
  %i.jy = load ptr, ptr %i.jo, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 1148
  store i32 %i.jx, ptr %i.jz, align 4
  %i.ka = load ptr, ptr %i.je, align 8            ; 8 uses
  %i.kb = load ptr, ptr %i.jg, align 8            ; 3 uses
  %.not5.i44 = icmp eq ptr %i.ka, %i.kb
  br i1 %.not5.i44, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiSkeletonSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i45.preheader

.lr.ph.i45.preheader:                             ; preds = %bb.h
  %25 = ptrtoaddr ptr %i.kb to i64
  %26 = ptrtoaddr ptr %i.ka to i64
  %i.kc = load ptr, ptr %i.jo, align 8
  %27 = getelementptr inbounds nuw i8, ptr %i.kc, i64 1152
  %28 = load ptr, ptr %27, align 8                ; 6 uses
  %i.kd = add i64 %25, -8
  %i.ke = sub i64 %i.kd, %26                      ; 3 uses
  %i.kf = lshr i64 %i.ke, 3
  %i.kg = add nuw nsw i64 %i.kf, 1                ; 2 uses
  %min.iters.check219 = icmp ult i64 %i.ke, 104
  br i1 %min.iters.check219, label %.lr.ph.i45.preheader239, label %vector.memcheck220

vector.memcheck220:                               ; preds = %.lr.ph.i45.preheader
  %i.kh = and i64 %i.ke, -8
  %i.ki = add i64 %i.kh, 8                        ; 2 uses
  %i.kj = getelementptr i8, ptr %i.ka, i64 %i.ki
  %i.kk = getelementptr i8, ptr %28, i64 %i.ki
  %bound0221 = icmp ult ptr %i.ka, %i.kk
  %bound1222 = icmp ult ptr %28, %i.kj
  %found.conflict223 = and i1 %bound0221, %bound1222
  br i1 %found.conflict223, label %.lr.ph.i45.preheader239, label %vector.ph224

vector.ph224:                                     ; preds = %vector.memcheck220
  %n.vec225 = and i64 %i.kg, 4611686018427387900  ; 3 uses
  %i.kl = shl i64 %n.vec225, 3                    ; 2 uses
  %i.km = getelementptr i8, ptr %28, i64 %i.kl
  %i.kn = getelementptr i8, ptr %i.ka, i64 %i.kl
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph224
  %index227 = phi i64 [ 0, %vector.ph224 ], [ %index.next234, %vector.body226 ] ; 2 uses
  %i.ko = shl i64 %index227, 3                    ; 2 uses
  %next.gep228 = getelementptr i8, ptr %28, i64 %i.ko ; 3 uses
  %next.gep229 = getelementptr i8, ptr %i.ka, i64 %i.ko ; 3 uses
  %i.kp = getelementptr i8, ptr %next.gep229, i64 16 ; 2 uses
  %wide.load230 = load <2 x ptr>, ptr %next.gep229, align 8, !alias.scope !93, !noalias !94
  %wide.load231 = load <2 x ptr>, ptr %i.kp, align 8, !alias.scope !93, !noalias !94
  %i.kq = getelementptr i8, ptr %next.gep228, i64 16 ; 2 uses
  %wide.load232 = load <2 x ptr>, ptr %next.gep228, align 8, !alias.scope !94
  %wide.load233 = load <2 x ptr>, ptr %i.kq, align 8, !alias.scope !94
  store <2 x ptr> %wide.load232, ptr %next.gep229, align 8, !alias.scope !93, !noalias !94
  store <2 x ptr> %wide.load233, ptr %i.kp, align 8, !alias.scope !93, !noalias !94
  store <2 x ptr> %wide.load230, ptr %next.gep228, align 8, !alias.scope !94
  store <2 x ptr> %wide.load231, ptr %i.kq, align 8, !alias.scope !94
  %index.next234 = add nuw i64 %index227, 4       ; 2 uses
  %i.kr = icmp eq i64 %index.next234, %n.vec225
  br i1 %i.kr, label %middle.block235, label %vector.body226, !llvm.loop !79

middle.block235:                                  ; preds = %vector.body226
  %cmp.n236 = icmp eq i64 %i.kg, %n.vec225
  br i1 %cmp.n236, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiSkeletonSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i45.preheader239

.lr.ph.i45.preheader239:                          ; preds = %vector.memcheck220, %.lr.ph.i45.preheader, %middle.block235
  %.07.i46.ph = phi ptr [ %28, %vector.memcheck220 ], [ %28, %.lr.ph.i45.preheader ], [ %i.km, %middle.block235 ]
  %.sroa.03.06.i47.ph = phi ptr [ %i.ka, %vector.memcheck220 ], [ %i.ka, %.lr.ph.i45.preheader ], [ %i.kn, %middle.block235 ]
  br label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.lr.ph.i45.preheader239, %.lr.ph.i45
  %.07.i46 = phi ptr [ %i.kv, %.lr.ph.i45 ], [ %.07.i46.ph, %.lr.ph.i45.preheader239 ] ; 3 uses
  %.sroa.03.06.i47 = phi ptr [ %i.ku, %.lr.ph.i45 ], [ %.sroa.03.06.i47.ph, %.lr.ph.i45.preheader239 ] ; 3 uses
  %i.ks = load ptr, ptr %.sroa.03.06.i47, align 8
  %i.kt = load ptr, ptr %.07.i46, align 8
  store ptr %i.kt, ptr %.sroa.03.06.i47, align 8
  store ptr %i.ks, ptr %.07.i46, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i47, i64 8 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.07.i46, i64 8
  %.not.i48 = icmp eq ptr %i.ku, %i.kb
  br i1 %.not.i48, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiSkeletonSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i45, !llvm.loop !80

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiSkeletonSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i45, %middle.block235, %bb.h, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
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
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

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
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIPKN6Assimp3FBX8GeometryESt4pairIKS4_St6vectorIjSaIjEEESaISA_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !4

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
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIPKN6Assimp3FBX5VideoESt4pairIKS4_jESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZNSt10_HashtableIPKN6Assimp3FBX5VideoESt4pairIKS4_jESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIPKN6Assimp3FBX5VideoESt4pairIKS4_jESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIPKN6Assimp3FBX5VideoESt4pairIKS4_jESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZNSt10_HashtableIPKN6Assimp3FBX5VideoESt4pairIKS4_jESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIPKN6Assimp3FBX5VideoESt4pairIKS4_jESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIPKN6Assimp3FBX5VideoESt4pairIKS4_jESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt13unordered_mapIPKN6Assimp3FBX8MaterialEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIPKN6Assimp3FBX8MaterialESt4pairIKS4_jESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8        ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #29
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIPKN6Assimp3FBX8MaterialESt4pairIKS4_jESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZNSt10_HashtableIPKN6Assimp3FBX8MaterialESt4pairIKS4_jESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX12FBXConverter17SetupNodeMetadataERKNS0_5ModelER6aiNode:bb.a

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i217: ; preds = %bb.bx, %bb.bw
  %i.mz = load ptr, ptr %i.ec, align 8
  %i.na = getelementptr inbounds nuw [16 x i8], ptr %i.mz, i64 %i.mr
  store i32 5, ptr %i.na, align 8
  %i.nb = load ptr, ptr %i.ec, align 8
  %i.nc = getelementptr inbounds nuw [16 x i8], ptr %i.nb, i64 %i.mr ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8            ; 4 uses
  %.not24.i218 = icmp eq ptr %i.ne, null
  br i1 %.not24.i218, label %.thread29.i221, label %bb.by

bb.by:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i217
  %i.nf = load i32, ptr %i.nc, align 8
  %.not25.i219 = icmp eq i32 %i.nf, 7
  br i1 %.not25.i219, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1028) %i.ne, ptr noundef nonnull align 4 dereferenceable(1028) %10, i64 1028, i1 false)
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit224

bb.ca:                                            ; preds = %bb.by
  store i32 %spec.select.i214, ptr %i.ne, align 4
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ng, ptr nonnull align 4 %i.ed, i64 %i.ml, i1 false)
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.ml
  store i8 0, ptr %i.nh, align 1
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit224

.thread29.i221:                                   ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i217
  %i.ni = invoke noalias noundef nonnull dereferenceable(1028) ptr @_Znwm(i64 noundef 1028) #30
          to label %.noexc223 unwind label %bb.cb ; 3 uses

.noexc223:                                        ; preds = %.thread29.i221
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.nj, i8 0, i64 1024, i1 false)
  store i32 %spec.select.i214, ptr %i.ni, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.nj, ptr nonnull align 4 %i.ed, i64 %i.ml, i1 false)
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.ml
  store i8 0, ptr %i.nk, align 1
  %i.nl = load ptr, ptr %i.ec, align 8
  %i.nm = getelementptr inbounds nuw [16 x i8], ptr %i.nl, i64 %i.mr
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  store ptr %i.ni, ptr %i.nn, align 8
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit224

_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit224: ; preds = %.noexc223, %bb.ca, %bb.bz, %bb.bv, %bb.bu
  %i.no = add nsw i32 %.0243, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit177

bb.cb:                                            ; preds = %.thread29.i221
  %i.np = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.cj

bb.cc:                                            ; preds = %bb.bt
  %i.nq = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.fl, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE, i64 0) #27 ; 2 uses
  %.not104 = icmp eq ptr %i.nq, null
  br i1 %.not104, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit177, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.nr = add nsw i32 %.0243, 1                   ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 8 ; 2 uses
  %i.nt = load i32, ptr %.0.i, align 8
  %.not.i225 = icmp ult i32 %.0243, %i.nt
  br i1 %.not.i225, label %bb.ce, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit177

bb.ce:                                            ; preds = %bb.cd
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.0231.0241, i64 16
  %i.nv = load i64, ptr %i.nu, align 8            ; 5 uses
  %i.nw = icmp eq i64 %i.nv, 0
  br i1 %i.nw, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit177, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.nx = zext i32 %.0243 to i64                  ; 4 uses
  %i.ny = icmp ugt i64 %i.nv, 1023
  br i1 %i.ny, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i227, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nz = load ptr, ptr %i.eb, align 8
  %i.oa = getelementptr inbounds nuw [1028 x i8], ptr %i.nz, i64 %i.nx ; 2 uses
  %i.ob = trunc nuw nsw i64 %i.nv to i32
  store i32 %i.ob, ptr %i.oa, align 4
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 4 ; 2 uses
  %i.od = load ptr, ptr %i.fj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.oc, ptr align 1 %i.od, i64 %i.nv, i1 false)
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nv
  store i8 0, ptr %i.oe, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i227

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i227: ; preds = %bb.cg, %bb.cf
  %i.of = load ptr, ptr %i.ec, align 8
  %i.og = getelementptr inbounds nuw [16 x i8], ptr %i.of, i64 %i.nx
  store i32 6, ptr %i.og, align 8
  %i.oh = load ptr, ptr %i.ec, align 8
  %i.oi = getelementptr inbounds nuw [16 x i8], ptr %i.oh, i64 %i.nx
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %i.ok = load ptr, ptr %i.oj, align 8            ; 2 uses
  %.not24.i228 = icmp eq ptr %i.ok, null
  br i1 %.not24.i228, label %.thread28.i229, label %bb.ch

bb.ch:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ok, ptr noundef nonnull align 4 dereferenceable(12) %i.ns, i64 12, i1 false)
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit177

.thread28.i229:                                   ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i227
  %i.ol = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #30
          to label %.noexc230 unwind label %bb.ci ; 2 uses

.noexc230:                                        ; preds = %.thread28.i229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ol, ptr noundef nonnull align 4 dereferenceable(12) %i.ns, i64 12, i1 false)
  %i.om = load ptr, ptr %i.ec, align 8
  %i.on = getelementptr inbounds nuw [16 x i8], ptr %i.om, i64 %i.nx
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  store ptr %i.ol, ptr %i.oo, align 8
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit177

bb.ci:                                            ; preds = %.thread28.i229
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit177: ; preds = %.noexc230, %bb.ch, %bb.ce, %bb.cd, %.noexc212, %bb.br, %bb.bq, %bb.bm, %bb.bl, %.noexc205, %bb.bi, %bb.bh, %bb.bd, %bb.bc, %.noexc198, %bb.az, %bb.ay, %bb.au, %bb.at, %.noexc191, %bb.aq, %bb.ap, %bb.al, %bb.ak, %.noexc184, %bb.ah, %bb.ag, %bb.ac, %bb.ab, %.noexc176, %bb.y, %bb.v, %bb.u, %bb.cc, %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit224
  %.8 = phi i32 [ %.0243, %bb.cc ], [ %i.fn, %.noexc176 ], [ %i.gp, %.noexc184 ], [ %i.hs, %.noexc191 ], [ %i.iv, %.noexc198 ], [ %i.jy, %.noexc205 ], [ %i.no, %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit224 ], [ %i.lb, %.noexc212 ], [ %i.fn, %bb.u ], [ %i.fn, %bb.v ], [ %i.fn, %bb.y ], [ %i.gp, %bb.ab ], [ %i.gp, %bb.ac ], [ %i.gp, %bb.ag ], [ %i.gp, %bb.ah ], [ %i.hs, %bb.ak ], [ %i.hs, %bb.al ], [ %i.hs, %bb.ap ], [ %i.hs, %bb.aq ], [ %i.iv, %bb.at ], [ %i.iv, %bb.au ], [ %i.iv, %bb.ay ], [ %i.iv, %bb.az ], [ %i.jy, %bb.bc ], [ %i.jy, %bb.bd ], [ %i.jy, %bb.bh ], [ %i.jy, %bb.bi ], [ %i.lb, %bb.bl ], [ %i.lb, %bb.bm ], [ %i.lb, %bb.bq ], [ %i.lb, %bb.br ], [ %i.nr, %bb.cd ], [ %i.nr, %bb.ce ], [ %i.nr, %bb.ch ], [ %i.nr, %.noexc230 ]
  %i.oq = load ptr, ptr %.sroa.0231.0241, align 8 ; 2 uses
  %.not239 = icmp eq ptr %i.oq, null
  br i1 %.not239, label %._crit_edge, label %bb.t

bb.cj:                                            ; preds = %bb.z, %bb.ar, %bb.bj, %bb.cb, %bb.ci, %bb.bs, %bb.ba, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %bb.p
  %.pn117.pn.pn = phi { ptr, i32 } [ %i.ek, %bb.p ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ], [ %i.gn, %bb.z ], [ %i.hq, %bb.ai ], [ %i.it, %bb.ar ], [ %i.jw, %bb.ba ], [ %i.kz, %bb.bj ], [ %i.md, %bb.bs ], [ %i.np, %bb.cb ], [ %i.op, %bb.ci ]
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
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
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
  %.not127 = icmp eq ptr %i.e, %i.f
  br i1 %.not127, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.i, 1
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #30
          to label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i unwind label %bb.d ; 2 uses

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.j
  %.pre = load ptr, ptr %i.c, align 8
  %.pre199 = load ptr, ptr %i.d, align 8
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, %bb.c
  %i.o = phi ptr [ %.pre199, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %.pre, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ %i.f, %bb.c ] ; 2 uses
  %.sroa.0100.5 = phi ptr [ %i.m, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ null, %bb.c ] ; 4 uses
  %.sroa.32.5 = phi ptr [ %i.n, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ null, %bb.c ] ; 2 uses
  %.not128167 = icmp eq ptr %i.p, %i.o
  br i1 %.not128167, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.q = ptrtoint ptr %.sroa.0100.5 to i64
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit
  %.sroa.0100.2284.le = ptrtoaddr ptr %.sroa.0100.2 to i64
  %.sroa.17.1285.le = ptrtoaddr ptr %.sroa.17.1 to i64
  %i.v = ptrtoint ptr %.sroa.17.1 to i64
  %i.w = ptrtoint ptr %.sroa.0100.2 to i64        ; 4 uses
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = ashr exact i64 %i.x, 2                   ; 2 uses
  %.not = icmp eq ptr %.sroa.17.1, %.sroa.0100.2
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit, label %bb.ai

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %bb.b, %bb.ai
  %.sroa.0100.1 = phi ptr [ null, %bb.b ], [ %.sroa.0100.2, %bb.ai ], [ null, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ]
  %.sroa.32.1 = phi ptr [ null, %bb.b ], [ %.sroa.32.2, %bb.ai ], [ null, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ]
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.e:                                             ; preds = %.lr.ph, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit
  %.sroa.097.0171 = phi ptr [ %i.p, %.lr.ph ], [ %i.dm, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit ] ; 2 uses
  %.sroa.32.0170 = phi ptr [ %.sroa.32.5, %.lr.ph ], [ %.sroa.32.2, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit ] ; 11 uses
  %.sroa.17.0169 = phi ptr [ %.sroa.0100.5, %.lr.ph ], [ %.sroa.17.1, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit ] ; 8 uses
  %.sroa.0100.0168 = phi ptr [ %.sroa.0100.5, %.lr.ph ], [ %.sroa.0100.2, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit ] ; 11 uses
  %i.aa = load ptr, ptr %.sroa.097.0171, align 8  ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.ag, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = call ptr @__dynamic_cast(ptr nonnull %i.aa, ptr nonnull @_ZTIN6Assimp3FBX8GeometryE, ptr nonnull @_ZTIN6Assimp3FBX12MeshGeometryE, i64 0) #27 ; 2 uses
  %i.ad = call ptr @__dynamic_cast(ptr nonnull %i.aa, ptr nonnull @_ZTIN6Assimp3FBX8GeometryE, ptr nonnull @_ZTIN6Assimp3FBX12LineGeometryE, i64 0) #27 ; 2 uses
  %.not45 = icmp eq ptr %i.ac, null
  br i1 %.not45, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZN6Assimp3FBX12FBXConverter11ConvertMeshERKNS0_12MeshGeometryERKNS0_5ModelEP6aiNodeS9_RK12aiMatrix4x4tIfE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.311") align 8 %5, ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(1000) %i.ac, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %4)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %5, align 8               ; 3 uses
  %i.af = load ptr, ptr %i.r, align 8
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 2                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i75, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit

.lr.ph.i75:                                       ; preds = %bb.h, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i
  %.sroa.0100.6 = phi ptr [ %.sroa.0100.7, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i ], [ %.sroa.0100.0168, %bb.h ] ; 6 uses
  %i.al = phi ptr [ %.sroa.32.7, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i ], [ %.sroa.32.0170, %bb.h ] ; 4 uses
  %i.am = phi ptr [ %.sroa.17.4, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i ], [ %.sroa.17.0169, %bb.h ] ; 3 uses
  %.07.i76 = phi i64 [ %i.be, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i ], [ %i.aj, %bb.h ] ; 2 uses
  %.056.i = phi ptr [ %i.bd, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i ], [ %i.ae, %bb.h ] ; 3 uses
  %.not.i.i.i77 = icmp eq ptr %i.am, %i.al
  br i1 %.not.i.i.i77, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i75
  %i.an = load i32, ptr %.056.i, align 4
  store i32 %i.an, ptr %i.am, align 4
  br label %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i

bb.j:                                             ; preds = %.lr.ph.i75
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %.sroa.0100.6 to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 6 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775804
  br i1 %i.ar, label %bb.k, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.noexc78 unwind label %.loopexit.split-lp131

.noexc78:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.j
  %i.as = ashr exact i64 %i.aq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 2305843009213693951)
  %i.aw = select i1 %i.au, i64 2305843009213693951, i64 %i.av ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 2
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #30
          to label %.noexc79 unwind label %.loopexit130 ; 4 uses

.noexc79:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aq ; 2 uses
  %i.ba = load i32, ptr %.056.i, align 4
  store i32 %i.ba, ptr %i.az, align 4
  %i.bb = icmp sgt i64 %i.aq, 0
  br i1 %i.bb, label %bb.l, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i

bb.l:                                             ; preds = %.noexc79
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr align 4 %.sroa.0100.6, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.l, %.noexc79
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.0100.6, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0100.6, i64 noundef %i.aq) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.aw
  br label %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i

_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i: ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i, %bb.i
  %.sroa.0100.7 = phi ptr [ %i.ay, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i ], [ %.sroa.0100.6, %bb.i ] ; 2 uses
  %.pn = phi ptr [ %i.az, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i ], [ %i.am, %bb.i ]
  %.sroa.32.7 = phi ptr [ %i.bc, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i ], [ %i.al, %bb.i ] ; 2 uses
  %.sroa.17.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.056.i, i64 4
  %i.be = add nsw i64 %.07.i76, -1
  %i.bf = icmp sgt i64 %.07.i76, 1
  br i1 %i.bf, label %.lr.ph.i75, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit.loopexit, !llvm.loop !9

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit.loopexit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i
  %.pre200 = load ptr, ptr %5, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit.loopexit, %bb.h
  %i.bg = phi ptr [ %i.ae, %bb.h ], [ %.pre200, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit.loopexit ] ; 3 uses
  %.sroa.0100.8 = phi ptr [ %.sroa.0100.0168, %bb.h ], [ %.sroa.0100.7, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit.loopexit ]
  %.sroa.17.5 = phi ptr [ %.sroa.17.0169, %bb.h ], [ %.sroa.17.4, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit.loopexit ]
  %.sroa.32.8 = phi ptr [ %.sroa.32.0170, %bb.h ], [ %.sroa.32.7, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit
  %i.bh = load ptr, ptr %i.s, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bk) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

bb.o:                                             ; preds = %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit130:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit132 = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp131:                            ; preds = %bb.k
  %lpad.loopexit.split-lp133 = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp131, %.loopexit130
  %lpad.phi134 = phi { ptr, i32 } [ %lpad.loopexit132, %.loopexit130 ], [ %lpad.loopexit.split-lp133, %.loopexit.split-lp131 ]
  %i.bm = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i55 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIjSaIjEED2Ev.exit56, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.s, align 8
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit56

_ZNSt6vectorIjSaIjEED2Ev.exit56:                  ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.al

bb.r:                                             ; preds = %bb.f
  %.not46 = icmp eq ptr %i.ad, null
  br i1 %.not46, label %bb.ad, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN6Assimp3FBX12FBXConverter11ConvertLineERKNS0_12LineGeometryEP6aiNode(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.311") align 8 %6, ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.ad, ptr noundef %3)
          to label %bb.t unwind label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.br = load ptr, ptr %6, align 8               ; 3 uses
  %i.bs = load ptr, ptr %i.t, align 8
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 2                 ; 2 uses
  %i.bx = icmp sgt i64 %i.bw, 0
  br i1 %i.bx, label %.lr.ph.i80, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit58

.lr.ph.i80:                                       ; preds = %bb.t, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i87
  %.sroa.0100.9 = phi ptr [ %.sroa.0100.10, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i87 ], [ %.sroa.0100.0168, %bb.t ] ; 6 uses
  %i.by = phi ptr [ %.sroa.32.10, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i87 ], [ %.sroa.32.0170, %bb.t ] ; 4 uses
  %i.bz = phi ptr [ %.sroa.17.7, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i87 ], [ %.sroa.17.0169, %bb.t ] ; 3 uses
  %.07.i83 = phi i64 [ %i.cr, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i87 ], [ %i.bw, %bb.t ] ; 2 uses
  %.056.i84 = phi ptr [ %i.cq, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i87 ], [ %i.br, %bb.t ] ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp3FBX12FBXConverter12ConvertModelERKNS0_5ModelEP6aiNodeS6_RK12aiMatrix4x4tIfE:bb.a

bb.u:                                             ; preds = %.lr.ph.i80
  %i.ca = load i32, ptr %.056.i84, align 4
  store i32 %i.ca, ptr %i.bz, align 4
  br label %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i87

bb.v:                                             ; preds = %.lr.ph.i80
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = ptrtoint ptr %.sroa.0100.9 to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 6 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775804
  br i1 %i.ce, label %bb.w, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i88

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.noexc94 unwind label %.loopexit.split-lp

.noexc94:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i88: ; preds = %bb.v
  %i.cf = ashr exact i64 %i.cd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i89 = call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i.i.i.i89, %i.cf ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  %i.ci = call i64 @llvm.umin.i64(i64 %i.cg, i64 2305843009213693951)
  %i.cj = select i1 %i.ch, i64 2305843009213693951, i64 %i.ci ; 3 uses
  %.not.i.i.i.i.i90 = icmp ne i64 %i.cj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i90)
  %i.ck = shl nuw nsw i64 %i.cj, 2
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #30
          to label %.noexc95 unwind label %.loopexit ; 4 uses

.noexc95:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i88
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.cd ; 2 uses
  %i.cn = load i32, ptr %.056.i84, align 4
  store i32 %i.cn, ptr %i.cm, align 4
  %i.co = icmp sgt i64 %i.cd, 0
  br i1 %i.co, label %bb.x, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i91

bb.x:                                             ; preds = %.noexc95
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr align 4 %.sroa.0100.9, i64 %i.cd, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i91

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i91: ; preds = %bb.x, %.noexc95
  %.not.i17.i.i.i.i92 = icmp eq ptr %.sroa.0100.9, null
  br i1 %.not.i17.i.i.i.i92, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i93, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i91
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0100.9, i64 noundef %i.cd) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i93

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i93: ; preds = %bb.y, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i91
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cj
  br label %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i87

_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i87: ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i93, %bb.u
  %.sroa.0100.10 = phi ptr [ %i.cl, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i93 ], [ %.sroa.0100.9, %bb.u ] ; 2 uses
  %.pn129 = phi ptr [ %i.cm, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i93 ], [ %i.bz, %bb.u ]
  %.sroa.32.10 = phi ptr [ %i.cp, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i93 ], [ %i.by, %bb.u ] ; 2 uses
  %.sroa.17.7 = getelementptr inbounds nuw i8, ptr %.pn129, i64 4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.056.i84, i64 4
  %i.cr = add nsw i64 %.07.i83, -1
  %i.cs = icmp sgt i64 %.07.i83, 1
  br i1 %i.cs, label %.lr.ph.i80, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit58.loopexit, !llvm.loop !9

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit58.loopexit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSERKj.exit.i87
  %.pre201 = load ptr, ptr %6, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit58

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit58: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit58.loopexit, %bb.t
  %i.ct = phi ptr [ %i.br, %bb.t ], [ %.pre201, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit58.loopexit ] ; 3 uses
  %.sroa.0100.11 = phi ptr [ %.sroa.0100.0168, %bb.t ], [ %.sroa.0100.10, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit58.loopexit ]
  %.sroa.17.8 = phi ptr [ %.sroa.17.0169, %bb.t ], [ %.sroa.17.7, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit58.loopexit ]
  %.sroa.32.11 = phi ptr [ %.sroa.32.0170, %bb.t ], [ %.sroa.32.10, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit58.loopexit ]
  %.not.i.i.i59 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i59, label %_ZNSt6vectorIjSaIjEED2Ev.exit60, label %bb.z

bb.z:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit58
  %i.cu = load ptr, ptr %i.u, align 8
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cx) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit60

_ZNSt6vectorIjSaIjEED2Ev.exit60:                  ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit58, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

bb.aa:                                            ; preds = %bb.s
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i88
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cz = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i61 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorIjSaIjEED2Ev.exit62, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.da = load ptr, ptr %i.u, align 8
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dd) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit62

_ZNSt6vectorIjSaIjEED2Ev.exit62:                  ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.al

bb.ad:                                            ; preds = %bb.r
  %i.de = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.df = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc63 unwind label %bb.af

.noexc63:                                         ; preds = %bb.ad
  br i1 %i.df, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit, label %bb.ae

bb.ae:                                            ; preds = %.noexc63
  %i.dg = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc64 unwind label %bb.af

.noexc64:                                         ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.dh = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc65 unwind label %bb.af

.noexc65:                                         ; preds = %.noexc64
  store ptr %i.dh, ptr %i.b, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA33_S2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(33) @.str.41, ptr noundef nonnull align 8 dereferenceable(32) %i.de)
          to label %.noexc66 unwind label %bb.af

.noexc66:                                         ; preds = %.noexc65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

bb.af:                                            ; preds = %.noexc69, %.noexc68, %bb.ah, %bb.ag, %.noexc65, %.noexc64, %bb.ae, %bb.ad
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ag:                                            ; preds = %bb.e
  %i.dj = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc67 unwind label %bb.af

.noexc67:                                         ; preds = %bb.ag
  br i1 %i.dj, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit, label %bb.ah

bb.ah:                                            ; preds = %.noexc67
  %i.dk = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc68 unwind label %bb.af

.noexc68:                                         ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.dl = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc69 unwind label %bb.af

.noexc69:                                         ; preds = %.noexc68
  store ptr %i.dl, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA23_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.dk, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(23) @.str.42)
          to label %.noexc70 unwind label %bb.af

.noexc70:                                         ; preds = %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA33_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit: ; preds = %.noexc70, %.noexc67, %.noexc66, %.noexc63, %_ZNSt6vectorIjSaIjEED2Ev.exit60, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.0100.2 = phi ptr [ %.sroa.0100.0168, %.noexc66 ], [ %.sroa.0100.8, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %.sroa.0100.11, %_ZNSt6vectorIjSaIjEED2Ev.exit60 ], [ %.sroa.0100.0168, %.noexc63 ], [ %.sroa.0100.0168, %.noexc67 ], [ %.sroa.0100.0168, %.noexc70 ] ; 14 uses
  %.sroa.17.1 = phi ptr [ %.sroa.17.0169, %.noexc66 ], [ %.sroa.17.5, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %.sroa.17.8, %_ZNSt6vectorIjSaIjEED2Ev.exit60 ], [ %.sroa.17.0169, %.noexc63 ], [ %.sroa.17.0169, %.noexc67 ], [ %.sroa.17.0169, %.noexc70 ] ; 5 uses
  %.sroa.32.2 = phi ptr [ %.sroa.32.0170, %.noexc66 ], [ %.sroa.32.8, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %.sroa.32.11, %_ZNSt6vectorIjSaIjEED2Ev.exit60 ], [ %.sroa.32.0170, %.noexc63 ], [ %.sroa.32.0170, %.noexc67 ], [ %.sroa.32.0170, %.noexc70 ] ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.097.0171, i64 8 ; 2 uses
  %.not128 = icmp eq ptr %i.dm, %i.o
  br i1 %.not128, label %._crit_edge, label %bb.e

bb.ai:                                            ; preds = %._crit_edge
  %i.dn = icmp ugt i64 %i.y, 4611686018427387903
  %i.do = select i1 %i.dn, i64 -1, i64 %i.x       ; 2 uses
  %i.dp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.do) #30
          to label %bb.aj unwind label %bb.d      ; 8 uses

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dp, i8 0, i64 %i.do, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 1128
  store ptr %i.dp, ptr %i.dq, align 8
  %i.dr = trunc i64 %i.y to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 1120
  store i32 %i.dr, ptr %i.ds, align 8
  %i.dt = add i64 %.sroa.17.1285.le, -4
  %i.du = sub i64 %i.dt, %.sroa.0100.2284.le      ; 3 uses
  %i.dv = lshr i64 %i.du, 2
  %i.dw = add nuw nsw i64 %i.dv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.du, 44
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.aj
  %i.dx = and i64 %i.du, -4
  %i.dy = add i64 %i.dx, 4                        ; 2 uses
  %i.dz = getelementptr i8, ptr %.sroa.0100.2, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dp, i64 %i.dy
  %bound0 = icmp ult ptr %.sroa.0100.2, %i.ea
  %bound1 = icmp ult ptr %i.dp, %i.dz
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dw, 9223372036854775800     ; 3 uses
  %i.eb = shl i64 %n.vec, 2                       ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dp, i64 %i.eb
  %i.ed = getelementptr i8, ptr %.sroa.0100.2, i64 %i.eb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ee = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dp, i64 %i.ee ; 3 uses
  %next.gep284 = getelementptr i8, ptr %.sroa.0100.2, i64 %i.ee ; 3 uses
  %i.ef = getelementptr i8, ptr %next.gep284, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep284, align 4, !alias.scope !134, !noalias !135
  %wide.load285 = load <4 x i32>, ptr %i.ef, align 4, !alias.scope !134, !noalias !135
  %i.eg = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load286 = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !135
  %wide.load287 = load <4 x i32>, ptr %i.eg, align 4, !alias.scope !135
  store <4 x i32> %wide.load286, ptr %next.gep284, align 4, !alias.scope !134, !noalias !135
  store <4 x i32> %wide.load287, ptr %i.ef, align 4, !alias.scope !134, !noalias !135
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !alias.scope !135
  store <4 x i32> %wide.load285, ptr %i.eg, align 4, !alias.scope !135
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dw, %n.vec
  br i1 %cmp.n, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %bb.aj, %middle.block
  %.07.i.ph = phi ptr [ %i.dp, %vector.memcheck ], [ %i.dp, %bb.aj ], [ %i.ec, %middle.block ]
  %.sroa.03.06.i.ph = phi ptr [ %.sroa.0100.2, %vector.memcheck ], [ %.sroa.0100.2, %bb.aj ], [ %i.ed, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.07.i = phi ptr [ %i.el, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.03.06.i = phi ptr [ %i.ek, %.lr.ph.i ], [ %.sroa.03.06.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ei = load i32, ptr %.sroa.03.06.i, align 4
  %i.ej = load i32, ptr %.07.i, align 4
  store i32 %i.ej, ptr %.sroa.03.06.i, align 4
  store i32 %i.ei, ptr %.07.i, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i, i64 4 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.07.i, i64 4
  %.not.i = icmp eq ptr %i.ek, %.sroa.17.1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit, label %.lr.ph.i, !llvm.loop !133

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.i, %middle.block, %._crit_edge.thread, %._crit_edge
  %i.em = phi i64 [ %i.q, %._crit_edge.thread ], [ %i.w, %._crit_edge ], [ %i.w, %middle.block ], [ %i.w, %.lr.ph.i ]
  %.sroa.32.0.lcssa228 = phi ptr [ %.sroa.32.5, %._crit_edge.thread ], [ %.sroa.32.2, %._crit_edge ], [ %.sroa.32.2, %middle.block ], [ %.sroa.32.2, %.lr.ph.i ]
  %.sroa.0100.0.lcssa227 = phi ptr [ %.sroa.0100.5, %._crit_edge.thread ], [ %.sroa.0100.2, %._crit_edge ], [ %.sroa.0100.2, %middle.block ], [ %.sroa.0100.2, %.lr.ph.i ] ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %.sroa.0100.0.lcssa227, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorIjSaIjEED2Ev.exit72, label %bb.ak

bb.ak:                                            ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit
  %i.en = ptrtoint ptr %.sroa.32.0.lcssa228 to i64
  %i.eo = sub i64 %i.en, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0100.0.lcssa227, i64 noundef %i.eo) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit72

_ZNSt6vectorIjSaIjEED2Ev.exit72:                  ; preds = %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET0_T_S8_S7_.exit, %bb.ak
  ret void

bb.al:                                            ; preds = %bb.af, %_ZNSt6vectorIjSaIjEED2Ev.exit56, %bb.o, %_ZNSt6vectorIjSaIjEED2Ev.exit62, %bb.aa, %bb.d
  %.sroa.0100.4 = phi ptr [ %.sroa.0100.1, %bb.d ], [ %.sroa.0100.0168, %bb.af ], [ %.sroa.0100.9, %_ZNSt6vectorIjSaIjEED2Ev.exit62 ], [ %.sroa.0100.0168, %bb.aa ], [ %.sroa.0100.6, %_ZNSt6vectorIjSaIjEED2Ev.exit56 ], [ %.sroa.0100.0168, %bb.o ] ; 3 uses
  %.sroa.32.4 = phi ptr [ %.sroa.32.1, %bb.d ], [ %.sroa.32.0170, %bb.af ], [ %i.by, %_ZNSt6vectorIjSaIjEED2Ev.exit62 ], [ %.sroa.32.0170, %bb.aa ], [ %i.al, %_ZNSt6vectorIjSaIjEED2Ev.exit56 ], [ %.sroa.32.0170, %bb.o ]
  %.pn49.pn.pn = phi { ptr, i32 } [ %i.z, %bb.d ], [ %i.di, %bb.af ], [ %lpad.phi, %_ZNSt6vectorIjSaIjEED2Ev.exit62 ], [ %i.cy, %bb.aa ], [ %lpad.phi134, %_ZNSt6vectorIjSaIjEED2Ev.exit56 ], [ %i.bl, %bb.o ]
  %.not.i.i.i73 = icmp eq ptr %.sroa.0100.4, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorIjSaIjEED2Ev.exit74, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ep = ptrtoint ptr %.sroa.32.4 to i64
  %i.eq = ptrtoint ptr %.sroa.0100.4 to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0100.4, i64 noundef %i.er) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit74

_ZNSt6vectorIjSaIjEED2Ev.exit74:                  ; preds = %bb.al, %bb.am
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
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !8

_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EED2Ev.exit, label %bb.b
end_hunk_2
