Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/sim_util?download=true
inline.NumInlined: 1232
inline.NumDeleted: 633
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3gmx16EnumerationArrayINS_14MtsForceGroupsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELS1_7EED2Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !15
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !14 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !15
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5
  %i.ak = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5
  %i.an = load i64, ptr %i.al, align 8, !tbaa !15
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx8do_forceEP8_IO_FILEPK9t_commrecRK10t_inputrecRKNS_18MDModulesNotifiersEPNS_3AwhEP10gmx_enfrotPNS_10ImdSessionEP6pull_tlP6t_nrnbP13gmx_wallcyclePK14gmx_localtop_tPA3_KfNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEENS_8ArrayRefISV_EEPK9history_tPNS_16ForceBuffersViewEPA3_fPK9t_mdatomsP14gmx_enerdata_tNSX_ISQ_EEP10t_forcerecRKNS_21MdrunScheduleWorkloadEPNS_19VirtualSitesHandlerEPfdP9gmx_edsamP24CpuPpLongRangeNonbondedsRK22DDBalanceRegionHandler(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(888) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(816) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr nofree noundef readonly align 8 captures(none) dead_on_return %13, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef") align 8 captures(none) %14, ptr noundef %15, ptr nofree noundef readonly captures(none) %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %20, ptr noundef %21, ptr noundef nonnull align 1 dereferenceable(58) %22, ptr noundef %23, ptr nofree noundef writeonly captures(none) %24, double noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef nonnull align 8 dereferenceable(16) %28) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %29 = alloca %"class.gmx::InternalError", align 8 ; 6 uses
  %30 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %33 = alloca %"class.gmx::ArrayRef", align 8    ; 5 uses
  %34 = alloca %"class.gmx::ArrayRef", align 16   ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %35 = alloca %"class.gmx::ArrayRef", align 8    ; 5 uses
  %36 = alloca %"class.gmx::ArrayRef", align 16   ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %37 = alloca %struct.t_pbc, align 4             ; 4 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %38 = alloca %"class.gmx::ArrayRef.120", align 8 ; 5 uses
  %39 = alloca %"class.gmx::ForceProviderInput", align 8 ; 16 uses
  %40 = alloca %"class.gmx::ForceProviderOutput", align 8 ; 5 uses
  %41 = alloca %"struct.std::pair.864", align 8   ; 9 uses
  %42 = alloca %"class.gmx::ArrayRef", align 8    ; 6 uses
  %43 = alloca %"struct.gmx::MDModulesAtomsRedistributedSignal", align 8 ; 9 uses
  %44 = alloca %"class.gmx::BasicVector.527", align 8 ; 5 uses
  %45 = alloca %"class.gmx::BasicVector.527", align 4 ; 6 uses
  %46 = alloca %"class.gmx::ArrayRef.649", align 8 ; 5 uses
  %47 = alloca %"class.gmx::ArrayRef.120", align 8 ; 5 uses
  %48 = alloca %"class.gmx::ArrayRef.649", align 8 ; 5 uses
  %49 = alloca %"class.gmx::ArrayRef.649", align 8 ; 5 uses
  %50 = alloca %"class.gmx::ArrayRef.0", align 8  ; 5 uses
  %51 = alloca %"struct.gmx::MDModulesPairlistConstructedSignal", align 8 ; 9 uses
  %52 = alloca %"class.gmx::ForceOutputs", align 8 ; 20 uses
  %53 = alloca %"class.gmx::ArrayRefWithPadding", align 8 ; 3 uses
  %54 = alloca %"class.std::optional.640", align 16 ; 15 uses
  %55 = alloca %"class.gmx::ForceOutputs", align 16 ; 8 uses
  %56 = alloca %"class.gmx::ArrayRefWithPadding", align 16 ; 3 uses
  %57 = alloca %"struct.gmx::DipoleData", align 16 ; 11 uses
  %58 = alloca %"class.gmx::ArrayRef.0", align 8  ; 3 uses
  %59 = alloca %"class.gmx::ArrayRefWithPadding.652", align 16 ; 5 uses
  %60 = alloca %"class.gmx::ArrayRef.120", align 8 ; 3 uses
  %61 = alloca %"class.gmx::ArrayRef.0", align 8  ; 3 uses
  %62 = alloca %"class.gmx::ArrayRef.0", align 8  ; 3 uses
  %63 = alloca %"class.gmx::ArrayRef.0", align 8  ; 3 uses
  %64 = alloca %"class.gmx::ArrayRef.0", align 8  ; 3 uses
  %65 = alloca %"class.gmx::ArrayRef.649", align 8 ; 3 uses
  %66 = alloca %"class.gmx::ArrayRef.649", align 8 ; 3 uses
  %67 = alloca %"class.gmx::ArrayRef.0", align 8  ; 3 uses
  %68 = alloca %"class.gmx::ArrayRef.649", align 8 ; 3 uses
  %69 = alloca %"class.gmx::ArrayRef.669", align 8 ; 3 uses
  %70 = alloca %"class.gmx::ArrayRef.120", align 16 ; 2 uses
  %71 = alloca %"class.gmx::ArrayRef.399", align 8 ; 3 uses
  %72 = alloca %struct.t_pbc, align 4             ; 6 uses
  %73 = alloca %"class.gmx::ArrayRefWithPadding.652", align 16 ; 5 uses
  %74 = alloca %"class.gmx::ArrayRef.0", align 8  ; 4 uses
  %75 = alloca %"class.gmx::ArrayRef.0", align 8  ; 5 uses
  %76 = alloca %"class.gmx::ArrayRef.0", align 8  ; 5 uses
  %77 = alloca %"class.gmx::ArrayRef.702", align 8 ; 5 uses
  %78 = alloca %"class.gmx::ArrayRef.669", align 8 ; 5 uses
  %79 = alloca %"class.gmx::ArrayRef.0", align 8  ; 3 uses
  %80 = alloca %"class.gmx::ArrayRef.120", align 8 ; 3 uses
  %81 = alloca %"class.gmx::FixedCapacityVector", align 8 ; 6 uses
  %i.f = load ptr, ptr %16, align 8, !tbaa !18, !noalias !299 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.g, align 8, !tbaa !19, !noalias !299
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !20, !noalias !299 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %21, i64 256 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 14 uses
  %i.l = load ptr, ptr %21, align 8, !tbaa !300   ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %21, i64 520 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !301  ; 30 uses
  %i.o = getelementptr inbounds nuw i8, ptr %22, i64 29 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %22, i64 39 ; 28 uses
  %i.q = getelementptr inbounds nuw i8, ptr %22, i64 22 ; 7 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !302, !range !141, !noundef !142
  %i.s = trunc nuw i8 %i.r to i1                  ; 2 uses
  %.sroa.gep1123 = getelementptr inbounds nuw i8, ptr %54, i64 64 ; 2 uses
  %.sroa.gep1124 = getelementptr inbounds nuw i8, ptr %52, i64 64 ; 9 uses
  %.sroa.gep1144 = getelementptr inbounds nuw i8, ptr %54, i64 8
  %.sroa.gep1145 = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 9 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %54, i64 32
  %.sroa.gep1147 = getelementptr inbounds nuw i8, ptr %52, i64 32 ; 3 uses
  %.sroa.gep1149 = getelementptr inbounds nuw i8, ptr %54, i64 40
  %.sroa.gep1150 = getelementptr inbounds nuw i8, ptr %52, i64 40 ; 3 uses
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %22, i64 40
  %i.u = load i8, ptr %i.t, align 1, !tbaa !303, !range !141, !noundef !142
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  %i.w = xor i1 %i.v, true
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.x = phi i1 [ %i.w, %bb.b ], [ false, %bb.a ] ; 12 uses
  %i.y = phi i1 [ %i.v, %bb.b ], [ false, %bb.a ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %22, i64 55 ; 7 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !304, !range !141, !noundef !142
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %22, i64 40
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !303, !range !141, !noundef !142
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !308
  %i.ah = load ptr, ptr %13, align 8, !tbaa !18   ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am
  %i.ao = load i64, ptr %20, align 8
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !144
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %i.at = load float, ptr %i.as, align 4, !tbaa !144
  %i.au = getelementptr inbounds nuw i8, ptr %22, i64 42
  %i.av = load i8, ptr %i.au, align 1, !tbaa !145, !range !141, !noundef !142
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %22, i64 43
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !309, !range !141, !noundef !142
  %i.az = trunc nuw i8 %i.ay to i1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ba = phi i1 [ true, %bb.e ], [ %i.az, %bb.f ]
  %i.bb = getelementptr inbounds nuw i8, ptr %22, i64 51
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !310, !range !141, !noundef !142
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %22, i64 27
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !311, !range !141, !noundef !142
  %i.bg = trunc nuw i8 %i.bf to i1
  tail call void @_Z24gmx_pme_send_coordinatesP10t_forcerecP12gmx_domdec_tPA3_KfN3gmx8ArrayRefIKNS6_11BasicVectorIfEEEEffblbbbbP20GpuEventSynchronizerbP13gmx_wallcycle(ptr noundef nonnull %21, ptr noundef %i.ag, ptr noundef %12, ptr %i.ah, ptr %i.an, float noundef %i.ar, float noundef %i.at, i1 noundef zeroext %i.ba, i64 noundef %8, i1 noundef zeroext %i.s, i1 noundef zeroext %i.y, i1 noundef zeroext %i.x, i1 noundef zeroext %i.bd, ptr noundef null, i1 noundef zeroext %i.bg, ptr noundef %10)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 14 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !303, !range !141, !noundef !142
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.i, label %_ZNK22DDBalanceRegionHandler29openBeforeForceComputationCpuE26DdAllowBalanceRegionReopen.exit

bb.i:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %13, align 8, !tbaa !18   ; 16 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !20 ; 4 uses
  %i.bn = load ptr, ptr %14, align 8, !tbaa !147  ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %42)
  call void @llvm.lifetime.start.p0(ptr nonnull %46)
  call void @llvm.lifetime.start.p0(ptr nonnull %47)
  call void @llvm.lifetime.start.p0(ptr nonnull %48)
  call void @llvm.lifetime.start.p0(ptr nonnull %49)
  call void @llvm.lifetime.start.p0(ptr nonnull %50)
  %i.bq = load ptr, ptr %i.j, align 8, !tbaa !22  ; 18 uses
  %i.br = load ptr, ptr %i.m, align 8, !tbaa !301 ; 8 uses
  %.sroa.2226.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 10 ; 2 uses
  %.sroa.2226.0.copyload.i = load i8, ptr %.sroa.2226.0..sroa_idx.i, align 1, !tbaa !148
  %.sroa.4228.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 13
  %.sroa.4228.0.copyload.i = load i8, ptr %.sroa.4228.0..sroa_idx.i, align 1, !tbaa !148
  %.sroa.5229.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 14 ; 2 uses
  %.sroa.5229.0.copyload.i = load i8, ptr %.sroa.5229.0..sroa_idx.i, align 1, !tbaa !148
  %.sroa.6230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 15 ; 2 uses
  %.sroa.6230.0.copyload.i = load i8, ptr %.sroa.6230.0..sroa_idx.i, align 1, !tbaa !148
  %.sroa.8232.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 19 ; 3 uses
  %.sroa.8232.0.copyload.i = load i8, ptr %.sroa.8232.0..sroa_idx.i, align 1, !tbaa !148
  %.sroa.9233.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 20 ; 2 uses
  %.sroa.9233.0.copyload.i = load i8, ptr %.sroa.9233.0..sroa_idx.i, align 1, !tbaa !148
  %i.bs = trunc nuw i8 %.sroa.2226.0.copyload.i to i1
  %i.bt = trunc nuw i8 %.sroa.9233.0.copyload.i to i1
  %i.bu = xor i1 %i.bt, true
  %i.bv = select i1 %i.bs, i1 %i.bu, i1 false
  %i.bw = trunc nuw i8 %.sroa.5229.0.copyload.i to i1
  %or.cond.i.i = select i1 %i.bv, i1 true, i1 %i.bw
  %i.bx = trunc nuw i8 %.sroa.6230.0.copyload.i to i1
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.bx
  %i.by = trunc nuw i8 %.sroa.8232.0.copyload.i to i1
  %or.cond8.i.i = select i1 %or.cond5.i.i, i1 true, i1 %i.by
  %i.bz = trunc nuw i8 %.sroa.4228.0.copyload.i to i1
  %i.ca = select i1 %or.cond8.i.i, i1 true, i1 %i.bz
  br i1 %i.ca, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 640
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !172 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %22, i64 17
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !312, !range !141, !noundef !142
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.k, label %_ZN3gmxL17getLocalAtomCountEPK12gmx_domdec_tRK9t_mdatomsb.exit.i

bb.k:                                             ; preds = %bb.j
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !308
  %i.ci = tail call noundef i32 @_Z16dd_numAtomsZonesRK12gmx_domdec_t(ptr noundef nonnull align 8 dereferenceable(1097) %i.ch)
  br label %_ZN3gmxL17getLocalAtomCountEPK12gmx_domdec_tRK9t_mdatomsb.exit.i

_ZN3gmxL17getLocalAtomCountEPK12gmx_domdec_tRK9t_mdatomsb.exit.i: ; preds = %bb.k, %bb.j
  %i.cj = phi i32 [ %i.ci, %bb.k ], [ %i.cc, %bb.j ]
  %i.ck = load ptr, ptr %1, align 8, !tbaa !313, !nonnull !142, !align !314
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !324
  tail call void @_ZN3gmx22StatePropagatorDataGpu6reinitEiiP10tmpi_comm_(ptr noundef nonnull align 8 dereferenceable(8) %i.br, i32 noundef %i.cc, i32 noundef %i.cj, ptr noundef %i.cl)
  %i.cm = load i8, ptr %.sroa.8232.0..sroa_idx.i, align 1, !tbaa !325, !range !141, !noundef !142
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZN3gmxL17getLocalAtomCountEPK12gmx_domdec_tRK9t_mdatomsb.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %22, i64 28
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !175, !range !141, !noundef !142
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_Z28reinitGpuHaloExchangeNvshmemRK9t_commrec(ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %_ZN3gmxL17getLocalAtomCountEPK12gmx_domdec_tRK9t_mdatomsb.exit.i, %bb.i
  %i.cr = load i8, ptr %.sroa.2226.0..sroa_idx.i, align 1, !tbaa !176, !range !141, !noundef !142
  %i.cs = trunc nuw i8 %i.cr to i1
  %i.ct = load i8, ptr %.sroa.9233.0..sroa_idx.i, align 1, !range !141
  %i.cu = trunc nuw i8 %i.ct to i1
  %not..i = xor i1 %i.cs, true
  %i.cv = select i1 %not..i, i1 true, i1 %i.cu
  br i1 %i.cv, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = tail call noundef ptr @_ZN3gmx22StatePropagatorDataGpu14getCoordinatesEv(ptr noundef nonnull align 8 dereferenceable(8) %i.br) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !177 ; 2 uses
  %.not.i = icmp eq i32 %i.cy, 1
  br i1 %.not.i, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = load i8, ptr %i.p, align 1, !tbaa !326, !range !141, !noundef !142
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.r, label %.critedge.i

bb.r:                                             ; preds = %bb.q
  %i.db = getelementptr i8, ptr %1, i64 16
  %.val138.i = load ptr, ptr %i.db, align 8, !tbaa !308
  %.not240.i = icmp eq ptr %.val138.i, null
  br i1 %.not240.i, label %bb.s, label %.critedge.i

bb.s:                                             ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %21, i64 72
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !327, !range !141, !noundef !142
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 676
  %i.dg = getelementptr inbounds nuw i8, ptr %18, i64 640 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !172
  %i.di = sext i32 %i.dh to i64                   ; 2 uses
  %i.dj = getelementptr inbounds [12 x i8], ptr %i.bk, i64 %i.di
  %i.dk = icmp eq ptr %i.bn, %i.bp
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, i8 0, i64 16, i1 false)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dl = getelementptr inbounds [12 x i8], ptr %i.bn, i64 %i.di
  store ptr %i.bn, ptr %42, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %i.dl, ptr %i.dm, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dn = tail call noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef 0)
  tail call void @_Z20put_atoms_in_box_omp7PbcTypePA3_KfbS2_N3gmx8ArrayRefINS3_11BasicVectorIfEEEES7_i(i32 noundef %i.cy, ptr noundef %12, i1 noundef zeroext %i.de, ptr noundef nonnull %i.df, ptr %i.bk, ptr %i.dj, ptr noundef nonnull byval(%"class.gmx::ArrayRef") align 8 %42, i32 noundef %i.dn)
  %i.do = load i32, ptr %i.dg, align 8, !tbaa !172
  %i.dp = sitofp i32 %i.do to double
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 456 ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !179
  %i.ds = fadd double %i.dr, %i.dp
  store double %i.ds, ptr %i.dq, align 8, !tbaa !179
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.v, %bb.r, %bb.q
  %i.dt = getelementptr i8, ptr %1, i64 16
  %.val137.i = load ptr, ptr %i.dt, align 8, !tbaa !308
  %.not241.i = icmp eq ptr %.val137.i, null
  br i1 %.not241.i, label %bb.w, label %bb.z

