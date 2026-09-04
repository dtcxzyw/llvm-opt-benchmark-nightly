Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/mrcdensitymap?download=true
inline.NumInlined: 626
inline.NumDeleted: 422
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3gmx34MrcDensityMapOfFloatFromFileReader4ImplC2ERKNSt10filesystem7__cxx114pathE:bb.a

_ZNKSt14default_deleteIN3gmx26MrcDensityMapOfFloatReaderEEclEPS1_.exit.i.i.i.i: ; preds = %_ZSt11make_uniqueIN3gmx26MrcDensityMapOfFloatReaderEJPNS0_20InMemoryDeserializerEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit53
  tail call void @_ZN3gmx26MrcDensityMapOfFloatReaderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cx) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef 8) #22
  %.pre119 = load ptr, ptr %i.cd, align 8, !tbaa !57
  br label %_ZNSt10unique_ptrIN3gmx26MrcDensityMapOfFloatReaderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx26MrcDensityMapOfFloatReaderESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN3gmx26MrcDensityMapOfFloatReaderEEclEPS1_.exit.i.i.i.i, %_ZSt11make_uniqueIN3gmx26MrcDensityMapOfFloatReaderEJPNS0_20InMemoryDeserializerEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit53
  %i.cy = phi ptr [ %.pre119, %_ZNKSt14default_deleteIN3gmx26MrcDensityMapOfFloatReaderEEclEPS1_.exit.i.i.i.i ], [ %i.cv, %_ZSt11make_uniqueIN3gmx26MrcDensityMapOfFloatReaderEJPNS0_20InMemoryDeserializerEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit53 ]
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !50
  %i.da = invoke noundef zeroext i1 @_ZN3gmx15mrcHeaderIsSaneERKNS_19MrcDensityMapHeaderE(ptr noundef nonnull align 8 dereferenceable(1040) %i.cz)
          to label %bb.aq unwind label %bb.az

bb.aq:                                            ; preds = %_ZNSt10unique_ptrIN3gmx26MrcDensityMapOfFloatReaderESt14default_deleteIS1_EED2Ev.exit
  br i1 %i.da, label %bb.bi, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.db = tail call ptr @__cxa_allocate_exception(i64 24) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  invoke void @_ZNKSt10filesystem7__cxx114path6stringEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.as unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread

bb.as:                                            ; preds = %bb.ar
  %i.dc = load ptr, ptr %15, align 8, !tbaa !46
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.4, ptr noundef %i.dc)
          to label %bb.at unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.au unwind label %bb.bc

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(56) %13)
          to label %bb.av unwind label %bb.bd

bb.av:                                            ; preds = %bb.au
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx11FileIOErrorE, i64 16), ptr %12, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %16, align 8, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx34MrcDensityMapOfFloatFromFileReader4ImplC2ERKNSt10filesystem7__cxx114pathE, ptr %i.dd, align 8, !tbaa !19
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr @.str.1, ptr %.sroa.481.0..sroa_idx, align 8, !tbaa !19
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i32 199, ptr %.sroa.582.0..sroa_idx, align 8, !tbaa !16
  invoke void @_ZN3gmxlsINS_11FileIOErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::FileIOError") align 8 %i.db, ptr noundef nonnull align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.aw unwind label %bb.be

