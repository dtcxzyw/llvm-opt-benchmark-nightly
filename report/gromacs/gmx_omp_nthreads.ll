Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_omp_nthreads?download=true
inline.NumInlined: 138
inline.NumDeleted: 70
begin_hunk_0_@_ZNSt10filesystem7__cxx114pathD2Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_Z21gmx_omp_nthreads_initRKN3gmx8MDLoggerERKNS_7MpiCommEbiiiib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 4 uses
  %i.b = alloca [4 x i32], align 16               ; 7 uses
  %8 = alloca %"class.gmx::LogEntryWriter", align 8 ; 9 uses
  %9 = alloca %"class.gmx::LogEntryWriter", align 8 ; 9 uses
  %10 = alloca %"class.gmx::LogEntryWriter", align 8 ; 9 uses
  %11 = alloca %"class.gmx::LogEntryWriter", align 8 ; 9 uses
  %12 = alloca %"class.gmx::LogEntryWriter", align 8 ; 9 uses
  %13 = alloca %"class.gmx::LogEntryWriter", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val = load i32, ptr %i.c, align 4, !tbaa !42
  %i.d = icmp eq i32 %.val, 0
  br i1 %i.d, label %bb.b, label %_ZL31manage_number_of_openmp_threadsRKN3gmx8MDLoggerERKNS_7MpiCommEbiiibib.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @getenv(ptr noundef nonnull @.str) #13
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef i32 @_Z23gmx_omp_get_max_threadsv()
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.g = icmp sgt i32 %5, 0
  br i1 %i.g, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not50.i = icmp slt i32 %3, %4
  br i1 %.not50.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = sdiv i32 %3, %4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.043.i = phi i32 [ %i.f, %bb.c ], [ %5, %bb.d ], [ %i.h, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %i.i = icmp sgt i32 %.043.i, 128
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %.043.i, i32 128) ; 5 uses
  store i32 %spec.select.i, ptr @_ZL5modth, align 8, !tbaa !45
  br i1 %2, label %bb.h, label %.thread.sink.split.i

bb.h:                                             ; preds = %bb.g
  %i.j = icmp sgt i32 %6, 0
  br i1 %i.j, label %bb.i, label %.thread.sink.split.i

bb.i:                                             ; preds = %bb.h
  store i32 %6, ptr getelementptr inbounds nuw (i8, ptr @_ZL5modth, i64 4), align 4, !tbaa !46
  %i.k = icmp samesign ugt i32 %6, 128
  br i1 %i.k, label %.critedge.i, label %.thread.i

.critedge.i:                                      ; preds = %bb.i
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @_ZL5modth, i64 4), align 4, !tbaa !46
  br label %bb.j

.thread.sink.split.i:                             ; preds = %bb.h, %bb.g
  %.sink.i = phi i32 [ %spec.select.i, %bb.h ], [ 0, %bb.g ]
  store i32 %.sink.i, ptr getelementptr inbounds nuw (i8, ptr @_ZL5modth, i64 4), align 4, !tbaa !46
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.sink.split.i, %bb.i
  br i1 %i.i, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.thread.i, %.critedge.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  store ptr %i.o, ptr %13, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !20
  %i.q = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull @.str.13, i32 noundef 128)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i unwind label %bb.m, !inline_history !0

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i: ; preds = %bb.l
  %i.u = load ptr, ptr %13, align 8, !tbaa !25    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.o
  br i1 %i.v, label %_ZN3gmx14LogEntryWriterD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i
  %i.w = load i64, ptr %i.o, align 8, !tbaa !26
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #15
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit.i

_ZN3gmx14LogEntryWriterD2Ev.exit.i:               ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  %.pre.i = load i32, ptr @_ZL5modth, align 8, !tbaa !45
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %13, align 8, !tbaa !25    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.o
  br i1 %i.aa, label %_ZN3gmx14LogEntryWriterD2Ev.exit53.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51.i: ; preds = %bb.m
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !26
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #15
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit53.i

