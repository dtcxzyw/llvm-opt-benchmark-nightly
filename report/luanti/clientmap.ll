Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientmap?download=true
inline.NumInlined: 4211
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN9ClientMap9renderMapEPN5video12IVideoDriverEi:.invoke

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420: ; preds = %bb.ft
  %i.bdo = load i64, ptr %i.bcy, align 8, !tbaa !65
  %i.bdp = add i64 %i.bdo, 1
  call void @_ZdlPvm(ptr noundef %i.bdm, i64 noundef %i.bdp) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422: ; preds = %bb.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #2
  %i.bdq = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #2
  call void @llvm.experimental.noalias.scope.decl(metadata !837)
  %i.bdr = load ptr, ptr %7, align 8, !tbaa !64, !noalias !837
  %i.bds = load i64, ptr %i.h, align 8, !tbaa !176, !noalias !837 ; 3 uses
  %i.bdt = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.bdt, ptr %21, align 8, !tbaa !177, !alias.scope !838
  %i.bdu = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  store i64 0, ptr %i.bdu, align 8, !tbaa !176, !alias.scope !838
  store i8 0, ptr %i.bdt, align 8, !tbaa !65, !alias.scope !838
  %i.bdv = add i64 %i.bds, 13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %i.bdv)
          to label %bb.fu unwind label %bb.fv

bb.fu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422
  %i.bdw = load i64, ptr %i.bdu, align 8, !tbaa !176, !alias.scope !838
  %i.bdx = sub i64 4611686018427387903, %i.bdw
  %i.bdy = icmp ult i64 %i.bdx, %i.bds
  br i1 %i.bdy, label %.invoke.i.i429, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i426

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i426: ; preds = %bb.fu
  %i.bdz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef %i.bdr, i64 noundef %i.bds)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i427 unwind label %bb.fv ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i427: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i426
  %i.bea = load i64, ptr %i.bdu, align 8, !tbaa !176, !alias.scope !838
  %i.beb = add i64 %i.bea, -4611686018427387891
  %i.bec = icmp ult i64 %i.beb, 13
  br i1 %i.bec, label %.invoke.i.i429, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i428

.invoke.i.i429:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i427, %bb.fu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #36
          to label %.cont.i.i430 unwind label %bb.fv

.cont.i.i430:                                     ; preds = %.invoke.i.i429
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i428: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i427
  %i.bed = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.30, i64 noundef 13)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit433 unwind label %bb.fv ; 0 uses

bb.fv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i428, %.invoke.i.i429, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i426, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422
  %i.bee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bef = load ptr, ptr %21, align 8, !tbaa !64, !alias.scope !838 ; 2 uses
  %i.beg = icmp eq ptr %i.bef, %i.bdt
  br i1 %i.beg, label %.body431, label %.body431.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit433: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i428
  %i.beh = uitofp nsz i32 %i.ard to float
  invoke void @_ZN8Profiler3avgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144) %i.bdq, ptr noundef nonnull align 8 dereferenceable(32) %21, float noundef %i.beh)
          to label %bb.fw unwind label %bb.gf

bb.fw:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit433
  %i.bei = load ptr, ptr %21, align 8, !tbaa !64  ; 2 uses
  %i.bej = icmp eq ptr %i.bei, %i.bdt
  br i1 %i.bej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434: ; preds = %bb.fw
  %i.bek = load i64, ptr %i.bdt, align 8, !tbaa !65
  %i.bel = add i64 %i.bek, 1
  call void @_ZdlPvm(ptr noundef %i.bei, i64 noundef %i.bel) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436: ; preds = %bb.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #2
  %i.bem = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #2
  call void @llvm.experimental.noalias.scope.decl(metadata !839)
  %i.ben = load ptr, ptr %7, align 8, !tbaa !64, !noalias !839
  %i.beo = load i64, ptr %i.h, align 8, !tbaa !176, !noalias !839 ; 3 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.bep, ptr %22, align 8, !tbaa !177, !alias.scope !840
  %i.beq = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  store i64 0, ptr %i.beq, align 8, !tbaa !176, !alias.scope !840
  store i8 0, ptr %i.bep, align 8, !tbaa !65, !alias.scope !840
  %i.ber = add i64 %i.beo, 18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef %i.ber)
          to label %bb.fx unwind label %bb.fy

bb.fx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436
  %i.bes = load i64, ptr %i.beq, align 8, !tbaa !176, !alias.scope !840
  %i.bet = sub i64 4611686018427387903, %i.bes
  %i.beu = icmp ult i64 %i.bet, %i.beo
  br i1 %i.beu, label %.invoke.i.i443, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i440

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i440: ; preds = %bb.fx
  %i.bev = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef %i.ben, i64 noundef %i.beo)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i441 unwind label %bb.fy ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i441: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i440
  %i.bew = load i64, ptr %i.beq, align 8, !tbaa !176, !alias.scope !840
  %i.bex = add i64 %i.bew, -4611686018427387886
  %i.bey = icmp ult i64 %i.bex, 18
  br i1 %i.bey, label %.invoke.i.i443, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i442

.invoke.i.i443:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i441, %bb.fx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #36
          to label %.cont.i.i444 unwind label %bb.fy

.cont.i.i444:                                     ; preds = %.invoke.i.i443
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i442: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i441
  %i.bez = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.31, i64 noundef 18)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit447 unwind label %bb.fy ; 0 uses

bb.fy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i442, %.invoke.i.i443, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i440, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436
  %i.bfa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bfb = load ptr, ptr %22, align 8, !tbaa !64, !alias.scope !840 ; 2 uses
  %i.bfc = icmp eq ptr %i.bfb, %i.bep
  br i1 %i.bfc, label %.body445, label %.body445.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit447: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i442
  %i.bfd = uitofp nsz i32 %.0167.lcssa to float   ; 2 uses
  invoke void @_ZN8Profiler3avgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144) %i.bem, ptr noundef nonnull align 8 dereferenceable(32) %22, float noundef %i.bfd)
          to label %bb.fz unwind label %bb.gg

bb.fz:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit447
  %i.bfe = load ptr, ptr %22, align 8, !tbaa !64  ; 2 uses
  %i.bff = icmp eq ptr %i.bfe, %i.bep
  br i1 %i.bff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448: ; preds = %bb.fz
  %i.bfg = load i64, ptr %i.bep, align 8, !tbaa !65
  %i.bfh = add i64 %i.bfg, 1
  call void @_ZdlPvm(ptr noundef %i.bfe, i64 noundef %i.bfh) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450: ; preds = %bb.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #2
  %i.bfi = icmp ne i32 %.0167.lcssa, 0
  %i.bfj = icmp ne i32 %.0164.lcssa, 0
  %or.cond3 = select i1 %i.bfi, i1 %i.bfj, i1 false
  br i1 %or.cond3, label %bb.ga, label %bb.gi