bb.aw:                                            ; preds = %bb.av
  invoke void @__cxa_throw(ptr %i.db, ptr nonnull @_ZTIN3gmx11FileIOErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #21
          to label %bb.bz unwind label %bb.be

bb.ax:                                            ; preds = %_ZN3gmx12_GLOBAL__N_122readCharBufferFromFileERKNSt10filesystem7__cxx114pathE.exit
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ay:                                            ; preds = %bb.aj
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body43

bb.az:                                            ; preds = %_ZNSt10unique_ptrIN3gmx26MrcDensityMapOfFloatReaderESt14default_deleteIS1_EED2Ev.exit, %bb.al
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body46

bb.ba:                                            ; preds = %bb.an
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body46

bb.bb:                                            ; preds = %_ZNSt10unique_ptrIN3gmx20InMemoryDeserializerESt14default_deleteIS1_EED2Ev.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread: ; preds = %bb.ar
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.bc:                                            ; preds = %bb.at
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bd:                                            ; preds = %bb.au
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %bb.aw, %bb.av
  %.07 = phi i1 [ false, %bb.aw ], [ true, %bb.av ]
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #20
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn = phi { ptr, i32 } [ %i.dm, %bb.be ], [ %i.dl, %bb.bd ]
  %.18 = phi i1 [ %.07, %bb.be ], [ true, %bb.bd ]
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %13) #20
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bc
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bf ], [ %i.dk, %bb.bc ] ; 4 uses
  %.29 = phi i1 [ %.18, %bb.bf ], [ true, %bb.bc ] ; 2 uses
  %i.dn = load ptr, ptr %14, align 8, !tbaa !46   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bg
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !14
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ds = load ptr, ptr %15, align 8, !tbaa !46   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.as
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = load ptr, ptr %15, align 8, !tbaa !46   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !14
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #22
  br label %.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.eb = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !47
  %i.ed = icmp ult i64 %i.ec, 16
  call void @llvm.assume(i1 %i.ed)
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ee = load i64, ptr %i.dt, align 8, !tbaa !14
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.ef) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br i1 %.29, label %bb.bh, label %.body46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br i1 %.29, label %bb.bh, label %.body46

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.thread
  %.pn.pn.pn.pn93.ph = phi { ptr, i32 } [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.thread ], [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread100 ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.bh

bb.bh:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %.pn.pn.pn.pn93 = phi { ptr, i32 } [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %.pn.pn.pn.pn93.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.db) #20
  br label %.body46

bb.bi:                                            ; preds = %bb.aq, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.eg = load ptr, ptr %i.cd, align 8, !tbaa !57
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !50
  invoke void @_ZN3gmx19getDynamicExtents3DERKNS_19MrcDensityMapHeaderE(ptr dead_on_unwind nonnull writable sret(%"class.gmx::extents") align 8 %17, ptr noundef nonnull align 8 dereferenceable(1040) %i.eh)
          to label %bb.bj unwind label %bb.bq

bb.bj:                                            ; preds = %bb.bi
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.sroa.477.0.copyload = load i64, ptr %.sroa.477.0..sroa_idx, align 8, !tbaa !44
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 16
  %.sroa.578.0.copyload = load i64, ptr %.sroa.578.0..sroa_idx, align 8, !tbaa !44
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 24
  %.sroa.679.0.copyload = load i64, ptr %.sroa.679.0..sroa_idx, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.ei = mul i64 %.sroa.578.0.copyload, %.sroa.477.0.copyload
  %i.ej = mul i64 %i.ei, %.sroa.679.0.copyload
  %i.ek = load ptr, ptr %i.cd, align 8, !tbaa !57
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !50 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1040
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !25
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 1048
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !24
  %i.eq = ptrtoint ptr %i.en to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.er, %i.eq
  %i.et = ashr exact i64 %i.es, 2
  %.not = icmp eq i64 %i.ej, %i.et
  br i1 %.not, label %bb.bx, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eu = call ptr @__cxa_allocate_exception(i64 24) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  invoke void @_ZNKSt10filesystem7__cxx114path6stringEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.bl unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread

bb.bl:                                            ; preds = %bb.bk
  %i.ev = load ptr, ptr %21, align 8, !tbaa !46
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull @.str.5, ptr noundef %i.ev)
          to label %bb.bm unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.thread

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.bn unwind label %bb.br

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(56) %19)
          to label %bb.bo unwind label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx11FileIOErrorE, i64 16), ptr %18, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %22, align 8, !tbaa !18
  %i.ew = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx34MrcDensityMapOfFloatFromFileReader4ImplC2ERKNSt10filesystem7__cxx114pathE, ptr %i.ew, align 8, !tbaa !19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr @.str.1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 24
  store i32 209, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !16
  invoke void @_ZN3gmxlsINS_11FileIOErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::FileIOError") align 8 %i.eu, ptr noundef nonnull align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.bp unwind label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  invoke void @__cxa_throw(ptr %i.eu, ptr nonnull @_ZTIN3gmx11FileIOErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #21
          to label %bb.bz unwind label %bb.bt

bb.bq:                                            ; preds = %bb.bi
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %.body46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread: ; preds = %bb.bk
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split152

