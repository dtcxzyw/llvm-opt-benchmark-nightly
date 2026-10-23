Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/io_dispatcher_imp?download=true
inline.NumInlined: 3493
inline.NumDeleted: 1612
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7rocksdbL27CreateAndPinBlockFromBufferERKSt10shared_ptrINS_5IOJobEERKNS_11BlockHandleEmRKNS_5SliceERKNS_18SharedCleanablePtrEbRNS_13CachableEntryINS_5BlockEEE:bb.a

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cy) #25
  %.pr = load ptr, ptr %i.cw, align 8, !tbaa !133 ; 2 uses
  %.not.i.i84 = icmp eq ptr %.pr, null
  br i1 %.not.i.i84, label %_ZN7rocksdb6StatusD2Ev.exit86, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i85

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i85: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit86

_ZN7rocksdb6StatusD2Ev.exit86:                    ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit, %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.as

bb.af:                                            ; preds = %bb.ae
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.bg

bb.ag:                                            ; preds = %bb.ad
  %i.da = trunc nuw i8 %i.cd to i1
  br i1 %i.da, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.db = load i64, ptr %i.aa, align 8, !tbaa !373
  invoke void @_ZN7rocksdb35CopyBufferToReadScopedBlockContentsENS_5SliceEmRNS_29ReadScopedBlockBufferProviderEPNS_13BlockContentsE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %16, ptr nonnull %i.ag, i64 %i.ac, i64 noundef %i.db, ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull %11)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %16) #22 ; 0 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !133 ; 2 uses
  %.not.i.i87 = icmp eq ptr %i.de, null
  br i1 %.not.i.i87, label %_ZN7rocksdb6StatusD2Ev.exit89, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i88

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i88: ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %i.de) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit89

_ZN7rocksdb6StatusD2Ev.exit89:                    ; preds = %bb.ai, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.as

bb.aj:                                            ; preds = %bb.ah
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.bg

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.dg = load i64, ptr %i.aa, align 8, !tbaa !373
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !586 ; 2 uses
  %.not.i90 = icmp eq ptr %i.di, null
  br i1 %.not.i90, label %_ZN7rocksdb18GetMemoryAllocatorERKNS_22BlockBasedTableOptionsE.exit91, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !588
  br label %_ZN7rocksdb18GetMemoryAllocatorERKNS_22BlockBasedTableOptionsE.exit91

_ZN7rocksdb18GetMemoryAllocatorERKNS_22BlockBasedTableOptionsE.exit91: ; preds = %bb.al, %bb.ak
  %i.dl = phi ptr [ %i.dk, %bb.al ], [ null, %bb.ak ]
  invoke void @_ZN7rocksdb29CopyBufferToHeapBlockContentsENS_5SliceEmPNS_15MemoryAllocatorEPNS_13BlockContentsE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %17, ptr nonnull %i.ag, i64 %i.ac, i64 noundef %i.dg, ptr noundef %i.dl, ptr noundef nonnull %11)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %_ZN7rocksdb18GetMemoryAllocatorERKNS_22BlockBasedTableOptionsE.exit91
  %i.dm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %17) #22 ; 0 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !133 ; 2 uses
  %.not.i.i92 = icmp eq ptr %i.do, null
  br i1 %.not.i.i92, label %_ZN7rocksdb6StatusD2Ev.exit94, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i93

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i93: ; preds = %bb.am
  call void @_ZdaPv(ptr noundef nonnull %i.do) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit94

_ZN7rocksdb6StatusD2Ev.exit94:                    ; preds = %bb.am, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.as

bb.an:                                            ; preds = %_ZN7rocksdb18GetMemoryAllocatorERKNS_22BlockBasedTableOptionsE.exit91
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.bg

bb.ao:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.dq = load i64, ptr %i.aa, align 8, !tbaa !373
  %i.dr = load ptr, ptr %i.e, align 8, !tbaa !305, !nonnull !158, !align !306
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !586 ; 2 uses
  %.not.i95 = icmp eq ptr %i.dt, null
  br i1 %.not.i95, label %_ZN7rocksdb18GetMemoryAllocatorERKNS_22BlockBasedTableOptionsE.exit96, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !588
  br label %_ZN7rocksdb18GetMemoryAllocatorERKNS_22BlockBasedTableOptionsE.exit96