bb.ga:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450
  %i.bfk = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #2
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %i.bfl = load ptr, ptr %7, align 8, !tbaa !64, !noalias !841
  %i.bfm = load i64, ptr %i.h, align 8, !tbaa !176, !noalias !841 ; 3 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  store ptr %i.bfn, ptr %23, align 8, !tbaa !177, !alias.scope !842
  %i.bfo = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  store i64 0, ptr %i.bfo, align 8, !tbaa !176, !alias.scope !842
  store i8 0, ptr %i.bfn, align 8, !tbaa !65, !alias.scope !842
  %i.bfp = add i64 %i.bfm, 21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef %i.bfp)
          to label %bb.gb unwind label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.bfq = load i64, ptr %i.bfo, align 8, !tbaa !176, !alias.scope !842
  %i.bfr = sub i64 4611686018427387903, %i.bfq
  %i.bfs = icmp ult i64 %i.bfr, %i.bfm
  br i1 %i.bfs, label %.invoke.i.i457, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i454

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i454: ; preds = %bb.gb
  %i.bft = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef %i.bfl, i64 noundef %i.bfm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i455 unwind label %bb.gc ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i455: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i454
  %i.bfu = load i64, ptr %i.bfo, align 8, !tbaa !176, !alias.scope !842
  %i.bfv = add i64 %i.bfu, -4611686018427387883
  %i.bfw = icmp ult i64 %i.bfv, 21
  br i1 %i.bfw, label %.invoke.i.i457, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i456

.invoke.i.i457:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i455, %bb.gb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #36
          to label %.cont.i.i458 unwind label %bb.gc

.cont.i.i458:                                     ; preds = %.invoke.i.i457
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i456: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i455
  %i.bfx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.32, i64 noundef 21)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit461 unwind label %bb.gc ; 0 uses

bb.gc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i456, %.invoke.i.i457, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i454, %bb.ga
  %i.bfy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bfz = load ptr, ptr %23, align 8, !tbaa !64, !alias.scope !842 ; 2 uses
  %i.bga = icmp eq ptr %i.bfz, %i.bfn
  br i1 %i.bga, label %.body459, label %.body459.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit461: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i456
  %i.bgb = uitofp nsz i32 %.0164.lcssa to float
  %i.bgc = fmul nnan nsz float %i.bgb, 1.000000e+02
  %i.bgd = fdiv nsz float %i.bgc, %i.bfd
  %i.bge = fptosi float %i.bgd to i32
  %24 = sitofp nsz i32 %i.bge to float
  invoke void @_ZN8Profiler3avgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144) %i.bfk, ptr noundef nonnull align 8 dereferenceable(32) %23, float noundef %24)
          to label %bb.gd unwind label %bb.gh

bb.gd:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit461
  %i.bgf = load ptr, ptr %23, align 8, !tbaa !64  ; 2 uses
  %i.bgg = icmp eq ptr %i.bgf, %i.bfn
  br i1 %i.bgg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i462

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i462: ; preds = %bb.gd
  %i.bgh = load i64, ptr %i.bfn, align 8, !tbaa !65
  %i.bgi = add i64 %i.bgh, 1
  call void @_ZdlPvm(ptr noundef %i.bgf, i64 noundef %i.bgi) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464: ; preds = %bb.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i462
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #2
  br label %bb.gi

bb.ge:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit419
  %i.bgj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bgk = load ptr, ptr %20, align 8, !tbaa !64  ; 2 uses
  %i.bgl = icmp eq ptr %i.bgk, %i.bcy
  br i1 %i.bgl, label %.body417, label %.body417.sink.split

.body417.sink.split:                              ; preds = %bb.ge, %bb.fs
  %.sink1438 = phi ptr [ %i.bdk, %bb.fs ], [ %i.bgk, %bb.ge ]
  %.pn200.ph = phi { ptr, i32 } [ %i.bdj, %bb.fs ], [ %i.bgj, %bb.ge ]
  %i.bgm = load i64, ptr %i.bcy, align 8, !tbaa !65
  %i.bgn = add i64 %i.bgm, 1
  call void @_ZdlPvm(ptr noundef %.sink1438, i64 noundef %i.bgn) #34
  br label %.body417