bb.br:                                            ; preds = %bb.bm
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bs:                                            ; preds = %bb.bn
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bp, %bb.bo
  %.0 = phi i1 [ false, %bb.bp ], [ true, %bb.bo ]
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #20
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.pn33 = phi { ptr, i32 } [ %i.fb, %bb.bt ], [ %i.fa, %bb.bs ]
  %.1 = phi i1 [ %.0, %bb.bt ], [ true, %bb.bs ]
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %19) #20
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.br
  %.pn33.pn = phi { ptr, i32 } [ %.pn33, %bb.bu ], [ %i.ez, %bb.br ] ; 4 uses
  %.2 = phi i1 [ %.1, %bb.bu ], [ true, %bb.br ]  ; 2 uses
  %i.fc = load ptr, ptr %20, align 8, !tbaa !46   ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.bv
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !14
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  %i.fh = load ptr, ptr %21, align 8, !tbaa !46   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.thread: ; preds = %bb.bl
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = load ptr, ptr %21, align 8, !tbaa !46   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.thread
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !14
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #22
  br label %.sink.split152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.thread
  %i.fq = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !47
  %i.fs = icmp ult i64 %i.fr, 16
  call void @llvm.assume(i1 %i.fs)
  br label %.sink.split152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.ft = load i64, ptr %i.fi, align 8, !tbaa !14
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fu) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br i1 %.2, label %bb.bw, label %.body46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br i1 %.2, label %bb.bw, label %.body46

.sink.split152:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.thread
  %.pn33.pn.pn.pn105.ph = phi { ptr, i32 } [ %i.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.thread ], [ %i.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread112 ], [ %i.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.bw

bb.bw:                                            ; preds = %.sink.split152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %.pn33.pn.pn.pn105 = phi { ptr, i32 } [ %.pn33.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %.pn33.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %.pn33.pn.pn.pn105.ph, %.sink.split152 ]
  call void @__cxa_free_exception(ptr %i.eu) #20
  br label %.body46

bb.bx:                                            ; preds = %bb.bj
  ret void

.body46:                                          ; preds = %bb.bq, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.bb, %bb.ap, %bb.ba, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %bb.bh, %bb.az
  %.pn33.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %.pn.pn.pn.pn93, %bb.bh ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.dg, %bb.az ], [ %i.cp, %bb.ao ], [ %i.dh, %bb.ba ], [ %i.di, %bb.bb ], [ %i.cw, %bb.ap ], [ %.pn33.pn.pn.pn105, %bb.bw ], [ %.pn33.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %.pn33.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %i.ex, %bb.bq ] ; 2 uses
  %i.fv = load ptr, ptr %i.cd, align 8, !tbaa !57 ; 3 uses
  %.not.i68 = icmp eq ptr %i.fv, null
  br i1 %.not.i68, label %.body43, label %_ZNKSt14default_deleteIN3gmx26MrcDensityMapOfFloatReaderEEclEPS1_.exit.i69

_ZNKSt14default_deleteIN3gmx26MrcDensityMapOfFloatReaderEEclEPS1_.exit.i69: ; preds = %.body46
  call void @_ZN3gmx26MrcDensityMapOfFloatReaderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fv) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef 8) #22
  br label %.body43

.body43:                                          ; preds = %_ZNKSt14default_deleteIN3gmx26MrcDensityMapOfFloatReaderEEclEPS1_.exit.i69, %.body46, %bb.ay, %bb.ak
  %.pn33.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.ak ], [ %i.df, %bb.ay ], [ %.pn33.pn.pn.pn.pn.pn, %.body46 ], [ %.pn33.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN3gmx26MrcDensityMapOfFloatReaderEEclEPS1_.exit.i69 ] ; 2 uses
  %i.fw = load ptr, ptr %i.bu, align 8, !tbaa !55 ; 3 uses
  %.not.i71 = icmp eq ptr %i.fw, null
  br i1 %.not.i71, label %.body, label %_ZNKSt14default_deleteIN3gmx20InMemoryDeserializerEEclEPS1_.exit.i72

