Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/writer?download=true
inline.NumInlined: 4544
inline.NumDeleted: 1764
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5arrow3ipc8internal15IpcFormatWriter5StartEv:_ZN5arrow6StatusD2Ev.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !743)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !743
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !218, !noalias !743 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !69, !noalias !743
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !noalias !743
  invoke void %i.t(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(88) %4)
          to label %.noexc unwind label %bb.d, !inline_history !21

.noexc:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit16
  call void @llvm.experimental.noalias.scope.decl(metadata !744)
  %i.u = load ptr, ptr %2, align 8, !tbaa !53, !noalias !745 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !53, !alias.scope !745
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !743
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !285, !noalias !743
  %i.y = add nsw i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !285, !noalias !743
  store ptr null, ptr %0, align 8, !tbaa !53, !alias.scope !746
  br label %.critedge

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit16
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.critedge:                                        ; preds = %bb.c, %.noexc, %_ZN5arrow6StatusD2Ev.exit14
  call void @_ZN5arrow3ipc10IpcPayloadD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.z, %bb.d ], [ %i.p, %bb.b ]
  call void @_ZN5arrow3ipc10IpcPayloadD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc8internal23MakePayloadStreamWriterEPNS_2io12OutputStreamERKNS0_15IpcWriteOptionsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Result.191") align 8 captures(none) initializes((0, 16)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26, !noalias !749 ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow3ipc8internal16IpcPayloadWriterE, i64 16), ptr %i.a, align 8, !tbaa !69, !noalias !749
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(60) %2, i64 24, i1 false), !noalias !749
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !127, !noalias !749 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !128, !noalias !749
  store <2 x ptr> %i.g, ptr %i.c, align 8, !tbaa !128, !noalias !749
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120, !noalias !749
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !129, !noalias !749
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !129, !noalias !749
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4, !noalias !749 ; 0 uses
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.m, ptr noundef nonnull align 8 dereferenceable(20) %i.n, i64 20, i1 false), !noalias !749
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %1, ptr %i.o, align 8, !tbaa !213, !noalias !749
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !noalias !749
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 -1, ptr %i.q, align 8, !tbaa !214, !noalias !749
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow3ipc8internal19PayloadStreamWriterE, i64 16), ptr %i.a, align 8, !tbaa !69, !noalias !749
  store ptr null, ptr %0, align 8, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.r, align 8, !tbaa !217
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc8internal21MakePayloadFileWriterEPNS_2io12OutputStreamERKSt10shared_ptrINS_6SchemaEERKNS0_15IpcWriteOptionsERKS5_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Result.191") align 8 captures(none) initializes((0, 16)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #26, !noalias !752 ; 12 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow3ipc8internal16IpcPayloadWriterE, i64 16), ptr %i.a, align 8, !tbaa !69, !noalias !752
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(60) %3, i64 24, i1 false), !noalias !752
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !127, !noalias !752 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !128, !noalias !752
  store <2 x ptr> %i.g, ptr %i.c, align 8, !tbaa !128, !noalias !752
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow3ipc8internal16StreamBookKeeperC2ERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamE.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120, !noalias !752
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !129, !noalias !752
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !129, !noalias !752
  br label %_ZN5arrow3ipc8internal16StreamBookKeeperC2ERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamE.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4, !noalias !752 ; 0 uses
  br label %_ZN5arrow3ipc8internal16StreamBookKeeperC2ERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamE.exit.i.i

_ZN5arrow3ipc8internal16StreamBookKeeperC2ERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamE.exit.i.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.m, ptr noundef nonnull align 8 dereferenceable(20) %i.n, i64 20, i1 false), !noalias !752
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %1, ptr %i.o, align 8, !tbaa !213, !noalias !752
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !noalias !752
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 -1, ptr %i.q, align 8, !tbaa !214, !noalias !752
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow3ipc8internal17PayloadFileWriterE, i64 16), ptr %i.a, align 8, !tbaa !69, !noalias !752
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !127, !noalias !752 ; 2 uses
  %i.u = load <2 x ptr>, ptr %2, align 8, !tbaa !128, !noalias !752
  store <2 x ptr> %i.u, ptr %i.r, align 8, !tbaa !128, !noalias !752
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow3ipc8internal16StreamBookKeeperC2ERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamE.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120, !noalias !752
  %.not.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.v, align 4, !tbaa !129, !noalias !752
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !129, !noalias !752
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4, !noalias !752 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i: ; preds = %bb.g, %bb.f, %_ZN5arrow3ipc8internal16StreamBookKeeperC2ERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamE.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !127, !noalias !752 ; 2 uses
  %i.ad = load <2 x ptr>, ptr %4, align 8, !tbaa !128, !noalias !752
  store <2 x ptr> %i.ad, ptr %i.aa, align 8, !tbaa !128, !noalias !752
  %.not.i.i.i5.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i5.i.i, label %_ZNSt10unique_ptrIN5arrow3ipc8internal17PayloadFileWriterESt14default_deleteIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120, !noalias !752
  %.not.i.i.i.i6.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i6.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !129, !noalias !752
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !129, !noalias !752
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal17PayloadFileWriterESt14default_deleteIS3_EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = atomicrmw volatile add ptr %i.ae, i32 1 acq_rel, align 4, !noalias !752 ; 0 uses
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal17PayloadFileWriterESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow3ipc8internal17PayloadFileWriterESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.j, %bb.i, %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i8 0, i64 48, i1 false), !noalias !752
  store ptr null, ptr %0, align 8, !tbaa !53
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.ak, align 8, !tbaa !217
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc20SerializeRecordBatchERKNS_11RecordBatchESt10shared_ptrINS_13MemoryManagerEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.100") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef readonly align 8 captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.arrow::io::MockOutputStream", align 8 ; 10 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"struct.arrow::ipc::IpcWriteOptions", align 8 ; 10 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %7 = alloca %"class.arrow::Result.75", align 8  ; 12 uses
  %8 = alloca %"class.std::shared_ptr", align 16  ; 9 uses
  %9 = alloca %"class.std::unique_ptr.80", align 8 ; 7 uses
  %10 = alloca %"class.arrow::Result.201", align 8 ; 13 uses
  %11 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %12 = alloca %"class.std::shared_ptr.147", align 16 ; 7 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN5arrow3ipc15IpcWriteOptions8DefaultsEv(ptr dead_on_unwind nonnull writable sret(%"struct.arrow::ipc::IpcWriteOptions") align 8 %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !780
  store i32 0, ptr %i.c, align 4, !tbaa !129, !noalias !780
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25, !noalias !780
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !780
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.f, i8 0, i64 20, i1 false)
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io16MockOutputStreamE, i64 8), align 8, !noalias !780
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io16MockOutputStreamE, i64 16), align 8, !noalias !780
  %i.i = getelementptr i8, ptr %i.g, i64 -24
  %i.j = load i64, ptr %i.i, align 8, !noalias !780
  %i.k = getelementptr inbounds i8, ptr %3, i64 %i.j
  store ptr %i.h, ptr %i.k, align 8, !tbaa !69, !noalias !780
  store ptr getelementptr inbounds nuw inrange(-24, 64) (i8, ptr @_ZTVN5arrow2io16MockOutputStreamE, i64 24), ptr %3, align 8, !tbaa !69, !noalias !780
  store ptr getelementptr inbounds nuw inrange(-64, 56) (i8, ptr @_ZTVN5arrow2io16MockOutputStreamE, i64 152), ptr %i.e, align 8, !tbaa !69, !noalias !780
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !245, !noalias !780
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.m, align 8, !tbaa !246, !noalias !780
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !780
  invoke void @_ZN5arrow3ipc16WriteRecordBatchERKNS_11RecordBatchElPNS_2io12OutputStreamEPiPlRKNS0_15IpcWriteOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(60) %5)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %.body, !noalias !780

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.a
  %i.n = load ptr, ptr %4, align 8, !tbaa !53, !noalias !781 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !780
  %17 = load i64, ptr %i.l, align 8
  call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.e) #25, !noalias !780
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25, !noalias !780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !780
  store ptr %i.n, ptr %6, align 8, !tbaa !53, !alias.scope !782
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit39, label %bb.b, !prof !194

.body:                                            ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !780
  call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.e) #25, !noalias !780
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25, !noalias !780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !780
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.bz

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  %i.q = load ptr, ptr %6, align 8, !tbaa !53
  %.not.i36 = icmp eq ptr %i.q, null
  br i1 %.not.i36, label %_ZN5arrow6StatusD2Ev.exit37, label %bb.c, !prof !194

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN5arrow6StatusD2Ev.exit37

_ZN5arrow6StatusD2Ev.exit37:                      ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.bs

_ZN5arrow6StatusD2Ev.exit39:                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.r = load ptr, ptr %2, align 8, !tbaa !286    ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !69
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.75") align 8 %7, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 noundef %17)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit39
  %i.v = load ptr, ptr %7, align 8, !tbaa !53
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.g, label %bb.e, !prof !194

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #25
  br label %bb.bq

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit39
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !783)
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !228, !noalias !785
  store i64 %i.z, ptr %9, align 8, !tbaa !228, !alias.scope !785
  store ptr null, ptr %i.y, align 8, !tbaa !228, !noalias !785
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit unwind label %bb.s

_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit: ; preds = %bb.g
  %i.aa = load ptr, ptr %9, align 8, !tbaa !228   ; 3 uses
  %.not.i40 = icmp eq ptr %i.aa, null
  br i1 %.not.i40, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !69
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(80) %i.aa) #25, !inline_history !12
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !127 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %8, align 16, !tbaa !128
  store <2 x ptr> %i.ah, ptr %11, align 16, !tbaa !128
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !129
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !129
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.am = atomicrmw volatile add ptr %i.ai, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit:  ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, %bb.i, %bb.j
  invoke void @_ZN5arrow6Buffer9GetWriterESt10shared_ptrIS0_E(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.201") align 8 %10, ptr noundef nonnull align 8 %11)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !127 ; 8 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ao, align 8, !tbaa !136
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !137
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !69
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #25, !inline_history !9
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #25, !inline_history !9
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i41 = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i41, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = add nsw i32 %i.ar, -1
  store i32 %i.ba, ptr %i.ao, align 8, !tbaa !129
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bb = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.ar, %bb.o ], [ %i.bb, %bb.p ]
  %i.bc = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bc, label %bb.q, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !138

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #25
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.k, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.q
  %i.bd = load ptr, ptr %10, align 8, !tbaa !53
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.u, label %bb.r, !prof !194

bb.r:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %10) #25
  br label %bb.ba

bb.s:                                             ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %9, align 8, !tbaa !228   ; 3 uses
  %.not.i42 = icmp eq ptr %i.bg, null
  br i1 %.not.i42, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit44, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i43

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i43: ; preds = %bb.s
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !69
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(80) %i.bg) #25, !inline_history !12
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit44

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit44: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i43, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.bp

bb.t:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #25
  br label %bb.bo

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !786)
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bo = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !128, !noalias !788
  store ptr null, ptr %i.bn, align 8, !tbaa !127, !noalias !788
  store <2 x ptr> %i.bo, ptr %12, align 16, !tbaa !128, !alias.scope !788
  store ptr null, ptr %i.bl, align 8, !tbaa !259, !noalias !788
  %i.bp = load ptr, ptr %2, align 8, !tbaa !286   ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !289
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !294, !range !177, !noundef !173
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.v, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !127 ; 14 uses
  %.not.i.i.i45 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i45, label %_ZNSt12__shared_ptrIN5arrow16CPUMemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 14 uses
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i46 = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i46, label %bb.x, label %.thread

.thread:                                          ; preds = %bb.w
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !129
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.bx, align 4, !tbaa !129
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cb = atomicrmw volatile add ptr %i.bx, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120, !noalias !789
end_hunk_0
begin_hunk_1_@_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !136
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !137
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !3
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !3
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !129
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !138

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc20SerializeRecordBatchERKNS_11RecordBatchERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @_ZN5arrow3ipc16WriteRecordBatchERKNS_11RecordBatchElPNS_2io12OutputStreamEPiPlRKNS0_15IpcWriteOptionsE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(60) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow2io12OutputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !136
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !137
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !3
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !3
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !129
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !138

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !53
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit.thread, !prof !194

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !136
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !137
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !800
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !800
  br label %_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !129
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit, !prof !138

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !53
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit.thread, !prof !195

_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc20SerializeRecordBatchERKNS_11RecordBatchERKNS0_15IpcWriteOptionsE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.100") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(60) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.arrow::io::MockOutputStream", align 8 ; 10 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %6 = alloca %"class.arrow::Result.75", align 8  ; 12 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 10 uses
  %8 = alloca %"class.std::unique_ptr.80", align 8 ; 7 uses
  %9 = alloca %"class.arrow::io::FixedSizeBufferWriter", align 8 ; 7 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !815
  store i32 0, ptr %i.c, align 4, !tbaa !129, !noalias !815
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25, !noalias !815
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !815
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.f, i8 0, i64 20, i1 false)
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io16MockOutputStreamE, i64 8), align 8, !noalias !815
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io16MockOutputStreamE, i64 16), align 8, !noalias !815
  %i.i = getelementptr i8, ptr %i.g, i64 -24
  %i.j = load i64, ptr %i.i, align 8, !noalias !815
  %i.k = getelementptr inbounds i8, ptr %3, i64 %i.j
  store ptr %i.h, ptr %i.k, align 8, !tbaa !69, !noalias !815
  store ptr getelementptr inbounds nuw inrange(-24, 64) (i8, ptr @_ZTVN5arrow2io16MockOutputStreamE, i64 24), ptr %3, align 8, !tbaa !69, !noalias !815
  store ptr getelementptr inbounds nuw inrange(-64, 56) (i8, ptr @_ZTVN5arrow2io16MockOutputStreamE, i64 152), ptr %i.e, align 8, !tbaa !69, !noalias !815
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !245, !noalias !815
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.m, align 8, !tbaa !246, !noalias !815
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !815
  invoke void @_ZN5arrow3ipc16WriteRecordBatchERKNS_11RecordBatchElPNS_2io12OutputStreamEPiPlRKNS0_15IpcWriteOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(60) %2)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.b, !noalias !815

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.a
  %i.n = load ptr, ptr %4, align 8, !tbaa !53, !noalias !816 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !815
  %12 = load i64, ptr %i.l, align 8
  call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.e) #25, !noalias !815
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25, !noalias !815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !815
  store ptr %i.n, ptr %5, align 8, !tbaa !53, !alias.scope !817
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit26, label %bb.c, !prof !194

common.resume:                                    ; preds = %bb.u, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.b ], [ %.pn18.pn, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !815
  call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.e) #25, !noalias !815
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25, !noalias !815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !815
  br label %common.resume

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #25
  %i.q = load ptr, ptr %5, align 8, !tbaa !53
  %.not.i23 = icmp eq ptr %i.q, null
  br i1 %.not.i23, label %_ZN5arrow6StatusD2Ev.exit24, label %bb.d, !prof !194

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %_ZN5arrow6StatusD2Ev.exit24

_ZN5arrow6StatusD2Ev.exit24:                      ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.x

_ZN5arrow6StatusD2Ev.exit26:                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !231
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.75") align 8 %6, i64 noundef %12, ptr noundef %i.s)
  %i.t = load ptr, ptr %6, align 8, !tbaa !53
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %bb.e, !prof !194

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit26
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  br label %bb.v

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !818)
  call void @llvm.experimental.noalias.scope.decl(metadata !819)
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !228, !noalias !820
  store i64 %i.w, ptr %8, align 8, !tbaa !228, !alias.scope !820
  store ptr null, ptr %i.v, align 8, !tbaa !228, !noalias !820
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit unwind label %bb.j

_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit: ; preds = %bb.f
  %i.x = load ptr, ptr %8, align 8, !tbaa !228    ; 3 uses
  %.not.i27 = icmp eq ptr %i.x, null
  br i1 %.not.i27, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(80) %i.x) #25, !inline_history !12
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZN5arrow2io21FixedSizeBufferWriterC1ERKSt10shared_ptrINS_6BufferEE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !821
  store i32 0, ptr %i.a, align 4, !tbaa !129, !noalias !821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !821
  invoke void @_ZN5arrow3ipc16WriteRecordBatchERKNS_11RecordBatchElPNS_2io12OutputStreamEPiPlRKNS0_15IpcWriteOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, ptr noundef nonnull %9, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(60) %2)
          to label %_ZN5arrow6StatusD2Ev.exit29 unwind label %bb.l

_ZN5arrow6StatusD2Ev.exit29:                      ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !821
  call void @llvm.experimental.noalias.scope.decl(metadata !822)
  %i.ab = load ptr, ptr %11, align 8, !tbaa !53, !noalias !822 ; 2 uses
  store ptr %i.ab, ptr %10, align 8, !tbaa !53, !alias.scope !822
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN5arrow6StatusD2Ev.exit36, label %bb.h, !prof !194

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit29
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %10) #25
  %i.ad = load ptr, ptr %10, align 8, !tbaa !53
  %.not.i30 = icmp eq ptr %i.ad, null
  br i1 %.not.i30, label %_ZN5arrow6StatusD2Ev.exit31, label %bb.i, !prof !194

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN5arrow6StatusD2Ev.exit31

_ZN5arrow6StatusD2Ev.exit31:                      ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.m

bb.j:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %8, align 8, !tbaa !228   ; 3 uses
  %.not.i32 = icmp eq ptr %i.af, null
  br i1 %.not.i32, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit34, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i33

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i33: ; preds = %bb.j
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(80) %i.af) #25, !inline_history !12
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit34

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit34: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i33, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.u

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.l:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @_ZN5arrow2io21FixedSizeBufferWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #25
  br label %bb.t