.body417:                                         ; preds = %.body417.sink.split, %bb.ge, %bb.fs
  %.pn200 = phi { ptr, i32 } [ %i.bdj, %bb.fs ], [ %i.bgj, %bb.ge ], [ %.pn200.ph, %.body417.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #2
  br label %.body394

bb.gf:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit433
  %i.bgo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bgp = load ptr, ptr %21, align 8, !tbaa !64  ; 2 uses
  %i.bgq = icmp eq ptr %i.bgp, %i.bdt
  br i1 %i.bgq, label %.body431, label %.body431.sink.split

.body431.sink.split:                              ; preds = %bb.gf, %bb.fv
  %.sink1441 = phi ptr [ %i.bef, %bb.fv ], [ %i.bgp, %bb.gf ]
  %.pn202.ph = phi { ptr, i32 } [ %i.bee, %bb.fv ], [ %i.bgo, %bb.gf ]
  %i.bgr = load i64, ptr %i.bdt, align 8, !tbaa !65
  %i.bgs = add i64 %i.bgr, 1
  call void @_ZdlPvm(ptr noundef %.sink1441, i64 noundef %i.bgs) #34
  br label %.body431

.body431:                                         ; preds = %.body431.sink.split, %bb.gf, %bb.fv
  %.pn202 = phi { ptr, i32 } [ %i.bee, %bb.fv ], [ %i.bgo, %bb.gf ], [ %.pn202.ph, %.body431.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #2
  br label %.body394

bb.gg:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit447
  %i.bgt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bgu = load ptr, ptr %22, align 8, !tbaa !64  ; 2 uses
  %i.bgv = icmp eq ptr %i.bgu, %i.bep
  br i1 %i.bgv, label %.body445, label %.body445.sink.split

.body445.sink.split:                              ; preds = %bb.gg, %bb.fy
  %.sink1444 = phi ptr [ %i.bfb, %bb.fy ], [ %i.bgu, %bb.gg ]
  %.pn204.ph = phi { ptr, i32 } [ %i.bfa, %bb.fy ], [ %i.bgt, %bb.gg ]
  %i.bgw = load i64, ptr %i.bep, align 8, !tbaa !65
  %i.bgx = add i64 %i.bgw, 1
  call void @_ZdlPvm(ptr noundef %.sink1444, i64 noundef %i.bgx) #34
  br label %.body445

.body445:                                         ; preds = %.body445.sink.split, %bb.gg, %bb.fy
  %.pn204 = phi { ptr, i32 } [ %i.bfa, %bb.fy ], [ %i.bgt, %bb.gg ], [ %.pn204.ph, %.body445.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #2
  br label %.body394

bb.gh:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit461
  %i.bgy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bgz = load ptr, ptr %23, align 8, !tbaa !64  ; 2 uses
  %i.bha = icmp eq ptr %i.bgz, %i.bfn
  br i1 %i.bha, label %.body459, label %.body459.sink.split

.body459.sink.split:                              ; preds = %bb.gh, %bb.gc
  %.sink1447 = phi ptr [ %i.bfz, %bb.gc ], [ %i.bgz, %bb.gh ]
  %.pn206.ph = phi { ptr, i32 } [ %i.bfy, %bb.gc ], [ %i.bgy, %bb.gh ]
  %i.bhb = load i64, ptr %i.bfn, align 8, !tbaa !65
  %i.bhc = add i64 %i.bhb, 1
  call void @_ZdlPvm(ptr noundef %.sink1447, i64 noundef %i.bhc) #34
  br label %.body459

.body459:                                         ; preds = %.body459.sink.split, %bb.gh, %bb.gc
  %.pn206 = phi { ptr, i32 } [ %i.bfy, %bb.gc ], [ %i.bgy, %bb.gh ], [ %.pn206.ph, %.body459.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #2
  br label %.body394

bb.gi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #2
  %i.bhd = invoke noundef i64 @_ZN9TimeTaker4stopEb(ptr noundef nonnull align 8 dereferenceable(50) %12, i1 noundef zeroext false)
          to label %bb.gj unwind label %bb.gk     ; 0 uses

bb.gj:                                            ; preds = %bb.gi
  %i.bhe = load ptr, ptr %12, align 8, !tbaa !64  ; 2 uses
  %i.bhf = icmp eq ptr %i.bhe, %i.aqh
  br i1 %i.bhf, label %_ZN9TimeTakerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i477

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i477: ; preds = %bb.gj
  %i.bhg = load i64, ptr %i.aqh, align 8, !tbaa !65
  %i.bhh = add i64 %i.bhg, 1
  call void @_ZdlPvm(ptr noundef %i.bhe, i64 noundef %i.bhh) #34
  br label %_ZN9TimeTakerD2Ev.exit

bb.gk:                                            ; preds = %bb.gi
  %i.bhi = landingpad { ptr, i32 }
          catch ptr null
  %i.bhj = extractvalue { ptr, i32 } %i.bhi, 0
  call void @__clang_call_terminate(ptr %i.bhj) #35
  unreachable

_ZN9TimeTakerD2Ev.exit:                           ; preds = %bb.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i477
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #2
  %i.bhk = invoke noundef i64 @_ZN9TimeTaker4stopEb(ptr noundef nonnull align 8 dereferenceable(50) %8, i1 noundef zeroext false)
          to label %bb.gl unwind label %bb.gm     ; 0 uses

bb.gl:                                            ; preds = %_ZN9TimeTakerD2Ev.exit
  %i.bhl = load ptr, ptr %8, align 8, !tbaa !64   ; 2 uses
  %i.bhm = icmp eq ptr %i.bhl, %i.ac
  br i1 %i.bhm, label %_ZN9TimeTakerD2Ev.exit483, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i480

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i480: ; preds = %bb.gl
  %i.bhn = load i64, ptr %i.ac, align 8, !tbaa !65
  %i.bho = add i64 %i.bhn, 1
  call void @_ZdlPvm(ptr noundef %i.bhl, i64 noundef %i.bho) #34
  br label %_ZN9TimeTakerD2Ev.exit483

bb.gm:                                            ; preds = %_ZN9TimeTakerD2Ev.exit
  %i.bhp = landingpad { ptr, i32 }
          catch ptr null
  %i.bhq = extractvalue { ptr, i32 } %i.bhp, 0
  call void @__clang_call_terminate(ptr %i.bhq) #35
  unreachable

_ZN9TimeTakerD2Ev.exit483:                        ; preds = %bb.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i480
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #2
  %i.bhr = load ptr, ptr %7, align 8, !tbaa !64   ; 2 uses
  %i.bhs = icmp eq ptr %i.bhr, %i.g
  br i1 %i.bhs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484: ; preds = %_ZN9TimeTakerD2Ev.exit483
  %i.bht = load i64, ptr %i.g, align 8, !tbaa !65
  %i.bhu = add i64 %i.bht, 1
  call void @_ZdlPvm(ptr noundef %i.bhr, i64 noundef %i.bhu) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486: ; preds = %_ZN9TimeTakerD2Ev.exit483, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #2
  ret void

.body394:                                         ; preds = %bb.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, %bb.fg, %bb.eq, %bb.ei, %bb.eh, %bb.eg, %.body367, %.body459, %.body445, %.body431, %.body417, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, %.body353, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375, %.body314
  %.pn215.pn = phi { ptr, i32 } [ %.pn196, %.body367 ], [ %.pn190, %.body314 ], [ %.pn206, %.body459 ], [ %.pn204, %.body445 ], [ %.pn202, %.body431 ], [ %.pn200, %.body417 ], [ %.pn198, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408 ], [ %.pn194, %.body353 ], [ %.pn192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375 ], [ %i.aux, %bb.eg ], [ %i.bbq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ], [ %i.awj, %bb.eq ], [ %i.auz, %bb.ei ], [ %i.auy, %bb.eh ], [ %i.baj, %bb.fg ], [ %i.bca, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #2
  call void @_ZN9TimeTakerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %12) #2
  br label %bb.gn

bb.gn:                                            ; preds = %.body394, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322
  %.pn215.pn.pn = phi { ptr, i32 } [ %.pn215.pn, %.body394 ], [ %i.aql, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #2
  br label %.body287

.body287:                                         ; preds = %.loopexit709, %.loopexit.split-lp710.loopexit.split-lp, %.loopexit.split-lp710.loopexit, %.loopexit722, %.loopexit.split-lp723, %bb.dr, %.loopexit244.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i, %bb.v, %bb.p, %bb.gn, %.body268, %bb.k
  %.pn224.pn.pn.pn = phi { ptr, i32 } [ %i.dp, %bb.k ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i ], [ %.pn215.pn.pn, %bb.gn ], [ %.pn186, %.body268 ], [ %.pn81.pn.pn.i, %bb.dr ], [ %.pn81.pn.pn.i, %.loopexit244.i ], [ %i.fz, %bb.p ], [ %i.gt, %bb.v ], [ %lpad.loopexit.split-lp725, %.loopexit.split-lp723 ], [ %lpad.loopexit724, %.loopexit722 ], [ %lpad.loopexit711, %.loopexit709 ], [ %lpad.loopexit714, %.loopexit.split-lp710.loopexit ], [ %lpad.loopexit.split-lp715, %.loopexit.split-lp710.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #2
  call void @_ZN9TimeTakerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %8) #2
  br label %bb.go

bb.go:                                            ; preds = %.body287, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255
  %.pn224.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn224.pn.pn.pn, %.body287 ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #2
  br label %bb.gp

bb.gp:                                            ; preds = %bb.g, %bb.go, %bb.e, %bb.f, %bb.a
  %.pn224.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.l, %bb.a ], [ %i.x, %bb.e ], [ %i.y, %bb.f ], [ %.pn224.pn.pn.pn.pn, %bb.go ], [ %i.z, %bb.g ]
  %i.bhv = load ptr, ptr %7, align 8, !tbaa !64   ; 2 uses
  %i.bhw = icmp eq ptr %i.bhv, %i.g
  br i1 %i.bhw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487: ; preds = %bb.gp
  %i.bhx = load i64, ptr %i.g, align 8, !tbaa !65
  %i.bhy = add i64 %i.bhx, 1
  call void @_ZdlPvm(ptr noundef %i.bhv, i64 noundef %i.bhy) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489: ; preds = %bb.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #2
  resume { ptr, i32 } %.pn224.pn.pn.pn.pn.pn.pn.pn.pn
}

end_hunk_0
begin_hunk_1_@_ZN4core8CMatrix4IfE17buildRotateFromToERKNS_8vector3dIfEES5_:bb.a
  %i.q = fmul nsz <2 x double> %i.p, %i.m
  %i.r = fmul nsz <2 x double> %i.p, %i.n
  %i.s = fptrunc <2 x double> %i.q to <2 x float>
  %i.t = fptrunc <2 x double> %i.r to <2 x float>
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.a, %bb.b
  %i.u = phi <2 x float> [ %i.i, %bb.a ], [ %i.s, %bb.b ] ; 3 uses
  %i.v = phi <2 x float> [ %i.a, %bb.a ], [ %i.t, %bb.b ] ; 3 uses
  %foldExtExtBinop77 = fmul nsz <2 x float> %i.b, %i.b
  %i.w = extractelement <2 x float> %foldExtExtBinop77, i64 0
  %i.x = tail call nsz float @llvm.fmuladd.f32(float %.sroa.058.0.copyload, float %.sroa.058.0.copyload, float %i.w)
  %i.y = extractelement <2 x float> %i.b, i64 1   ; 2 uses
  %i.z = tail call nsz float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.x) ; 2 uses
  %i.aa = fcmp nsz oeq float %i.z, 0.000000e+00
  %i.ab = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ac = insertelement <2 x float> %i.ab, float %.sroa.058.0.copyload, i64 1 ; 2 uses
  br i1 %i.aa, label %_ZN4core8vector3dIfE9normalizeEv.exit35, label %bb.c

bb.c:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit
  %i.ad = fpext nsz float %i.z to double
  %i.ae = tail call nsz double @llvm.sqrt.f64(double %i.ad)
  %i.af = fdiv nsz double 1.000000e+00, %i.ae
  %i.ag = fpext <2 x float> %i.ac to <2 x double>
  %i.ah = fpext <2 x float> %i.b to <2 x double>
  %i.ai = insertelement <2 x double> poison, double %i.af, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = fmul nsz <2 x double> %i.aj, %i.ag
  %i.al = fmul nsz <2 x double> %i.aj, %i.ah
  %i.am = fptrunc <2 x double> %i.al to <2 x float>
  %i.an = fptrunc <2 x double> %i.ak to <2 x float>
  br label %_ZN4core8vector3dIfE9normalizeEv.exit35

_ZN4core8vector3dIfE9normalizeEv.exit35:          ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit, %bb.c
  %i.ao = phi <2 x float> [ %i.b, %_ZN4core8vector3dIfE9normalizeEv.exit ], [ %i.am, %bb.c ] ; 4 uses
  %i.ap = phi <2 x float> [ %i.ac, %_ZN4core8vector3dIfE9normalizeEv.exit ], [ %i.an, %bb.c ] ; 2 uses
  %i.aq = fneg nsz <2 x float> %i.v
  %i.ar = fmul nsz <2 x float> %i.ap, %i.aq
  %i.as = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.u, <2 x float> %i.ar) ; 4 uses
  %i.at = extractelement <2 x float> %i.u, i64 1  ; 2 uses
  %i.au = fneg nsz float %i.at
  %i.av = extractelement <2 x float> %i.ao, i64 0
  %i.aw = fmul nsz float %i.av, %i.au
  %i.ax = extractelement <2 x float> %i.ap, i64 1 ; 2 uses
  %i.ay = extractelement <2 x float> %i.v, i64 0
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %i.ax, float %i.ay, float %i.aw) ; 6 uses
  %i.ba = extractelement <2 x float> %i.as, i64 1 ; 4 uses
  %i.bb = fmul nsz float %i.ba, %i.ba
  %i.bc = extractelement <2 x float> %i.as, i64 0 ; 4 uses
  %i.bd = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float %i.bc, float %i.bb)
  %i.be = tail call nsz float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.bd) ; 2 uses
  %i.bf = fcmp nsz oeq float %i.be, 0.000000e+00
  br i1 %i.bf, label %_ZN4core8vector3dIfE9normalizeEv.exit36, label %bb.d