_ZNKSt14default_deleteIN3gmx20InMemoryDeserializerEEclEPS1_.exit.i72: ; preds = %.body43
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #20, !inline_history !103
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN3gmx20InMemoryDeserializerEEclEPS1_.exit.i72, %.body43, %bb.ax, %bb.ai
  %.pn33.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cc, %bb.ai ], [ %i.de, %bb.ax ], [ %.pn33.pn.pn.pn.pn.pn.pn, %.body43 ], [ %.pn33.pn.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN3gmx20InMemoryDeserializerEEclEPS1_.exit.i72 ] ; 2 uses
  %i.ga = load ptr, ptr %0, align 8, !tbaa !52    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.by

bb.by:                                            ; preds = %.body
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !53
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.ga to i64
  %i.gf = sub i64 %i.gd, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.gf) #22
  br label %common.resume

bb.bz:                                            ; preds = %bb.bp, %bb.aw
  unreachable
}

declare noundef zeroext i1 @_ZN3gmx15mrcHeaderIsSaneERKNS_19MrcDensityMapHeaderE(ptr noundef nonnull align 8 dereferenceable(1040)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3gmxlsINS_11FileIOErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind noalias writable sret(%"class.gmx::FileIOError") align 8 %0, ptr noundef align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %4 = alloca %"struct.std::type_index", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
end_hunk_0
begin_hunk_1_@_ZN3gmx16GromacsExceptionD2Ev:bb.a
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !58

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  ret void
}

declare void @_ZN3gmx19getDynamicExtents3DERKNS_19MrcDensityMapHeaderE(ptr dead_on_unwind writable sret(%"class.gmx::extents") align 8, ptr noundef nonnull align 8 dereferenceable(1040)) local_unnamed_addr #6

declare noundef zeroext i1 @_Z10gmx_fexistRKNSt10filesystem7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

declare noundef ptr @_Z12gmx_fio_openRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #6

declare noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare noundef ptr @_Z13gmx_fio_getfpP8t_fileio(ptr noundef) local_unnamed_addr #6

declare noundef i64 @_Z13gmx_fio_ftellP8t_fileio(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #16

declare noundef i32 @_Z13gmx_fio_closeP8t_fileio(ptr noundef) local_unnamed_addr #6

declare void @_ZN3gmx20InMemoryDeserializerC1ENS_8ArrayRefIKcEEbNS_18EndianSwapBehaviorE(ptr noundef nonnull align 8 dereferenceable(16), ptr, ptr, i1 noundef zeroext, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3gmx34MrcDensityMapOfFloatFromFileReader4Impl6readerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx34MrcDensityMapOfFloatFromFileReaderC2ERKNSt10filesystem7__cxx114pathE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23 ; 3 uses
  invoke void @_ZN3gmx34MrcDensityMapOfFloatFromFileReader4ImplC1ERKNSt10filesystem7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !60
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #22
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3gmx34MrcDensityMapOfFloatFromFileReaderD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60     ; 6 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx34MrcDensityMapOfFloatFromFileReader4ImplESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN3gmx26MrcDensityMapOfFloatReaderESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN3gmx26MrcDensityMapOfFloatReaderEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN3gmx26MrcDensityMapOfFloatReaderEEclEPS1_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZN3gmx26MrcDensityMapOfFloatReaderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 8) #22
  br label %_ZNSt10unique_ptrIN3gmx26MrcDensityMapOfFloatReaderESt14default_deleteIS1_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN3gmx26MrcDensityMapOfFloatReaderESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN3gmx26MrcDensityMapOfFloatReaderEEclEPS1_.exit.i.i.i.i, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 3 uses
  %.not.i1.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i1.i.i.i, label %_ZNSt10unique_ptrIN3gmx20InMemoryDeserializerESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN3gmx20InMemoryDeserializerEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN3gmx20InMemoryDeserializerEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN3gmx26MrcDensityMapOfFloatReaderESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #20, !inline_history !117
  br label %_ZNSt10unique_ptrIN3gmx20InMemoryDeserializerESt14default_deleteIS1_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN3gmx20InMemoryDeserializerESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN3gmx20InMemoryDeserializerEEclEPS1_.exit.i.i.i.i, %_ZNSt10unique_ptrIN3gmx26MrcDensityMapOfFloatReaderESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN3gmx34MrcDensityMapOfFloatFromFileReader4ImplEEclEPS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN3gmx20InMemoryDeserializerESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #22
  br label %_ZNKSt14default_deleteIN3gmx34MrcDensityMapOfFloatFromFileReader4ImplEEclEPS2_.exit.i

_ZNKSt14default_deleteIN3gmx34MrcDensityMapOfFloatFromFileReader4ImplEEclEPS2_.exit.i: ; preds = %bb.c, %_ZNSt10unique_ptrIN3gmx20InMemoryDeserializerESt14default_deleteIS1_EED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #22
  br label %_ZNSt10unique_ptrIN3gmx34MrcDensityMapOfFloatFromFileReader4ImplESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx34MrcDensityMapOfFloatFromFileReader4ImplESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN3gmx34MrcDensityMapOfFloatFromFileReader4ImplEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx34MrcDensityMapOfFloatFromFileReader30transformationToDensityLatticeEv(ptr dead_on_unwind noalias writable sret(%"class.gmx::TranslateAndScale") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  tail call void @_ZN3gmx36getCoordinateTransformationToLatticeERKNS_19MrcDensityMapHeaderE(ptr dead_on_unwind writable sret(%"class.gmx::TranslateAndScale") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1040) %i.d)
  ret void
}