_ZN5arrow6StatusD2Ev.exit36:                      ; preds = %_ZN5arrow6StatusD2Ev.exit29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  store ptr null, ptr %0, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.an = load <2 x ptr>, ptr %7, align 16, !tbaa !128
  store ptr null, ptr %i.am, align 8, !tbaa !127
  store <2 x ptr> %i.an, ptr %i.al, align 8, !tbaa !128
  store ptr null, ptr %7, align 16, !tbaa !50
  br label %bb.m

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit31, %_ZN5arrow6StatusD2Ev.exit36
  call void @_ZN5arrow2io21FixedSizeBufferWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !127 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.aq, align 8, !tbaa !136
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !137
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !69
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #25, !inline_history !9
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !69
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #25, !inline_history !9
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !129
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.at, %bb.q ], [ %i.bd, %bb.r ]
  %i.be = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.be, label %bb.s, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !138

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #25
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.m, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.v

bb.t:                                             ; preds = %bb.l, %bb.k
  %.pn18 = phi { ptr, i32 } [ %i.ak, %bb.l ], [ %i.aj, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit34
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.t ], [ %i.ae, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %common.resume

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.e
  %i.bf = load ptr, ptr %6, align 8, !tbaa !53
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.w, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !194

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !228 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.w
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !69
end_hunk_1
begin_hunk_2_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
bb.agh:                                           ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i1000
  %i.dyz = load ptr, ptr %20, align 16, !tbaa !50, !noalias !1694 ; 2 uses
  %.not64.i = icmp eq ptr %i.dyz, null
  br i1 %.not64.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1003, label %bb.agi

bb.agi:                                           ; preds = %bb.agh
  %i.dza = getelementptr inbounds nuw i8, ptr %i.dyz, i64 24
  %i.dzb = load i64, ptr %i.dza, align 8, !tbaa !67, !noalias !1694
  %i.dzc = icmp sgt i64 %i.dzb, %i.dvl
  br i1 %i.dzc, label %bb.agj, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1003

bb.agj:                                           ; preds = %bb.agi
  %i.dzd = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #26
          to label %.noexc45.i unwind label %bb.agq, !noalias !1694 ; 6 uses

.noexc45.i:                                       ; preds = %bb.agj
  %i.dze = getelementptr inbounds nuw i8, ptr %i.dzd, i64 8
  store i32 1, ptr %i.dze, align 8, !tbaa !136, !noalias !1702
  %i.dzf = getelementptr inbounds nuw i8, ptr %i.dzd, i64 12
  store i32 1, ptr %i.dzf, align 4, !tbaa !137, !noalias !1702
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dzd, align 8, !tbaa !69, !noalias !1702
  %i.dzg = getelementptr inbounds nuw i8, ptr %i.dzd, i64 16 ; 2 uses
  invoke void @_ZN5arrow6BufferC2ERKSt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %i.dzg, ptr noundef nonnull align 8 dereferenceable(16) %20, i64 noundef 0, i64 noundef %i.dvl)
          to label %_ZN5arrowL11SliceBufferERKSt10shared_ptrINS_6BufferEEll.exit.i1012 unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i1011, !noalias !1702

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i1011: ; preds = %.noexc45.i
  %i.dzh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dzd, i64 noundef 96) #27, !noalias !1702
  br label %.body.i1002

_ZN5arrowL11SliceBufferERKSt10shared_ptrINS_6BufferEEll.exit.i1012: ; preds = %.noexc45.i
  store ptr %i.dzg, ptr %20, align 16, !tbaa !228, !noalias !1694
  %i.dzi = load ptr, ptr %i.duy, align 8, !tbaa !127, !noalias !1694 ; 8 uses
  store ptr %i.dzd, ptr %i.duy, align 8, !tbaa !127, !noalias !1694
  %.not.i.i.i.i46.i = icmp eq ptr %i.dzi, null
  br i1 %.not.i.i.i.i46.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1003, label %bb.agk

bb.agk:                                           ; preds = %_ZN5arrowL11SliceBufferERKSt10shared_ptrINS_6BufferEEll.exit.i1012
  %i.dzj = getelementptr inbounds nuw i8, ptr %i.dzi, i64 8 ; 4 uses
  %i.dzk = load atomic i64, ptr %i.dzj acquire, align 8, !noalias !1694 ; 2 uses
  %i.dzl = icmp eq i64 %i.dzk, 4294967297
  %i.dzm = trunc i64 %i.dzk to i32                ; 2 uses
  br i1 %i.dzl, label %bb.agl, label %bb.agm

bb.agl:                                           ; preds = %bb.agk
  store i32 0, ptr %i.dzj, align 8, !tbaa !136, !noalias !1694
  %i.dzn = getelementptr inbounds nuw i8, ptr %i.dzi, i64 12
  store i32 0, ptr %i.dzn, align 4, !tbaa !137, !noalias !1694
  %i.dzo = load ptr, ptr %i.dzi, align 8, !tbaa !69, !noalias !1694
  %i.dzp = getelementptr inbounds nuw i8, ptr %i.dzo, i64 16
  %i.dzq = load ptr, ptr %i.dzp, align 8, !noalias !1694
  call void %i.dzq(ptr noundef nonnull align 8 dereferenceable(16) %i.dzi) #25, !noalias !1694, !inline_history !1313
  %i.dzr = load ptr, ptr %i.dzi, align 8, !tbaa !69, !noalias !1694
  %i.dzs = getelementptr inbounds nuw i8, ptr %i.dzr, i64 24
  %i.dzt = load ptr, ptr %i.dzs, align 8, !noalias !1694
  call void %i.dzt(ptr noundef nonnull align 8 dereferenceable(16) %i.dzi) #25, !noalias !1694, !inline_history !1313
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1003

bb.agm:                                           ; preds = %bb.agk
  %i.dzu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120, !noalias !1694
  %.not.i.i.i.i.i47.i = icmp eq i8 %i.dzu, 0
  br i1 %.not.i.i.i.i.i47.i, label %bb.ago, label %bb.agn

bb.agn:                                           ; preds = %bb.agm
  %i.dzv = add nsw i32 %i.dzm, -1
  store i32 %i.dzv, ptr %i.dzj, align 8, !tbaa !129, !noalias !1694
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48.i

bb.ago:                                           ; preds = %bb.agm
  %i.dzw = atomicrmw volatile add ptr %i.dzj, i32 -1 acq_rel, align 4, !noalias !1694
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48.i: ; preds = %bb.ago, %bb.agn
  %.0.i.i.i.i.i.i49.i = phi i32 [ %i.dzm, %bb.agn ], [ %i.dzw, %bb.ago ]
  %i.dzx = icmp eq i32 %.0.i.i.i.i.i.i49.i, 1
  br i1 %i.dzx, label %bb.agp, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1003, !prof !138

bb.agp:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dzi) #25, !noalias !1694
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1003

bb.agq:                                           ; preds = %bb.agj, %bb.afr
  %i.dzy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1002

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1003: ; preds = %bb.agp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48.i, %bb.agl, %_ZN5arrowL11SliceBufferERKSt10shared_ptrINS_6BufferEEll.exit.i1012, %bb.agi, %bb.agh, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i
  %i.dzz = getelementptr inbounds nuw i8, ptr %77, i64 8
  %i.eaa = load <2 x ptr>, ptr %20, align 16, !tbaa !128, !noalias !1694
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %20, i8 0, i64 16, i1 false), !noalias !1694
  %i.eab = load ptr, ptr %i.dzz, align 8, !tbaa !127, !noalias !1694 ; 8 uses
  store <2 x ptr> %i.eaa, ptr %77, align 16, !tbaa !128, !noalias !1694
  %.not.i.i.i.i51.i = icmp eq ptr %i.eab, null
  br i1 %.not.i.i.i.i51.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit55.i, label %bb.agr

bb.agr:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1003
  %i.eac = getelementptr inbounds nuw i8, ptr %i.eab, i64 8 ; 4 uses
  %i.ead = load atomic i64, ptr %i.eac acquire, align 8, !noalias !1692 ; 2 uses
  %i.eae = icmp eq i64 %i.ead, 4294967297
  %i.eaf = trunc i64 %i.ead to i32                ; 2 uses
  br i1 %i.eae, label %bb.ags, label %bb.agt

bb.ags:                                           ; preds = %bb.agr
  store i32 0, ptr %i.eac, align 8, !tbaa !136, !noalias !1692
  %i.eag = getelementptr inbounds nuw i8, ptr %i.eab, i64 12
  store i32 0, ptr %i.eag, align 4, !tbaa !137, !noalias !1692
  %i.eah = load ptr, ptr %i.eab, align 8, !tbaa !69, !noalias !1692
  %i.eai = getelementptr inbounds nuw i8, ptr %i.eah, i64 16
  %i.eaj = load ptr, ptr %i.eai, align 8, !noalias !1692
  call void %i.eaj(ptr noundef nonnull align 8 dereferenceable(16) %i.eab) #25, !noalias !1692, !inline_history !1313
  %i.eak = load ptr, ptr %i.eab, align 8, !tbaa !69, !noalias !1692
  %i.eal = getelementptr inbounds nuw i8, ptr %i.eak, i64 24
  %i.eam = load ptr, ptr %i.eal, align 8, !noalias !1692
  call void %i.eam(ptr noundef nonnull align 8 dereferenceable(16) %i.eab) #25, !noalias !1692, !inline_history !1313
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit55.i

bb.agt:                                           ; preds = %bb.agr
  %i.ean = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120, !noalias !1694
  %.not.i.i.i.i.i52.i = icmp eq i8 %i.ean, 0
  br i1 %.not.i.i.i.i.i52.i, label %bb.agv, label %bb.agu

bb.agu:                                           ; preds = %bb.agt
  %i.eao = add nsw i32 %i.eaf, -1
  store i32 %i.eao, ptr %i.eac, align 8, !tbaa !129, !noalias !1692
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53.i

bb.agv:                                           ; preds = %bb.agt
  %i.eap = atomicrmw volatile add ptr %i.eac, i32 -1 acq_rel, align 4, !noalias !1692
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53.i: ; preds = %bb.agv, %bb.agu
  %.0.i.i.i.i.i.i54.i = phi i32 [ %i.eaf, %bb.agu ], [ %i.eap, %bb.agv ]
  %i.eaq = icmp eq i32 %.0.i.i.i.i.i.i54.i, 1
  br i1 %i.eaq, label %bb.agw, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit55.i, !prof !138

bb.agw:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eab) #25, !noalias !1692
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit55.i

_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit55.i: ; preds = %bb.agw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53.i, %bb.ags, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1003
  store ptr null, ptr %78, align 8, !tbaa !53, !alias.scope !1703, !noalias !1692
  br label %bb.agx

bb.agx:                                           ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit55.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i
  %i.ear = load ptr, ptr %i.duy, align 8, !tbaa !127, !noalias !1694 ; 8 uses
  %.not.i.i56.i = icmp eq ptr %i.ear, null
  br i1 %.not.i.i56.i, label %_ZN5arrow6StatusD2Ev.exit997, label %bb.agy

bb.agy:                                           ; preds = %bb.agx
  %i.eas = getelementptr inbounds nuw i8, ptr %i.ear, i64 8 ; 4 uses
  %i.eat = load atomic i64, ptr %i.eas acquire, align 8, !noalias !1692 ; 2 uses
  %i.eau = icmp eq i64 %i.eat, 4294967297
  %i.eav = trunc i64 %i.eat to i32                ; 2 uses
  br i1 %i.eau, label %bb.agz, label %bb.aha

bb.agz:                                           ; preds = %bb.agy
  store i32 0, ptr %i.eas, align 8, !tbaa !136, !noalias !1692
  %i.eaw = getelementptr inbounds nuw i8, ptr %i.ear, i64 12
  store i32 0, ptr %i.eaw, align 4, !tbaa !137, !noalias !1692
  %i.eax = load ptr, ptr %i.ear, align 8, !tbaa !69, !noalias !1692
  %i.eay = getelementptr inbounds nuw i8, ptr %i.eax, i64 16
  %i.eaz = load ptr, ptr %i.eay, align 8, !noalias !1692
  call void %i.eaz(ptr noundef nonnull align 8 dereferenceable(16) %i.ear) #25, !noalias !1692, !inline_history !1316
  %i.eba = load ptr, ptr %i.ear, align 8, !tbaa !69, !noalias !1692
  %i.ebb = getelementptr inbounds nuw i8, ptr %i.eba, i64 24
  %i.ebc = load ptr, ptr %i.ebb, align 8, !noalias !1692
  call void %i.ebc(ptr noundef nonnull align 8 dereferenceable(16) %i.ear) #25, !noalias !1692, !inline_history !1316
  br label %_ZN5arrow6StatusD2Ev.exit997

bb.aha:                                           ; preds = %bb.agy
  %i.ebd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120, !noalias !1694
  %.not.i.i.i57.i = icmp eq i8 %i.ebd, 0
  br i1 %.not.i.i.i57.i, label %bb.ahc, label %bb.ahb

bb.ahb:                                           ; preds = %bb.aha
  %i.ebe = add nsw i32 %i.eav, -1
  store i32 %i.ebe, ptr %i.eas, align 8, !tbaa !129, !noalias !1692
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i

bb.ahc:                                           ; preds = %bb.aha
  %i.ebf = atomicrmw volatile add ptr %i.eas, i32 -1 acq_rel, align 4, !noalias !1692
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i: ; preds = %bb.ahc, %bb.ahb
  %.0.i.i.i.i59.i = phi i32 [ %i.eav, %bb.ahb ], [ %i.ebf, %bb.ahc ]
  %i.ebg = icmp eq i32 %.0.i.i.i.i59.i, 1
  br i1 %i.ebg, label %bb.ahd, label %_ZN5arrow6StatusD2Ev.exit997, !prof !138

bb.ahd:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ear) #25, !noalias !1692
  br label %_ZN5arrow6StatusD2Ev.exit997

.body.i1002:                                      ; preds = %bb.agq, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i1011, %bb.agg
  %.pn36.pn.pn.i = phi { ptr, i32 } [ %i.dzh, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i1011 ], [ %.pn36.i, %bb.agg ], [ %i.dzy, %bb.agq ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #25, !noalias !1692
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25, !noalias !1694
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #25, !noalias !1692
  br label %bb.ahu

_ZN5arrow6StatusD2Ev.exit997:                     ; preds = %bb.agx, %bb.agz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i, %bb.ahd
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25, !noalias !1694
  call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  %i.ebh = load ptr, ptr %78, align 8, !tbaa !53, !noalias !1704 ; 2 uses
  store ptr %i.ebh, ptr %0, align 8, !tbaa !53, !alias.scope !1704
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #25, !noalias !1692
  %i.ebi = icmp eq ptr %i.ebh, null
  br i1 %i.ebi, label %_ZN5arrow6StatusD2Ev.exit995, label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_9ListArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

_ZN5arrow6StatusD2Ev.exit995:                     ; preds = %_ZN5arrow6StatusD2Ev.exit997
  %i.ebj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ebk = load ptr, ptr %i.ebj, align 8, !tbaa !98, !noalias !1692
  %i.ebl = getelementptr inbounds nuw i8, ptr %i.ebk, i64 24
  %i.ebm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ebl, ptr noundef nonnull align 8 dereferenceable(16) %77)
          to label %bb.ahe unwind label %bb.ahj, !inline_history !1319 ; 0 uses

bb.ahe:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit995
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #25, !noalias !1692
  %i.ebn = getelementptr inbounds nuw i8, ptr %.tr1394, i64 40
  %i.ebo = getelementptr inbounds nuw i8, ptr %.tr1394, i64 48
  %i.ebp = load ptr, ptr %i.ebo, align 8, !tbaa !127 ; 2 uses
  %i.ebq = load <2 x ptr>, ptr %i.ebn, align 8, !tbaa !128
  store <2 x ptr> %i.ebq, ptr %79, align 16, !tbaa !128
  %.not.i.i.i992 = icmp eq ptr %i.ebp, null
  br i1 %.not.i.i.i992, label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit, label %bb.ahf

bb.ahf:                                           ; preds = %bb.ahe
  %i.ebr = getelementptr inbounds nuw i8, ptr %i.ebp, i64 8 ; 3 uses
  %i.ebs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i993 = icmp eq i8 %i.ebs, 0
  br i1 %.not.i.i.i.i993, label %bb.ahh, label %bb.ahg

bb.ahg:                                           ; preds = %bb.ahf
  %i.ebt = load i32, ptr %i.ebr, align 4, !tbaa !129
  %i.ebu = add nsw i32 %i.ebt, 1
  store i32 %i.ebu, ptr %i.ebr, align 4, !tbaa !129
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit

bb.ahh:                                           ; preds = %bb.ahf
  %i.ebv = atomicrmw volatile add ptr %i.ebr, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit:   ; preds = %bb.ahe, %bb.ahg, %bb.ahh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25, !noalias !1692
  store i32 0, ptr %i.g, align 4, !tbaa !129, !noalias !1692
  %i.ebw = load ptr, ptr %77, align 16, !tbaa !50
  %.not1393 = icmp eq ptr %i.ebw, null
  br i1 %.not1393, label %bb.ahm, label %bb.ahi

bb.ahi:                                           ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #25, !noalias !1692
  %i.ebx = load ptr, ptr %i.duu, align 8, !tbaa !126 ; 2 uses
  %i.eby = getelementptr inbounds nuw i8, ptr %i.ebx, i64 40
  %i.ebz = load ptr, ptr %i.eby, align 8, !tbaa !57
  %i.eca = getelementptr inbounds nuw i8, ptr %i.ebz, i64 16
  %i.ecb = getelementptr inbounds nuw i8, ptr %i.ebx, i64 32
  %i.ecc = load i64, ptr %i.ecb, align 8, !tbaa !304
  %i.ecd = shl i64 %i.ecc, 2
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %80, ptr noundef nonnull align 8 dereferenceable(16) %i.eca, i64 noundef %i.ecd, i64 noundef 4, ptr noundef nonnull %i.g)
          to label %_ZN5arrow6StatusD2Ev.exit991 unwind label %bb.ahk, !inline_history !1319