_ZN7rocksdb18GetMemoryAllocatorERKNS_22BlockBasedTableOptionsE.exit96: ; preds = %bb.ap, %bb.ao
  %i.dw = phi ptr [ %i.dv, %bb.ap ], [ null, %bb.ao ]
  store ptr %i.cc, ptr %19, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i8 %i.cd, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_ZN7rocksdb25DecompressSerializedBlockEPKcmNS_15CompressionTypeERNS_12DecompressorEPNS_13BlockContentsERKNS_16ImmutableOptionsEPNS_15MemoryAllocatorESt8optionalISt17reference_wrapperINS_29ReadScopedBlockBufferProviderEEE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %18, ptr noundef nonnull %i.ag, i64 noundef %i.dq, i8 noundef zeroext %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0122.1, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(875) %i.dr, ptr noundef %i.dw, ptr noundef nonnull byval(%"class.std::optional.338") align 8 %19)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %_ZN7rocksdb18GetMemoryAllocatorERKNS_22BlockBasedTableOptionsE.exit96
  %i.dx = load <4 x i8>, ptr %18, align 8, !tbaa !142
  store <4 x i8> %i.dx, ptr %12, align 8, !tbaa !142
  store <4 x i8> zeroinitializer, ptr %18, align 8, !tbaa !142
  %i.dy = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 4, !tbaa !380, !range !157, !noundef !158
  %i.ea = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i8 %i.dz, ptr %i.ea, align 4, !tbaa !352
  store i8 0, ptr %i.dy, align 4, !tbaa !352
  %i.eb = getelementptr inbounds nuw i8, ptr %18, i64 5 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !142
  %i.ed = getelementptr inbounds nuw i8, ptr %12, i64 5
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !353
  store i8 0, ptr %i.eb, align 1, !tbaa !353
  %i.ee = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !133
  store ptr null, ptr %i.ee, align 8, !tbaa !133
  %i.eg = load ptr, ptr %i.ce, align 8, !tbaa !133 ; 2 uses
  store ptr %i.ef, ptr %i.ce, align 8, !tbaa !133
  %.not.i.i.i.i.i98 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i.i98, label %_ZN7rocksdb6StatusD2Ev.exit103, label %_ZN7rocksdb6StatusaSEOS0_.exit100

_ZN7rocksdb6StatusaSEOS0_.exit100:                ; preds = %bb.aq
  call void @_ZdaPv(ptr noundef nonnull %i.eg) #25
  %.pr125 = load ptr, ptr %i.ee, align 8, !tbaa !133 ; 2 uses
  %.not.i.i101 = icmp eq ptr %.pr125, null
  br i1 %.not.i.i101, label %_ZN7rocksdb6StatusD2Ev.exit103, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i102

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i102: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit100
  call void @_ZdaPv(ptr noundef nonnull %.pr125) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit103

_ZN7rocksdb6StatusD2Ev.exit103:                   ; preds = %bb.aq, %_ZN7rocksdb6StatusaSEOS0_.exit100, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.as

bb.ar:                                            ; preds = %_ZN7rocksdb18GetMemoryAllocatorERKNS_22BlockBasedTableOptionsE.exit96
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.bg

bb.as:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit103, %_ZN7rocksdb6StatusD2Ev.exit86, %_ZN7rocksdb6StatusD2Ev.exit94, %_ZN7rocksdb6StatusD2Ev.exit89, %bb.aa
  %i.ei = load i8, ptr %12, align 8, !tbaa !185   ; 2 uses
  %i.ej = icmp eq i8 %i.ei, 0
  br i1 %i.ej, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.ek, align 8, !tbaa !162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not.i.i104 = icmp eq ptr %0, %12
  %.pr129.pre132 = load ptr, ptr %i.ce, align 8, !tbaa !133 ; 2 uses
  br i1 %.not.i.i104, label %_ZN7rocksdb6StatusC2EOS0_.exit, label %_ZN7rocksdb6StatusC2EOS0_.exit.thread