declare void @_ZN3gmx36getCoordinateTransformationToLatticeERKNS_19MrcDensityMapHeaderE(ptr dead_on_unwind writable sret(%"class.gmx::TranslateAndScale") align 8, ptr noundef nonnull align 8 dereferenceable(1040)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx34MrcDensityMapOfFloatFromFileReader15densityDataCopyEv(ptr dead_on_unwind noalias writable sret(%"class.gmx::MultiDimArray") align 8 initializes((0, 24), (32, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::extents", align 8      ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  call void @_ZN3gmx19getDynamicExtents3DERKNS_19MrcDensityMapHeaderE(ptr dead_on_unwind nonnull writable sret(%"class.gmx::extents") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1040) %i.d)
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load <4 x i64>, ptr %2, align 8          ; 3 uses
  %.sroa.416.0.copyload = load i64, ptr %.sroa.416.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  %i.g = extractelement <4 x i64> %i.e, i64 2
  %i.h = mul i64 %i.g, %.sroa.416.0.copyload
  %i.i = extractelement <4 x i64> %i.e, i64 3
  %i.j = mul i64 %i.h, %i.i                       ; 2 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.j)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !25
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %0, align 8, !tbaa !25     ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.a, %.noexc.i
  %i.r = phi ptr [ %.pre.i.i, %.noexc.i ], [ null, %bb.a ] ; 7 uses
  store <4 x i64> %i.e, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !26
  %i.s = load ptr, ptr %1, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !57
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1040
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !25   ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1048
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !24
  %i.aa = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.ab, %i.aa                    ; 2 uses
  %i.ad = ashr exact i64 %i.ac, 2                 ; 10 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %iter.check, label %_ZSt4copyIN3gmx12ArrayRefIterIKfEEPfET0_T_S6_S5_.exit

iter.check:                                       ; preds = %bb.e
  %i.af = ptrtoaddr ptr %i.r to i64
  %min.iters.check = icmp ult i64 %i.ad, 8
  %i.ag = sub i64 %i.aa, %i.af
  %diff.check = icmp ugt i64 %i.ag, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check20 = icmp ult i64 %i.ad, 32
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.ad, 9223372036854775776     ; 4 uses
  %i.ah = shl i64 %n.vec, 2                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.r, i64 %i.ah
  %i.aj = and i64 %i.ad, 31
  %i.ak = getelementptr i8, ptr %i.x, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.al ; 4 uses
  %next.gep21 = getelementptr i8, ptr %i.x, i64 %i.al ; 4 uses
  %i.am = getelementptr i8, ptr %next.gep21, i64 32
  %i.an = getelementptr i8, ptr %next.gep21, i64 64
  %i.ao = getelementptr i8, ptr %next.gep21, i64 96
  %wide.load = load <8 x float>, ptr %next.gep21, align 4, !tbaa !15
  %wide.load22 = load <8 x float>, ptr %i.am, align 4, !tbaa !15
  %wide.load23 = load <8 x float>, ptr %i.an, align 4, !tbaa !15
  %wide.load24 = load <8 x float>, ptr %i.ao, align 4, !tbaa !15
  %i.ap = getelementptr i8, ptr %next.gep, i64 32
  %i.aq = getelementptr i8, ptr %next.gep, i64 64
  %i.ar = getelementptr i8, ptr %next.gep, i64 96
  store <8 x float> %wide.load, ptr %next.gep, align 4, !tbaa !15
  store <8 x float> %wide.load22, ptr %i.ap, align 4, !tbaa !15
  store <8 x float> %wide.load23, ptr %i.aq, align 4, !tbaa !15
  store <8 x float> %wide.load24, ptr %i.ar, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN3gmx12ArrayRefIterIKfEEPfET0_T_S6_S5_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.at = and i64 %i.ac, 96
  %min.epilog.iters.check = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !123

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec27 = and i64 %i.ad, 9223372036854775800   ; 3 uses
  %i.au = shl i64 %n.vec27, 2                     ; 2 uses
  %i.av = getelementptr i8, ptr %i.r, i64 %i.au
  %i.aw = and i64 %i.ad, 7
  %i.ax = getelementptr i8, ptr %i.x, i64 %i.au
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next32, %vec.epilog.vector.body ] ; 2 uses
  %i.ay = shl i64 %index28, 2                     ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.r, i64 %i.ay
  %next.gep30 = getelementptr i8, ptr %i.x, i64 %i.ay
  %wide.load31 = load <8 x float>, ptr %next.gep30, align 4, !tbaa !15
  store <8 x float> %wide.load31, ptr %next.gep29, align 4, !tbaa !15
  %index.next32 = add nuw i64 %index28, 8         ; 2 uses
  %i.az = icmp eq i64 %index.next32, %n.vec27
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !119

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n33 = icmp eq i64 %i.ad, %n.vec27
  br i1 %cmp.n33, label %_ZSt4copyIN3gmx12ArrayRefIterIKfEEPfET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.r, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  %.048.i.i.i.i.i.ph = phi i64 [ %i.ad, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  %.sroa.05.07.i.i.i.i.i.ph = phi ptr [ %i.x, %iter.check ], [ %i.ak, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.048.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.sroa.05.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ba = load float, ptr %.sroa.05.07.i.i.i.i.i, align 4, !tbaa !15
  store float %i.ba, ptr %.09.i.i.i.i.i, align 4, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %i.bd = add nsw i64 %.048.i.i.i.i.i, -1
  %i.be = icmp samesign ugt i64 %.048.i.i.i.i.i, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN3gmx12ArrayRefIterIKfEEPfET0_T_S6_S5_.exit, !llvm.loop !120

_ZSt4copyIN3gmx12ArrayRefIterIKfEEPfET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx26MrcDensityMapOfFloatWriter4ImplC2ERKNS_19MrcDensityMapHeaderENS_8ArrayRefIKfEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1056) initializes((0, 1040)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1040) %1, ptr %2, ptr %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(1040) %1, i64 1016, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1016 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !124  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i, !prof !58

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #23
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !124
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store ptr %i.m, ptr %i.n, align 8, !tbaa !21
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp sgt i64 %i.s, 1
  br i1 %i.t, label %bb.d, label %bb.e, !prof !125

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.o, i64 %i.s, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i64 %i.s, 1
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.o, align 1, !tbaa !14
  store i8 %i.v, ptr %i.k, align 1, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 %i.s
  store ptr %i.w, ptr %i.l, align 8, !tbaa !124
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store ptr %2, ptr %i.x, align 8, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.z = ptrtoint ptr %3 to i64
  %i.aa = ptrtoint ptr %2 to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.ab
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx26MrcDensityMapOfFloatWriter4Impl5writeEPNS_11ISerializerE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::InternalError", align 8 ; 4 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %5 = alloca %"class.gmx::InternalError", align 8 ; 4 uses
  %6 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %7 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 24) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull @.str.10)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.d unwind label %.thread40

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx13InternalErrorE, i64 16), ptr %2, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %4, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @__PRETTY_FUNCTION__._ZNK3gmx26MrcDensityMapOfFloatWriter4Impl5writeEPNS_11ISerializerE, ptr %i.g, align 8, !tbaa !19
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.1, ptr %.sroa.434.0..sroa_idx, align 8, !tbaa !19
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
end_hunk_1