_ZN5arrow6StatusD2Ev.exit991:                     ; preds = %bb.ahi
  call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  %i.ece = load ptr, ptr %80, align 8, !tbaa !53, !noalias !1705 ; 2 uses
  store ptr %i.ece, ptr %0, align 8, !tbaa !53, !alias.scope !1705
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #25, !noalias !1692
  %i.ecf = icmp eq ptr %i.ece, null
  br i1 %i.ecf, label %_ZN5arrow6StatusD2Ev.exit989, label %.critedge38.i

bb.ahj:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit995
  %i.ecg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ahu

bb.ahk:                                           ; preds = %bb.ahi
  %i.ech = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #25, !noalias !1692
  br label %bb.aht

_ZN5arrow6StatusD2Ev.exit989:                     ; preds = %_ZN5arrow6StatusD2Ev.exit991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25, !noalias !1692
  store i32 0, ptr %i.h, align 4, !tbaa !129, !noalias !1692
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #25, !noalias !1692
  %i.eci = load ptr, ptr %i.duu, align 8, !tbaa !126 ; 3 uses
  %i.ecj = getelementptr inbounds nuw i8, ptr %i.eci, i64 40
  %i.eck = load ptr, ptr %i.ecj, align 8, !tbaa !57
  %i.ecl = getelementptr inbounds nuw i8, ptr %i.eck, i64 16
  %i.ecm = getelementptr inbounds nuw i8, ptr %i.eci, i64 32
  %i.ecn = load i64, ptr %i.ecm, align 8, !tbaa !304
  %i.eco = getelementptr inbounds nuw i8, ptr %i.eci, i64 16
  %i.ecp = load i64, ptr %i.eco, align 8, !tbaa !158
  %i.ecq = add nsw i64 %i.ecp, %i.ecn
  %i.ecr = shl i64 %i.ecq, 2
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %81, ptr noundef nonnull align 8 dereferenceable(16) %i.ecl, i64 noundef %i.ecr, i64 noundef 4, ptr noundef nonnull %i.h)
          to label %_ZN5arrow6StatusD2Ev.exit987 unwind label %bb.ahl, !inline_history !1319

_ZN5arrow6StatusD2Ev.exit987:                     ; preds = %_ZN5arrow6StatusD2Ev.exit989
  call void @llvm.experimental.noalias.scope.decl(metadata !1706)
  %i.ecs = load ptr, ptr %81, align 8, !tbaa !53, !noalias !1706 ; 2 uses
  store ptr %i.ecs, ptr %0, align 8, !tbaa !53, !alias.scope !1706
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #25, !noalias !1692
  %i.ect = icmp eq ptr %i.ecs, null
  br i1 %i.ect, label %_ZN5arrow6StatusD2Ev.exit985, label %.critedge41.i

bb.ahl:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit989
  %i.ecu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #25, !noalias !1692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25, !noalias !1692
  br label %bb.aht

_ZN5arrow6StatusD2Ev.exit985:                     ; preds = %_ZN5arrow6StatusD2Ev.exit987
  %i.ecv = load i32, ptr %i.h, align 4, !tbaa !129, !noalias !1692
  %i.ecw = load i32, ptr %i.g, align 4, !tbaa !129, !noalias !1692 ; 2 uses
  %i.ecx = sub nsw i32 %i.ecv, %i.ecw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25, !noalias !1692
  %i.ecy = sext i32 %i.ecx to i64
  %i.ecz = sext i32 %i.ecw to i64
  br label %bb.ahm

bb.ahm:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit985, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit
  %i.eda = phi i64 [ %i.ecz, %_ZN5arrow6StatusD2Ev.exit985 ], [ 0, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit ]
  %.1.i934 = phi i64 [ %i.ecy, %_ZN5arrow6StatusD2Ev.exit985 ], [ 0, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit ] ; 2 uses
  %i.edb = load ptr, ptr %i.duu, align 8, !tbaa !126
  %i.edc = getelementptr inbounds nuw i8, ptr %i.edb, i64 32
  %i.edd = load i64, ptr %i.edc, align 8, !tbaa !304
  %.not.i935 = icmp eq i64 %i.edd, 0
  %.pre1689 = load ptr, ptr %79, align 16, !tbaa !123 ; 3 uses
  br i1 %.not.i935, label %bb.ahn, label %bb.aho

bb.ahn:                                           ; preds = %bb.ahm
  %i.ede = getelementptr inbounds nuw i8, ptr %.pre1689, i64 8
  %i.edf = load ptr, ptr %i.ede, align 8, !tbaa !126
  %i.edg = getelementptr inbounds nuw i8, ptr %i.edf, i64 16
  %i.edh = load i64, ptr %i.edg, align 8, !tbaa !158
  %i.edi = icmp sgt i64 %i.edh, %.1.i934
  br i1 %i.edi, label %bb.aho, label %bb.ahr

bb.aho:                                           ; preds = %bb.ahn, %bb.ahm
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #25, !noalias !1692
  invoke void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.25") align 8 %82, ptr noundef nonnull align 8 dereferenceable(32) %.pre1689, i64 noundef %i.eda, i64 noundef %.1.i934)
          to label %bb.ahp unwind label %bb.ahq, !inline_history !1319

bb.ahp:                                           ; preds = %bb.aho
  %i.edj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %79, ptr noundef nonnull align 8 dereferenceable(16) %82) #25, !inline_history !1319 ; 0 uses
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %82) #25, !inline_history !1319
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #25, !noalias !1692
  %.pre1690 = load ptr, ptr %79, align 16, !tbaa !123
  br label %bb.ahr

bb.ahq:                                           ; preds = %bb.aho
  %i.edk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #25, !noalias !1692
  br label %bb.aht

bb.ahr:                                           ; preds = %bb.ahp, %bb.ahn
  %i.edl = phi ptr [ %.pre1690, %bb.ahp ], [ %.pre1689, %bb.ahn ]
  %i.edm = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.edn = load i64, ptr %i.edm, align 8, !tbaa !111, !noalias !1692
  %i.edo = add nsw i64 %i.edn, -1
  store i64 %i.edo, ptr %i.edm, align 8, !tbaa !111, !noalias !1692
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #25, !noalias !1692
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer10VisitArrayERKNS_5ArrayE(ptr dead_on_unwind noalias writable align 8 %83, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.edl)
          to label %_ZN5arrow6StatusD2Ev.exit983 unwind label %bb.ahs, !inline_history !1319

_ZN5arrow6StatusD2Ev.exit983:                     ; preds = %bb.ahr
  call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  %i.edp = load ptr, ptr %83, align 8, !tbaa !53, !noalias !1707 ; 2 uses
  store ptr %i.edp, ptr %0, align 8, !tbaa !53, !alias.scope !1707
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #25, !noalias !1692
  %i.edq = icmp eq ptr %i.edp, null
  br i1 %i.edq, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge38.i

bb.ahs:                                           ; preds = %bb.ahr
  %i.edr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #25, !noalias !1692
  br label %bb.aht

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6StatusD2Ev.exit983
  %i.eds = load i64, ptr %i.edm, align 8, !tbaa !111, !noalias !1692
  %i.edt = add nsw i64 %i.eds, 1
  store i64 %i.edt, ptr %i.edm, align 8, !tbaa !111, !noalias !1692
  store ptr null, ptr %0, align 8, !tbaa !53, !alias.scope !1708
  br label %.critedge38.i

.critedge41.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25, !noalias !1692
  br label %.critedge38.i

.critedge38.i:                                    ; preds = %.critedge41.i, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit983, %_ZN5arrow6StatusD2Ev.exit991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25, !noalias !1692
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %79) #25, !inline_history !1319
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #25, !noalias !1692
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_9ListArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.aht:                                           ; preds = %bb.ahs, %bb.ahq, %bb.ahl, %bb.ahk
  %.pn.i936 = phi { ptr, i32 } [ %i.edr, %bb.ahs ], [ %i.edk, %bb.ahq ], [ %i.ecu, %bb.ahl ], [ %i.ech, %bb.ahk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25, !noalias !1692
end_hunk_2
begin_hunk_3_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
bb.aiv:                                           ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i1040
  %i.ehq = load ptr, ptr %16, align 16, !tbaa !50, !noalias !1711 ; 2 uses
  %.not64.i1076 = icmp eq ptr %i.ehq, null
  br i1 %.not64.i1076, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1051, label %bb.aiw

bb.aiw:                                           ; preds = %bb.aiv
  %i.ehr = getelementptr inbounds nuw i8, ptr %i.ehq, i64 24
  %i.ehs = load i64, ptr %i.ehr, align 8, !tbaa !67, !noalias !1711
  %i.eht = icmp sgt i64 %i.ehs, %i.efc
  br i1 %i.eht, label %bb.aix, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1051

bb.aix:                                           ; preds = %bb.aiw
  %i.ehu = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #26
          to label %.noexc45.i1077 unwind label %bb.aje, !noalias !1711 ; 6 uses

.noexc45.i1077:                                   ; preds = %bb.aix
  %i.ehv = getelementptr inbounds nuw i8, ptr %i.ehu, i64 8
  store i32 1, ptr %i.ehv, align 8, !tbaa !136, !noalias !1719
  %i.ehw = getelementptr inbounds nuw i8, ptr %i.ehu, i64 12
  store i32 1, ptr %i.ehw, align 4, !tbaa !137, !noalias !1719
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ehu, align 8, !tbaa !69, !noalias !1719
  %i.ehx = getelementptr inbounds nuw i8, ptr %i.ehu, i64 16 ; 2 uses
  invoke void @_ZN5arrow6BufferC2ERKSt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %i.ehx, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef 0, i64 noundef %i.efc)
          to label %_ZN5arrowL11SliceBufferERKSt10shared_ptrINS_6BufferEEll.exit.i1079 unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i1078, !noalias !1719

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i1078: ; preds = %.noexc45.i1077
  %i.ehy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ehu, i64 noundef 96) #27, !noalias !1719
  br label %.body.i1042

_ZN5arrowL11SliceBufferERKSt10shared_ptrINS_6BufferEEll.exit.i1079: ; preds = %.noexc45.i1077
  store ptr %i.ehx, ptr %16, align 16, !tbaa !228, !noalias !1711
  %i.ehz = load ptr, ptr %i.eep, align 8, !tbaa !127, !noalias !1711 ; 8 uses
  store ptr %i.ehu, ptr %i.eep, align 8, !tbaa !127, !noalias !1711
  %.not.i.i.i.i46.i1080 = icmp eq ptr %i.ehz, null
  br i1 %.not.i.i.i.i46.i1080, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1051, label %bb.aiy

bb.aiy:                                           ; preds = %_ZN5arrowL11SliceBufferERKSt10shared_ptrINS_6BufferEEll.exit.i1079
  %i.eia = getelementptr inbounds nuw i8, ptr %i.ehz, i64 8 ; 4 uses
  %i.eib = load atomic i64, ptr %i.eia acquire, align 8, !noalias !1711 ; 2 uses
  %i.eic = icmp eq i64 %i.eib, 4294967297
  %i.eid = trunc i64 %i.eib to i32                ; 2 uses
  br i1 %i.eic, label %bb.aiz, label %bb.aja

bb.aiz:                                           ; preds = %bb.aiy
  store i32 0, ptr %i.eia, align 8, !tbaa !136, !noalias !1711
  %i.eie = getelementptr inbounds nuw i8, ptr %i.ehz, i64 12
  store i32 0, ptr %i.eie, align 4, !tbaa !137, !noalias !1711
  %i.eif = load ptr, ptr %i.ehz, align 8, !tbaa !69, !noalias !1711
  %i.eig = getelementptr inbounds nuw i8, ptr %i.eif, i64 16
  %i.eih = load ptr, ptr %i.eig, align 8, !noalias !1711
  call void %i.eih(ptr noundef nonnull align 8 dereferenceable(16) %i.ehz) #25, !noalias !1711, !inline_history !1345
  %i.eii = load ptr, ptr %i.ehz, align 8, !tbaa !69, !noalias !1711
  %i.eij = getelementptr inbounds nuw i8, ptr %i.eii, i64 24
  %i.eik = load ptr, ptr %i.eij, align 8, !noalias !1711
  call void %i.eik(ptr noundef nonnull align 8 dereferenceable(16) %i.ehz) #25, !noalias !1711, !inline_history !1345
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1051

bb.aja:                                           ; preds = %bb.aiy
  %i.eil = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120, !noalias !1711
  %.not.i.i.i.i.i47.i1081 = icmp eq i8 %i.eil, 0
  br i1 %.not.i.i.i.i.i47.i1081, label %bb.ajc, label %bb.ajb

bb.ajb:                                           ; preds = %bb.aja
  %i.eim = add nsw i32 %i.eid, -1
  store i32 %i.eim, ptr %i.eia, align 8, !tbaa !129, !noalias !1711
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48.i1082

bb.ajc:                                           ; preds = %bb.aja
  %i.ein = atomicrmw volatile add ptr %i.eia, i32 -1 acq_rel, align 4, !noalias !1711
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48.i1082

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48.i1082: ; preds = %bb.ajc, %bb.ajb
  %.0.i.i.i.i.i.i49.i1083 = phi i32 [ %i.eid, %bb.ajb ], [ %i.ein, %bb.ajc ]
  %i.eio = icmp eq i32 %.0.i.i.i.i.i.i49.i1083, 1
  br i1 %i.eio, label %bb.ajd, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1051, !prof !138

bb.ajd:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48.i1082
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ehz) #25, !noalias !1711
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1051

bb.aje:                                           ; preds = %bb.aix, %bb.aif
  %i.eip = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1042

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1051: ; preds = %bb.ajd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48.i1082, %bb.aiz, %_ZN5arrowL11SliceBufferERKSt10shared_ptrINS_6BufferEEll.exit.i1079, %bb.aiw, %bb.aiv, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1046
  %i.eiq = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.eir = load <2 x ptr>, ptr %16, align 16, !tbaa !128, !noalias !1711
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %16, i8 0, i64 16, i1 false), !noalias !1711
  %i.eis = load ptr, ptr %i.eiq, align 8, !tbaa !127, !noalias !1711 ; 8 uses
  store <2 x ptr> %i.eir, ptr %70, align 16, !tbaa !128, !noalias !1711
  %.not.i.i.i.i51.i1052 = icmp eq ptr %i.eis, null
  br i1 %.not.i.i.i.i51.i1052, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit55.i1056, label %bb.ajf

bb.ajf:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1051
  %i.eit = getelementptr inbounds nuw i8, ptr %i.eis, i64 8 ; 4 uses
  %i.eiu = load atomic i64, ptr %i.eit acquire, align 8, !noalias !1709 ; 2 uses
  %i.eiv = icmp eq i64 %i.eiu, 4294967297
  %i.eiw = trunc i64 %i.eiu to i32                ; 2 uses
  br i1 %i.eiv, label %bb.ajg, label %bb.ajh

bb.ajg:                                           ; preds = %bb.ajf
  store i32 0, ptr %i.eit, align 8, !tbaa !136, !noalias !1709
  %i.eix = getelementptr inbounds nuw i8, ptr %i.eis, i64 12
  store i32 0, ptr %i.eix, align 4, !tbaa !137, !noalias !1709
  %i.eiy = load ptr, ptr %i.eis, align 8, !tbaa !69, !noalias !1709
  %i.eiz = getelementptr inbounds nuw i8, ptr %i.eiy, i64 16
  %i.eja = load ptr, ptr %i.eiz, align 8, !noalias !1709
  call void %i.eja(ptr noundef nonnull align 8 dereferenceable(16) %i.eis) #25, !noalias !1709, !inline_history !1345
  %i.ejb = load ptr, ptr %i.eis, align 8, !tbaa !69, !noalias !1709
  %i.ejc = getelementptr inbounds nuw i8, ptr %i.ejb, i64 24
  %i.ejd = load ptr, ptr %i.ejc, align 8, !noalias !1709
  call void %i.ejd(ptr noundef nonnull align 8 dereferenceable(16) %i.eis) #25, !noalias !1709, !inline_history !1345
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit55.i1056

bb.ajh:                                           ; preds = %bb.ajf
  %i.eje = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120, !noalias !1711
  %.not.i.i.i.i.i52.i1053 = icmp eq i8 %i.eje, 0
  br i1 %.not.i.i.i.i.i52.i1053, label %bb.ajj, label %bb.aji

bb.aji:                                           ; preds = %bb.ajh
  %i.ejf = add nsw i32 %i.eiw, -1
  store i32 %i.ejf, ptr %i.eit, align 8, !tbaa !129, !noalias !1709
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53.i1054

bb.ajj:                                           ; preds = %bb.ajh
  %i.ejg = atomicrmw volatile add ptr %i.eit, i32 -1 acq_rel, align 4, !noalias !1709
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53.i1054

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53.i1054: ; preds = %bb.ajj, %bb.aji
  %.0.i.i.i.i.i.i54.i1055 = phi i32 [ %i.eiw, %bb.aji ], [ %i.ejg, %bb.ajj ]
  %i.ejh = icmp eq i32 %.0.i.i.i.i.i.i54.i1055, 1
  br i1 %i.ejh, label %bb.ajk, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit55.i1056, !prof !138

bb.ajk:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53.i1054
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eis) #25, !noalias !1709
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit55.i1056

_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit55.i1056: ; preds = %bb.ajk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53.i1054, %bb.ajg, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1051
  store ptr null, ptr %71, align 8, !tbaa !53, !alias.scope !1720, !noalias !1709
  br label %bb.ajl