bb.w:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #16
  %i.du = getelementptr inbounds nuw i8, ptr %18, i64 640
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !172
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %.not.i.i.i = icmp eq ptr %12, null
  br i1 %.not.i.i.i, label %bb.x, label %_ZN3gmx33MDModulesAtomsRedistributedSignalC2EPA3_KfNS_8ArrayRefIKNS_11BasicVectorIfEEEESt8optionalINS4_IKiEEE.exit.i

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmxL31createMatrix3x3FromLegacyMatrixEPA3_KfENKUlvE_clEv, ptr noundef nonnull @.str.12, i32 noundef 323) #27, !noalias !328
  unreachable

_ZN3gmx33MDModulesAtomsRedistributedSignalC2EPA3_KfNS_8ArrayRefIKNS_11BasicVectorIfEEEESt8optionalINS4_IKiEEE.exit.i: ; preds = %bb.w
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [12 x i8], ptr %i.bk, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %43, i64 48
  store ptr %43, ptr %i.dy, align 8, !tbaa !336, !alias.scope !328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %43, ptr noundef nonnull readonly align 4 dereferenceable(36) %12, i64 36, i1 false), !tbaa !144
  %i.dz = getelementptr inbounds nuw i8, ptr %43, i64 56
  store ptr %i.bk, ptr %i.dz, align 8, !tbaa !181
  %i.ea = getelementptr inbounds nuw i8, ptr %43, i64 64
  store ptr %i.dx, ptr %i.ea, align 8, !tbaa !181
  %.sroa.4235.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %43, i64 88
  store i8 0, ptr %.sroa.4235.0..sroa_idx.i, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 792
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !338 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 800
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !338 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ec, %i.ee
  br i1 %.not8.i.i, label %_ZNK3gmx17MDModulesNotifierIRKNS_33MDModulesAtomsRedistributedSignalENS0_IRKNS_34MDModulesPairlistConstructedSignalENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEE6notifyES3_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3gmx33MDModulesAtomsRedistributedSignalC2EPA3_KfNS_8ArrayRefIKNS_11BasicVectorIfEEEESt8optionalINS4_IKiEEE.exit.i, %_ZNKSt8functionIFvRKN3gmx33MDModulesAtomsRedistributedSignalEEEclES3_.exit.i.i
  %.sroa.05.09.i.i = phi ptr [ %i.ej, %_ZNKSt8functionIFvRKN3gmx33MDModulesAtomsRedistributedSignalEEEclES3_.exit.i.i ], [ %i.ec, %_ZN3gmx33MDModulesAtomsRedistributedSignalC2EPA3_KfNS_8ArrayRefIKNS_11BasicVectorIfEEEESt8optionalINS4_IKiEEE.exit.i ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !340
  %.not.i.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i, label %bb.y, label %_ZNKSt8functionIFvRKN3gmx33MDModulesAtomsRedistributedSignalEEEclES3_.exit.i.i

bb.y:                                             ; preds = %.lr.ph.i.i
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFvRKN3gmx33MDModulesAtomsRedistributedSignalEEEclES3_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !342
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.09.i.i, ptr noundef nonnull align 8 dereferenceable(96) %43), !inline_history !289
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ej, %i.ee
  br i1 %.not.i.i, label %_ZNK3gmx17MDModulesNotifierIRKNS_33MDModulesAtomsRedistributedSignalENS0_IRKNS_34MDModulesPairlistConstructedSignalENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEE6notifyES3_.exit.i, label %.lr.ph.i.i

