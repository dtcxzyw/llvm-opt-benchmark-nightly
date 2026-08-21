Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/HierarchicalTimer?download=true
inline.NumInlined: 915
inline.NumDeleted: 373
begin_hunk_0_@_ZNK8facebook5velox9TimerNode10formatImplERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibmmbRSt6vectorIbSaIbEE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438
  %i.aek = load i64, ptr %i.bw, align 8, !tbaa !17
  %i.ael = add i64 %i.aek, 1
  call void @_ZdlPvm(ptr noundef %i.aei, i64 noundef %i.ael) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  %i.aem = load ptr, ptr %21, align 8, !tbaa !12  ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.aeo = icmp eq ptr %i.aem, %i.aen
  br i1 %i.aeo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441
  %i.aep = load i64, ptr %i.aen, align 8, !tbaa !17
  %i.aeq = add i64 %i.aep, 1
  call void @_ZdlPvm(ptr noundef %i.aem, i64 noundef %i.aeq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  %i.aer = load ptr, ptr %20, align 8, !tbaa !12  ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.aet = icmp eq ptr %i.aer, %i.aes
  br i1 %i.aet, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444
  %i.aeu = load i64, ptr %i.aes, align 8, !tbaa !17
  %i.aev = add i64 %i.aeu, 1
  call void @_ZdlPvm(ptr noundef %i.aer, i64 noundef %i.aev) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  %i.aew = load ptr, ptr %19, align 8, !tbaa !12  ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.aey = icmp eq ptr %i.aew, %i.aex
  br i1 %i.aey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447
  %i.aez = load i64, ptr %i.aex, align 8, !tbaa !17
  %i.afa = add i64 %i.aez, 1
  call void @_ZdlPvm(ptr noundef %i.aew, i64 noundef %i.afa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  %i.afb = load ptr, ptr %18, align 8, !tbaa !12  ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.afd = icmp eq ptr %i.afb, %i.afc
  br i1 %i.afd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450
  %i.afe = load i64, ptr %i.afc, align 8, !tbaa !17
  %i.aff = add i64 %i.afe, 1
  call void @_ZdlPvm(ptr noundef %i.afb, i64 noundef %i.aff) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  ret void

bb.gd:                                            ; preds = %bb.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431, %bb.en, %bb.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261
  %.pn126.pn = phi { ptr, i32 } [ %.pn104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261 ], [ %i.ti, %bb.du ], [ %.pn108.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325 ], [ %i.up, %bb.dx ], [ %i.wx, %bb.en ], [ %.pn120.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431 ] ; 2 uses
  %i.afg = load ptr, ptr %26, align 8, !tbaa !12  ; 2 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.afi = icmp eq ptr %i.afg, %i.afh
  br i1 %i.afi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454: ; preds = %bb.gd
  %i.afj = load i64, ptr %i.afh, align 8, !tbaa !17
  %i.afk = add i64 %i.afj, 1
  call void @_ZdlPvm(ptr noundef %i.afg, i64 noundef %i.afk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456: ; preds = %bb.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258
  %.pn126.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258 ], [ %.pn126.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454 ], [ %.pn126.pn, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  br label %bb.ge

bb.ge:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456, %bb.at, %bb.ar
  %.pn126.pn.pn.pn = phi { ptr, i32 } [ %.pn126.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456 ], [ %i.eo, %bb.ar ], [ %i.eq, %bb.at ]
  %i.afl = load ptr, ptr %24, align 8, !tbaa !12  ; 2 uses
  %i.afm = icmp eq ptr %i.afl, %i.di
  br i1 %i.afm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457: ; preds = %bb.ge
  %i.afn = load i64, ptr %i.di, align 8, !tbaa !17
  %i.afo = add i64 %i.afn, 1
  call void @_ZdlPvm(ptr noundef %i.afl, i64 noundef %i.afo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459: ; preds = %bb.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  br label %bb.gf

bb.gf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, %bb.aj, %bb.ah
  %.pn126.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn126.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459 ], [ %i.df, %bb.ah ], [ %i.dh, %bb.aj ] ; 2 uses
  %i.afp = load ptr, ptr %22, align 8, !tbaa !12  ; 2 uses
  %i.afq = icmp eq ptr %i.afp, %i.bw
  br i1 %i.afq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460: ; preds = %bb.gf
  %i.afr = load i64, ptr %i.bw, align 8, !tbaa !17
  %i.afs = add i64 %i.afr, 1
  call void @_ZdlPvm(ptr noundef %i.afp, i64 noundef %i.afs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462: ; preds = %bb.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  %i.aft = load ptr, ptr %21, align 8, !tbaa !12  ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.afv = icmp eq ptr %i.aft, %i.afu
  br i1 %i.afv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462
  %i.afw = load i64, ptr %i.afu, align 8, !tbaa !17
  %i.afx = add i64 %i.afw, 1
  call void @_ZdlPvm(ptr noundef %i.aft, i64 noundef %i.afx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463, %bb.ag
  %.pn126.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn126.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463 ], [ %i.de, %bb.ag ], [ %.pn126.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  %i.afy = load ptr, ptr %20, align 8, !tbaa !12  ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.aga = icmp eq ptr %i.afy, %i.afz
  br i1 %i.aga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465
  %i.agb = load i64, ptr %i.afz, align 8, !tbaa !17
  %i.agc = add i64 %i.agb, 1
  call void @_ZdlPvm(ptr noundef %i.afy, i64 noundef %i.agc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466, %bb.af
  %.pn126.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dd, %bb.af ], [ %.pn126.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466 ], [ %.pn126.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  %i.agd = load ptr, ptr %19, align 8, !tbaa !12  ; 2 uses
  %i.age = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.agf = icmp eq ptr %i.agd, %i.age
  br i1 %i.agf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468
  %i.agg = load i64, ptr %i.age, align 8, !tbaa !17
  %i.agh = add i64 %i.agg, 1
  call void @_ZdlPvm(ptr noundef %i.agd, i64 noundef %i.agh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469, %bb.ae
  %.pn126.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.ae ], [ %.pn126.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469 ], [ %.pn126.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  %i.agi = load ptr, ptr %18, align 8, !tbaa !12  ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.agk = icmp eq ptr %i.agi, %i.agj
  br i1 %i.agk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471
  %i.agl = load i64, ptr %i.agj, align 8, !tbaa !17
  %i.agm = add i64 %i.agl, 1
  call void @_ZdlPvm(ptr noundef %i.agi, i64 noundef %i.agm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  resume { ptr, i32 } %.pn126.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox12_GLOBAL__N_111buildPrefixB5cxx11ERKSt6vectorIbSaIbEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !55     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.f = icmp eq ptr %i.a, %i.c
  %i.g = icmp eq i32 %i.e, 0
  %i.h = select i1 %i.f, i1 %i.g, i1 false
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.j, align 8, !tbaa !15
  store i8 0, ptr %i.i, align 8, !tbaa !17
  br i1 %i.h, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = shl nsw i64 %i.m, 3
  %i.o = zext i32 %i.e to i64                     ; 2 uses
  %i.p = add nsw i64 %i.n, %i.o
  %i.q = icmp ugt i64 %i.p, 1
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.r = phi ptr [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ %i.a, %bb.b ]
  %i.s = phi i64 [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ 1, %bb.b ] ; 2 uses
  %.038 = phi i64 [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ 0, %bb.b ] ; 3 uses
  %2 = sdiv i64 %.038, 64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.r, i64 %2
  %3 = and i64 %.038, -9223372036854775745
  %4 = icmp ugt i64 %3, -9223372036854775808
  %storemerge.idx.i.i.i.i.i18 = select i1 %4, i64 -8, i64 0
  %storemerge.i.i.i.i.i19 = getelementptr inbounds i8, ptr %i.t, i64 %storemerge.idx.i.i.i.i.i18
  %i.u = and i64 %.038, 63
  %i.v = shl nuw i64 1, %i.u
  %i.w = load i64, ptr %storemerge.i.i.i.i.i19, align 8, !tbaa !37
  %i.x = and i64 %i.w, %i.v
  %.not32 = icmp eq i64 %i.x, 0                   ; 2 uses
  %i.y = select i1 %.not32, ptr @.str.33, ptr @.str.32 ; 2 uses
  %i.z = select i1 %.not32, i64 6, i64 4          ; 4 uses
  %i.aa = load i64, ptr %i.j, align 8, !tbaa !15  ; 5 uses
  %i.ab = sub i64 9223372036854775807, %i.aa
  %i.ac = icmp ult i64 %i.ab, %i.z
  br i1 %i.ac, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.c:                                             ; preds = %.lr.ph
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #25
          to label %.noexc20 unwind label %.loopexit.split-lp

.noexc20:                                         ; preds = %bb.c
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %.lr.ph
  %i.ad = add i64 %i.z, %i.aa                     ; 3 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !12    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.i
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ag = icmp ult i64 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ah = load i64, ptr %i.i, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ai = phi i64 [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.ad, %i.ai
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.aj, ptr noundef nonnull align 1 dereferenceable(4) %i.y, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aa, i64 noundef 0, ptr noundef nonnull %i.y, i64 noundef %i.z)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.e, %bb.d
  store i64 %i.ad, ptr %i.j, align 8, !tbaa !15
  %i.ak = load ptr, ptr %0, align 8, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ad
  store i8 0, ptr %i.al, align 1, !tbaa !17
  %i.am = add nuw i64 %i.s, 1                     ; 2 uses
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  %i.ao = load i32, ptr %i.d, align 8, !tbaa !58
  %i.ap = load ptr, ptr %1, align 8, !tbaa !55    ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = shl nsw i64 %i.as, 3
  %i.au = zext i32 %i.ao to i64                   ; 2 uses
  %i.av = add nsw i64 %i.at, %i.au
  %i.aw = icmp ult i64 %i.am, %i.av
  br i1 %i.aw, label %.lr.ph, label %._crit_edge.loopexit

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %.pre = load i64, ptr %i.j, align 8, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ax = phi i64 [ 0, %bb.b ], [ %.pre, %._crit_edge.loopexit ] ; 5 uses
  %.lcssa35 = phi ptr [ %i.c, %bb.b ], [ %i.an, %._crit_edge.loopexit ]
  %.lcssa = phi i64 [ %i.o, %bb.b ], [ %i.au, %._crit_edge.loopexit ]
  %i.ay = add nsw i64 %.lcssa, -1                 ; 3 uses
  %i.az = sdiv i64 %i.ay, 64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.lcssa35, i64 %i.az
  %i.bb = and i64 %i.ay, -9223372036854775745
  %i.bc = icmp ugt i64 %i.bb, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.bc, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ba, i64 %storemerge.idx.i.i.i.i.i
  %i.bd = and i64 %i.ay, 63
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !37
  %i.bg = and i64 %i.bf, %i.be
  %.not = icmp eq i64 %i.bg, 0
  %.str.34..str.35 = select i1 %.not, ptr @.str.35, ptr @.str.34 ; 2 uses
  %i.bh = icmp sgt i64 %i.ax, 9223372036854775797
  br i1 %i.bh, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i22

bb.f:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #25
          to label %.noexc29 unwind label %bb.i

.noexc29:                                         ; preds = %bb.f
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i22: ; preds = %._crit_edge
  %i.bi = add nsw i64 %i.ax, 10                   ; 3 uses
  %i.bj = load ptr, ptr %0, align 8, !tbaa !12    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.i
  br i1 %i.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i22
  %i.bl = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.bl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i22
  %i.bm = load i64, ptr %i.i, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i24: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i28
  %i.bn = phi i64 [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i28 ]
  %.not.i.i.i25 = icmp ugt i64 %i.bi, %i.bn
  br i1 %.not.i.i.i25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ax
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.bo, ptr noundef nonnull align 1 dereferenceable(10) %.str.34..str.35, i64 10, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit31

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ax, i64 noundef 0, ptr noundef nonnull %.str.34..str.35, i64 noundef 10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit31 unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit31: ; preds = %bb.h, %bb.g
  store i64 %i.bi, ptr %i.j, align 8, !tbaa !15
  %i.bp = load ptr, ptr %0, align 8, !tbaa !12
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bi
  store i8 0, ptr %i.bq, align 1, !tbaa !17
  br label %._crit_edge.i.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i
  %.pn = phi { ptr, i32 } [ %i.br, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bs = load ptr, ptr %0, align 8, !tbaa !12    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.i
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bu = load i64, ptr %i.i, align 8, !tbaa !17
  %i.bv = add i64 %i.bu, 1
  tail call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

._crit_edge.i.i:                                  ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit31
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare void @_ZN8facebook5velox13succinctNanosB5cxx11Emi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !8
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.36) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #25
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !16

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !12
  store i64 %i.c, ptr %i.a, align 8, !tbaa !17
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.j, ptr %i.i, align 1, !tbaa !17
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox12_GLOBAL__N_110padSectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !12    ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val9 = load i64, ptr %i.a, align 8, !tbaa !15 ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.val9
  %i.c = icmp samesign eq i64 %.val9, 0
  br i1 %i.c, label %_ZN8facebook5velox12_GLOBAL__N_112displayWidthERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.thread, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %.val9, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check27 = icmp ult i64 %.val9, 32
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %.val9, 28
end_hunk_0