bb.ajl:                                           ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit55.i1056, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1046
  %i.eji = load ptr, ptr %i.eep, align 8, !tbaa !127, !noalias !1711 ; 8 uses
  %.not.i.i56.i1047 = icmp eq ptr %i.eji, null
  br i1 %.not.i.i56.i1047, label %_ZN5arrow6StatusD2Ev.exit1037, label %bb.ajm

bb.ajm:                                           ; preds = %bb.ajl
  %i.ejj = getelementptr inbounds nuw i8, ptr %i.eji, i64 8 ; 4 uses
  %i.ejk = load atomic i64, ptr %i.ejj acquire, align 8, !noalias !1709 ; 2 uses
  %i.ejl = icmp eq i64 %i.ejk, 4294967297
  %i.ejm = trunc i64 %i.ejk to i32                ; 2 uses
  br i1 %i.ejl, label %bb.ajn, label %bb.ajo

bb.ajn:                                           ; preds = %bb.ajm
  store i32 0, ptr %i.ejj, align 8, !tbaa !136, !noalias !1709
  %i.ejn = getelementptr inbounds nuw i8, ptr %i.eji, i64 12
  store i32 0, ptr %i.ejn, align 4, !tbaa !137, !noalias !1709
  %i.ejo = load ptr, ptr %i.eji, align 8, !tbaa !69, !noalias !1709
  %i.ejp = getelementptr inbounds nuw i8, ptr %i.ejo, i64 16
  %i.ejq = load ptr, ptr %i.ejp, align 8, !noalias !1709
  call void %i.ejq(ptr noundef nonnull align 8 dereferenceable(16) %i.eji) #25, !noalias !1709, !inline_history !1348
  %i.ejr = load ptr, ptr %i.eji, align 8, !tbaa !69, !noalias !1709
  %i.ejs = getelementptr inbounds nuw i8, ptr %i.ejr, i64 24
  %i.ejt = load ptr, ptr %i.ejs, align 8, !noalias !1709
  call void %i.ejt(ptr noundef nonnull align 8 dereferenceable(16) %i.eji) #25, !noalias !1709, !inline_history !1348
  br label %_ZN5arrow6StatusD2Ev.exit1037

bb.ajo:                                           ; preds = %bb.ajm
  %i.eju = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120, !noalias !1711
  %.not.i.i.i57.i1048 = icmp eq i8 %i.eju, 0
  br i1 %.not.i.i.i57.i1048, label %bb.ajq, label %bb.ajp

bb.ajp:                                           ; preds = %bb.ajo
  %i.ejv = add nsw i32 %i.ejm, -1
  store i32 %i.ejv, ptr %i.ejj, align 8, !tbaa !129, !noalias !1709
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i1049

bb.ajq:                                           ; preds = %bb.ajo
  %i.ejw = atomicrmw volatile add ptr %i.ejj, i32 -1 acq_rel, align 4, !noalias !1709
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i1049

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i1049: ; preds = %bb.ajq, %bb.ajp
  %.0.i.i.i.i59.i1050 = phi i32 [ %i.ejm, %bb.ajp ], [ %i.ejw, %bb.ajq ]
  %i.ejx = icmp eq i32 %.0.i.i.i.i59.i1050, 1
  br i1 %i.ejx, label %bb.ajr, label %_ZN5arrow6StatusD2Ev.exit1037, !prof !138

bb.ajr:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i1049
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eji) #25, !noalias !1709
  br label %_ZN5arrow6StatusD2Ev.exit1037

.body.i1042:                                      ; preds = %bb.aje, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i1078, %bb.aiu
  %.pn36.pn.pn.i1043 = phi { ptr, i32 } [ %i.ehy, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i1078 ], [ %.pn36.i1044, %bb.aiu ], [ %i.eip, %bb.aje ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #25, !noalias !1709
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !1711
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #25, !noalias !1709
  br label %bb.aki

_ZN5arrow6StatusD2Ev.exit1037:                    ; preds = %bb.ajl, %bb.ajn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i1049, %bb.ajr
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !1711
  call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  %i.ejy = load ptr, ptr %71, align 8, !tbaa !53, !noalias !1721 ; 2 uses
  store ptr %i.ejy, ptr %0, align 8, !tbaa !53, !alias.scope !1721
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #25, !noalias !1709
  %i.ejz = icmp eq ptr %i.ejy, null
  br i1 %i.ejz, label %_ZN5arrow6StatusD2Ev.exit1035, label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_14LargeListArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

_ZN5arrow6StatusD2Ev.exit1035:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1037
  %i.eka = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ekb = load ptr, ptr %i.eka, align 8, !tbaa !98, !noalias !1709
  %i.ekc = getelementptr inbounds nuw i8, ptr %i.ekb, i64 24
  %i.ekd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ekc, ptr noundef nonnull align 8 dereferenceable(16) %70)
          to label %bb.ajs unwind label %bb.ajx, !inline_history !1351 ; 0 uses

bb.ajs:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1035
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #25, !noalias !1709
  %i.eke = getelementptr inbounds nuw i8, ptr %.tr1394, i64 40
  %i.ekf = getelementptr inbounds nuw i8, ptr %.tr1394, i64 48
  %i.ekg = load ptr, ptr %i.ekf, align 8, !tbaa !127 ; 2 uses
  %i.ekh = load <2 x ptr>, ptr %i.eke, align 8, !tbaa !128
  store <2 x ptr> %i.ekh, ptr %72, align 16, !tbaa !128
  %.not.i.i.i1031 = icmp eq ptr %i.ekg, null
  br i1 %.not.i.i.i1031, label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1033, label %bb.ajt

bb.ajt:                                           ; preds = %bb.ajs
  %i.eki = getelementptr inbounds nuw i8, ptr %i.ekg, i64 8 ; 3 uses
  %i.ekj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i1032 = icmp eq i8 %i.ekj, 0
  br i1 %.not.i.i.i.i1032, label %bb.ajv, label %bb.aju

bb.aju:                                           ; preds = %bb.ajt
  %i.ekk = load i32, ptr %i.eki, align 4, !tbaa !129
  %i.ekl = add nsw i32 %i.ekk, 1
  store i32 %i.ekl, ptr %i.eki, align 4, !tbaa !129
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1033

bb.ajv:                                           ; preds = %bb.ajt
  %i.ekm = atomicrmw volatile add ptr %i.eki, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1033

_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1033: ; preds = %bb.ajs, %bb.aju, %bb.ajv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25, !noalias !1709
  store i64 0, ptr %i.e, align 8, !tbaa !199, !noalias !1709
  %i.ekn = load ptr, ptr %70, align 16, !tbaa !50
  %.not1392 = icmp eq ptr %i.ekn, null
  br i1 %.not1392, label %bb.aka, label %bb.ajw

bb.ajw:                                           ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1033
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #25, !noalias !1709
  %i.eko = load ptr, ptr %i.eel, align 8, !tbaa !126 ; 2 uses
  %i.ekp = getelementptr inbounds nuw i8, ptr %i.eko, i64 40
  %i.ekq = load ptr, ptr %i.ekp, align 8, !tbaa !57
  %i.ekr = getelementptr inbounds nuw i8, ptr %i.ekq, i64 16
  %i.eks = getelementptr inbounds nuw i8, ptr %i.eko, i64 32
  %i.ekt = load i64, ptr %i.eks, align 8, !tbaa !304
  %i.eku = shl i64 %i.ekt, 3
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %73, ptr noundef nonnull align 8 dereferenceable(16) %i.ekr, i64 noundef %i.eku, i64 noundef 8, ptr noundef nonnull %i.e)
          to label %_ZN5arrow6StatusD2Ev.exit1030 unwind label %bb.ajy, !inline_history !1351

_ZN5arrow6StatusD2Ev.exit1030:                    ; preds = %bb.ajw
  call void @llvm.experimental.noalias.scope.decl(metadata !1722)
  %i.ekv = load ptr, ptr %73, align 8, !tbaa !53, !noalias !1722 ; 2 uses
  store ptr %i.ekv, ptr %0, align 8, !tbaa !53, !alias.scope !1722
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #25, !noalias !1709
  %i.ekw = icmp eq ptr %i.ekv, null
  br i1 %i.ekw, label %_ZN5arrow6StatusD2Ev.exit1028, label %.critedge38.i942

bb.ajx:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1035
  %i.ekx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aki

bb.ajy:                                           ; preds = %bb.ajw
  %i.eky = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #25, !noalias !1709
  br label %bb.akh

_ZN5arrow6StatusD2Ev.exit1028:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25, !noalias !1709
  store i64 0, ptr %i.f, align 8, !tbaa !199, !noalias !1709
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #25, !noalias !1709
  %i.ekz = load ptr, ptr %i.eel, align 8, !tbaa !126 ; 3 uses
  %i.ela = getelementptr inbounds nuw i8, ptr %i.ekz, i64 40
  %i.elb = load ptr, ptr %i.ela, align 8, !tbaa !57
  %i.elc = getelementptr inbounds nuw i8, ptr %i.elb, i64 16
  %i.eld = getelementptr inbounds nuw i8, ptr %i.ekz, i64 32
  %i.ele = load i64, ptr %i.eld, align 8, !tbaa !304
  %i.elf = getelementptr inbounds nuw i8, ptr %i.ekz, i64 16
  %i.elg = load i64, ptr %i.elf, align 8, !tbaa !158
  %i.elh = add nsw i64 %i.elg, %i.ele
  %i.eli = shl i64 %i.elh, 3
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %74, ptr noundef nonnull align 8 dereferenceable(16) %i.elc, i64 noundef %i.eli, i64 noundef 8, ptr noundef nonnull %i.f)
          to label %_ZN5arrow6StatusD2Ev.exit1026 unwind label %bb.ajz, !inline_history !1351

_ZN5arrow6StatusD2Ev.exit1026:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1028
  call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  %i.elj = load ptr, ptr %74, align 8, !tbaa !53, !noalias !1723 ; 2 uses
  store ptr %i.elj, ptr %0, align 8, !tbaa !53, !alias.scope !1723
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #25, !noalias !1709
  %i.elk = icmp eq ptr %i.elj, null
  br i1 %i.elk, label %_ZN5arrow6StatusD2Ev.exit1024, label %.critedge41.i943

bb.ajz:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1028
  %i.ell = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #25, !noalias !1709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25, !noalias !1709
  br label %bb.akh

_ZN5arrow6StatusD2Ev.exit1024:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1026
  %i.elm = load i64, ptr %i.f, align 8, !tbaa !199, !noalias !1709
  %i.eln = load i64, ptr %i.e, align 8, !tbaa !199, !noalias !1709 ; 2 uses
  %i.elo = sub nsw i64 %i.elm, %i.eln
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25, !noalias !1709
  br label %bb.aka

bb.aka:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1024, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1033
  %i.elp = phi i64 [ %i.eln, %_ZN5arrow6StatusD2Ev.exit1024 ], [ 0, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1033 ]
  %.1.i939 = phi i64 [ %i.elo, %_ZN5arrow6StatusD2Ev.exit1024 ], [ 0, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1033 ] ; 2 uses
  %i.elq = load ptr, ptr %i.eel, align 8, !tbaa !126
  %i.elr = getelementptr inbounds nuw i8, ptr %i.elq, i64 32
  %i.els = load i64, ptr %i.elr, align 8, !tbaa !304
  %.not.i940 = icmp eq i64 %i.els, 0
  %.pre1687 = load ptr, ptr %72, align 16, !tbaa !123 ; 3 uses
  br i1 %.not.i940, label %bb.akb, label %bb.akc

bb.akb:                                           ; preds = %bb.aka
  %i.elt = getelementptr inbounds nuw i8, ptr %.pre1687, i64 8
  %i.elu = load ptr, ptr %i.elt, align 8, !tbaa !126
  %i.elv = getelementptr inbounds nuw i8, ptr %i.elu, i64 16
  %i.elw = load i64, ptr %i.elv, align 8, !tbaa !158
  %i.elx = icmp slt i64 %.1.i939, %i.elw
  br i1 %i.elx, label %bb.akc, label %bb.akf

bb.akc:                                           ; preds = %bb.akb, %bb.aka
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #25, !noalias !1709
  invoke void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.25") align 8 %75, ptr noundef nonnull align 8 dereferenceable(32) %.pre1687, i64 noundef %i.elp, i64 noundef %.1.i939)
          to label %bb.akd unwind label %bb.ake, !inline_history !1351

bb.akd:                                           ; preds = %bb.akc
  %i.ely = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %72, ptr noundef nonnull align 8 dereferenceable(16) %75) #25, !inline_history !1351 ; 0 uses
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %75) #25, !inline_history !1351
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #25, !noalias !1709
  %.pre1688 = load ptr, ptr %72, align 16, !tbaa !123
  br label %bb.akf

bb.ake:                                           ; preds = %bb.akc
  %i.elz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #25, !noalias !1709
  br label %bb.akh

bb.akf:                                           ; preds = %bb.akd, %bb.akb
  %i.ema = phi ptr [ %.pre1688, %bb.akd ], [ %.pre1687, %bb.akb ]
  %i.emb = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.emc = load i64, ptr %i.emb, align 8, !tbaa !111, !noalias !1709
  %i.emd = add nsw i64 %i.emc, -1
  store i64 %i.emd, ptr %i.emb, align 8, !tbaa !111, !noalias !1709
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #25, !noalias !1709
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer10VisitArrayERKNS_5ArrayE(ptr dead_on_unwind noalias writable align 8 %76, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ema)
          to label %_ZN5arrow6StatusD2Ev.exit1022 unwind label %bb.akg, !inline_history !1351

_ZN5arrow6StatusD2Ev.exit1022:                    ; preds = %bb.akf
  call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  %i.eme = load ptr, ptr %76, align 8, !tbaa !53, !noalias !1724 ; 2 uses
  store ptr %i.eme, ptr %0, align 8, !tbaa !53, !alias.scope !1724
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #25, !noalias !1709
  %i.emf = icmp eq ptr %i.eme, null
  br i1 %i.emf, label %_ZN5arrow6StatusD2Ev.exit1020, label %.critedge38.i942

bb.akg:                                           ; preds = %bb.akf
  %i.emg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #25, !noalias !1709
  br label %bb.akh

_ZN5arrow6StatusD2Ev.exit1020:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1022
  %i.emh = load i64, ptr %i.emb, align 8, !tbaa !111, !noalias !1709
  %i.emi = add nsw i64 %i.emh, 1
  store i64 %i.emi, ptr %i.emb, align 8, !tbaa !111, !noalias !1709
  store ptr null, ptr %0, align 8, !tbaa !53, !alias.scope !1725
  br label %.critedge38.i942

.critedge41.i943:                                 ; preds = %_ZN5arrow6StatusD2Ev.exit1026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25, !noalias !1709
  br label %.critedge38.i942

.critedge38.i942:                                 ; preds = %.critedge41.i943, %_ZN5arrow6StatusD2Ev.exit1020, %_ZN5arrow6StatusD2Ev.exit1022, %_ZN5arrow6StatusD2Ev.exit1030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25, !noalias !1709
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %72) #25, !inline_history !1351
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #25, !noalias !1709
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_14LargeListArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.akh:                                           ; preds = %bb.akg, %bb.ake, %bb.ajz, %bb.ajy
  %.pn.i941 = phi { ptr, i32 } [ %i.emg, %bb.akg ], [ %i.elz, %bb.ake ], [ %i.ell, %bb.ajz ], [ %i.eky, %bb.ajy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25, !noalias !1709
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %72) #25, !inline_history !1351
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #25, !noalias !1709
end_hunk_3
begin_hunk_4_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a

.noexc56.i:                                       ; preds = %bb.all
  %i.erz = getelementptr inbounds nuw i8, ptr %i.ery, i64 8
  store i32 1, ptr %i.erz, align 8, !tbaa !136, !noalias !1738
  %i.esa = getelementptr inbounds nuw i8, ptr %i.ery, i64 12
  store i32 1, ptr %i.esa, align 4, !tbaa !137, !noalias !1738
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ery, align 8, !tbaa !69, !noalias !1738
  %i.esb = getelementptr inbounds nuw i8, ptr %i.ery, i64 16 ; 2 uses
  invoke void @_ZN5arrow6BufferC2ERKSt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %i.esb, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef 0, i64 noundef %i.enq)
          to label %_ZN5arrowL11SliceBufferERKSt10shared_ptrINS_6BufferEEll.exit.i1127 unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i1126, !noalias !1738

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i1126: ; preds = %.noexc56.i
  %i.esc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ery, i64 noundef 96) #27, !noalias !1738
  br label %.body.i1106

_ZN5arrowL11SliceBufferERKSt10shared_ptrINS_6BufferEEll.exit.i1127: ; preds = %.noexc56.i
  store ptr %i.esb, ptr %12, align 16, !tbaa !228, !noalias !1728
  %i.esd = load ptr, ptr %i.ene, align 8, !tbaa !127, !noalias !1728 ; 8 uses
  store ptr %i.ery, ptr %i.ene, align 8, !tbaa !127, !noalias !1728
  %.not.i.i.i.i57.i = icmp eq ptr %i.esd, null
  br i1 %.not.i.i.i.i57.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1125, label %bb.alm

bb.alm:                                           ; preds = %_ZN5arrowL11SliceBufferERKSt10shared_ptrINS_6BufferEEll.exit.i1127
  %i.ese = getelementptr inbounds nuw i8, ptr %i.esd, i64 8 ; 4 uses
  %i.esf = load atomic i64, ptr %i.ese acquire, align 8, !noalias !1728 ; 2 uses
  %i.esg = icmp eq i64 %i.esf, 4294967297
  %i.esh = trunc i64 %i.esf to i32                ; 2 uses
  br i1 %i.esg, label %bb.aln, label %bb.alo