_ZNK3gmx17MDModulesNotifierIRKNS_33MDModulesAtomsRedistributedSignalENS0_IRKNS_34MDModulesPairlistConstructedSignalENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEE6notifyES3_.exit.i: ; preds = %_ZNKSt8functionIFvRKN3gmx33MDModulesAtomsRedistributedSignalEEEclES3_.exit.i.i, %_ZN3gmx33MDModulesAtomsRedistributedSignalC2EPA3_KfNS_8ArrayRefIKNS_11BasicVectorIfEEEESt8optionalINS4_IKiEEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #16
end_hunk_0
begin_hunk_1_@_ZN3gmx8do_forceEP8_IO_FILEPK9t_commrecRK10t_inputrecRKNS_18MDModulesNotifiersEPNS_3AwhEP10gmx_enfrotPNS_10ImdSessionEP6pull_tlP6t_nrnbP13gmx_wallcyclePK14gmx_localtop_tPA3_KfNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEENS_8ArrayRefISV_EEPK9history_tPNS_16ForceBuffersViewEPA3_fPK9t_mdatomsP14gmx_enerdata_tNSX_ISQ_EEP10t_forcerecRKNS_21MdrunScheduleWorkloadEPNS_19VirtualSitesHandlerEPfdP9gmx_edsamP24CpuPpLongRangeNonbondedsRK22DDBalanceRegionHandler:bb.a
  %i.uy = getelementptr inbounds nuw i8, ptr %3, i64 776
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !367 ; 2 uses
  %.not8.i173.i = icmp eq ptr %i.ux, %i.uz
  br i1 %.not8.i173.i, label %_ZNK3gmx17MDModulesNotifierIRKNS_34MDModulesPairlistConstructedSignalENS_22BuildMDModulesNotifierIJEE15NoCallParameterEE6notifyES3_.exit.i, label %.lr.ph.i174.i