bb.d:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit35
  %i.bg = fpext nsz float %i.be to double
  %i.bh = tail call nsz double @llvm.sqrt.f64(double %i.bg)
  %i.bi = fdiv nsz double 1.000000e+00, %i.bh     ; 2 uses
  %i.bj = fpext <2 x float> %i.as to <2 x double>
  %i.bk = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fmul nsz <2 x double> %i.bl, %i.bj
  %i.bn = fptrunc <2 x double> %i.bm to <2 x float>
  %i.bo = fpext nsz float %i.az to double
  %i.bp = fmul nsz double %i.bi, %i.bo
  %i.bq = fptrunc nsz double %i.bp to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit36

_ZN4core8vector3dIfE9normalizeEv.exit36:          ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit35, %bb.d
  %.sroa.13.0 = phi nsz float [ %i.az, %_ZN4core8vector3dIfE9normalizeEv.exit35 ], [ %i.bq, %bb.d ] ; 3 uses
  %.sroa.0.0 = phi nsz <2 x float> [ %i.as, %_ZN4core8vector3dIfE9normalizeEv.exit35 ], [ %i.bn, %bb.d ] ; 2 uses
  %foldExtExtBinop79 = fmul nsz <2 x float> %i.v, %i.ao
  %i.br = extractelement <2 x float> %foldExtExtBinop79, i64 0
  %i.bs = tail call nsz float @llvm.fmuladd.f32(float %i.at, float %i.ax, float %i.br)
  %i.bt = extractelement <2 x float> %i.ao, i64 1
  %i.bu = extractelement <2 x float> %i.u, i64 0
  %i.bv = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bu, float %i.bt, float %i.bs) ; 4 uses
  %i.bw = fsub nsz float 1.000000e+00, %i.bv      ; 3 uses
  %.sroa.0.0.vec.extract47 = extractelement <2 x float> %.sroa.0.0, i64 0 ; 3 uses
  %i.bx = fmul nsz float %i.bw, %.sroa.0.0.vec.extract47 ; 2 uses
  %.sroa.0.4.vec.extract54 = extractelement <2 x float> %.sroa.0.0, i64 1 ; 3 uses
  %i.by = fmul nsz float %i.bw, %.sroa.0.4.vec.extract54 ; 2 uses
  %i.bz = fmul nsz float %i.bw, %.sroa.13.0       ; 2 uses
  %i.ca = tail call nsz float @llvm.fmuladd.f32(float %i.bx, float %.sroa.0.0.vec.extract47, float %i.bv)
  store float %i.ca, ptr %0, align 4, !tbaa !82
  %i.cb = tail call nsz float @llvm.fmuladd.f32(float %i.by, float %.sroa.0.4.vec.extract54, float %i.bv)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.cb, ptr %i.cc, align 4, !tbaa !82
  %i.cd = tail call nsz float @llvm.fmuladd.f32(float %i.bz, float %.sroa.13.0, float %i.bv)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.cd, ptr %i.ce, align 4, !tbaa !82
  %i.cf = fmul nsz float %.sroa.0.4.vec.extract54, %i.bx ; 2 uses
  %i.cg = fmul nsz float %i.bz, %.sroa.0.0.vec.extract47 ; 2 uses
  %i.ch = fmul nsz float %.sroa.13.0, %i.by       ; 2 uses
  %i.ci = fsub nsz float %i.cf, %i.az
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.ci, ptr %i.cj, align 4, !tbaa !82
  %i.ck = fadd nsz float %i.ba, %i.cg
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ck, ptr %i.cl, align 4, !tbaa !82
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 0.000000e+00, ptr %i.cm, align 4, !tbaa !82
  %i.cn = fadd nsz float %i.az, %i.cf
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.cn, ptr %i.co, align 4, !tbaa !82
  %i.cp = fsub nsz float %i.ch, %i.bc
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.cp, ptr %i.cq, align 4, !tbaa !82
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 0.000000e+00, ptr %i.cr, align 4, !tbaa !82
  %i.cs = fsub nsz float %i.cg, %i.ba
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.cs, ptr %i.ct, align 4, !tbaa !82
  %i.cu = fadd nsz float %i.bc, %i.ch
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.cu, ptr %i.cv, align 4, !tbaa !82
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cx, align 4, !tbaa !82
  ret ptr %0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9ClientMap12renderPostFxE10CameraMode(ptr noundef nonnull align 8 dereferenceable(656) %0, i32 noundef %1) local_unnamed_addr #18 align 2 {