bb.aln:                                           ; preds = %bb.alm
  store i32 0, ptr %i.ese, align 8, !tbaa !136, !noalias !1728
  %i.esi = getelementptr inbounds nuw i8, ptr %i.esd, i64 12
  store i32 0, ptr %i.esi, align 4, !tbaa !137, !noalias !1728
  %i.esj = load ptr, ptr %i.esd, align 8, !tbaa !69, !noalias !1728
  %i.esk = getelementptr inbounds nuw i8, ptr %i.esj, i64 16
  %i.esl = load ptr, ptr %i.esk, align 8, !noalias !1728
  call void %i.esl(ptr noundef nonnull align 8 dereferenceable(16) %i.esd) #25, !noalias !1728, !inline_history !1381
  %i.esm = load ptr, ptr %i.esd, align 8, !tbaa !69, !noalias !1728
  %i.esn = getelementptr inbounds nuw i8, ptr %i.esm, i64 24
  %i.eso = load ptr, ptr %i.esn, align 8, !noalias !1728
  call void %i.eso(ptr noundef nonnull align 8 dereferenceable(16) %i.esd) #25, !noalias !1728, !inline_history !1381
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1125

bb.alo:                                           ; preds = %bb.alm
  %i.esp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120, !noalias !1728
  %.not.i.i.i.i.i58.i = icmp eq i8 %i.esp, 0
  br i1 %.not.i.i.i.i.i58.i, label %bb.alq, label %bb.alp

bb.alp:                                           ; preds = %bb.alo
  %i.esq = add nsw i32 %i.esh, -1
  store i32 %i.esq, ptr %i.ese, align 8, !tbaa !129, !noalias !1728
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i59.i

bb.alq:                                           ; preds = %bb.alo
  %i.esr = atomicrmw volatile add ptr %i.ese, i32 -1 acq_rel, align 4, !noalias !1728
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i59.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i59.i: ; preds = %bb.alq, %bb.alp
  %.0.i.i.i.i.i.i60.i = phi i32 [ %i.esh, %bb.alp ], [ %i.esr, %bb.alq ]
  %i.ess = icmp eq i32 %.0.i.i.i.i.i.i60.i, 1
  br i1 %i.ess, label %bb.alr, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1125, !prof !138

bb.alr:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i59.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.esd) #25, !noalias !1728
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1125

bb.als:                                           ; preds = %bb.all, %bb.akt
  %i.est = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1106

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1125: ; preds = %bb.alr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i59.i, %bb.aln, %_ZN5arrowL11SliceBufferERKSt10shared_ptrINS_6BufferEEll.exit.i1127, %bb.alk, %bb.alj
  %i.esu = getelementptr inbounds nuw i8, ptr %.tr1394, i64 40
  %i.esv = load ptr, ptr %i.esu, align 8, !tbaa !123, !noalias !1728
  %i.esw = getelementptr inbounds nuw i8, ptr %i.esv, i64 8
  %i.esx = load ptr, ptr %i.esw, align 8, !tbaa !126, !noalias !1728
  %i.esy = getelementptr inbounds nuw i8, ptr %i.esx, i64 16
  %i.esz = load i64, ptr %i.esy, align 8, !tbaa !158, !noalias !1728
  %i.eta = trunc i64 %i.esz to i32
  br label %bb.alt

bb.alt:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1125, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1108
  %.21383 = phi i32 [ 0, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1125 ], [ %.01381, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1108 ]
  %.2 = phi i32 [ %i.eta, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1125 ], [ %.0, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1108 ]
  %i.etb = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.etc = load <2 x ptr>, ptr %12, align 16, !tbaa !128, !noalias !1728
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, i8 0, i64 16, i1 false), !noalias !1728
  %i.etd = load ptr, ptr %i.etb, align 8, !tbaa !127, !noalias !1728 ; 8 uses
  store <2 x ptr> %i.etc, ptr %63, align 16, !tbaa !128, !noalias !1728
  %.not.i.i.i.i62.i = icmp eq ptr %i.etd, null
  br i1 %.not.i.i.i.i62.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit66.i, label %bb.alu

bb.alu:                                           ; preds = %bb.alt
  %i.ete = getelementptr inbounds nuw i8, ptr %i.etd, i64 8 ; 4 uses
  %i.etf = load atomic i64, ptr %i.ete acquire, align 8, !noalias !1726 ; 2 uses
  %i.etg = icmp eq i64 %i.etf, 4294967297
  %i.eth = trunc i64 %i.etf to i32                ; 2 uses
  br i1 %i.etg, label %bb.alv, label %bb.alw

bb.alv:                                           ; preds = %bb.alu
  store i32 0, ptr %i.ete, align 8, !tbaa !136, !noalias !1726
  %i.eti = getelementptr inbounds nuw i8, ptr %i.etd, i64 12
  store i32 0, ptr %i.eti, align 4, !tbaa !137, !noalias !1726
  %i.etj = load ptr, ptr %i.etd, align 8, !tbaa !69, !noalias !1726
  %i.etk = getelementptr inbounds nuw i8, ptr %i.etj, i64 16
  %i.etl = load ptr, ptr %i.etk, align 8, !noalias !1726
  call void %i.etl(ptr noundef nonnull align 8 dereferenceable(16) %i.etd) #25, !noalias !1726, !inline_history !1381
  %i.etm = load ptr, ptr %i.etd, align 8, !tbaa !69, !noalias !1726
  %i.etn = getelementptr inbounds nuw i8, ptr %i.etm, i64 24
  %i.eto = load ptr, ptr %i.etn, align 8, !noalias !1726
  call void %i.eto(ptr noundef nonnull align 8 dereferenceable(16) %i.etd) #25, !noalias !1726, !inline_history !1381
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit66.i

bb.alw:                                           ; preds = %bb.alu
  %i.etp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120, !noalias !1728
  %.not.i.i.i.i.i63.i = icmp eq i8 %i.etp, 0
  br i1 %.not.i.i.i.i.i63.i, label %bb.aly, label %bb.alx

bb.alx:                                           ; preds = %bb.alw
  %i.etq = add nsw i32 %i.eth, -1
  store i32 %i.etq, ptr %i.ete, align 8, !tbaa !129, !noalias !1726
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i

bb.aly:                                           ; preds = %bb.alw
  %i.etr = atomicrmw volatile add ptr %i.ete, i32 -1 acq_rel, align 4, !noalias !1726
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i: ; preds = %bb.aly, %bb.alx
  %.0.i.i.i.i.i.i65.i = phi i32 [ %i.eth, %bb.alx ], [ %i.etr, %bb.aly ]
  %i.ets = icmp eq i32 %.0.i.i.i.i.i.i65.i, 1
  br i1 %i.ets, label %bb.alz, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit66.i, !prof !138

bb.alz:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.etd) #25, !noalias !1726
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit66.i

_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit66.i: ; preds = %bb.alz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i, %bb.alv, %bb.alt
  store ptr null, ptr %64, align 8, !tbaa !53, !alias.scope !1739, !noalias !1726
  br label %bb.ama

bb.ama:                                           ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit66.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1108
  %.11382 = phi i32 [ %.21383, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit66.i ], [ %.01381, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1108 ] ; 2 uses
  %.1 = phi i32 [ %.2, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit66.i ], [ %.0, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1108 ]
  %i.ett = load ptr, ptr %i.ene, align 8, !tbaa !127, !noalias !1728 ; 8 uses
  %.not.i.i67.i = icmp eq ptr %i.ett, null
  br i1 %.not.i.i67.i, label %_ZN5arrow6StatusD2Ev.exit1101, label %bb.amb

bb.amb:                                           ; preds = %bb.ama
  %i.etu = getelementptr inbounds nuw i8, ptr %i.ett, i64 8 ; 4 uses
  %i.etv = load atomic i64, ptr %i.etu acquire, align 8, !noalias !1726 ; 2 uses
  %i.etw = icmp eq i64 %i.etv, 4294967297
  %i.etx = trunc i64 %i.etv to i32                ; 2 uses
  br i1 %i.etw, label %bb.amc, label %bb.amd

bb.amc:                                           ; preds = %bb.amb
  store i32 0, ptr %i.etu, align 8, !tbaa !136, !noalias !1726
  %i.ety = getelementptr inbounds nuw i8, ptr %i.ett, i64 12
  store i32 0, ptr %i.ety, align 4, !tbaa !137, !noalias !1726
  %i.etz = load ptr, ptr %i.ett, align 8, !tbaa !69, !noalias !1726
  %i.eua = getelementptr inbounds nuw i8, ptr %i.etz, i64 16
  %i.eub = load ptr, ptr %i.eua, align 8, !noalias !1726
  call void %i.eub(ptr noundef nonnull align 8 dereferenceable(16) %i.ett) #25, !noalias !1726, !inline_history !1384
  %i.euc = load ptr, ptr %i.ett, align 8, !tbaa !69, !noalias !1726
  %i.eud = getelementptr inbounds nuw i8, ptr %i.euc, i64 24
  %i.eue = load ptr, ptr %i.eud, align 8, !noalias !1726
  call void %i.eue(ptr noundef nonnull align 8 dereferenceable(16) %i.ett) #25, !noalias !1726, !inline_history !1384
  br label %_ZN5arrow6StatusD2Ev.exit1101

bb.amd:                                           ; preds = %bb.amb
  %i.euf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120, !noalias !1728
  %.not.i.i.i68.i = icmp eq i8 %i.euf, 0
  br i1 %.not.i.i.i68.i, label %bb.amf, label %bb.ame

bb.ame:                                           ; preds = %bb.amd
  %i.eug = add nsw i32 %i.etx, -1
  store i32 %i.eug, ptr %i.etu, align 8, !tbaa !129, !noalias !1726
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i

bb.amf:                                           ; preds = %bb.amd
  %i.euh = atomicrmw volatile add ptr %i.etu, i32 -1 acq_rel, align 4, !noalias !1726
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i: ; preds = %bb.amf, %bb.ame
  %.0.i.i.i.i70.i = phi i32 [ %i.etx, %bb.ame ], [ %i.euh, %bb.amf ]
  %i.eui = icmp eq i32 %.0.i.i.i.i70.i, 1
  br i1 %i.eui, label %bb.amg, label %_ZN5arrow6StatusD2Ev.exit1101, !prof !138

bb.amg:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ett) #25, !noalias !1726
  br label %_ZN5arrow6StatusD2Ev.exit1101

.body.i1106:                                      ; preds = %bb.als, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i1126, %bb.ali
  %.pn46.pn.pn.i = phi { ptr, i32 } [ %i.esc, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i1126 ], [ %.pn46.i, %bb.ali ], [ %i.est, %bb.als ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #25, !noalias !1726
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !1728
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #25, !noalias !1726
  br label %bb.amj

_ZN5arrow6StatusD2Ev.exit1101:                    ; preds = %bb.ama, %bb.amc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i, %bb.amg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !1728
  call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  %i.euj = load ptr, ptr %64, align 8, !tbaa !53, !noalias !1740 ; 2 uses
  store ptr %i.euj, ptr %0, align 8, !tbaa !53, !alias.scope !1740
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #25, !noalias !1726
  %i.euk = icmp eq ptr %i.euj, null
  br i1 %i.euk, label %_ZN5arrow6StatusD2Ev.exit1099, label %.critedge34.i

_ZN5arrow6StatusD2Ev.exit1099:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1101
  %i.eul = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.eum = load ptr, ptr %i.eul, align 8, !tbaa !98, !noalias !1726
  %i.eun = getelementptr inbounds nuw i8, ptr %i.eum, i64 24
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.eun, ptr noundef nonnull align 8 dereferenceable(16) %63)
          to label %bb.amh unwind label %bb.ami, !inline_history !1387

bb.amh:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1099
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %63) #25, !inline_history !1387
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #25, !noalias !1726
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #25, !noalias !1726
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %65, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #25, !noalias !1726
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer16GetListViewSizesINS_13ListViewArrayEiEENS_6StatusERKT_PSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind noalias writable align 8 %66, ptr noundef nonnull align 8 dereferenceable(72) %.tr1394, ptr noundef %65)
          to label %_ZN5arrow6StatusD2Ev.exit1097 unwind label %bb.amk, !inline_history !1387

_ZN5arrow6StatusD2Ev.exit1097:                    ; preds = %bb.amh
  call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  %i.euo = load ptr, ptr %66, align 8, !tbaa !53, !noalias !1741 ; 2 uses
  store ptr %i.euo, ptr %0, align 8, !tbaa !53, !alias.scope !1741
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #25, !noalias !1726
  %i.eup = icmp eq ptr %i.euo, null
  br i1 %i.eup, label %_ZN5arrow6StatusD2Ev.exit1095, label %.critedge37.i

bb.ami:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1099
  %i.euq = landingpad { ptr, i32 }
          cleanup
  br label %bb.amj

bb.amj:                                           ; preds = %bb.ami, %.body.i1106
  %.pn.i945 = phi { ptr, i32 } [ %i.euq, %bb.ami ], [ %.pn46.pn.pn.i, %.body.i1106 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %63) #25, !inline_history !1387
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #25, !noalias !1726
  br label %common.resume

bb.amk:                                           ; preds = %bb.amh
  %i.eur = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #25, !noalias !1726
  br label %bb.ams

_ZN5arrow6StatusD2Ev.exit1095:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1097
  %i.eus = load ptr, ptr %i.eul, align 8, !tbaa !98, !noalias !1726
  %i.eut = getelementptr inbounds nuw i8, ptr %i.eus, i64 24
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.eut, ptr noundef nonnull align 8 dereferenceable(16) %65)
          to label %bb.aml unwind label %bb.amr, !inline_history !1387

bb.aml:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1095
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %65) #25, !inline_history !1387
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #25, !noalias !1726
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #25, !noalias !1726
  %i.euu = getelementptr inbounds nuw i8, ptr %.tr1394, i64 40
  %i.euv = load ptr, ptr %i.euu, align 8, !tbaa !123 ; 3 uses
  store ptr %i.euv, ptr %67, align 8, !tbaa !123
  %i.euw = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.eux = getelementptr inbounds nuw i8, ptr %.tr1394, i64 48
  %i.euy = load ptr, ptr %i.eux, align 8, !tbaa !127 ; 3 uses
  store ptr %i.euy, ptr %i.euw, align 8, !tbaa !127
  %.not.i.i.i1091 = icmp eq ptr %i.euy, null
  br i1 %.not.i.i.i1091, label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1093, label %bb.amm

bb.amm:                                           ; preds = %bb.aml
  %i.euz = getelementptr inbounds nuw i8, ptr %i.euy, i64 8 ; 3 uses
  %i.eva = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i1092 = icmp eq i8 %i.eva, 0
  br i1 %.not.i.i.i.i1092, label %bb.amo, label %bb.amn

bb.amn:                                           ; preds = %bb.amm
  %i.evb = load i32, ptr %i.euz, align 4, !tbaa !129
  %i.evc = add nsw i32 %i.evb, 1
  store i32 %i.evc, ptr %i.euz, align 4, !tbaa !129
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1093

bb.amo:                                           ; preds = %bb.amm
  %i.evd = atomicrmw volatile add ptr %i.euz, i32 1 acq_rel, align 4 ; 0 uses
  %.pre1685.pre = load ptr, ptr %67, align 8, !tbaa !123
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1093

_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1093: ; preds = %bb.aml, %bb.amn, %bb.amo
  %.pre1685 = phi ptr [ %i.euv, %bb.aml ], [ %i.euv, %bb.amn ], [ %.pre1685.pre, %bb.amo ] ; 3 uses
  %.not.i947 = icmp eq i32 %.11382, 0
  %i.eve = sext i32 %.1 to i64                    ; 2 uses
  br i1 %.not.i947, label %bb.amp, label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1093._crit_edge

bb.amp:                                           ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1093
  %i.evf = getelementptr inbounds nuw i8, ptr %.pre1685, i64 8
  %i.evg = load ptr, ptr %i.evf, align 8, !tbaa !126
  %i.evh = getelementptr inbounds nuw i8, ptr %i.evg, i64 16
  %i.evi = load i64, ptr %i.evh, align 8, !tbaa !158
  %i.evj = icmp sgt i64 %i.evi, %i.eve
  br i1 %i.evj, label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1093._crit_edge, label %bb.amu

_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1093._crit_edge: ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1093, %bb.amp
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #25, !noalias !1726
  %i.evk = sext i32 %.11382 to i64
  invoke void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.25") align 8 %68, ptr noundef nonnull align 8 dereferenceable(32) %.pre1685, i64 noundef %i.evk, i64 noundef %i.eve)
          to label %bb.amq unwind label %bb.amt, !inline_history !1387

bb.amq:                                           ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1093._crit_edge
  %i.evl = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %67, ptr noundef nonnull align 8 dereferenceable(16) %68) #25, !inline_history !1387 ; 0 uses
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %68) #25, !inline_history !1387
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #25, !noalias !1726
  %.pre1686 = load ptr, ptr %67, align 8, !tbaa !123
  br label %bb.amu

bb.amr:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1095
  %i.evm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ams

bb.ams:                                           ; preds = %bb.amr, %bb.amk
  %.pn29.i = phi { ptr, i32 } [ %i.evm, %bb.amr ], [ %i.eur, %bb.amk ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %65) #25, !inline_history !1387
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #25, !noalias !1726
  br label %common.resume

bb.amt:                                           ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1093._crit_edge
  %i.evn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #25, !noalias !1726
  br label %bb.amw