.lr.ph.i174.i:                                    ; preds = %_ZNRSt8optionalIfE5valueEv.exit.i, %_ZNKSt8functionIFvRKN3gmx34MDModulesPairlistConstructedSignalEEEclES3_.exit.i.i
  %.sroa.05.09.i175.i = phi ptr [ %i.ve, %_ZNKSt8functionIFvRKN3gmx34MDModulesPairlistConstructedSignalEEEclES3_.exit.i.i ], [ %i.ux, %_ZNRSt8optionalIfE5valueEv.exit.i ] ; 4 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i175.i, i64 16
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !340
  %.not.i.i.i176.i = icmp eq ptr %i.vb, null
  br i1 %.not.i.i.i176.i, label %bb.ch, label %_ZNKSt8functionIFvRKN3gmx34MDModulesPairlistConstructedSignalEEEclES3_.exit.i.i

bb.ch:                                            ; preds = %.lr.ph.i174.i
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFvRKN3gmx34MDModulesPairlistConstructedSignalEEEclES3_.exit.i.i: ; preds = %.lr.ph.i174.i
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i175.i, i64 24
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !369
  call void %i.vd(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.09.i175.i, ptr noundef nonnull align 8 dereferenceable(48) %51), !inline_history !290
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i175.i, i64 32 ; 2 uses
  %.not.i177.i = icmp eq ptr %i.ve, %i.uz
  br i1 %.not.i177.i, label %_ZNK3gmx17MDModulesNotifierIRKNS_34MDModulesPairlistConstructedSignalENS_22BuildMDModulesNotifierIJEE15NoCallParameterEE6notifyES3_.exit.i, label %.lr.ph.i174.i

_ZNK3gmx17MDModulesNotifierIRKNS_34MDModulesPairlistConstructedSignalENS_22BuildMDModulesNotifierIJEE15NoCallParameterEE6notifyES3_.exit.i: ; preds = %_ZNKSt8functionIFvRKN3gmx34MDModulesPairlistConstructedSignalEEEclES3_.exit.i.i, %_ZNRSt8optionalIfE5valueEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #16
  br label %_ZN3gmxL12doPairSearchEPK9t_commrecRK10t_inputrecRKNS_18MDModulesNotifiersElP6t_nrnbP13gmx_wallcycleRK14gmx_localtop_tPA3_KfNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEENS_8ArrayRefISL_EERK9t_mdatomsP10t_forcerecRKNS_21MdrunScheduleWorkloadE.exit

_ZN3gmxL12doPairSearchEPK9t_commrecRK10t_inputrecRKNS_18MDModulesNotifiersElP6t_nrnbP13gmx_wallcycleRK14gmx_localtop_tPA3_KfNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEENS_8ArrayRefISL_EERK9t_mdatomsP10t_forcerecRKNS_21MdrunScheduleWorkloadE.exit: ; preds = %bb.ce, %_ZNK3gmx17MDModulesNotifierIRKNS_34MDModulesPairlistConstructedSignalENS_22BuildMDModulesNotifierIJEE15NoCallParameterEE6notifyES3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  call void @llvm.lifetime.end.p0(ptr nonnull %46)
  call void @llvm.lifetime.end.p0(ptr nonnull %47)
  call void @llvm.lifetime.end.p0(ptr nonnull %48)
  call void @llvm.lifetime.end.p0(ptr nonnull %49)
  call void @llvm.lifetime.end.p0(ptr nonnull %50)
  %i.vf = load i8, ptr %28, align 8, !tbaa !371, !range !141, !noundef !142
  %i.vg = trunc nuw i8 %i.vf to i1
  br i1 %i.vg, label %bb.ci, label %_ZNK22DDBalanceRegionHandler29openBeforeForceComputationCpuE26DdAllowBalanceRegionReopen.exit

bb.ci:                                            ; preds = %_ZN3gmxL12doPairSearchEPK9t_commrecRK10t_inputrecRKNS_18MDModulesNotifiersElP6t_nrnbP13gmx_wallcycleRK14gmx_localtop_tPA3_KfNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEENS_8ArrayRefISL_EERK9t_mdatomsP10t_forcerecRKNS_21MdrunScheduleWorkloadE.exit
  call void @_ZNK22DDBalanceRegionHandler17openRegionCpuImplE26DdAllowBalanceRegionReopen(ptr noundef nonnull align 8 dereferenceable(16) %28, i32 noundef 1)
  br label %_ZNK22DDBalanceRegionHandler29openBeforeForceComputationCpuE26DdAllowBalanceRegionReopen.exit