bb.a:
  %2 = alloca %"class.core::rect", align 4        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.a, align 8 ; 2 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !82
  %.sroa.09.0.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload, i64 0 ; 2 uses
  %i.b = fcmp nsz ogt float %.sroa.09.0.vec.extract.i, 0.000000e+00
  %i.c = select nsz i1 %i.b, float 5.000000e+00, float -5.000000e+00
  %i.d = fadd nsz float %.sroa.09.0.vec.extract.i, %i.c
  %i.e = fdiv nsz float %i.d, 1.000000e+01
  %i.f = fptosi float %i.e to i16
  %i.g = insertelement <2 x float> %.sroa.07.0.copyload, float %.sroa.28.0.copyload, i64 0 ; 2 uses
  %i.h = fcmp nsz ogt <2 x float> %i.g, zeroinitializer
  %i.i = select <2 x i1> %i.h, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.j = fadd nsz <2 x float> %i.g, %i.i
  %i.k = fdiv nsz <2 x float> %i.j, splat (float 1.000000e+01)
  %i.l = fptosi <2 x float> %i.k to <2 x i16>
  %i.m = zext <2 x i16> %i.l to <2 x i48>
  %i.n = shl nuw <2 x i48> %i.m, <i48 32, i48 16>
  %.sroa.2.0.insert.insert.i = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.n)
  %.sroa.0.0.insert.ext.i = zext i16 %i.f to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %i.o = tail call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i, ptr noundef null)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !566  ; 2 uses
  %i.r = and i32 %i.o, 65535
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !569
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !570  ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 2080
  %i.ab = icmp ugt i64 %i.aa, %i.s
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw [2080 x i8], ptr %i.w, i64 %i.s ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !176
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.c, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.b, %bb.c
  %i.ah = phi ptr [ %i.ag, %bb.c ], [ %i.ac, %bb.b ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1392
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !247 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 1396
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !898, !range !174, !noundef !175
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.an = lshr i32 %i.aj, 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !160 ; 3 uses
  %i.aq = lshr i32 %i.aj, 8
  %i.ar = and i32 %i.aj, 255
  %i.as = and i32 %i.ap, 255
  %i.at = mul nuw nsw i32 %i.as, %i.ar
  %i.au = uitofp nsz nneg i32 %i.at to float
  %i.av = fdiv nsz float %i.au, 2.550000e+02
  %i.aw = fadd nsz float %i.av, 5.000000e-01
  %i.ax = tail call nsz noundef float @llvm.floor.f32(float %i.aw)
  %i.ay = fptosi float %i.ax to i32
  %3 = and i32 %i.aj, -16777216
  %i.az = and i32 %i.aq, 255
  %i.ba = and i32 %i.an, 255
  %i.bb = lshr i32 %i.ap, 8
  %i.bc = lshr i32 %i.ap, 16
  %i.bd = and i32 %i.bb, 255
  %i.be = and i32 %i.bc, 255
  %i.bf = mul nuw nsw i32 %i.bd, %i.az
  %i.bg = mul nuw nsw i32 %i.be, %i.ba
  %i.bh = uitofp nsz nneg i32 %i.bf to float
  %i.bi = uitofp nsz nneg i32 %i.bg to float
  %i.bj = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.bh, i64 1
  %i.bl = fdiv nsz <2 x float> %i.bk, splat (float 2.550000e+02)
  %i.bm = fadd nsz <2 x float> %i.bl, splat (float 5.000000e-01)
  %i.bn = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.bm)
  %i.bo = insertelement <4 x i32> poison, i32 %i.ay, i64 2
  %i.bp = insertelement <4 x i32> %i.bo, i32 %3, i64 3
  %i.bq = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.br = fptosi <4 x float> %i.bq to <4 x i32>
  %4 = shufflevector <4 x i32> %i.br, <4 x i32> %i.bp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bs = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %4, <4 x i32> <i32 0, i32 0, i32 0, i32 -2147483648>)
  %5 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bs, <4 x i32> <i32 255, i32 255, i32 255, i32 -1>)
  %6 = shl nuw nsw <4 x i32> %5, <i32 16, i32 8, i32 0, i32 0>
  %i.bt = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %6)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK14NodeDefManager3getERK7MapNode.exit
  %.sroa.014.0 = phi i32 [ %i.bt, %bb.d ], [ %i.aj, %_ZNK14NodeDefManager3getERK7MapNode.exit ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ah, i64 1400
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !594
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1248
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !598
  %i.by = icmp eq i8 %i.bx, 2
  %i.bz = icmp eq i32 %1, 1
  %or.cond = and i1 %i.bz, %i.by
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !486, !nonnull !175, !align !487
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 5
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !565, !range !174, !noundef !175
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not = icmp ult i32 %.sroa.014.0, 16777216
  br i1 %.not, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g
  %.sroa.014.126 = phi i32 [ %.sroa.014.0, %bb.g ], [ -16777216, %bb.f ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !108 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !58
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = tail call noundef ptr %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg) ; 4 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !58
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 488
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.ck)
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cr = load <2 x i32>, ptr %i.co, align 4, !tbaa !247
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #2
  store i32 0, ptr %2, align 4, !tbaa !900
  store i32 0, ptr %i.cp, align 4, !tbaa !901
  store <2 x i32> %i.cr, ptr %i.cq, align 4, !tbaa !247
  %i.cs = load ptr, ptr %i.ck, align 8, !tbaa !58
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 424
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, i32 %.sroa.014.126, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9ClientMap9PrintInfoERSo(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, i64 noundef 11) ; 0 uses
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNS0_9SMaterialEbEEiii(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef %1, ptr noundef align 8 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
.invoke:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, CachedMeshBuffer>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, CachedMeshBuffer>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %.sroa.03.i.i22.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0.i23.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.03.i.i12.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.03.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.h = alloca ptr, align 8                      ; 11 uses
  %9 = alloca %class.anon.817, align 8            ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %class.TimeTaker, align 8          ; 16 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.core::CMatrix4", align 4   ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.video::SMaterial", align 8 ; 12 uses
  %16 = alloca %"class.video::SMaterial", align 8 ; 21 uses
  %17 = alloca %"class.core::vector3d", align 8   ; 6 uses
  %18 = alloca %"class.core::vector3d", align 8   ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %.not = icmp eq i32 %3, 8                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #2
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.i, ptr %10, align 8, !tbaa !177
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store i64 0, ptr %i.j, align 8, !tbaa !176
  store i8 0, ptr %i.i, align 8, !tbaa !65
  %i.k = select i1 %.not, ptr @.str.36, ptr @.str.35
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.k, i64 noundef 25)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.a ; 0 uses