bb.amu:                                           ; preds = %bb.amq, %bb.amp
  %i.evo = phi ptr [ %.pre1686, %bb.amq ], [ %.pre1685, %bb.amp ]
  %i.evp = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.evq = load i64, ptr %i.evp, align 8, !tbaa !111, !noalias !1726
  %i.evr = add nsw i64 %i.evq, -1
  store i64 %i.evr, ptr %i.evp, align 8, !tbaa !111, !noalias !1726
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #25, !noalias !1726
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer10VisitArrayERKNS_5ArrayE(ptr dead_on_unwind noalias writable align 8 %69, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.evo)
          to label %_ZN5arrow6StatusD2Ev.exit1090 unwind label %bb.amv, !inline_history !1387

_ZN5arrow6StatusD2Ev.exit1090:                    ; preds = %bb.amu
  call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  %i.evs = load ptr, ptr %69, align 8, !tbaa !53, !noalias !1742 ; 2 uses
  store ptr %i.evs, ptr %0, align 8, !tbaa !53, !alias.scope !1742
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #25, !noalias !1726
  %i.evt = icmp eq ptr %i.evs, null
  br i1 %i.evt, label %_ZN5arrow6StatusD2Ev.exit1088, label %.critedge39.i

bb.amv:                                           ; preds = %bb.amu
  %i.evu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #25, !noalias !1726
  br label %bb.amw

_ZN5arrow6StatusD2Ev.exit1088:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1090
  %i.evv = load i64, ptr %i.evp, align 8, !tbaa !111, !noalias !1726
  %i.evw = add nsw i64 %i.evv, 1
  store i64 %i.evw, ptr %i.evp, align 8, !tbaa !111, !noalias !1726
  store ptr null, ptr %0, align 8, !tbaa !53, !alias.scope !1743
  br label %.critedge39.i

.critedge39.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit1088, %_ZN5arrow6StatusD2Ev.exit1090
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %67) #25, !inline_history !1387
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #25, !noalias !1726
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.amw:                                           ; preds = %bb.amv, %bb.amt
  %.pn31.i = phi { ptr, i32 } [ %i.evu, %bb.amv ], [ %i.evn, %bb.amt ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %67) #25, !inline_history !1387
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #25, !noalias !1726
  br label %common.resume

.critedge34.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit1101
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %63) #25, !inline_history !1387
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #25, !noalias !1726
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

.critedge37.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit1097
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %65) #25, !inline_history !1387
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #25, !noalias !1726
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.amx:                                           ; preds = %tailrecurse
  %i.evx = getelementptr inbounds nuw i8, ptr %.tr1394, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #25, !noalias !1744
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %56, i8 0, i64 16, i1 false), !noalias !1744
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #25, !noalias !1744
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !1746
  %i.evy = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.evz = load ptr, ptr %i.evy, align 8, !tbaa !57, !noalias !1746 ; 2 uses
  %i.ewa = getelementptr inbounds nuw i8, ptr %i.evz, i64 16
  %i.ewb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.ewc = getelementptr inbounds nuw i8, ptr %i.evz, i64 24
  %i.ewd = load ptr, ptr %i.ewc, align 8, !tbaa !127, !noalias !1746 ; 2 uses
  %i.ewe = load <2 x ptr>, ptr %i.ewa, align 8, !tbaa !128, !noalias !1746
  store <2 x ptr> %i.ewe, ptr %8, align 16, !tbaa !128, !noalias !1746
  %.not.i.i.i.i1146 = icmp eq ptr %i.ewd, null
  br i1 %.not.i.i.i.i1146, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i1148, label %bb.amy

end_hunk_4
begin_hunk_5_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
          to label %.noexc56.i1192 unwind label %bb.aob, !noalias !1746 ; 6 uses

.noexc56.i1192:                                   ; preds = %bb.anu
  %i.ezw = getelementptr inbounds nuw i8, ptr %i.ezv, i64 8
  store i32 1, ptr %i.ezw, align 8, !tbaa !136, !noalias !1756
  %i.ezx = getelementptr inbounds nuw i8, ptr %i.ezv, i64 12
  store i32 1, ptr %i.ezx, align 4, !tbaa !137, !noalias !1756
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ezv, align 8, !tbaa !69, !noalias !1756
  %i.ezy = getelementptr inbounds nuw i8, ptr %i.ezv, i64 16 ; 2 uses
  invoke void @_ZN5arrow6BufferC2ERKSt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %i.ezy, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 0, i64 noundef %i.ewn)
          to label %_ZN5arrowL11SliceBufferERKSt10shared_ptrINS_6BufferEEll.exit.i1194 unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i1193, !noalias !1756

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i1193: ; preds = %.noexc56.i1192
  %i.ezz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ezv, i64 noundef 96) #27, !noalias !1756
  br label %.body.i1150

_ZN5arrowL11SliceBufferERKSt10shared_ptrINS_6BufferEEll.exit.i1194: ; preds = %.noexc56.i1192
  store ptr %i.ezy, ptr %8, align 16, !tbaa !228, !noalias !1746
  %i.faa = load ptr, ptr %i.ewb, align 8, !tbaa !127, !noalias !1746 ; 8 uses
  store ptr %i.ezv, ptr %i.ewb, align 8, !tbaa !127, !noalias !1746
  %.not.i.i.i.i57.i1195 = icmp eq ptr %i.faa, null
  br i1 %.not.i.i.i.i57.i1195, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1191, label %bb.anv

bb.anv:                                           ; preds = %_ZN5arrowL11SliceBufferERKSt10shared_ptrINS_6BufferEEll.exit.i1194
  %i.fab = getelementptr inbounds nuw i8, ptr %i.faa, i64 8 ; 4 uses
  %i.fac = load atomic i64, ptr %i.fab acquire, align 8, !noalias !1746 ; 2 uses
  %i.fad = icmp eq i64 %i.fac, 4294967297
  %i.fae = trunc i64 %i.fac to i32                ; 2 uses
  br i1 %i.fad, label %bb.anw, label %bb.anx

bb.anw:                                           ; preds = %bb.anv
  store i32 0, ptr %i.fab, align 8, !tbaa !136, !noalias !1746
  %i.faf = getelementptr inbounds nuw i8, ptr %i.faa, i64 12
  store i32 0, ptr %i.faf, align 4, !tbaa !137, !noalias !1746
  %i.fag = load ptr, ptr %i.faa, align 8, !tbaa !69, !noalias !1746
  %i.fah = getelementptr inbounds nuw i8, ptr %i.fag, i64 16
  %i.fai = load ptr, ptr %i.fah, align 8, !noalias !1746
  call void %i.fai(ptr noundef nonnull align 8 dereferenceable(16) %i.faa) #25, !noalias !1746, !inline_history !1412
  %i.faj = load ptr, ptr %i.faa, align 8, !tbaa !69, !noalias !1746
  %i.fak = getelementptr inbounds nuw i8, ptr %i.faj, i64 24
  %i.fal = load ptr, ptr %i.fak, align 8, !noalias !1746
  call void %i.fal(ptr noundef nonnull align 8 dereferenceable(16) %i.faa) #25, !noalias !1746, !inline_history !1412
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1191

bb.anx:                                           ; preds = %bb.anv
  %i.fam = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120, !noalias !1746
  %.not.i.i.i.i.i58.i1196 = icmp eq i8 %i.fam, 0
  br i1 %.not.i.i.i.i.i58.i1196, label %bb.anz, label %bb.any

bb.any:                                           ; preds = %bb.anx
  %i.fan = add nsw i32 %i.fae, -1
  store i32 %i.fan, ptr %i.fab, align 8, !tbaa !129, !noalias !1746
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i59.i1197

bb.anz:                                           ; preds = %bb.anx
  %i.fao = atomicrmw volatile add ptr %i.fab, i32 -1 acq_rel, align 4, !noalias !1746
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i59.i1197

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i59.i1197: ; preds = %bb.anz, %bb.any
  %.0.i.i.i.i.i.i60.i1198 = phi i32 [ %i.fae, %bb.any ], [ %i.fao, %bb.anz ]
  %i.fap = icmp eq i32 %.0.i.i.i.i.i.i60.i1198, 1
  br i1 %i.fap, label %bb.aoa, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1191, !prof !138

bb.aoa:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i59.i1197
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.faa) #25, !noalias !1746
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1191

bb.aob:                                           ; preds = %bb.anu, %bb.anb
  %i.faq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1150

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1191: ; preds = %bb.aoa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i59.i1197, %bb.anw, %_ZN5arrowL11SliceBufferERKSt10shared_ptrINS_6BufferEEll.exit.i1194, %bb.ant, %bb.ans
  %i.far = getelementptr inbounds nuw i8, ptr %.tr1394, i64 40
  %i.fas = load ptr, ptr %i.far, align 8, !tbaa !123, !noalias !1746
  %i.fat = getelementptr inbounds nuw i8, ptr %i.fas, i64 8
  %i.fau = load ptr, ptr %i.fat, align 8, !tbaa !126, !noalias !1746
  %i.fav = getelementptr inbounds nuw i8, ptr %i.fau, i64 16
  %i.faw = load i64, ptr %i.fav, align 8, !tbaa !158, !noalias !1746
  br label %bb.aoc

bb.aoc:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1191, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1154
  %.21389 = phi i64 [ 0, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1191 ], [ %.01387, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1154 ]
  %.21386 = phi i64 [ %i.faw, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1191 ], [ %.01384, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1154 ]
  %i.fax = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.fay = load <2 x ptr>, ptr %8, align 16, !tbaa !128, !noalias !1746
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false), !noalias !1746
  %i.faz = load ptr, ptr %i.fax, align 8, !tbaa !127, !noalias !1746 ; 8 uses
  store <2 x ptr> %i.fay, ptr %56, align 16, !tbaa !128, !noalias !1746
  %.not.i.i.i.i62.i1159 = icmp eq ptr %i.faz, null
  br i1 %.not.i.i.i.i62.i1159, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit66.i1163, label %bb.aod

bb.aod:                                           ; preds = %bb.aoc
  %i.fba = getelementptr inbounds nuw i8, ptr %i.faz, i64 8 ; 4 uses
  %i.fbb = load atomic i64, ptr %i.fba acquire, align 8, !noalias !1744 ; 2 uses
  %i.fbc = icmp eq i64 %i.fbb, 4294967297
  %i.fbd = trunc i64 %i.fbb to i32                ; 2 uses
  br i1 %i.fbc, label %bb.aoe, label %bb.aof

bb.aoe:                                           ; preds = %bb.aod
  store i32 0, ptr %i.fba, align 8, !tbaa !136, !noalias !1744
  %i.fbe = getelementptr inbounds nuw i8, ptr %i.faz, i64 12
  store i32 0, ptr %i.fbe, align 4, !tbaa !137, !noalias !1744
  %i.fbf = load ptr, ptr %i.faz, align 8, !tbaa !69, !noalias !1744
  %i.fbg = getelementptr inbounds nuw i8, ptr %i.fbf, i64 16
  %i.fbh = load ptr, ptr %i.fbg, align 8, !noalias !1744
  call void %i.fbh(ptr noundef nonnull align 8 dereferenceable(16) %i.faz) #25, !noalias !1744, !inline_history !1412
  %i.fbi = load ptr, ptr %i.faz, align 8, !tbaa !69, !noalias !1744
  %i.fbj = getelementptr inbounds nuw i8, ptr %i.fbi, i64 24
  %i.fbk = load ptr, ptr %i.fbj, align 8, !noalias !1744
  call void %i.fbk(ptr noundef nonnull align 8 dereferenceable(16) %i.faz) #25, !noalias !1744, !inline_history !1412
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit66.i1163

bb.aof:                                           ; preds = %bb.aod
  %i.fbl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120, !noalias !1746
  %.not.i.i.i.i.i63.i1160 = icmp eq i8 %i.fbl, 0
  br i1 %.not.i.i.i.i.i63.i1160, label %bb.aoh, label %bb.aog

bb.aog:                                           ; preds = %bb.aof
  %i.fbm = add nsw i32 %i.fbd, -1
  store i32 %i.fbm, ptr %i.fba, align 8, !tbaa !129, !noalias !1744
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i1161

bb.aoh:                                           ; preds = %bb.aof
  %i.fbn = atomicrmw volatile add ptr %i.fba, i32 -1 acq_rel, align 4, !noalias !1744
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i1161

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i1161: ; preds = %bb.aoh, %bb.aog
  %.0.i.i.i.i.i.i65.i1162 = phi i32 [ %i.fbd, %bb.aog ], [ %i.fbn, %bb.aoh ]
  %i.fbo = icmp eq i32 %.0.i.i.i.i.i.i65.i1162, 1
  br i1 %i.fbo, label %bb.aoi, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit66.i1163, !prof !138

bb.aoi:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i1161
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.faz) #25, !noalias !1744
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit66.i1163

_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit66.i1163: ; preds = %bb.aoi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64.i1161, %bb.aoe, %bb.aoc
  store ptr null, ptr %57, align 8, !tbaa !53, !alias.scope !1757, !noalias !1744
  br label %bb.aoj

bb.aoj:                                           ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit66.i1163, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1154
  %.11388 = phi i64 [ %.21389, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit66.i1163 ], [ %.01387, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1154 ] ; 2 uses
  %.11385 = phi i64 [ %.21386, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit66.i1163 ], [ %.01384, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1154 ] ; 2 uses
  %i.fbp = load ptr, ptr %i.ewb, align 8, !tbaa !127, !noalias !1746 ; 8 uses
  %.not.i.i67.i1155 = icmp eq ptr %i.fbp, null
  br i1 %.not.i.i67.i1155, label %_ZN5arrow6StatusD2Ev.exit1145, label %bb.aok

bb.aok:                                           ; preds = %bb.aoj
  %i.fbq = getelementptr inbounds nuw i8, ptr %i.fbp, i64 8 ; 4 uses
  %i.fbr = load atomic i64, ptr %i.fbq acquire, align 8, !noalias !1744 ; 2 uses
  %i.fbs = icmp eq i64 %i.fbr, 4294967297
  %i.fbt = trunc i64 %i.fbr to i32                ; 2 uses
  br i1 %i.fbs, label %bb.aol, label %bb.aom

bb.aol:                                           ; preds = %bb.aok
  store i32 0, ptr %i.fbq, align 8, !tbaa !136, !noalias !1744
  %i.fbu = getelementptr inbounds nuw i8, ptr %i.fbp, i64 12
  store i32 0, ptr %i.fbu, align 4, !tbaa !137, !noalias !1744
  %i.fbv = load ptr, ptr %i.fbp, align 8, !tbaa !69, !noalias !1744
  %i.fbw = getelementptr inbounds nuw i8, ptr %i.fbv, i64 16
  %i.fbx = load ptr, ptr %i.fbw, align 8, !noalias !1744
  call void %i.fbx(ptr noundef nonnull align 8 dereferenceable(16) %i.fbp) #25, !noalias !1744, !inline_history !1415
  %i.fby = load ptr, ptr %i.fbp, align 8, !tbaa !69, !noalias !1744
  %i.fbz = getelementptr inbounds nuw i8, ptr %i.fby, i64 24
  %i.fca = load ptr, ptr %i.fbz, align 8, !noalias !1744
  call void %i.fca(ptr noundef nonnull align 8 dereferenceable(16) %i.fbp) #25, !noalias !1744, !inline_history !1415
  br label %_ZN5arrow6StatusD2Ev.exit1145

bb.aom:                                           ; preds = %bb.aok
  %i.fcb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120, !noalias !1746
  %.not.i.i.i68.i1156 = icmp eq i8 %i.fcb, 0
  br i1 %.not.i.i.i68.i1156, label %bb.aoo, label %bb.aon

bb.aon:                                           ; preds = %bb.aom
  %i.fcc = add nsw i32 %i.fbt, -1
  store i32 %i.fcc, ptr %i.fbq, align 8, !tbaa !129, !noalias !1744
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i1157

bb.aoo:                                           ; preds = %bb.aom
  %i.fcd = atomicrmw volatile add ptr %i.fbq, i32 -1 acq_rel, align 4, !noalias !1744
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i1157

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i1157: ; preds = %bb.aoo, %bb.aon
  %.0.i.i.i.i70.i1158 = phi i32 [ %i.fbt, %bb.aon ], [ %i.fcd, %bb.aoo ]
  %i.fce = icmp eq i32 %.0.i.i.i.i70.i1158, 1
  br i1 %i.fce, label %bb.aop, label %_ZN5arrow6StatusD2Ev.exit1145, !prof !138

bb.aop:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i1157
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fbp) #25, !noalias !1744
  br label %_ZN5arrow6StatusD2Ev.exit1145

.body.i1150:                                      ; preds = %bb.aob, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i1193, %bb.anr
  %.pn46.pn.pn.i1151 = phi { ptr, i32 } [ %i.ezz, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i1193 ], [ %.pn46.i1152, %bb.anr ], [ %i.faq, %bb.aob ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #25, !noalias !1744
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !1746
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #25, !noalias !1744
  br label %bb.aos

_ZN5arrow6StatusD2Ev.exit1145:                    ; preds = %bb.aoj, %bb.aol, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i1157, %bb.aop
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !1746
  call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  %i.fcf = load ptr, ptr %57, align 8, !tbaa !53, !noalias !1758 ; 2 uses
  store ptr %i.fcf, ptr %0, align 8, !tbaa !53, !alias.scope !1758
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #25, !noalias !1744
  %i.fcg = icmp eq ptr %i.fcf, null
  br i1 %i.fcg, label %_ZN5arrow6StatusD2Ev.exit1143, label %.critedge34.i950

_ZN5arrow6StatusD2Ev.exit1143:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1145
  %i.fch = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.fci = load ptr, ptr %i.fch, align 8, !tbaa !98, !noalias !1744
  %i.fcj = getelementptr inbounds nuw i8, ptr %i.fci, i64 24
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.fcj, ptr noundef nonnull align 8 dereferenceable(16) %56)
          to label %bb.aoq unwind label %bb.aor, !inline_history !1418