_ZNK22DDBalanceRegionHandler29openBeforeForceComputationCpuE26DdAllowBalanceRegionReopen.exit: ; preds = %bb.ci, %_ZN3gmxL12doPairSearchEPK9t_commrecRK10t_inputrecRKNS_18MDModulesNotifiersElP6t_nrnbP13gmx_wallcycleRK14gmx_localtop_tPA3_KfNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEENS_8ArrayRefISL_EERK9t_mdatomsP10t_forcerecRKNS_21MdrunScheduleWorkloadE.exit, %bb.h
  %i.vh = getelementptr inbounds nuw i8, ptr %22, i64 54 ; 9 uses
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !372, !range !141, !noundef !142
  %i.vj = trunc nuw i8 %i.vi to i1
  br i1 %i.vj, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %_ZNK22DDBalanceRegionHandler29openBeforeForceComputationCpuE26DdAllowBalanceRegionReopen.exit
  %i.vk = getelementptr inbounds nuw i8, ptr %22, i64 49
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !373, !range !141, !noundef !142
  %i.vm = trunc nuw i8 %i.vl to i1
  br i1 %i.vm, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.vn = getelementptr inbounds nuw i8, ptr %22, i64 13
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !374, !range !141, !noundef !142
  %i.vp = trunc nuw i8 %i.vo to i1
  %or.cond = select i1 %i.vp, i1 true, i1 %i.x
  br i1 %or.cond, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %_ZNK22DDBalanceRegionHandler29openBeforeForceComputationCpuE26DdAllowBalanceRegionReopen.exit
  %i.vq = call noundef ptr @_ZN3gmx22StatePropagatorDataGpu32getCoordinatesReadyOnDeviceEventENS_12AtomLocalityERKNS_18SimulationWorkloadERKNS_12StepWorkloadEP20GpuEventSynchronizer(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(29) %22, ptr noundef nonnull align 1 dereferenceable(19) %i.p, ptr noundef null)
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl
  %i.vr = phi ptr [ %i.vq, %bb.cl ], [ null, %bb.ck ] ; 4 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %22, i64 57 ; 3 uses
  %i.vt = load i8, ptr %i.vs, align 1, !tbaa !375, !range !141, !noundef !142
  %i.vu = trunc nuw i8 %i.vt to i1
  br i1 %i.vu, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.vv = getelementptr inbounds nuw i8, ptr %22, i64 13
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !374, !range !141, !noundef !142
  %i.vx = trunc nuw i8 %i.vw to i1
  %i.vy = select i1 %i.vx, ptr %i.vr, ptr null
  call void @_ZN3gmx22StatePropagatorDataGpu16clearForcesOnGpuENS_12AtomLocalityEP20GpuEventSynchronizer(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef 0, ptr noundef %i.vy)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %17, i8 0, i64 36, i1 false)
  %i.vz = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  %i.wa = load i32, ptr %i.vz, align 8, !tbaa !177
  %.not806 = icmp eq i32 %i.wa, 1
  br i1 %.not806, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.wb = getelementptr inbounds nuw i8, ptr %22, i64 3
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !376, !range !141, !noundef !142
  %i.wd = trunc nuw i8 %i.wc to i1
  br i1 %i.wd, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %i.we = load i8, ptr %i.p, align 1, !tbaa !326, !range !141, !noundef !142
  %i.wf = trunc nuw i8 %i.we to i1
  br i1 %i.wf, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.wg = getelementptr inbounds nuw i8, ptr %21, i64 224
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !212 ; 3 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %21, i64 232
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !213
  %i.wk = ptrtoint ptr %i.wj to i64
  %i.wl = ptrtoint ptr %i.wh to i64
  %i.wm = sub i64 %i.wk, %i.wl
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.wm
  call void @_Z11calc_shiftsPA3_KfN3gmx8ArrayRefINS2_11BasicVectorIfEEEE(ptr noundef %12, ptr %i.wh, ptr %i.wn)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cp, %bb.cq, %bb.cr, %bb.co
  %i.wo = getelementptr inbounds nuw i8, ptr %22, i64 3
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !148, !range !141, !noundef !142
  %i.wq = getelementptr inbounds nuw i8, ptr %21, i64 224 ; 2 uses
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !212 ; 3 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %21, i64 232 ; 2 uses
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !213
  %i.wu = ptrtoint ptr %i.wt to i64
  %i.wv = ptrtoint ptr %i.wr to i64
  %i.ww = sub i64 %i.wu, %i.wv
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wr, i64 %i.ww
  %i.wy = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !377
  %.sroa.01208.0.insert.ext = zext nneg i8 %i.wp to i16
  %.sroa.01208.0.insert.insert = or disjoint i16 %.sroa.01208.0.insert.ext, 256
  call void @_ZN3gmx28nbnxn_atomdata_copy_shiftvecESt8optionalIbENS_8ArrayRefIKNS_11BasicVectorIfEEEEPNS_16nbnxn_atomdata_tE(i16 %.sroa.01208.0.insert.insert, ptr %i.wr, ptr %i.wx, ptr noundef nonnull %i.wz)
  %i.xa = getelementptr inbounds nuw i8, ptr %22, i64 13 ; 8 uses
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !374, !range !141, !noundef !142
  %i.xc = trunc nuw i8 %i.xb to i1
  br i1 %i.xc, label %bb.ct, label %bb.da

bb.ct:                                            ; preds = %bb.cs
  %i.xd = load i8, ptr %i.bh, align 1, !tbaa !303, !range !141, !noundef !142
  %i.xe = trunc nuw i8 %i.xd to i1
  br i1 %i.xe, label %bb.da, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.xf = getelementptr inbounds nuw i8, ptr %22, i64 33
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !215, !range !141, !noundef !142
  %i.xh = trunc nuw i8 %i.xg to i1
  br i1 %i.xh, label %bb.cz, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.xi = getelementptr inbounds nuw i8, ptr %22, i64 42
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !145, !range !141, !noundef !142
  %i.xk = trunc nuw i8 %i.xj to i1
  br i1 %i.xk, label %bb.cz, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.xl = getelementptr inbounds nuw i8, ptr %22, i64 21
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !378, !range !141, !noundef !142
  %i.xn = trunc nuw i8 %i.xm to i1
  br i1 %i.xn, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.xo = getelementptr inbounds nuw i8, ptr %22, i64 18
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !379, !range !141, !noundef !142
  %i.xq = trunc nuw i8 %i.xp to i1
  br i1 %i.xq, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.xr = getelementptr inbounds nuw i8, ptr %22, i64 2
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !380, !range !141, !noundef !142
  %i.xt = trunc nuw i8 %i.xs to i1
  br i1 %i.xt, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu
  %i.xu = load ptr, ptr %13, align 8, !tbaa !18
  %i.xv = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !20
  call void @_ZN3gmx22StatePropagatorDataGpu22copyCoordinatesFromGpuENS_8ArrayRefINS_11BasicVectorIfEEEENS_12AtomLocalityEP20GpuEventSynchronizer(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr %i.xu, ptr %i.xw, i32 noundef 0, ptr noundef null)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %bb.ct, %bb.cs
  %i.xx = load i8, ptr %i.vh, align 1, !tbaa !372, !range !141, !noundef !142
  %i.xy = trunc nuw i8 %i.xx to i1                ; 2 uses
  br i1 %i.xy, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.xz = getelementptr inbounds nuw i8, ptr %22, i64 49
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !373, !range !141, !noundef !142
  %i.yb = trunc nuw i8 %i.ya to i1
  %or.cond3 = select i1 %i.yb, i1 true, i1 %i.x
  br i1 %or.cond3, label %bb.dc, label %bb.dh

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.val826 = load i8, ptr %i.xa, align 1          ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %22, i64 18
  %.val827 = load i8, ptr %i.yc, align 1
  %i.yd = getelementptr inbounds nuw i8, ptr %22, i64 33
  %.val828 = load i8, ptr %i.yd, align 1
  %i.ye = getelementptr inbounds nuw i8, ptr %22, i64 41
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !381, !range !141, !noundef !142
  %i.yg = trunc nuw i8 %i.yf to i1
  br i1 %i.yg, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %spec.select.i = zext i1 %i.x to i32
  %i.yh = select i1 %i.x, i32 2, i32 1
  %.1.i = select i1 %i.xy, i32 %i.yh, i32 %spec.select.i ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %22, i64 46
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !216, !range !141, !noundef !142
  %i.yk = trunc nuw i8 %i.yj to i1
  br i1 %i.yk, label %82, label %bb.de