_ZN7rocksdb6StatusC2EOS0_.exit.thread:            ; preds = %bb.at
  store i8 %i.ei, ptr %0, align 8, !tbaa !185
  %i.el = getelementptr inbounds nuw i8, ptr %12, i64 1
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.en = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.eo = load <4 x i8>, ptr %i.el, align 1, !tbaa !142
  store <4 x i8> zeroinitializer, ptr %12, align 8, !tbaa !142
  store <4 x i8> %i.eo, ptr %i.em, align 1, !tbaa !142
  store i8 0, ptr %i.en, align 4, !tbaa !352
  %i.ep = getelementptr inbounds nuw i8, ptr %12, i64 5
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !142
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !353
  store ptr %.pr129.pre132, ptr %i.ek, align 8, !tbaa !133
  br label %_ZN7rocksdb6StatusD2Ev.exit109

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  store ptr null, ptr %20, align 8, !tbaa !601
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 720
  invoke void @_ZN7rocksdb18BlockCreateContext6CreateEPSt10unique_ptrINS_11Block_kDataESt14default_deleteIS2_EEONS_13BlockContentsE(ptr noundef nonnull align 8 dereferenceable(52) %i.es, ptr noundef nonnull %20, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %bb.av unwind label %bb.bb

bb.av:                                            ; preds = %bb.au
  %i.et = load ptr, ptr %7, align 8, !tbaa !603   ; 5 uses
  %i.eu = load ptr, ptr %20, align 8, !tbaa !382  ; 3 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 8, !range !157 ; 2 uses
  %i.ey = trunc nuw i8 %i.ex to i1
  %or.cond.i = select i1 %i.ev, i1 %i.ey, i1 false, !prof !604
  br i1 %or.cond.i, label %bb.ba, label %.critedge.i, !prof !604

.critedge.i:                                      ; preds = %bb.av
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !605 ; 2 uses
  %.not.i.i.i105 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i105, label %bb.ax, label %bb.aw, !prof !144

bb.aw:                                            ; preds = %.critedge.i
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !606 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !132
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 184
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = invoke noundef zeroext i1 %i.ff(ptr noundef nonnull align 8 dereferenceable(80) %i.fc, ptr noundef nonnull %i.fa, i1 noundef zeroext false)
          to label %.thread unwind label %bb.az   ; 0 uses

bb.ax:                                            ; preds = %.critedge.i
  %.not.i106 = icmp eq i8 %i.ex, 0
  %21 = icmp eq ptr %i.et, null
  %or.cond5.i = or i1 %21, %.not.i106
  br i1 %or.cond5.i, label %.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN7rocksdb5BlockD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.et) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef 104) #25
  br label %.thread

bb.az:                                            ; preds = %bb.aw
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #26
  unreachable

.thread:                                          ; preds = %bb.aw, %bb.ax, %bb.ay
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i8 0, i64 16, i1 false)
  %i.fk = load ptr, ptr %20, align 8, !tbaa !382
  store ptr %i.fk, ptr %7, align 8, !tbaa !603
  store i8 1, ptr %i.ew, align 8, !tbaa !607
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.fl, align 8, !tbaa !162, !alias.scope !608
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !608
  br label %_ZNSt10unique_ptrIN7rocksdb11Block_kDataESt14default_deleteIS1_EED2Ev.exit

bb.ba:                                            ; preds = %bb.av
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.fm, align 8, !tbaa !162, !alias.scope !609
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !609
  %.not.i106.a = icmp eq ptr %i.et, null
  br i1 %.not.i106.a, label %_ZNSt10unique_ptrIN7rocksdb11Block_kDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb11Block_kDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb11Block_kDataEEclEPS1_.exit.i: ; preds = %bb.ba
  call void @_ZN7rocksdb5BlockD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.eu) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef 104) #25
  br label %_ZNSt10unique_ptrIN7rocksdb11Block_kDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb11Block_kDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %.thread, %bb.ba, %_ZNKSt14default_deleteIN7rocksdb11Block_kDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %.pr129.pre = load ptr, ptr %i.ce, align 8, !tbaa !133
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

bb.bb:                                            ; preds = %bb.au
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN7rocksdb11Block_kDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.bg

_ZN7rocksdb6StatusC2EOS0_.exit:                   ; preds = %bb.at, %_ZNSt10unique_ptrIN7rocksdb11Block_kDataESt14default_deleteIS1_EED2Ev.exit
  %.pr129 = phi ptr [ %.pr129.pre132, %bb.at ], [ %.pr129.pre, %_ZNSt10unique_ptrIN7rocksdb11Block_kDataESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i107 = icmp eq ptr %.pr129, null
  br i1 %.not.i.i107, label %_ZN7rocksdb6StatusD2Ev.exit109, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i108

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i108: ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr129) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit109

_ZN7rocksdb6StatusD2Ev.exit109:                   ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit.thread, %_ZN7rocksdb6StatusC2EOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 32
  call void @_ZN7rocksdb18SharedCleanablePtrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fo) #22
  %i.fp = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !133 ; 3 uses
  %.not.i.i110 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i110, label %_ZN7rocksdb13BlockContentsD2Ev.exit112, label %bb.bc

bb.bc:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit109
  %i.fr = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !379 ; 3 uses
  %.not.i.i.i111 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i111, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !132
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 160
  %i.fv = load ptr, ptr %i.fu, align 8
  invoke void %i.fv(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noundef nonnull %i.fq)
          to label %_ZN7rocksdb13BlockContentsD2Ev.exit112 unwind label %bb.bf, !inline_history !10

bb.be:                                            ; preds = %bb.bc
  call void @_ZdaPv(ptr noundef nonnull %i.fq) #25
  br label %_ZN7rocksdb13BlockContentsD2Ev.exit112

bb.bf:                                            ; preds = %bb.bd
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  call void @__clang_call_terminate(ptr %i.fx) #26
  unreachable