bb.aoq:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1143
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %56) #25, !inline_history !1418
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #25, !noalias !1744
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #25, !noalias !1744
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #25, !noalias !1744
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer16GetListViewSizesINS_18LargeListViewArrayElEENS_6StatusERKT_PSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind noalias writable align 8 %59, ptr noundef nonnull align 8 dereferenceable(72) %.tr1394, ptr noundef %58)
          to label %_ZN5arrow6StatusD2Ev.exit1141 unwind label %bb.aot, !inline_history !1418

_ZN5arrow6StatusD2Ev.exit1141:                    ; preds = %bb.aoq
  call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  %i.fck = load ptr, ptr %59, align 8, !tbaa !53, !noalias !1759 ; 2 uses
  store ptr %i.fck, ptr %0, align 8, !tbaa !53, !alias.scope !1759
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #25, !noalias !1744
  %i.fcl = icmp eq ptr %i.fck, null
  br i1 %i.fcl, label %_ZN5arrow6StatusD2Ev.exit1139, label %.critedge37.i953

bb.aor:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1143
  %i.fcm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aos

bb.aos:                                           ; preds = %bb.aor, %.body.i1150
  %.pn.i948 = phi { ptr, i32 } [ %i.fcm, %bb.aor ], [ %.pn46.pn.pn.i1151, %.body.i1150 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %56) #25, !inline_history !1418
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #25, !noalias !1744
  br label %common.resume

bb.aot:                                           ; preds = %bb.aoq
  %i.fcn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #25, !noalias !1744
  br label %bb.apc

_ZN5arrow6StatusD2Ev.exit1139:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1141
  %i.fco = load ptr, ptr %i.fch, align 8, !tbaa !98, !noalias !1744
  %i.fcp = getelementptr inbounds nuw i8, ptr %i.fco, i64 24
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.fcp, ptr noundef nonnull align 8 dereferenceable(16) %58)
          to label %bb.aou unwind label %bb.apb, !inline_history !1418

bb.aou:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1139
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %58) #25, !inline_history !1418
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #25, !noalias !1744
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #25, !noalias !1744
  %i.fcq = getelementptr inbounds nuw i8, ptr %.tr1394, i64 40
  %i.fcr = load ptr, ptr %i.fcq, align 8, !tbaa !123 ; 3 uses
  store ptr %i.fcr, ptr %60, align 8, !tbaa !123
  %i.fcs = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.fct = getelementptr inbounds nuw i8, ptr %.tr1394, i64 48
  %i.fcu = load ptr, ptr %i.fct, align 8, !tbaa !127 ; 3 uses
  store ptr %i.fcu, ptr %i.fcs, align 8, !tbaa !127
  %.not.i.i.i1135 = icmp eq ptr %i.fcu, null
  br i1 %.not.i.i.i1135, label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1137, label %bb.aov

bb.aov:                                           ; preds = %bb.aou
  %i.fcv = getelementptr inbounds nuw i8, ptr %i.fcu, i64 8 ; 3 uses
  %i.fcw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i1136 = icmp eq i8 %i.fcw, 0
  br i1 %.not.i.i.i.i1136, label %bb.aox, label %bb.aow

bb.aow:                                           ; preds = %bb.aov
  %i.fcx = load i32, ptr %i.fcv, align 4, !tbaa !129
  %i.fcy = add nsw i32 %i.fcx, 1
  store i32 %i.fcy, ptr %i.fcv, align 4, !tbaa !129
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1137

bb.aox:                                           ; preds = %bb.aov
  %i.fcz = atomicrmw volatile add ptr %i.fcv, i32 1 acq_rel, align 4 ; 0 uses
  %.pre1683.pre = load ptr, ptr %60, align 8, !tbaa !123
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1137

_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1137: ; preds = %bb.aou, %bb.aow, %bb.aox
  %.pre1683 = phi ptr [ %i.fcr, %bb.aou ], [ %i.fcr, %bb.aow ], [ %.pre1683.pre, %bb.aox ] ; 3 uses
  %.not.i955 = icmp eq i64 %.11388, 0
  br i1 %.not.i955, label %bb.aoy, label %bb.aoz

bb.aoy:                                           ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1137
  %i.fda = getelementptr inbounds nuw i8, ptr %.pre1683, i64 8
  %i.fdb = load ptr, ptr %i.fda, align 8, !tbaa !126
  %i.fdc = getelementptr inbounds nuw i8, ptr %i.fdb, i64 16
  %i.fdd = load i64, ptr %i.fdc, align 8, !tbaa !158
  %i.fde = icmp slt i64 %.11385, %i.fdd
  br i1 %i.fde, label %bb.aoz, label %bb.ape

bb.aoz:                                           ; preds = %bb.aoy, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1137
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #25, !noalias !1744
  invoke void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.25") align 8 %61, ptr noundef nonnull align 8 dereferenceable(32) %.pre1683, i64 noundef %.11388, i64 noundef %.11385)
          to label %bb.apa unwind label %bb.apd, !inline_history !1418

bb.apa:                                           ; preds = %bb.aoz
  %i.fdf = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %60, ptr noundef nonnull align 8 dereferenceable(16) %61) #25, !inline_history !1418 ; 0 uses
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %61) #25, !inline_history !1418
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #25, !noalias !1744
  %.pre1684 = load ptr, ptr %60, align 8, !tbaa !123
  br label %bb.ape

bb.apb:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1139
  %i.fdg = landingpad { ptr, i32 }
          cleanup
  br label %bb.apc

bb.apc:                                           ; preds = %bb.apb, %bb.aot
  %.pn29.i952 = phi { ptr, i32 } [ %i.fdg, %bb.apb ], [ %i.fcn, %bb.aot ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %58) #25, !inline_history !1418
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #25, !noalias !1744
  br label %common.resume

bb.apd:                                           ; preds = %bb.aoz
  %i.fdh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #25, !noalias !1744
  br label %bb.apg

bb.ape:                                           ; preds = %bb.apa, %bb.aoy
  %i.fdi = phi ptr [ %.pre1684, %bb.apa ], [ %.pre1683, %bb.aoy ]
  %i.fdj = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.fdk = load i64, ptr %i.fdj, align 8, !tbaa !111, !noalias !1744
  %i.fdl = add nsw i64 %i.fdk, -1
  store i64 %i.fdl, ptr %i.fdj, align 8, !tbaa !111, !noalias !1744
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #25, !noalias !1744
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer10VisitArrayERKNS_5ArrayE(ptr dead_on_unwind noalias writable align 8 %62, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.fdi)
          to label %_ZN5arrow6StatusD2Ev.exit1134 unwind label %bb.apf, !inline_history !1418

_ZN5arrow6StatusD2Ev.exit1134:                    ; preds = %bb.ape
  call void @llvm.experimental.noalias.scope.decl(metadata !1760)
  %i.fdm = load ptr, ptr %62, align 8, !tbaa !53, !noalias !1760 ; 2 uses
  store ptr %i.fdm, ptr %0, align 8, !tbaa !53, !alias.scope !1760
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #25, !noalias !1744
  %i.fdn = icmp eq ptr %i.fdm, null
  br i1 %i.fdn, label %_ZN5arrow6StatusD2Ev.exit1132, label %.critedge39.i957

bb.apf:                                           ; preds = %bb.ape
  %i.fdo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #25, !noalias !1744
  br label %bb.apg

_ZN5arrow6StatusD2Ev.exit1132:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1134
  %i.fdp = load i64, ptr %i.fdj, align 8, !tbaa !111, !noalias !1744
  %i.fdq = add nsw i64 %i.fdp, 1
  store i64 %i.fdq, ptr %i.fdj, align 8, !tbaa !111, !noalias !1744
  store ptr null, ptr %0, align 8, !tbaa !53, !alias.scope !1761
  br label %.critedge39.i957

.critedge39.i957:                                 ; preds = %_ZN5arrow6StatusD2Ev.exit1132, %_ZN5arrow6StatusD2Ev.exit1134
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %60) #25, !inline_history !1418
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #25, !noalias !1744
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.apg:                                           ; preds = %bb.apf, %bb.apd
  %.pn31.i956 = phi { ptr, i32 } [ %i.fdo, %bb.apf ], [ %i.fdh, %bb.apd ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %60) #25, !inline_history !1418
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #25, !noalias !1744
  br label %common.resume

.critedge34.i950:                                 ; preds = %_ZN5arrow6StatusD2Ev.exit1145
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %56) #25, !inline_history !1418
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #25, !noalias !1744
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

.critedge37.i953:                                 ; preds = %_ZN5arrow6StatusD2Ev.exit1141
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %58) #25, !inline_history !1418
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #25, !noalias !1744
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_13ListViewArrayEEENSt9enable_ifIXsr17is_list_view_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.aph:                                           ; preds = %tailrecurse
  %i.fdr = getelementptr inbounds nuw i8, ptr %.tr1394, i64 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #25, !noalias !1762
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %49, i8 0, i64 16, i1 false), !noalias !1762
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #25, !noalias !1762
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !1764
  %i.fds = load ptr, ptr %i.fdr, align 8, !tbaa !126, !noalias !1764 ; 3 uses
  %i.fdt = getelementptr inbounds nuw i8, ptr %i.fds, i64 40
  %i.fdu = load ptr, ptr %i.fdt, align 8, !tbaa !57, !noalias !1764 ; 2 uses
  %i.fdv = getelementptr inbounds nuw i8, ptr %i.fdu, i64 16
  %i.fdw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.fdx = getelementptr inbounds nuw i8, ptr %i.fdu, i64 24
  %i.fdy = load ptr, ptr %i.fdx, align 8, !tbaa !127, !noalias !1764 ; 2 uses
  %i.fdz = load <2 x ptr>, ptr %i.fdv, align 8, !tbaa !128, !noalias !1764
  store <2 x ptr> %i.fdz, ptr %4, align 16, !tbaa !128, !noalias !1764
  %.not.i.i.i.i1226 = icmp eq ptr %i.fdy, null
  br i1 %.not.i.i.i.i1226, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i1228, label %bb.api

bb.api:                                           ; preds = %bb.aph
end_hunk_5
begin_hunk_6_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
bb.aqb:                                           ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i1228
  %i.fhx = load ptr, ptr %4, align 16, !tbaa !50, !noalias !1764 ; 2 uses
  %.not64.i1261 = icmp eq ptr %i.fhx, null
  br i1 %.not64.i1261, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1239, label %bb.aqc

bb.aqc:                                           ; preds = %bb.aqb
  %i.fhy = getelementptr inbounds nuw i8, ptr %i.fhx, i64 24
  %i.fhz = load i64, ptr %i.fhy, align 8, !tbaa !67, !noalias !1764
  %i.fia = icmp sgt i64 %i.fhz, %i.fej
  br i1 %i.fia, label %bb.aqd, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1239

bb.aqd:                                           ; preds = %bb.aqc
  %i.fib = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #26
          to label %.noexc45.i1262 unwind label %bb.aqk, !noalias !1764 ; 6 uses

.noexc45.i1262:                                   ; preds = %bb.aqd
  %i.fic = getelementptr inbounds nuw i8, ptr %i.fib, i64 8
  store i32 1, ptr %i.fic, align 8, !tbaa !136, !noalias !1769
  %i.fid = getelementptr inbounds nuw i8, ptr %i.fib, i64 12
  store i32 1, ptr %i.fid, align 4, !tbaa !137, !noalias !1769
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.fib, align 8, !tbaa !69, !noalias !1769
  %i.fie = getelementptr inbounds nuw i8, ptr %i.fib, i64 16 ; 2 uses
  invoke void @_ZN5arrow6BufferC2ERKSt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %i.fie, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 0, i64 noundef %i.fej)
          to label %_ZN5arrowL11SliceBufferERKSt10shared_ptrINS_6BufferEEll.exit.i1264 unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i1263, !noalias !1769

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i1263: ; preds = %.noexc45.i1262
  %i.fif = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fib, i64 noundef 96) #27, !noalias !1769
  br label %.body.i1230

_ZN5arrowL11SliceBufferERKSt10shared_ptrINS_6BufferEEll.exit.i1264: ; preds = %.noexc45.i1262
  store ptr %i.fie, ptr %4, align 16, !tbaa !228, !noalias !1764
  %i.fig = load ptr, ptr %i.fdw, align 8, !tbaa !127, !noalias !1764 ; 8 uses
  store ptr %i.fib, ptr %i.fdw, align 8, !tbaa !127, !noalias !1764
  %.not.i.i.i.i46.i1265 = icmp eq ptr %i.fig, null
  br i1 %.not.i.i.i.i46.i1265, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1239, label %bb.aqe

bb.aqe:                                           ; preds = %_ZN5arrowL11SliceBufferERKSt10shared_ptrINS_6BufferEEll.exit.i1264
  %i.fih = getelementptr inbounds nuw i8, ptr %i.fig, i64 8 ; 4 uses
  %i.fii = load atomic i64, ptr %i.fih acquire, align 8, !noalias !1764 ; 2 uses
  %i.fij = icmp eq i64 %i.fii, 4294967297
  %i.fik = trunc i64 %i.fii to i32                ; 2 uses
  br i1 %i.fij, label %bb.aqf, label %bb.aqg

bb.aqf:                                           ; preds = %bb.aqe
  store i32 0, ptr %i.fih, align 8, !tbaa !136, !noalias !1764
  %i.fil = getelementptr inbounds nuw i8, ptr %i.fig, i64 12
  store i32 0, ptr %i.fil, align 4, !tbaa !137, !noalias !1764
  %i.fim = load ptr, ptr %i.fig, align 8, !tbaa !69, !noalias !1764
  %i.fin = getelementptr inbounds nuw i8, ptr %i.fim, i64 16
  %i.fio = load ptr, ptr %i.fin, align 8, !noalias !1764
  call void %i.fio(ptr noundef nonnull align 8 dereferenceable(16) %i.fig) #25, !noalias !1764, !inline_history !1443
  %i.fip = load ptr, ptr %i.fig, align 8, !tbaa !69, !noalias !1764
  %i.fiq = getelementptr inbounds nuw i8, ptr %i.fip, i64 24
  %i.fir = load ptr, ptr %i.fiq, align 8, !noalias !1764
  call void %i.fir(ptr noundef nonnull align 8 dereferenceable(16) %i.fig) #25, !noalias !1764, !inline_history !1443
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1239

bb.aqg:                                           ; preds = %bb.aqe
  %i.fis = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120, !noalias !1764
  %.not.i.i.i.i.i47.i1266 = icmp eq i8 %i.fis, 0
  br i1 %.not.i.i.i.i.i47.i1266, label %bb.aqi, label %bb.aqh

bb.aqh:                                           ; preds = %bb.aqg
  %i.fit = add nsw i32 %i.fik, -1
  store i32 %i.fit, ptr %i.fih, align 8, !tbaa !129, !noalias !1764
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48.i1267

bb.aqi:                                           ; preds = %bb.aqg
  %i.fiu = atomicrmw volatile add ptr %i.fih, i32 -1 acq_rel, align 4, !noalias !1764
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48.i1267

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48.i1267: ; preds = %bb.aqi, %bb.aqh
  %.0.i.i.i.i.i.i49.i1268 = phi i32 [ %i.fik, %bb.aqh ], [ %i.fiu, %bb.aqi ]
  %i.fiv = icmp eq i32 %.0.i.i.i.i.i.i49.i1268, 1
  br i1 %i.fiv, label %bb.aqj, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1239, !prof !138

bb.aqj:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48.i1267
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fig) #25, !noalias !1764
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1239

bb.aqk:                                           ; preds = %bb.aqd, %bb.apl
  %i.fiw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1230

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1239: ; preds = %bb.aqj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48.i1267, %bb.aqf, %_ZN5arrowL11SliceBufferERKSt10shared_ptrINS_6BufferEEll.exit.i1264, %bb.aqc, %bb.aqb, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1234
  %i.fix = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.fiy = load <2 x ptr>, ptr %4, align 16, !tbaa !128, !noalias !1764
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false), !noalias !1764
  %i.fiz = load ptr, ptr %i.fix, align 8, !tbaa !127, !noalias !1764 ; 8 uses
  store <2 x ptr> %i.fiy, ptr %49, align 16, !tbaa !128, !noalias !1764
  %.not.i.i.i.i51.i1240 = icmp eq ptr %i.fiz, null
  br i1 %.not.i.i.i.i51.i1240, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit55.i1244, label %bb.aql

bb.aql:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1239
  %i.fja = getelementptr inbounds nuw i8, ptr %i.fiz, i64 8 ; 4 uses
  %i.fjb = load atomic i64, ptr %i.fja acquire, align 8, !noalias !1762 ; 2 uses
  %i.fjc = icmp eq i64 %i.fjb, 4294967297
  %i.fjd = trunc i64 %i.fjb to i32                ; 2 uses
  br i1 %i.fjc, label %bb.aqm, label %bb.aqn

bb.aqm:                                           ; preds = %bb.aql
  store i32 0, ptr %i.fja, align 8, !tbaa !136, !noalias !1762
  %i.fje = getelementptr inbounds nuw i8, ptr %i.fiz, i64 12
  store i32 0, ptr %i.fje, align 4, !tbaa !137, !noalias !1762
  %i.fjf = load ptr, ptr %i.fiz, align 8, !tbaa !69, !noalias !1762
  %i.fjg = getelementptr inbounds nuw i8, ptr %i.fjf, i64 16
  %i.fjh = load ptr, ptr %i.fjg, align 8, !noalias !1762
  call void %i.fjh(ptr noundef nonnull align 8 dereferenceable(16) %i.fiz) #25, !noalias !1762, !inline_history !1443
  %i.fji = load ptr, ptr %i.fiz, align 8, !tbaa !69, !noalias !1762
  %i.fjj = getelementptr inbounds nuw i8, ptr %i.fji, i64 24
  %i.fjk = load ptr, ptr %i.fjj, align 8, !noalias !1762
  call void %i.fjk(ptr noundef nonnull align 8 dereferenceable(16) %i.fiz) #25, !noalias !1762, !inline_history !1443
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit55.i1244