82:                                               ; preds = %bb.dd
  %83 = getelementptr inbounds nuw i8, ptr %22, i64 49
  %84 = load i8, ptr %83, align 1, !tbaa !373, !range !141, !noundef !142
  %85 = zext nneg i8 %84 to i32
  %spec.select22.i = add nuw nsw i32 %.1.i, %85
  br label %bb.de

bb.de:                                            ; preds = %82, %bb.dd, %bb.dc
  %.2.i = phi i32 [ 0, %bb.dc ], [ %spec.select22.i, %82 ], [ %.1.i, %bb.dd ]
  %i.yl = getelementptr inbounds nuw i8, ptr %22, i64 52
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !382, !range !141, !noundef !142
  %i.yn = shl nuw nsw i8 %i.ym, 1
  %i.yo = zext nneg i8 %i.yn to i32
  %spec.select23.i = add nuw nsw i32 %.2.i, %i.yo
  %i.yp = load i8, ptr %i.vs, align 1, !tbaa !375, !range !141, !noundef !142
  %86 = trunc nuw i8 %i.yp to i1
  %i.yq = trunc nuw i8 %.val826 to i1             ; 2 uses
  %narrow.i = select i1 %86, i8 %.val826, i8 0
  %spec.select24.i = zext i8 %narrow.i to i32
  %.4.i = add nuw nsw i32 %spec.select23.i, %spec.select24.i ; 3 uses
  %i.yr = trunc nuw i8 %.val828 to i1
  %or.cond1.i.a = select i1 %i.yq, i1 %i.yr, i1 false
  br i1 %or.cond1.i.a, label %87, label %_ZN3gmxL46getExpectedLocalXReadyOnDeviceConsumptionCountERKNS_18SimulationWorkloadERKNS_12StepWorkloadERKNS_22DomainLifetimeWorkloadEb.exit

87:                                               ; preds = %bb.de
  %88 = load i8, ptr %i.bh, align 1, !tbaa !303, !range !141, !noundef !142 ; 2 uses
  %89 = trunc nuw i8 %88 to i1
  %90 = trunc nuw i8 %.val827 to i1
  %or.cond2.i = select i1 %89, i1 true, i1 %90
  br i1 %or.cond2.i, label %_ZN3gmxL46getExpectedLocalXReadyOnDeviceConsumptionCountERKNS_18SimulationWorkloadERKNS_12StepWorkloadERKNS_22DomainLifetimeWorkloadEb.exit.thread, label %_ZN3gmxL46getExpectedLocalXReadyOnDeviceConsumptionCountERKNS_18SimulationWorkloadERKNS_12StepWorkloadERKNS_22DomainLifetimeWorkloadEb.exit.thread.thread

_ZN3gmxL46getExpectedLocalXReadyOnDeviceConsumptionCountERKNS_18SimulationWorkloadERKNS_12StepWorkloadERKNS_22DomainLifetimeWorkloadEb.exit.thread.thread: ; preds = %87
  %i.ys = load i8, ptr %i.z, align 1, !tbaa !304, !range !141, !noundef !142
  %i.yt = trunc nuw i8 %i.ys to i1
  %.not.i844 = xor i1 %i.yt, true
  %or.cond.i = or i1 %i.x, %.not.i844
  %i.yu = zext i1 %or.cond.i to i32
  %spec.select25.i = add nuw nsw i32 %.4.i, %i.yu
  br label %bb.dg

_ZN3gmxL46getExpectedLocalXReadyOnDeviceConsumptionCountERKNS_18SimulationWorkloadERKNS_12StepWorkloadERKNS_22DomainLifetimeWorkloadEb.exit: ; preds = %bb.de
  br i1 %i.yq, label %_ZN3gmxL46getExpectedLocalXReadyOnDeviceConsumptionCountERKNS_18SimulationWorkloadERKNS_12StepWorkloadERKNS_22DomainLifetimeWorkloadEb.exit._ZN3gmxL46getExpectedLocalXReadyOnDeviceConsumptionCountERKNS_18SimulationWorkloadERKNS_12StepWorkloadERKNS_22DomainLifetimeWorkloadEb.exit.thread_crit_edge, label %bb.df

_ZN3gmxL46getExpectedLocalXReadyOnDeviceConsumptionCountERKNS_18SimulationWorkloadERKNS_12StepWorkloadERKNS_22DomainLifetimeWorkloadEb.exit._ZN3gmxL46getExpectedLocalXReadyOnDeviceConsumptionCountERKNS_18SimulationWorkloadERKNS_12StepWorkloadERKNS_22DomainLifetimeWorkloadEb.exit.thread_crit_edge: ; preds = %_ZN3gmxL46getExpectedLocalXReadyOnDeviceConsumptionCountERKNS_18SimulationWorkloadERKNS_12StepWorkloadERKNS_22DomainLifetimeWorkloadEb.exit
  %.pre = load i8, ptr %i.bh, align 1, !tbaa !303, !range !141
  br label %_ZN3gmxL46getExpectedLocalXReadyOnDeviceConsumptionCountERKNS_18SimulationWorkloadERKNS_12StepWorkloadERKNS_22DomainLifetimeWorkloadEb.exit.thread

_ZN3gmxL46getExpectedLocalXReadyOnDeviceConsumptionCountERKNS_18SimulationWorkloadERKNS_12StepWorkloadERKNS_22DomainLifetimeWorkloadEb.exit.thread: ; preds = %_ZN3gmxL46getExpectedLocalXReadyOnDeviceConsumptionCountERKNS_18SimulationWorkloadERKNS_12StepWorkloadERKNS_22DomainLifetimeWorkloadEb.exit._ZN3gmxL46getExpectedLocalXReadyOnDeviceConsumptionCountERKNS_18SimulationWorkloadERKNS_12StepWorkloadERKNS_22DomainLifetimeWorkloadEb.exit.thread_crit_edge, %87
  %91 = phi i8 [ %.pre, %_ZN3gmxL46getExpectedLocalXReadyOnDeviceConsumptionCountERKNS_18SimulationWorkloadERKNS_12StepWorkloadERKNS_22DomainLifetimeWorkloadEb.exit._ZN3gmxL46getExpectedLocalXReadyOnDeviceConsumptionCountERKNS_18SimulationWorkloadERKNS_12StepWorkloadERKNS_22DomainLifetimeWorkloadEb.exit.thread_crit_edge ], [ %88, %87 ]
  %92 = trunc nuw i8 %91 to i1
  br i1 %92, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_ZN3gmxL46getExpectedLocalXReadyOnDeviceConsumptionCountERKNS_18SimulationWorkloadERKNS_12StepWorkloadERKNS_22DomainLifetimeWorkloadEb.exit.thread, %_ZN3gmxL46getExpectedLocalXReadyOnDeviceConsumptionCountERKNS_18SimulationWorkloadERKNS_12StepWorkloadERKNS_22DomainLifetimeWorkloadEb.exit
  %i.yv = load ptr, ptr %13, align 8, !tbaa !18   ; 3 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !20
  %i.yy = ptrtoint ptr %i.yx to i64
  %i.yz = ptrtoint ptr %i.yv to i64
  %i.za = sub i64 %i.yy, %i.yz
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yv, i64 %i.za
  call void @_ZN3gmx22StatePropagatorDataGpu20copyCoordinatesToGpuENS_8ArrayRefIKNS_11BasicVectorIfEEEENS_12AtomLocalityEi(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr %i.yv, ptr %i.zb, i32 noundef 0, i32 noundef %.4.i)
  br label %bb.dh