_ZN7rocksdb13BlockContentsD2Ev.exit112:           ; preds = %_ZN7rocksdb6StatusD2Ev.exit109, %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.critedge73

bb.bg:                                            ; preds = %bb.ac, %bb.af, %bb.aj, %bb.an, %bb.bb, %bb.ar
  %.pn64 = phi { ptr, i32 } [ %i.fn, %bb.bb ], [ %i.dp, %bb.an ], [ %i.eh, %bb.ar ], [ %i.cm, %bb.ac ], [ %i.cz, %bb.af ], [ %i.df, %bb.aj ]
  %i.fy = load ptr, ptr %i.ce, align 8, !tbaa !133 ; 2 uses
  %.not.i.i113 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i113, label %_ZN7rocksdb6StatusD2Ev.exit115, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i114

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i114: ; preds = %bb.bg
  call void @_ZdaPv(ptr noundef nonnull %i.fy) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit115

_ZN7rocksdb6StatusD2Ev.exit115:                   ; preds = %bb.bg, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit115, %bb.ab
  %.pn64.pn = phi { ptr, i32 } [ %.pn64, %_ZN7rocksdb6StatusD2Ev.exit115 ], [ %i.cl, %bb.ab ]
  call void @_ZN7rocksdb13BlockContentsD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.bn

.critedge73:                                      ; preds = %bb.c, %_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEED2Ev.exit, %_ZN7rocksdb13BlockContentsD2Ev.exit112
  %i.fz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !369 ; 2 uses
  %.not.i.i116 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i116, label %bb.bj, label %bb.bi, !prof !144

bb.bi:                                            ; preds = %.critedge73
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !370 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !132
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 184
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = invoke noundef zeroext i1 %i.gf(ptr noundef nonnull align 8 dereferenceable(80) %i.gc, ptr noundef nonnull %i.ga, i1 noundef zeroext false)
          to label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEED2Ev.exit unwind label %bb.bm ; 0 uses

bb.bj:                                            ; preds = %.critedge73
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.gi = load i8, ptr %i.gh, align 8, !tbaa !371, !range !157, !noundef !158
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.bk, label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEED2Ev.exit

bb.bk:                                            ; preds = %bb.bj
  %i.gk = load ptr, ptr %8, align 8, !tbaa !367   ; 3 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN7rocksdb16DecompressorDictD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.gk) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef 64) #25
  br label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEED2Ev.exit

bb.bm:                                            ; preds = %bb.bi
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #26
  unreachable

_ZN7rocksdb13CachableEntryINS_16DecompressorDictEED2Ev.exit: ; preds = %bb.bi, %bb.bj, %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret void

bb.bn:                                            ; preds = %bb.u, %bb.bh, %bb.d
  %.pn68.pn.pn.pn = phi { ptr, i32 } [ %i.u, %bb.d ], [ %.pn64.pn, %bb.bh ], [ %.pn68.pn, %bb.u ]
  call void @_ZN7rocksdb13CachableEntryINS_16DecompressorDictEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  resume { ptr, i32 } %.pn68.pn.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN7rocksdb18SharedCleanablePtrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

declare noundef zeroext i1 @_ZN7rocksdb34ShouldUseDataBlockCacheForIteratorERKNS_22BlockBasedTableOptionsERKNS_11ReadOptionsEb(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef nonnull align 8 dereferenceable(192), i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZNK7rocksdb23UncompressionDictReader32GetOrReadUncompressionDictionaryEPNS_18FilePrefetchBufferERKNS_11ReadOptionsEPNS_10GetContextEPNS_23BlockCacheLookupContextEPNS_13CachableEntryINS_16DecompressorDictEEE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @_ZNK7rocksdb15BlockBasedTable13RetrieveBlockINS_11Block_kDataEEENSt9enable_ifIXooeqsrT_15kCacheEntryRoleLNS_14CacheEntryRoleE13ELb1EENS_6StatusEE4typeEPNS_18FilePrefetchBufferERKNS_11ReadOptionsERKNS_11BlockHandleENS_10UnownedPtrINS_12DecompressorEEEPNS_13CachableEntryIS4_EEPNS_10GetContextEPNS_23BlockCacheLookupContextEbbbb(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(16), ptr, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb13CachableEntryINS_16DecompressorDictEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !369  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !144

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !370  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !132
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull %i.b, i1 noundef zeroext false)
          to label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE15ReleaseResourceEb.exit unwind label %bb.f ; 0 uses

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i8, ptr %i.i, align 8, !tbaa !371, !range !157, !noundef !158
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE15ReleaseResourceEb.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !367    ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE15ReleaseResourceEb.exit, label %bb.e

end_hunk_0