bb.a:                                             ; preds = %.invoke
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %.invoke
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !154
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1672
  %.sroa.0.0.copyload.i = load i16, ptr %i.p, align 8, !tbaa !162 ; 6 uses
  %i.q = load i8, ptr @__tls_guard, align 1
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit, label %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread, !prof !441

_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.s = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_118tl_meshbuflistmapsE)
  br label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit

_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.t = call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  call fastcc void @__cxx_global_var_init()
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, i8 0, i64 24, i1 false)
  %i.u = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EED2Ev, ptr nonnull @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, ptr nonnull @__dso_handle) #2 ; 0 uses
  %.pr = load i8, ptr @__tls_guard, align 1
  %i.v = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_118tl_meshbuflistmapsE) ; 2 uses
  %i.w = icmp eq i8 %.pr, 0
  br i1 %i.w, label %bb.b, label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit, !prof !442

bb.b:                                             ; preds = %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.x = call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  call fastcc void @__cxx_global_var_init()
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, i8 0, i64 24, i1 false)
  %i.y = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EED2Ev, ptr nonnull @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, ptr nonnull @__dso_handle) #2 ; 0 uses
  br label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit

_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit: ; preds = %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit, %bb.b
  %i.z = phi ptr [ %i.s, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread ], [ %i.v, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit ], [ %i.v, %bb.b ] ; 3 uses
  %i.aa = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE) ; 15 uses
  call fastcc void @_ZN12_GLOBAL__N_115MeshBufListMaps5clearEv(ptr noundef nonnull align 8 dereferenceable(112) %i.z)
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 17 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !443 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.ab
  br i1 %.not.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !443
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit: ; preds = %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit, %_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ae = phi ptr [ %i.ad, %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit ], [ %i.ab, %_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !167 ; 2 uses
  %i.ah = sext i32 %5 to i64
  %i.ai = udiv i64 %i.ag, %i.ah
  %i.aj = add i64 %i.ai, 1                        ; 2 uses
  %i.ak = sext i32 %4 to i64
  %i.al = mul i64 %i.aj, %i.ak
  %i.am = select i1 %.not, i64 %i.al, i64 0       ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit
  %i.an = add nsw i32 %5, -1
  %.not113 = icmp eq i32 %4, %i.an
  br i1 %.not113, label %.thread833, label %bb.fq

bb.d:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit
  %i.ao = add nsw i32 %4, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul i64 %i.aj, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !165 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %.not378576 = icmp eq ptr %i.as, %i.at
  br i1 %.not378576, label %.._crit_edge_crit_edge, label %.lr.ph579.split.us.preheader

.thread833:                                       ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !165 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %.not378576834 = icmp eq ptr %i.av, %i.aw
  br i1 %.not378576834, label %.._crit_edge_crit_edge, label %.lr.ph579.split.preheader

.._crit_edge_crit_edge:                           ; preds = %.thread833, %bb.d
  %.pre698 = zext i16 %.sroa.0.0.copyload.i to i32 ; 2 uses
  %.pre699 = add nsw i32 %.pre698, -1
  %.pre701 = shl i16 %.sroa.0.0.copyload.i, 4
  br label %._crit_edge

.lr.ph579.split.preheader:                        ; preds = %.thread833
  %i.ax = zext i16 %.sroa.0.0.copyload.i to i32   ; 5 uses
  %i.ay = add nsw i32 %i.ax, -1                   ; 5 uses
end_hunk_1
begin_hunk_2_@_GLOBAL__sub_I_clientmap.cpp:bb.a
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 16), align 16, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.g, ptr noundef nonnull align 1 dereferenceable(16) @.str, i64 16, i1 false)
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 8), align 8, !tbaa !176
  %i.i = load ptr, ptr @_ZL18ClientMap_settingsB5cxx11, align 16, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #2
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 32), align 16, !tbaa !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 48), ptr noundef nonnull align 1 dereferenceable(15) @.str.3, i64 15, i1 false)
  store i64 15, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 40), align 8, !tbaa !176
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 63), align 1, !tbaa !65
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 80), ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 64), align 16, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #2
  store i64 18, ptr %i.e, align 8, !tbaa !178
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 64), ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc28.i unwind label %bb.b ; 2 uses

.noexc28.i:                                       ; preds = %bb.a
  store ptr %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 64), align 16, !tbaa !64
  %i.l = load i64, ptr %i.e, align 8, !tbaa !178  ; 3 uses
  store i64 %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 80), align 16, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.k, ptr noundef nonnull align 1 dereferenceable(18) @.str.4, i64 18, i1 false)
  store i64 %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 72), align 8, !tbaa !176
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 64), align 16, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #2
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 96), align 16, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #2
  store i64 37, ptr %i.d, align 8, !tbaa !178
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 96), ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc32.i unwind label %bb.c ; 2 uses