bb.dg:                                            ; preds = %_ZN3gmxL46getExpectedLocalXReadyOnDeviceConsumptionCountERKNS_18SimulationWorkloadERKNS_12StepWorkloadERKNS_22DomainLifetimeWorkloadEb.exit.thread.thread, %_ZN3gmxL46getExpectedLocalXReadyOnDeviceConsumptionCountERKNS_18SimulationWorkloadERKNS_12StepWorkloadERKNS_22DomainLifetimeWorkloadEb.exit.thread
  %.5.i12371432 = phi i32 [ %spec.select25.i, %_ZN3gmxL46getExpectedLocalXReadyOnDeviceConsumptionCountERKNS_18SimulationWorkloadERKNS_12StepWorkloadERKNS_22DomainLifetimeWorkloadEb.exit.thread.thread ], [ %.4.i, %_ZN3gmxL46getExpectedLocalXReadyOnDeviceConsumptionCountERKNS_18SimulationWorkloadERKNS_12StepWorkloadERKNS_22DomainLifetimeWorkloadEb.exit.thread ]
  call void @_ZN3gmx22StatePropagatorDataGpu48setXUpdatedOnDeviceEventExpectedConsumptionCountEi(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef %.5.i12371432)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.df, %bb.dg, %bb.db
  %i.zc = load i8, ptr %i.z, align 1, !tbaa !304, !range !141, !noundef !142
  %i.zd = trunc nuw i8 %i.zc to i1
  br i1 %i.zd, label %bb.di, label %bb.dp

bb.di:                                            ; preds = %bb.dh
  %i.ze = load i8, ptr %i.bh, align 1, !tbaa !303, !range !141, !noundef !142
  %i.zf = trunc nuw i8 %i.ze to i1
  br i1 %i.zf, label %bb.dp, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  br i1 %i.x, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.zg = load i8, ptr %i.xa, align 1, !tbaa !374, !range !141, !noundef !142
  %i.zh = trunc nuw i8 %i.zg to i1
  br i1 %i.zh, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  call void @_ZN3gmx22StatePropagatorDataGpu26waitCoordinatesReadyOnHostENS_12AtomLocalityE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef 0)
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk, %bb.dj
  %i.zi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !308
  %i.zk = load ptr, ptr %13, align 8, !tbaa !18   ; 3 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !20
  %i.zn = ptrtoint ptr %i.zm to i64
  %i.zo = ptrtoint ptr %i.zk to i64
  %i.zp = sub i64 %i.zn, %i.zo
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zk, i64 %i.zp
  %i.zr = load i64, ptr %20, align 8
  %i.zs = inttoptr i64 %i.zr to ptr               ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 8
  %i.zu = load float, ptr %i.zt, align 4, !tbaa !144
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zs, i64 12
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !144
  %i.zx = getelementptr inbounds nuw i8, ptr %22, i64 42
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !145, !range !141, !noundef !142
  %i.zz = trunc nuw i8 %i.zy to i1
  br i1 %i.zz, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.aaa = getelementptr inbounds nuw i8, ptr %22, i64 43
  %i.aab = load i8, ptr %i.aaa, align 1, !tbaa !309, !range !141, !noundef !142
  %i.aac = trunc nuw i8 %i.aab to i1
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.aad = phi i1 [ true, %bb.dm ], [ %i.aac, %bb.dn ]
  %i.aae = load i8, ptr %i.q, align 1, !tbaa !302, !range !141, !noundef !142
  %i.aaf = trunc nuw i8 %i.aae to i1
  %i.aag = getelementptr inbounds nuw i8, ptr %22, i64 51
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !310, !range !141, !noundef !142
  %i.aai = trunc nuw i8 %i.aah to i1
  %i.aaj = select i1 %i.x, ptr %i.vr, ptr null
  %i.aak = getelementptr inbounds nuw i8, ptr %22, i64 27
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !311, !range !141, !noundef !142
  %i.aam = trunc nuw i8 %i.aal to i1
  call void @_Z24gmx_pme_send_coordinatesP10t_forcerecP12gmx_domdec_tPA3_KfN3gmx8ArrayRefIKNS6_11BasicVectorIfEEEEffblbbbbP20GpuEventSynchronizerbP13gmx_wallcycle(ptr noundef nonnull %21, ptr noundef %i.zj, ptr noundef %12, ptr %i.zk, ptr %i.zq, float noundef %i.zu, float noundef %i.zw, i1 noundef zeroext %i.aad, i64 noundef %8, i1 noundef zeroext %i.aaf, i1 noundef zeroext %i.y, i1 noundef zeroext %i.x, i1 noundef zeroext %i.aai, ptr noundef %i.aaj, i1 noundef zeroext %i.aam, ptr noundef %10)
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.di, %bb.dh
  %i.aan = getelementptr inbounds nuw i8, ptr %22, i64 15
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !354, !range !141, !noundef !142
  %i.aap = trunc nuw i8 %i.aao to i1
  br i1 %i.aap, label %bb.dq, label %bb.dt

bb.dq:                                            ; preds = %bb.dp
  %i.aaq = load i8, ptr %i.bh, align 1, !tbaa !303, !range !141, !noundef !142
  %i.aar = trunc nuw i8 %i.aaq to i1
  br i1 %i.aar, label %bb.dr, label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  %i.aas = load i8, ptr %i.q, align 1, !tbaa !302, !range !141, !noundef !142
  %i.aat = trunc nuw i8 %i.aas to i1
  br i1 %i.aat, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.aau = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.aav = getelementptr inbounds nuw i8, ptr %21, i64 544
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !356
  %i.aax = getelementptr inbounds nuw i8, ptr %21, i64 536
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !211
  %i.aaz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !308
  call fastcc void @_ZN3gmxL27setupLocalGpuForceReductionERKNS_21MdrunScheduleWorkloadEPNS_18nonbonded_verlet_tEPNS_22StatePropagatorDataGpuEPNS_17GpuForceReductionEPNS_12PmePpCommGpuEPK9gmx_pme_tPK12gmx_domdec_t(ptr noundef nonnull align 1 dereferenceable(58) %22, ptr noundef %i.aau, ptr noundef %i.n, ptr noundef %i.aaw, ptr noundef %i.aay, ptr noundef %i.aba)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dr, %bb.ds, %bb.dq, %bb.dp
  %i.abb = load i8, ptr %i.vh, align 1, !tbaa !372, !range !141, !noundef !142
  %i.abc = trunc nuw i8 %i.abb to i1
  %i.abd = icmp ne ptr %10, null                  ; 29 uses
  %or.cond1268.not = and i1 %i.abd, %i.abc
  br i1 %or.cond1268.not, label %bb.du, label %_ZN3gmxL18launchPmeGpuSpreadEP9gmx_pme_tPA3_KfRKNS_18SimulationWorkloadERKNS_12StepWorkloadEP20GpuEventSynchronizerfbP13gmx_wallcycle.exit