bb.aqn:                                           ; preds = %bb.aql
  %i.fjl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120, !noalias !1764
  %.not.i.i.i.i.i52.i1241 = icmp eq i8 %i.fjl, 0
  br i1 %.not.i.i.i.i.i52.i1241, label %bb.aqp, label %bb.aqo

bb.aqo:                                           ; preds = %bb.aqn
  %i.fjm = add nsw i32 %i.fjd, -1
  store i32 %i.fjm, ptr %i.fja, align 8, !tbaa !129, !noalias !1762
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53.i1242

bb.aqp:                                           ; preds = %bb.aqn
  %i.fjn = atomicrmw volatile add ptr %i.fja, i32 -1 acq_rel, align 4, !noalias !1762
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53.i1242

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53.i1242: ; preds = %bb.aqp, %bb.aqo
  %.0.i.i.i.i.i.i54.i1243 = phi i32 [ %i.fjd, %bb.aqo ], [ %i.fjn, %bb.aqp ]
  %i.fjo = icmp eq i32 %.0.i.i.i.i.i.i54.i1243, 1
  br i1 %i.fjo, label %bb.aqq, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit55.i1244, !prof !138

bb.aqq:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53.i1242
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fiz) #25, !noalias !1762
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit55.i1244

_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit55.i1244: ; preds = %bb.aqq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53.i1242, %bb.aqm, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1239
  store ptr null, ptr %50, align 8, !tbaa !53, !alias.scope !1770, !noalias !1762
  br label %bb.aqr

bb.aqr:                                           ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit55.i1244, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i1234
  %i.fjp = load ptr, ptr %i.fdw, align 8, !tbaa !127, !noalias !1764 ; 8 uses
  %.not.i.i56.i1235 = icmp eq ptr %i.fjp, null
  br i1 %.not.i.i56.i1235, label %_ZN5arrow6StatusD2Ev.exit1225, label %bb.aqs

bb.aqs:                                           ; preds = %bb.aqr
  %i.fjq = getelementptr inbounds nuw i8, ptr %i.fjp, i64 8 ; 4 uses
  %i.fjr = load atomic i64, ptr %i.fjq acquire, align 8, !noalias !1762 ; 2 uses
  %i.fjs = icmp eq i64 %i.fjr, 4294967297
  %i.fjt = trunc i64 %i.fjr to i32                ; 2 uses
  br i1 %i.fjs, label %bb.aqt, label %bb.aqu

bb.aqt:                                           ; preds = %bb.aqs
  store i32 0, ptr %i.fjq, align 8, !tbaa !136, !noalias !1762
  %i.fju = getelementptr inbounds nuw i8, ptr %i.fjp, i64 12
  store i32 0, ptr %i.fju, align 4, !tbaa !137, !noalias !1762
  %i.fjv = load ptr, ptr %i.fjp, align 8, !tbaa !69, !noalias !1762
  %i.fjw = getelementptr inbounds nuw i8, ptr %i.fjv, i64 16
  %i.fjx = load ptr, ptr %i.fjw, align 8, !noalias !1762
  call void %i.fjx(ptr noundef nonnull align 8 dereferenceable(16) %i.fjp) #25, !noalias !1762, !inline_history !1446
  %i.fjy = load ptr, ptr %i.fjp, align 8, !tbaa !69, !noalias !1762
  %i.fjz = getelementptr inbounds nuw i8, ptr %i.fjy, i64 24
  %i.fka = load ptr, ptr %i.fjz, align 8, !noalias !1762
  call void %i.fka(ptr noundef nonnull align 8 dereferenceable(16) %i.fjp) #25, !noalias !1762, !inline_history !1446
  br label %_ZN5arrow6StatusD2Ev.exit1225

bb.aqu:                                           ; preds = %bb.aqs
  %i.fkb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120, !noalias !1764
  %.not.i.i.i57.i1236 = icmp eq i8 %i.fkb, 0
  br i1 %.not.i.i.i57.i1236, label %bb.aqw, label %bb.aqv

bb.aqv:                                           ; preds = %bb.aqu
  %i.fkc = add nsw i32 %i.fjt, -1
  store i32 %i.fkc, ptr %i.fjq, align 8, !tbaa !129, !noalias !1762
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i1237

bb.aqw:                                           ; preds = %bb.aqu
  %i.fkd = atomicrmw volatile add ptr %i.fjq, i32 -1 acq_rel, align 4, !noalias !1762
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i1237

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i1237: ; preds = %bb.aqw, %bb.aqv
  %.0.i.i.i.i59.i1238 = phi i32 [ %i.fjt, %bb.aqv ], [ %i.fkd, %bb.aqw ]
  %i.fke = icmp eq i32 %.0.i.i.i.i59.i1238, 1
  br i1 %i.fke, label %bb.aqx, label %_ZN5arrow6StatusD2Ev.exit1225, !prof !138

bb.aqx:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i1237
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fjp) #25, !noalias !1762
  br label %_ZN5arrow6StatusD2Ev.exit1225

.body.i1230:                                      ; preds = %bb.aqk, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i1263, %bb.aqa
  %.pn36.pn.pn.i1231 = phi { ptr, i32 } [ %i.fif, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i.i1263 ], [ %.pn36.i1232, %bb.aqa ], [ %i.fiw, %bb.aqk ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25, !noalias !1762
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !1764
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #25, !noalias !1762
  br label %bb.aro

_ZN5arrow6StatusD2Ev.exit1225:                    ; preds = %bb.aqr, %bb.aqt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58.i1237, %bb.aqx
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !1764
  call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  %i.fkf = load ptr, ptr %50, align 8, !tbaa !53, !noalias !1771 ; 2 uses
  store ptr %i.fkf, ptr %0, align 8, !tbaa !53, !alias.scope !1771
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #25, !noalias !1762
  %i.fkg = icmp eq ptr %i.fkf, null
  br i1 %i.fkg, label %_ZN5arrow6StatusD2Ev.exit1223, label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_8MapArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

_ZN5arrow6StatusD2Ev.exit1223:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1225
  %i.fkh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fki = load ptr, ptr %i.fkh, align 8, !tbaa !98, !noalias !1762
  %i.fkj = getelementptr inbounds nuw i8, ptr %i.fki, i64 24
  %i.fkk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.fkj, ptr noundef nonnull align 8 dereferenceable(16) %49)
          to label %bb.aqy unwind label %bb.ard, !inline_history !1449 ; 0 uses

bb.aqy:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1223
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #25, !noalias !1762
  %i.fkl = getelementptr inbounds nuw i8, ptr %.tr1394, i64 40
  %i.fkm = getelementptr inbounds nuw i8, ptr %.tr1394, i64 48
  %i.fkn = load ptr, ptr %i.fkm, align 8, !tbaa !127 ; 2 uses
  %i.fko = load <2 x ptr>, ptr %i.fkl, align 8, !tbaa !128
  store <2 x ptr> %i.fko, ptr %51, align 16, !tbaa !128
  %.not.i.i.i1219 = icmp eq ptr %i.fkn, null
  br i1 %.not.i.i.i1219, label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1221, label %bb.aqz

bb.aqz:                                           ; preds = %bb.aqy
  %i.fkp = getelementptr inbounds nuw i8, ptr %i.fkn, i64 8 ; 3 uses
  %i.fkq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i1220 = icmp eq i8 %i.fkq, 0
  br i1 %.not.i.i.i.i1220, label %bb.arb, label %bb.ara

bb.ara:                                           ; preds = %bb.aqz
  %i.fkr = load i32, ptr %i.fkp, align 4, !tbaa !129
  %i.fks = add nsw i32 %i.fkr, 1
  store i32 %i.fks, ptr %i.fkp, align 4, !tbaa !129
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1221

bb.arb:                                           ; preds = %bb.aqz
  %i.fkt = atomicrmw volatile add ptr %i.fkp, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1221

_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1221: ; preds = %bb.aqy, %bb.ara, %bb.arb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !1762
  store i32 0, ptr %i.c, align 4, !tbaa !129, !noalias !1762
  %i.fku = load ptr, ptr %49, align 16, !tbaa !50
  %.not1391 = icmp eq ptr %i.fku, null
  br i1 %.not1391, label %bb.arg, label %bb.arc

bb.arc:                                           ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1221
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #25, !noalias !1762
  %i.fkv = load ptr, ptr %i.fdr, align 8, !tbaa !126 ; 2 uses
  %i.fkw = getelementptr inbounds nuw i8, ptr %i.fkv, i64 40
  %i.fkx = load ptr, ptr %i.fkw, align 8, !tbaa !57
  %i.fky = getelementptr inbounds nuw i8, ptr %i.fkx, i64 16
  %i.fkz = getelementptr inbounds nuw i8, ptr %i.fkv, i64 32
  %i.fla = load i64, ptr %i.fkz, align 8, !tbaa !304
  %i.flb = shl i64 %i.fla, 2
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %52, ptr noundef nonnull align 8 dereferenceable(16) %i.fky, i64 noundef %i.flb, i64 noundef 4, ptr noundef nonnull %i.c)
          to label %_ZN5arrow6StatusD2Ev.exit1218 unwind label %bb.are, !inline_history !1449

_ZN5arrow6StatusD2Ev.exit1218:                    ; preds = %bb.arc
  call void @llvm.experimental.noalias.scope.decl(metadata !1772)
  %i.flc = load ptr, ptr %52, align 8, !tbaa !53, !noalias !1772 ; 2 uses
  store ptr %i.flc, ptr %0, align 8, !tbaa !53, !alias.scope !1772
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #25, !noalias !1762
  %i.fld = icmp eq ptr %i.flc, null
  br i1 %i.fld, label %_ZN5arrow6StatusD2Ev.exit1216, label %.critedge38.i963

bb.ard:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1223
  %i.fle = landingpad { ptr, i32 }
          cleanup
  br label %bb.aro

bb.are:                                           ; preds = %bb.arc
  %i.flf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #25, !noalias !1762
  br label %bb.arn

_ZN5arrow6StatusD2Ev.exit1216:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25, !noalias !1762
  store i32 0, ptr %i.d, align 4, !tbaa !129, !noalias !1762
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #25, !noalias !1762
  %i.flg = load ptr, ptr %i.fdr, align 8, !tbaa !126 ; 3 uses
  %i.flh = getelementptr inbounds nuw i8, ptr %i.flg, i64 40
  %i.fli = load ptr, ptr %i.flh, align 8, !tbaa !57
  %i.flj = getelementptr inbounds nuw i8, ptr %i.fli, i64 16
  %i.flk = getelementptr inbounds nuw i8, ptr %i.flg, i64 32
  %i.fll = load i64, ptr %i.flk, align 8, !tbaa !304
  %i.flm = getelementptr inbounds nuw i8, ptr %i.flg, i64 16
  %i.fln = load i64, ptr %i.flm, align 8, !tbaa !158
  %i.flo = add nsw i64 %i.fln, %i.fll
  %i.flp = shl i64 %i.flo, 2
  invoke void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %53, ptr noundef nonnull align 8 dereferenceable(16) %i.flj, i64 noundef %i.flp, i64 noundef 4, ptr noundef nonnull %i.d)
          to label %_ZN5arrow6StatusD2Ev.exit1214 unwind label %bb.arf, !inline_history !1449

_ZN5arrow6StatusD2Ev.exit1214:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1216
  call void @llvm.experimental.noalias.scope.decl(metadata !1773)
  %i.flq = load ptr, ptr %53, align 8, !tbaa !53, !noalias !1773 ; 2 uses
  store ptr %i.flq, ptr %0, align 8, !tbaa !53, !alias.scope !1773
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #25, !noalias !1762
  %i.flr = icmp eq ptr %i.flq, null
  br i1 %i.flr, label %_ZN5arrow6StatusD2Ev.exit1212, label %.critedge41.i964

bb.arf:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1216
  %i.fls = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #25, !noalias !1762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25, !noalias !1762
  br label %bb.arn

_ZN5arrow6StatusD2Ev.exit1212:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1214
  %i.flt = load i32, ptr %i.d, align 4, !tbaa !129, !noalias !1762
  %i.flu = load i32, ptr %i.c, align 4, !tbaa !129, !noalias !1762 ; 2 uses
  %i.flv = sub nsw i32 %i.flt, %i.flu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25, !noalias !1762
  %i.flw = sext i32 %i.flv to i64
  %i.flx = sext i32 %i.flu to i64
  br label %bb.arg

bb.arg:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit1212, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1221
  %i.fly = phi i64 [ %i.flx, %_ZN5arrow6StatusD2Ev.exit1212 ], [ 0, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1221 ]
  %.1.i960 = phi i64 [ %i.flw, %_ZN5arrow6StatusD2Ev.exit1212 ], [ 0, %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit1221 ] ; 2 uses
  %i.flz = load ptr, ptr %i.fdr, align 8, !tbaa !126
  %i.fma = getelementptr inbounds nuw i8, ptr %i.flz, i64 32
  %i.fmb = load i64, ptr %i.fma, align 8, !tbaa !304
  %.not.i961 = icmp eq i64 %i.fmb, 0
  %.pre1681 = load ptr, ptr %51, align 16, !tbaa !123 ; 3 uses
  br i1 %.not.i961, label %bb.arh, label %bb.ari

bb.arh:                                           ; preds = %bb.arg
  %i.fmc = getelementptr inbounds nuw i8, ptr %.pre1681, i64 8
  %i.fmd = load ptr, ptr %i.fmc, align 8, !tbaa !126
  %i.fme = getelementptr inbounds nuw i8, ptr %i.fmd, i64 16
  %i.fmf = load i64, ptr %i.fme, align 8, !tbaa !158
  %i.fmg = icmp sgt i64 %i.fmf, %.1.i960
  br i1 %i.fmg, label %bb.ari, label %bb.arl

bb.ari:                                           ; preds = %bb.arh, %bb.arg
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #25, !noalias !1762
  invoke void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.25") align 8 %54, ptr noundef nonnull align 8 dereferenceable(32) %.pre1681, i64 noundef %i.fly, i64 noundef %.1.i960)
          to label %bb.arj unwind label %bb.ark, !inline_history !1449

bb.arj:                                           ; preds = %bb.ari
  %i.fmh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %51, ptr noundef nonnull align 8 dereferenceable(16) %54) #25, !inline_history !1449 ; 0 uses
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %54) #25, !inline_history !1449
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #25, !noalias !1762
  %.pre1682 = load ptr, ptr %51, align 16, !tbaa !123
  br label %bb.arl

bb.ark:                                           ; preds = %bb.ari
  %i.fmi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #25, !noalias !1762
  br label %bb.arn

bb.arl:                                           ; preds = %bb.arj, %bb.arh
  %i.fmj = phi ptr [ %.pre1682, %bb.arj ], [ %.pre1681, %bb.arh ]
  %i.fmk = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.fml = load i64, ptr %i.fmk, align 8, !tbaa !111, !noalias !1762
  %i.fmm = add nsw i64 %i.fml, -1
  store i64 %i.fmm, ptr %i.fmk, align 8, !tbaa !111, !noalias !1762
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #25, !noalias !1762
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer10VisitArrayERKNS_5ArrayE(ptr dead_on_unwind noalias writable align 8 %55, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.fmj)
          to label %_ZN5arrow6StatusD2Ev.exit1210 unwind label %bb.arm, !inline_history !1449

_ZN5arrow6StatusD2Ev.exit1210:                    ; preds = %bb.arl
  call void @llvm.experimental.noalias.scope.decl(metadata !1774)
  %i.fmn = load ptr, ptr %55, align 8, !tbaa !53, !noalias !1774 ; 2 uses
  store ptr %i.fmn, ptr %0, align 8, !tbaa !53, !alias.scope !1774
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #25, !noalias !1762
  %i.fmo = icmp eq ptr %i.fmn, null
  br i1 %i.fmo, label %_ZN5arrow6StatusD2Ev.exit1208, label %.critedge38.i963

bb.arm:                                           ; preds = %bb.arl
  %i.fmp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #25, !noalias !1762
  br label %bb.arn

_ZN5arrow6StatusD2Ev.exit1208:                    ; preds = %_ZN5arrow6StatusD2Ev.exit1210
  %i.fmq = load i64, ptr %i.fmk, align 8, !tbaa !111, !noalias !1762
  %i.fmr = add nsw i64 %i.fmq, 1
  store i64 %i.fmr, ptr %i.fmk, align 8, !tbaa !111, !noalias !1762
  store ptr null, ptr %0, align 8, !tbaa !53, !alias.scope !1775
  br label %.critedge38.i963

.critedge41.i964:                                 ; preds = %_ZN5arrow6StatusD2Ev.exit1214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25, !noalias !1762
  br label %.critedge38.i963

.critedge38.i963:                                 ; preds = %.critedge41.i964, %_ZN5arrow6StatusD2Ev.exit1208, %_ZN5arrow6StatusD2Ev.exit1210, %_ZN5arrow6StatusD2Ev.exit1218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !1762
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %51) #25, !inline_history !1449
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #25, !noalias !1762
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitINS_8MapArrayEEENSt9enable_ifIXsr23is_var_length_list_typeINT_9TypeClassEEE5valueENS_6StatusEE4typeERKS6_.exit

bb.arn:                                           ; preds = %bb.arm, %bb.ark, %bb.arf, %bb.are
  %.pn.i962 = phi { ptr, i32 } [ %i.fmp, %bb.arm ], [ %i.fmi, %bb.ark ], [ %i.fls, %bb.arf ], [ %i.flf, %bb.are ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !1762
end_hunk_6