.noexc32.i:                                       ; preds = %.noexc28.i
  store ptr %i.o, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 96), align 16, !tbaa !64
  %i.p = load i64, ptr %i.d, align 8, !tbaa !178  ; 3 uses
  store i64 %i.p, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 112), align 16, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.o, ptr noundef nonnull align 1 dereferenceable(37) @.str.5, i64 37, i1 false)
  store i64 %i.p, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 104), align 8, !tbaa !176
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 96), align 16, !tbaa !64
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 0, ptr %i.r, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #2
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 144), ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 128), align 16, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #2
  store i64 29, ptr %i.c, align 8, !tbaa !178
  %i.s = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 128), ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc36.i unwind label %bb.d ; 2 uses

.noexc36.i:                                       ; preds = %.noexc32.i
  store ptr %i.s, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 128), align 16, !tbaa !64
  %i.t = load i64, ptr %i.c, align 8, !tbaa !178  ; 3 uses
  store i64 %i.t, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 144), align 16, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.s, ptr noundef nonnull align 1 dereferenceable(29) @.str.6, i64 29, i1 false)
  store i64 %i.t, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 136), align 8, !tbaa !176
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 128), align 16, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store i8 0, ptr %i.v, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #2
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 160), align 16, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #2
  store i64 16, ptr %i.b, align 8, !tbaa !178
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 160), ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc40.i unwind label %bb.e ; 2 uses

.noexc40.i:                                       ; preds = %.noexc36.i
  store ptr %i.w, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 160), align 16, !tbaa !64
  %i.x = load i64, ptr %i.b, align 8, !tbaa !178  ; 3 uses
  store i64 %i.x, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 176), align 16, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.w, ptr noundef nonnull align 1 dereferenceable(16) @.str.7, i64 16, i1 false)
  store i64 %i.x, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 168), align 8, !tbaa !176
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 160), align 16, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 0, ptr %i.z, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #2
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 208), ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 192), align 16, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  store i64 24, ptr %i.a, align 8, !tbaa !178
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 192), ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %__cxx_global_var_init.2.exit unwind label %bb.f ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.c:                                             ; preds = %.noexc28.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %.noexc32.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %.noexc36.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %.noexc40.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.515.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 160), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 192), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 64), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 96), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 128), %bb.d ]
  %.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.af, %bb.f ], [ %i.ab, %bb.b ], [ %i.ac, %bb.c ], [ %i.ad, %bb.d ]
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.g
  %i.ag = phi ptr [ %.515.i, %bb.g ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -32 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !64 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !65
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.an = icmp eq ptr %i.ah, @_ZL18ClientMap_settingsB5cxx11
  br i1 %i.an, label %bb.i, label %bb.h

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.i

__cxx_global_var_init.2.exit:                     ; preds = %.noexc40.i
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 192), align 16, !tbaa !64
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !178 ; 3 uses
  store i64 %i.ao, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 208), align 16, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aa, ptr noundef nonnull align 1 dereferenceable(24) @.str.8, i64 24, i1 false)
  store i64 %i.ao, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 200), align 8, !tbaa !176
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 192), align 16, !tbaa !64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 0, ptr %i.aq, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  %i.ar = call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor, ptr null, ptr nonnull @__dso_handle) #2 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #4

declare extern_weak void @_ZTH13verbosestream() #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.abs.v2i16(<2 x i16>, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i48 @llvm.vector.reduce.or.v2i48(<2 x i48>) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #28 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #34 = { builtin nounwind }
attributes #35 = { noreturn nounwind }
attributes #36 = { noreturn }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { builtin allocsize(0) }