bb.du:                                            ; preds = %bb.dt
  call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %10)
  %i.abe = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !182 ; 2 uses
  %i.abf = extractvalue { i32, i32 } %i.abe, 0
  %i.abg = extractvalue { i32, i32 } %i.abe, 1
  %i.abh = zext i32 %i.abf to i64
  %i.abi = zext i32 %i.abg to i64
  %i.abj = shl nuw i64 %i.abi, 32
  %i.abk = or disjoint i64 %i.abj, %i.abh         ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %10, i64 472 ; 2 uses
  store i64 %i.abk, ptr %i.abl, align 8, !tbaa !185
  %i.abm = getelementptr inbounds nuw i8, ptr %10, i64 2584 ; 2 uses
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !187 ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %10, i64 2592 ; 2 uses
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !187
  %i.abq = icmp eq ptr %i.abn, %i.abp
  br i1 %i.abq, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.abr = getelementptr inbounds nuw i8, ptr %10, i64 2608 ; 2 uses
  %i.abs = load i32, ptr %i.abr, align 8, !tbaa !204
  %i.abt = add nsw i32 %i.abs, 1                  ; 2 uses
  store i32 %i.abt, ptr %i.abr, align 8, !tbaa !204
  %i.abu = icmp eq i32 %i.abt, 3
  br i1 %i.abu, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.abv = getelementptr inbounds nuw i8, ptr %10, i64 2612
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !205
  %i.abx = mul nsw i32 %i.abw, 60
  %i.aby = sext i32 %i.abx to i64
  %i.abz = getelementptr [24 x i8], ptr %i.abn, i64 %i.aby ; 2 uses
  %i.aca = getelementptr i8, ptr %i.abz, i64 456  ; 2 uses
  %i.acb = load i32, ptr %i.aca, align 8, !tbaa !206
  %i.acc = add nsw i32 %i.acb, 1
  store i32 %i.acc, ptr %i.aca, align 8, !tbaa !206
  %i.acd = getelementptr inbounds nuw i8, ptr %10, i64 2616
  %i.ace = load i64, ptr %i.acd, align 8, !tbaa !207
  %i.acf = sub i64 %i.abk, %i.ace
  %i.acg = getelementptr i8, ptr %i.abz, i64 464  ; 2 uses
  %i.ach = load i64, ptr %i.acg, align 8, !tbaa !208
  %i.aci = add i64 %i.acf, %i.ach
  store i64 %i.aci, ptr %i.acg, align 8, !tbaa !208
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.du
  call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %10)
  %i.acj = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !182 ; 2 uses
  %i.ack = extractvalue { i32, i32 } %i.acj, 0
  %i.acl = extractvalue { i32, i32 } %i.acj, 1
  %i.acm = zext i32 %i.ack to i64
  %i.acn = zext i32 %i.acl to i64
  %i.aco = shl nuw i64 %i.acn, 32
  %i.acp = or disjoint i64 %i.aco, %i.acm         ; 3 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %10, i64 456 ; 2 uses
  %i.acr = load i64, ptr %i.abl, align 8, !tbaa !185 ; 2 uses
  %.not.i.i849 = icmp ult i64 %i.acp, %i.acr
  br i1 %.not.i.i849, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.acs = sub nuw i64 %i.acp, %i.acr
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dx
  %i.act = getelementptr inbounds nuw i8, ptr %10, i64 2624
  store i8 1, ptr %i.act, align 8, !tbaa !210
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.0.i.i850 = phi i64 [ %i.acs, %bb.dy ], [ 0, %bb.dz ]
  %i.acu = getelementptr inbounds nuw i8, ptr %10, i64 464 ; 2 uses
  %i.acv = load i64, ptr %i.acu, align 8, !tbaa !208
  %i.acw = add i64 %i.acv, %.0.i.i850
  store i64 %i.acw, ptr %i.acu, align 8, !tbaa !208
  %i.acx = load i32, ptr %i.acq, align 8, !tbaa !206
  %i.acy = add nsw i32 %i.acx, 1
  store i32 %i.acy, ptr %i.acq, align 8, !tbaa !206
  %i.acz = load ptr, ptr %i.abm, align 8, !tbaa !187
  %i.ada = load ptr, ptr %i.abo, align 8, !tbaa !187
  %i.adb = icmp eq ptr %i.acz, %i.ada
  br i1 %i.adb, label %_ZN3gmxL18launchPmeGpuSpreadEP9gmx_pme_tPA3_KfRKNS_18SimulationWorkloadERKNS_12StepWorkloadEP20GpuEventSynchronizerfbP13gmx_wallcycle.exit, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.adc = getelementptr inbounds nuw i8, ptr %10, i64 2608 ; 2 uses
  %i.add = load i32, ptr %i.adc, align 8, !tbaa !204
  %i.ade = add nsw i32 %i.add, -1                 ; 2 uses
  store i32 %i.ade, ptr %i.adc, align 8, !tbaa !204
  %i.adf = icmp eq i32 %i.ade, 2
  br i1 %i.adf, label %bb.ec, label %_ZN3gmxL18launchPmeGpuSpreadEP9gmx_pme_tPA3_KfRKNS_18SimulationWorkloadERKNS_12StepWorkloadEP20GpuEventSynchronizerfbP13gmx_wallcycle.exit

bb.ec:                                            ; preds = %bb.eb
  %i.adg = getelementptr inbounds nuw i8, ptr %10, i64 2612
  store i32 19, ptr %i.adg, align 4, !tbaa !205
  %i.adh = getelementptr inbounds nuw i8, ptr %10, i64 2616
  store i64 %i.acp, ptr %i.adh, align 8, !tbaa !207
  br label %_ZN3gmxL18launchPmeGpuSpreadEP9gmx_pme_tPA3_KfRKNS_18SimulationWorkloadERKNS_12StepWorkloadEP20GpuEventSynchronizerfbP13gmx_wallcycle.exit

_ZN3gmxL18launchPmeGpuSpreadEP9gmx_pme_tPA3_KfRKNS_18SimulationWorkloadERKNS_12StepWorkloadEP20GpuEventSynchronizerfbP13gmx_wallcycle.exit: ; preds = %bb.ec, %bb.eb, %bb.ea, %bb.dt
  %i.adi = load i8, ptr %i.bh, align 1, !tbaa !303, !range !141, !noundef !142
end_hunk_1