common.resume:                                    ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit41.i, %_ZN3gmx14LogEntryWriterD2Ev.exit48.i, %_ZN3gmx14LogEntryWriterD2Ev.exit55.i, %_ZN3gmx14LogEntryWriterD2Ev.exit62.i, %_ZN3gmx14LogEntryWriterD2Ev.exit69.i, %_ZN3gmx14LogEntryWriterD2Ev.exit53.i
  %common.resume.op = phi { ptr, i32 } [ %i.y, %_ZN3gmx14LogEntryWriterD2Ev.exit53.i ], [ %i.ek, %_ZN3gmx14LogEntryWriterD2Ev.exit69.i ], [ %i.dg, %_ZN3gmx14LogEntryWriterD2Ev.exit55.i ], [ %i.dv, %_ZN3gmx14LogEntryWriterD2Ev.exit62.i ], [ %i.bs, %_ZN3gmx14LogEntryWriterD2Ev.exit41.i ], [ %i.cj, %_ZN3gmx14LogEntryWriterD2Ev.exit48.i ]
  resume { ptr, i32 } %common.resume.op

_ZN3gmx14LogEntryWriterD2Ev.exit53.i:             ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %common.resume

bb.n:                                             ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit.i, %bb.j, %.thread.i
  %i.ad = phi i32 [ %.pre.i, %_ZN3gmx14LogEntryWriterD2Ev.exit.i ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %.thread.i ]
  store i32 %i.ad, ptr getelementptr inbounds nuw (i8, ptr @_ZL5modth, i64 8), align 8, !tbaa !10
  call fastcc void @_ZL20pick_module_nthreadsRKN3gmx8MDLoggerE17ModuleMultiThreadb(ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i32 noundef 1, i1 noundef zeroext %2)
  call fastcc void @_ZL20pick_module_nthreadsRKN3gmx8MDLoggerE17ModuleMultiThreadb(ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i32 noundef 2, i1 noundef zeroext %2)
  call fastcc void @_ZL20pick_module_nthreadsRKN3gmx8MDLoggerE17ModuleMultiThreadb(ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i32 noundef 3, i1 noundef zeroext %2)
  call fastcc void @_ZL20pick_module_nthreadsRKN3gmx8MDLoggerE17ModuleMultiThreadb(ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i32 noundef 4, i1 noundef zeroext %2)
  call fastcc void @_ZL20pick_module_nthreadsRKN3gmx8MDLoggerE17ModuleMultiThreadb(ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i32 noundef 5, i1 noundef zeroext %2)
  call fastcc void @_ZL20pick_module_nthreadsRKN3gmx8MDLoggerE17ModuleMultiThreadb(ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i32 noundef 6, i1 noundef zeroext %2)
  call fastcc void @_ZL20pick_module_nthreadsRKN3gmx8MDLoggerE17ModuleMultiThreadb(ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i32 noundef 7, i1 noundef zeroext %2)
  call fastcc void @_ZL20pick_module_nthreadsRKN3gmx8MDLoggerE17ModuleMultiThreadb(ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i32 noundef 8, i1 noundef zeroext %2)
  call fastcc void @_ZL20pick_module_nthreadsRKN3gmx8MDLoggerE17ModuleMultiThreadb(ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i32 noundef 9, i1 noundef zeroext %2)
  call void @_Z23gmx_omp_set_num_threadsi(i32 noundef %spec.select.i)
  br label %_ZL31manage_number_of_openmp_threadsRKN3gmx8MDLoggerERKNS_7MpiCommEbiiibib.exit

_ZL31manage_number_of_openmp_threadsRKN3gmx8MDLoggerERKNS_7MpiCommEbiiibib.exit: ; preds = %bb.a, %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !47
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.o, label %.thread.i12

bb.o:                                             ; preds = %_ZL31manage_number_of_openmp_threadsRKN3gmx8MDLoggerERKNS_7MpiCommEbiiibib.exit
  %i.ah = load ptr, ptr %1, align 8, !tbaa !48
  %i.ai = call noundef i32 @_Z12tMPI_BarrierP10tmpi_comm_(ptr noundef %i.ah) ; 0 uses
  %.pr = load i32, ptr %i.ae, align 8, !tbaa !47
  %i.aj = icmp sgt i32 %.pr, 1
  br i1 %i.aj, label %bb.p, label %.thread.i12