!llvm.module.flags = !{!25, !26, !27}
!llvm.ident = !{!28}
!llvm.errno.tbaa = !{!33}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{!2, !114}
!3 = distinct !{ptr @_ZN16CachedMeshBuffer4dropEv, null}
!4 = distinct !{!4, !114}
!5 = distinct !{!5, !114}
!6 = distinct !{!6, !114}
!7 = distinct !{!7, !114}
!8 = distinct !{null}
!9 = distinct !{!9, !114}
!10 = distinct !{!10, !114}
!11 = distinct !{!11, !114}
!12 = distinct !{!12, !114}
!13 = distinct !{null}
!14 = distinct !{!14, !114}
!15 = distinct !{null}
!16 = distinct !{null}
!17 = distinct !{!17, !114}
!18 = distinct !{!18, !114}
!19 = distinct !{!19, !114}
!20 = distinct !{!20, !114}
!21 = distinct !{null}
!22 = distinct !{ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED1Ev, null, null, null, null}
!23 = distinct !{!23, !114}
!24 = distinct !{!24, !114}
!25 = !{i32 8, !"PIC Level", i32 2}
!26 = !{i32 7, !"PIE Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 2}
!28 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!29 = !{!"Simple C++ TBAA"}
!30 = !{!"omnipotent char", !29, i64 0}
!31 = !{!"int", !30, i64 0}
!32 = !{!"__libc_errno", !31, i64 0}
!33 = !{!32, !31, i64 0}
!34 = !{!"any pointer", !30, i64 0}
!35 = !{!"any p2 pointer", !34, i64 0}
!36 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !35, i64 0}
!37 = !{!"long", !30, i64 0}
!38 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !34, i64 0}
!39 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !38, i64 0}
!40 = !{!"float", !30, i64 0}
!41 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !40, i64 0, !37, i64 8}
!42 = !{!"_ZTSSt10_HashtableIN5video9SMaterialESt4pairIKS1_St6vectorIS2_IN4core8vector3dIsEEPN5scene11IMeshBufferEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE", !36, i64 0, !37, i64 8, !39, i64 16, !37, i64 24, !41, i64 32, !38, i64 48}
!43 = !{!42, !36, i64 0}
!44 = !{!42, !37, i64 8}
!45 = !{!41, !40, i64 0}
!46 = !{!"p1 _ZTSN12_GLOBAL__N_114DrawDescriptorE", !34, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!48 = !{!47, !46, i64 0}
!49 = !{!47, !46, i64 16}
!50 = !{!"p2 _ZTSN5scene11IMeshBufferE", !35, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIPN5scene11IMeshBufferESaIS2_EE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!53 = !{!52, !50, i64 0}
!54 = !{!52, !50, i64 8}
!55 = !{!"p1 _ZTSN5scene11IMeshBufferE", !34, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!"vtable pointer", !29, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"_ZTS17IReferenceCounted", !31, i64 8}
!60 = !{!59, !31, i64 8}
!61 = !{!"p1 omnipotent char", !34, i64 0}
!62 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !61, i64 0}
!63 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !62, i64 0, !37, i64 8, !30, i64 16}
!64 = !{!63, !61, i64 0}
!65 = !{!30, !30, i64 0}
!66 = !{!"_ZTSN5video6SColorE", !31, i64 0}
!67 = !{!"p1 _ZTS13RenderingCore", !34, i64 0}
!68 = !{!"_ZTSSt10_Head_baseILm0EP13RenderingCoreLb0EE", !67, i64 0}
!69 = !{!"_ZTSSt11_Tuple_implILm0EJP13RenderingCoreSt14default_deleteIS0_EEE", !68, i64 0}
!70 = !{!"_ZTSSt5tupleIJP13RenderingCoreSt14default_deleteIS0_EEE", !69, i64 0}
!71 = !{!"_ZTSSt15__uniq_ptr_implI13RenderingCoreSt14default_deleteIS0_EE", !70, i64 0}
!72 = !{!"_ZTSSt15__uniq_ptr_dataI13RenderingCoreSt14default_deleteIS0_ELb1ELb1EE", !71, i64 0}
!73 = !{!"_ZTSSt10unique_ptrI13RenderingCoreSt14default_deleteIS0_EE", !72, i64 0}
!74 = !{!"p1 _ZTS14IrrlichtDevice", !34, i64 0}
!75 = !{!"p1 _ZTSN5video12IVideoDriverE", !34, i64 0}
!76 = !{!"p1 _ZTS15MyEventReceiver", !34, i64 0}
!77 = !{!"_ZTS15RenderingEngine", !66, i64 0, !66, i64 4, !73, i64 8, !74, i64 16, !75, i64 24, !76, i64 32}
!78 = !{!77, !74, i64 16}
!79 = !{!"bool", !30, i64 0}
!80 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !30, i64 0, !79, i64 32}
!81 = !{!80, !79, i64 32}
!82 = !{!40, !40, i64 0}
!83 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !34, i64 0}
!84 = !{!"_ZTSNSt8__detail15_List_node_baseE", !83, i64 0, !83, i64 8}
!85 = !{!84, !83, i64 8}
!86 = !{!84, !83, i64 0}
!87 = !{!"_ZTSNSt8__detail17_List_node_headerE", !84, i64 0, !37, i64 16}
!88 = !{!87, !37, i64 16}
!89 = !{!"_ZTSSt22_Optional_payload_baseISt14_List_iteratorIPN5scene10ISceneNodeEEE", !30, i64 0, !79, i64 8}
!90 = !{!89, !79, i64 8}
!91 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !80, i64 0}
!92 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !91, i64 0}
!93 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !92, i64 0}
!94 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !93, i64 0}
!95 = !{!"_ZTSN4core8CMatrix4IfEE", !30, i64 0}
!96 = !{!"_ZTSN4core8vector3dIfEE", !40, i64 0, !40, i64 4, !40, i64 8}
!97 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EE10_List_implE", !87, i64 0}
!98 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EEE", !97, i64 0}
!99 = !{!"_ZTSNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EEE", !98, i64 0}
!100 = !{!"_ZTSSt17_Optional_payloadISt14_List_iteratorIPN5scene10ISceneNodeEELb1ELb1ELb1EE", !89, i64 0}
!101 = !{!"_ZTSSt14_Optional_baseISt14_List_iteratorIPN5scene10ISceneNodeEELb1ELb1EE", !100, i64 0}
!102 = !{!"_ZTSSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEE", !101, i64 0}
!103 = !{!"p1 _ZTSN5scene10ISceneNodeE", !34, i64 0}
!104 = !{!"p1 _ZTSN5scene13ISceneManagerE", !34, i64 0}
!105 = !{!"short", !30, i64 0}
!106 = !{!"_ZTSN5scene10ISceneNodeE", !94, i64 8, !95, i64 48, !96, i64 112, !96, i64 124, !96, i64 136, !99, i64 152, !102, i64 176, !103, i64 192, !104, i64 200, !31, i64 208, !105, i64 212, !105, i64 214, !79, i64 216, !79, i64 217}
!107 = !{!106, !103, i64 192}
!108 = !{!106, !104, i64 200}
!109 = !{!106, !31, i64 208}
!110 = !{!106, !105, i64 212}
!111 = !{!106, !105, i64 214}
!112 = !{!106, !79, i64 216}
!113 = !{!106, !79, i64 217}
!114 = !{!"llvm.loop.mustprogress"}
!115 = !{!"p1 _ZTS8IGameDef", !34, i64 0}
!116 = !{!"_ZTSSt4lessIP16MapEventReceiverE"}
!117 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIP16MapEventReceiverEE", !116, i64 0}
!118 = !{!"_ZTSSt14_Rb_tree_color", !30, i64 0}
!119 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !34, i64 0}
!120 = !{!"_ZTSSt18_Rb_tree_node_base", !118, i64 0, !119, i64 8, !119, i64 16, !119, i64 24}
!121 = !{!"_ZTSSt15_Rb_tree_header", !120, i64 0, !37, i64 32}
!122 = !{!"_ZTSNSt8_Rb_treeIP16MapEventReceiverS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EEE", !117, i64 0, !121, i64 8}
!123 = !{!"_ZTSSt8_Rb_treeIP16MapEventReceiverS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE", !122, i64 0}
!124 = !{!"_ZTSSt3setIP16MapEventReceiverSt4lessIS1_ESaIS1_EE", !123, i64 0}
!125 = !{!"_ZTSSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE", !36, i64 0, !37, i64 8, !39, i64 16, !37, i64 24, !41, i64 32, !38, i64 48}
!126 = !{!"_ZTSSt13unordered_mapIN4core8vector2dIsEEP9MapSectorSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE", !125, i64 0}
!127 = !{!"p1 _ZTS9MapSector", !34, i64 0}
!128 = !{!"_ZTSN4core8vector2dIsEE", !105, i64 0, !105, i64 2}
!129 = !{!"p1 _ZTS14NodeDefManager", !34, i64 0}
!130 = !{!"_ZTS3Map", !115, i64 8, !124, i64 16, !126, i64 64, !127, i64 120, !128, i64 128, !129, i64 136}
!131 = !{!"p1 _ZTS6Client", !34, i64 0}
!132 = !{!"p1 _ZTS15RenderingEngine", !34, i64 0}
!133 = !{!"_ZTSN4core8aabbox3dIfEE", !96, i64 0, !96, i64 12}
!134 = !{!"p1 _ZTS14MapDrawControl", !34, i64 0}
!135 = !{!"_ZTSN4core8vector3dIsEE", !105, i64 0, !105, i64 2, !105, i64 4}
!136 = !{!"_ZTSN9ClientMap16MapBlockComparerE", !135, i64 0}
!137 = !{!"_ZTSSt20_Rb_tree_key_compareIN9ClientMap16MapBlockComparerEE", !136, i64 0}
!138 = !{!"_ZTSNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_EN9ClientMap16MapBlockComparerESaIS7_EE13_Rb_tree_implISB_Lb0EEE", !137, i64 0, !121, i64 8}
!139 = !{!"_ZTSSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_EN9ClientMap16MapBlockComparerESaIS7_EE", !138, i64 0}
end_hunk_2