.thread.i12:                                      ; preds = %_ZL31manage_number_of_openmp_threadsRKN3gmx8MDLoggerERKNS_7MpiCommEbiiibib.exit, %bb.o
  %i.ak = load i32, ptr @_ZL5modth, align 8, !tbaa !45
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL5modth, i64 4), align 4, !tbaa !46 ; 2 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.am = load <2 x i32>, ptr @_ZL5modth, align 8, !tbaa !10 ; 2 uses
  %i.an = sub nsw <2 x i32> zeroinitializer, %i.am
  %14 = shufflevector <2 x i32> %i.an, <2 x i32> %i.am, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %14, ptr %i.a, align 16, !tbaa !10
  %i.ao = load ptr, ptr @TMPI_INT, align 8, !tbaa !50
  %i.ap = load ptr, ptr %1, align 8, !tbaa !48
  %i.aq = call noundef i32 @_Z14tMPI_AllreducePKvPviP14tmpi_datatype_7tMPI_OpP10tmpi_comm_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef %i.ao, i32 noundef 0, ptr noundef %i.ap) ; 0 uses
  %i.ar = load i32, ptr %i.b, align 16, !tbaa !10
  %i.as = sub nsw i32 0, %i.ar                    ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !10 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !10
  %i.ax = sub nsw i32 0, %i.aw                    ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !10 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ba = icmp eq i32 %i.au, %i.as
  br i1 %i.ba, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p, %.thread.i12
  %.03390.i = phi i32 [ %i.al, %.thread.i12 ], [ %i.az, %bb.p ] ; 2 uses
  %.03488.i = phi i32 [ %i.al, %.thread.i12 ], [ %i.ax, %bb.p ] ; 2 uses
  %.03586.i = phi i32 [ %i.ak, %.thread.i12 ], [ %i.as, %bb.p ] ; 6 uses
  %i.bb = load ptr, ptr %0, align 8, !tbaa !14    ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  store ptr %i.bd, ptr %8, align 8, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.be, align 8, !tbaa !20
  %i.bf = icmp sgt i32 %.03586.i, 1
  %i.bg = select i1 %i.bf, ptr @.str.38, ptr @.str.7
  %i.bh = load i32, ptr %i.ae, align 8, !tbaa !47
  %i.bi = icmp sgt i32 %i.bh, 1
  %i.bj = select i1 %i.bi, ptr @.str.36, ptr @.str.7
  %i.bk = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull @.str.37, i32 noundef %.03586.i, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bj)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bl = load ptr, ptr %i.bb, align 8, !tbaa !24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.bk)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i13 unwind label %bb.t, !inline_history !0

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i13: ; preds = %bb.s
  %i.bo = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.bd
  br i1 %i.bp, label %_ZN3gmx14LogEntryWriterD2Ev.exit.i15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i13
  %i.bq = load i64, ptr %i.bd, align 8, !tbaa !26
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #15
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit.i15

_ZN3gmx14LogEntryWriterD2Ev.exit.i15:             ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.y

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bd
  br i1 %i.bu, label %_ZN3gmx14LogEntryWriterD2Ev.exit41.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39.i: ; preds = %bb.t
  %i.bv = load i64, ptr %i.bd, align 8, !tbaa !26
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #15
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit41.i

_ZN3gmx14LogEntryWriterD2Ev.exit41.i:             ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %common.resume

bb.u:                                             ; preds = %bb.p
  %i.bx = load ptr, ptr %0, align 8, !tbaa !14    ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i8 0, i64 24, i1 false)
  store ptr %i.bz, ptr %9, align 8, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ca, align 8, !tbaa !20
  %i.cb = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull @.str.39, i32 noundef %i.as, i32 noundef %i.au, ptr noundef nonnull @.str.36)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  invoke void %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull align 8 dereferenceable(40) %i.cb)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit42.i unwind label %bb.x, !inline_history !0

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit42.i: ; preds = %bb.w
  %i.cf = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bz
  br i1 %i.cg, label %_ZN3gmx14LogEntryWriterD2Ev.exit45.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit42.i
  %i.ch = load i64, ptr %i.bz, align 8, !tbaa !26
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #15
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit45.i

_ZN3gmx14LogEntryWriterD2Ev.exit45.i:             ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit42.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.bz
  br i1 %i.cl, label %_ZN3gmx14LogEntryWriterD2Ev.exit48.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46.i: ; preds = %bb.x
  %i.cm = load i64, ptr %i.bz, align 8, !tbaa !26
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #15
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit48.i

_ZN3gmx14LogEntryWriterD2Ev.exit48.i:             ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %common.resume

bb.y:                                             ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit45.i, %bb.u, %_ZN3gmx14LogEntryWriterD2Ev.exit.i15, %bb.q
  %.03389.i = phi i32 [ %.03390.i, %_ZN3gmx14LogEntryWriterD2Ev.exit.i15 ], [ %.03390.i, %bb.q ], [ %i.az, %bb.u ], [ %i.az, %_ZN3gmx14LogEntryWriterD2Ev.exit45.i ] ; 5 uses
  %.03487.i = phi i32 [ %.03488.i, %_ZN3gmx14LogEntryWriterD2Ev.exit.i15 ], [ %.03488.i, %bb.q ], [ %i.ax, %bb.u ], [ %i.ax, %_ZN3gmx14LogEntryWriterD2Ev.exit45.i ] ; 3 uses
  %.03585.i = phi i32 [ %.03586.i, %_ZN3gmx14LogEntryWriterD2Ev.exit.i15 ], [ %.03586.i, %bb.q ], [ %i.au, %bb.u ], [ %i.au, %_ZN3gmx14LogEntryWriterD2Ev.exit45.i ]
  %.03683.i = phi i32 [ %.03586.i, %_ZN3gmx14LogEntryWriterD2Ev.exit.i15 ], [ %.03586.i, %bb.q ], [ %i.as, %bb.u ], [ %i.as, %_ZN3gmx14LogEntryWriterD2Ev.exit45.i ]
  br i1 %2, label %bb.z, label %bb.aj

bb.z:                                             ; preds = %bb.y
  %.not.i16 = icmp eq i32 %.03487.i, %.03683.i
  %.not37.i = icmp eq i32 %.03389.i, %.03585.i
  %or.cond.i = select i1 %.not.i16, i1 %.not37.i, i1 false
  br i1 %or.cond.i, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = icmp eq i32 %.03389.i, %.03487.i
  %i.cp = load ptr, ptr %0, align 8, !tbaa !14    ; 5 uses
  %i.cq = icmp eq ptr %i.cp, null                 ; 2 uses
  br i1 %i.co, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.cq, label %_ZL20reportOpenmpSettingsRKN3gmx8MDLoggerERKNS_7MpiCommEbb.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i8 0, i64 24, i1 false)
  store ptr %i.cr, ptr %10, align 8, !tbaa !17
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.cs, align 8, !tbaa !20
  %i.ct = icmp sgt i32 %.03389.i, 1
  %i.cu = select i1 %i.ct, ptr @.str.38, ptr @.str.7
  %i.cv = load i32, ptr %i.ae, align 8, !tbaa !47
  %i.cw = icmp sgt i32 %i.cv, 1
  %i.cx = select i1 %i.cw, ptr @.str.36, ptr @.str.7
  %i.cy = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull @.str.40, i32 noundef %.03389.i, ptr noundef nonnull %i.cu, ptr noundef nonnull %i.cx)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cz = load ptr, ptr %i.cp, align 8, !tbaa !24
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull align 8 dereferenceable(40) %i.cy)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit49.i unwind label %bb.ae, !inline_history !0

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit49.i: ; preds = %bb.ad
  %i.dc = load ptr, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.cr
  br i1 %i.dd, label %_ZN3gmx14LogEntryWriterD2Ev.exit52.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit49.i
  %i.de = load i64, ptr %i.cr, align 8, !tbaa !26
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #15
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit52.i

_ZN3gmx14LogEntryWriterD2Ev.exit52.i:             ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit49.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dg = landingpad { ptr, i32 }
          cleanup
  %i.dh = load ptr, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.cr
  br i1 %i.di, label %_ZN3gmx14LogEntryWriterD2Ev.exit55.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i53.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i53.i: ; preds = %bb.ae
end_hunk_0
