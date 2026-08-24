Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl?download=true
inline.NumInlined: 18356
inline.NumDeleted: 8076
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN7rocksdb6DBImpl9GetEntityERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNS_19PinnableWideColumnsE:bb.a
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !634  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %common.resume unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #45
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.k, %_ZN7rocksdb11ReadOptionsD2Ev.exit18
  %common.resume.op = phi { ptr, i32 } [ %i.bb, %_ZN7rocksdb11ReadOptionsD2Ev.exit18 ], [ %i.p, %bb.k ], [ %i.p, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_ZN7rocksdb11ReadOptionsC2ERKS0_.exit:            ; preds = %bb.g, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 152
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 176 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !1488
  %i.y = icmp eq i8 %i.x, -1
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN7rocksdb11ReadOptionsC2ERKS0_.exit
  store i8 8, ptr %i.w, align 8, !tbaa !1488
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN7rocksdb11ReadOptionsC2ERKS0_.exit
  %i.z = load ptr, ptr %5, align 8, !tbaa !1945   ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not12.i.i.i, label %_ZNSt12forward_listIN7rocksdb13PinnableSliceESaIS1_EE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %_ZSt10destroy_atIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i
  %.013.i.i.i = phi ptr [ %i.aa, %_ZSt10destroy_atIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i ], [ %i.z, %bb.n ] ; 5 uses
  %i.aa = load ptr, ptr %.013.i.i.i, align 8, !tbaa !1945 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !9  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 72 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZSt10destroy_atIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !15
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #41
  br label %_ZSt10destroy_atIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i

_ZSt10destroy_atIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ah) #44
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i, i64 noundef 104) #41
  %.not.i.i.i16 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i16, label %_ZNSt12forward_listIN7rocksdb13PinnableSliceESaIS1_EE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1948

_ZNSt12forward_listIN7rocksdb13PinnableSliceESaIS1_EE5clearEv.exit.i: ; preds = %_ZSt10destroy_atIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i, %bb.n
  store ptr null, ptr %5, align 8, !tbaa !1945
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1949 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1952
  %.not.i.i1.i = icmp eq ptr %i.al, %i.aj
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN7rocksdb10WideColumnES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN7rocksdb10WideColumnES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt12forward_listIN7rocksdb13PinnableSliceESaIS1_EE5clearEv.exit.i
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !1952
  br label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit.i

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb10WideColumnES1_EvT_S3_RSaIT0_E.exit.i.i.i, %_ZNSt12forward_listIN7rocksdb13PinnableSliceESaIS1_EE5clearEv.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !807 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !808
  %.not.i.i2.i = icmp eq ptr %i.ap, %i.an
  br i1 %.not.i.i2.i, label %_ZN7rocksdb19PinnableWideColumns5ResetEv.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit.i
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !808
  br label %_ZN7rocksdb19PinnableWideColumns5ResetEv.exit

_ZN7rocksdb19PinnableWideColumns5ResetEv.exit:    ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit.i, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #44
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.aq, align 8, !tbaa !1953
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  store ptr %3, ptr %13, align 8, !tbaa !1960
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %5, ptr %i.at, align 8, !tbaa !1961
  %i.au = load ptr, ptr %1, align 64, !tbaa !100
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1448
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull align 8 dereferenceable(192) %12, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(88) %13)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %_ZN7rocksdb19PinnableWideColumns5ResetEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #44
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !634 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZN7rocksdb11ReadOptionsD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = invoke noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %_ZN7rocksdb11ReadOptionsD2Ev.exit unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #45
  unreachable

_ZN7rocksdb11ReadOptionsD2Ev.exit:                ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #44
  br label %bb.u

bb.r:                                             ; preds = %_ZN7rocksdb19PinnableWideColumns5ResetEv.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #44
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !634 ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i17, label %_ZN7rocksdb11ReadOptionsD2Ev.exit18, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = invoke noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %_ZN7rocksdb11ReadOptionsD2Ev.exit18 unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #45
  unreachable

_ZN7rocksdb11ReadOptionsD2Ev.exit18:              ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #44
  br label %common.resume

bb.u:                                             ; preds = %_ZN7rocksdb11ReadOptionsD2Ev.exit, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb6DBImpl9GetEntityERKNS_11ReadOptionsERKNS_5SliceEPSt6vectorINS_22PinnableAttributeGroupESaIS8_EE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr.57", align 8 ; 6 uses
  %6 = alloca %"class.std::unique_ptr.57", align 8 ; 6 uses
  %7 = alloca %"class.std::unique_ptr.57", align 8 ; 6 uses
  %8 = alloca %"class.std::unique_ptr.57", align 8 ; 6 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %11 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %14 = alloca %"struct.rocksdb::ReadOptions", align 8 ; 9 uses
  %15 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %16 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %17 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %18 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  %19 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %20 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %21 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %22 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %23 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %24 = alloca %"class.std::vector.1134", align 8 ; 9 uses
  %25 = alloca %"class.std::vector.1139", align 8 ; 8 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #44
  store ptr @.str.106, ptr %9, align 8, !tbaa !823
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 60, ptr %i.a, align 8, !tbaa !825
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #44
  store ptr @.str, ptr %10, align 8, !tbaa !823
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !825
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr null, ptr %i.c, align 8, !tbaa !482
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1962 ; 3 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !1965   ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv i64 %i.i, 80                        ; 14 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.l = load i8, ptr %i.k, align 8, !tbaa !1488
  switch i8 %i.l, label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit [
    i8 -1, label %bb.h
    i8 8, label %bb.h
  ]

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #44
  store ptr @.str.105, ptr %12, align 8, !tbaa !823
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 123, ptr %i.m, align 8, !tbaa !825
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #44
  store ptr @.str, ptr %13, align 8, !tbaa !823
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !825
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, i8 noundef zeroext 0)
  %.not.i = icmp eq ptr %0, %11
  br i1 %.not.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread

_ZN7rocksdb6StatusaSEOS0_.exit.thread:            ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit
  %i.o = load <4 x i8>, ptr %11, align 8, !tbaa !15 ; 2 uses
  store <4 x i8> %i.o, ptr %0, align 8, !tbaa !15
  store <4 x i8> zeroinitializer, ptr %11, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4, !tbaa !611, !range !504, !noundef !505 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.q, ptr %i.r, align 4, !tbaa !839
  store i8 0, ptr %i.p, align 4, !tbaa !839
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 5
  %i.t = load i8, ptr %i.s, align 1, !tbaa !15    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.t, ptr %i.u, align 1, !tbaa !840
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !663  ; 2 uses
  store ptr %i.w, ptr %i.c, align 8, !tbaa !663
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.pre315 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !663 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre315, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pre315) #41
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread, %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  %i.x = phi i8 [ %i.q, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ], [ 0, %_ZN7rocksdb6StatusaSEOS0_.exit ], [ 0, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i ]
  %i.y = phi i8 [ %i.t, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ], [ 0, %_ZN7rocksdb6StatusaSEOS0_.exit ], [ 0, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i ]
  %i.z = phi ptr [ %i.w, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ], [ null, %_ZN7rocksdb6StatusaSEOS0_.exit ], [ null, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i ] ; 3 uses
  %i.aa = phi <4 x i8> [ %i.o, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ], [ zeroinitializer, %_ZN7rocksdb6StatusaSEOS0_.exit ], [ zeroinitializer, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #44
  %.not274 = icmp eq ptr %i.e, %i.f
  br i1 %.not274, label %.loopexit, label %.lr.ph273

.lr.ph273:                                        ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %.not.i.i.i = icmp eq ptr %i.z, null
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph273, %_ZN7rocksdb22PinnableAttributeGroup9SetStatusERKNS_6StatusE.exit
  %.047272 = phi i64 [ 0, %.lr.ph273 ], [ %i.aj, %_ZN7rocksdb22PinnableAttributeGroup9SetStatusERKNS_6StatusE.exit ] ; 2 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !1965
  %i.ac = getelementptr inbounds nuw [80 x i8], ptr %i.ab, i64 %.047272 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.ad, %0
  br i1 %.not.i.i81, label %_ZN7rocksdb22PinnableAttributeGroup9SetStatusERKNS_6StatusE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store <4 x i8> %i.aa, ptr %i.ad, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i8 %i.x, ptr %i.ae, align 4, !tbaa !839
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 13
  store i8 %i.y, ptr %i.af, align 1, !tbaa !840
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.57") align 8 %8, ptr noundef nonnull %i.z)
          to label %.noexc unwind label %.thread375

.noexc:                                           ; preds = %bb.f
  %.pre.i.i = load ptr, ptr %8, align 8, !tbaa !663
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.e
  %i.ag = phi ptr [ %.pre.i.i, %.noexc ], [ null, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  store ptr null, ptr %8, align 8, !tbaa !663
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !663 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !663
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i.i: ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #41
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !663 ; 2 uses
  %.not.i12.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i12.i.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pr.i.i) #41
  br label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  br label %_ZN7rocksdb22PinnableAttributeGroup9SetStatusERKNS_6StatusE.exit

_ZN7rocksdb22PinnableAttributeGroup9SetStatusERKNS_6StatusE.exit: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i.i, %bb.d
  %i.aj = add nuw i64 %.047272, 1                 ; 2 uses
  %26 = icmp ult i64 %i.aj, %i.j
  br i1 %26, label %bb.d, label %.loopexit, !llvm.loop !1966

.thread375:                                       ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i177

bb.h:                                             ; preds = %bb.c, %bb.c
  %i.al = icmp eq ptr %i.e, %i.f
  br i1 %i.al, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %14, ptr noundef nonnull align 8 dereferenceable(192) %2, i64 119, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 120 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 136 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, i8 0, i64 32, i1 false)
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !634 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.not.i.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ar = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i32 noundef 2)
          to label %bb.k unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.as = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !63
  store <2 x ptr> %i.as, ptr %i.an, align 8, !tbaa !63
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !634 ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i82, label %bb.bn, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = invoke noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i32 noundef 3)
          to label %bb.bn unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #45
  unreachable

bb.o:                                             ; preds = %bb.k, %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 152
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 40, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 176 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !1488
  %i.bc = icmp eq i8 %i.bb, -1
  br i1 %i.bc, label %bb.p, label %.lr.ph.preheader

bb.p:                                             ; preds = %bb.o
  store i8 8, ptr %i.ba, align 8, !tbaa !1488
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o, %bb.p
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit
  %.046264 = phi i64 [ %i.dx, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.0187.0263 = phi ptr [ %.sroa.0187.2, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit ], [ null, %.lr.ph.preheader ] ; 11 uses
  %.sroa.9191.0262 = phi ptr [ %.sroa.9191.1, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit ], [ null, %.lr.ph.preheader ] ; 8 uses
  %.sroa.12.0261 = phi ptr [ %.sroa.12.1, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit ], [ null, %.lr.ph.preheader ] ; 10 uses
  %.sroa.9.0260 = phi ptr [ %.sroa.9.1, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit ], [ null, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0181.0259 = phi ptr [ %.sroa.0181.1, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit ], [ null, %.lr.ph.preheader ] ; 12 uses
  %.sroa.13.0258 = phi ptr [ %.sroa.13.2, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit ], [ null, %.lr.ph.preheader ] ; 5 uses
  %i.bd = load ptr, ptr %4, align 8, !tbaa !1965
  %i.be = getelementptr inbounds nuw [80 x i8], ptr %i.bd, i64 %.046264
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1967
  %.not66 = icmp eq ptr %i.bf, null
  br i1 %.not66, label %bb.q, label %bb.y

bb.q:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #44
  store ptr @.str.107, ptr %16, align 8, !tbaa !823
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 78, ptr %i.bg, align 8, !tbaa !825
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #44
  store ptr @.str, ptr %17, align 8, !tbaa !823
  %i.bh = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.bh, align 8, !tbaa !825
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %17, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit84 unwind label %bb.v

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit84: ; preds = %bb.q
  %.not.i85 = icmp eq ptr %0, %15
  br i1 %.not.i85, label %_ZN7rocksdb6StatusaSEOS0_.exit88, label %bb.r

bb.r:                                             ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit84
  %i.bi = load <4 x i8>, ptr %15, align 8, !tbaa !15
  store <4 x i8> %i.bi, ptr %0, align 8, !tbaa !15
  store <4 x i8> zeroinitializer, ptr %15, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 4, !tbaa !611, !range !504, !noundef !505
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.bk, ptr %i.bl, align 4, !tbaa !839
  store i8 0, ptr %i.bj, align 4, !tbaa !839
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 5 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !15
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !840
  store i8 0, ptr %i.bm, align 1, !tbaa !840
  %i.bp = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !663
  store ptr null, ptr %i.bp, align 8, !tbaa !663
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !663 ; 2 uses
  store ptr %i.bq, ptr %i.c, align 8, !tbaa !663
  %.not.i.i.i.i.i86 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i86, label %_ZN7rocksdb6StatusaSEOS0_.exit88, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i87

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i87: ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.br) #41
  br label %_ZN7rocksdb6StatusaSEOS0_.exit88

_ZN7rocksdb6StatusaSEOS0_.exit88:                 ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit84, %bb.r, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i87
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !663 ; 2 uses
  %.not.i.i89 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i89, label %_ZN7rocksdb6StatusD2Ev.exit91, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i90

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i90: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit88
  call void @_ZdaPv(ptr noundef nonnull %i.bt) #41
  br label %_ZN7rocksdb6StatusD2Ev.exit91

_ZN7rocksdb6StatusD2Ev.exit91:                    ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit88, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #44
  %i.bu = load ptr, ptr %4, align 8, !tbaa !1965
  %i.bv = getelementptr inbounds nuw [80 x i8], ptr %i.bu, i64 %.046264 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #44
  store ptr @.str.108, ptr %19, align 8, !tbaa !823
  %i.bw = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 35, ptr %i.bw, align 8, !tbaa !825
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #44
  store ptr @.str, ptr %20, align 8, !tbaa !823
  %i.bx = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 0, ptr %i.bx, align 8, !tbaa !825
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit93 unwind label %bb.w

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit93: ; preds = %_ZN7rocksdb6StatusD2Ev.exit91
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.by, %18
  br i1 %.not.i.i94, label %_ZN7rocksdb22PinnableAttributeGroup9SetStatusERKNS_6StatusE.exit104, label %bb.s

bb.s:                                             ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit93
  %i.bz = load <4 x i8>, ptr %18, align 8, !tbaa !15
  store <4 x i8> %i.bz, ptr %i.by, align 8, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.cb = load i8, ptr %i.ca, align 4, !tbaa !839, !range !504, !noundef !505
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i8 %i.cb, ptr %i.cc, align 4, !tbaa !839
  %i.cd = getelementptr inbounds nuw i8, ptr %18, i64 5
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !840
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 13
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !840
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  %i.cg = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !663 ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i95, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.57") align 8 %7, ptr noundef nonnull %i.ch)
          to label %.noexc103 unwind label %bb.x

.noexc103:                                        ; preds = %bb.t
  %.pre.i.i96 = load ptr, ptr %7, align 8, !tbaa !663
  br label %bb.u

bb.u:                                             ; preds = %.noexc103, %bb.s
  %i.ci = phi ptr [ %.pre.i.i96, %.noexc103 ], [ null, %bb.s ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  store ptr null, ptr %7, align 8, !tbaa !663
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !663 ; 2 uses
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !663
  %.not.i.i.i.i.i.i97 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i97, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i.i102, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i.i98

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i.i98: ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.ck) #41
  %.pr.i.i99 = load ptr, ptr %7, align 8, !tbaa !663 ; 2 uses
  %.not.i12.i.i100 = icmp eq ptr %.pr.i.i99, null
  br i1 %.not.i12.i.i100, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i.i102, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i101

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i101: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i.i98
  call void @_ZdaPv(ptr noundef nonnull %.pr.i.i99) #41
  br label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i.i102

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i.i102: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i101, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i.i98, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  br label %_ZN7rocksdb22PinnableAttributeGroup9SetStatusERKNS_6StatusE.exit104

_ZN7rocksdb22PinnableAttributeGroup9SetStatusERKNS_6StatusE.exit104: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i.i102, %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit93
  %i.cl = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !663 ; 2 uses
  %.not.i.i105 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i105, label %_ZN7rocksdb6StatusD2Ev.exit107, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i106

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i106: ; preds = %_ZN7rocksdb22PinnableAttributeGroup9SetStatusERKNS_6StatusE.exit104
  call void @_ZdaPv(ptr noundef nonnull %i.cm) #41
  br label %_ZN7rocksdb6StatusD2Ev.exit107

_ZN7rocksdb6StatusD2Ev.exit107:                   ; preds = %_ZN7rocksdb22PinnableAttributeGroup9SetStatusERKNS_6StatusE.exit104, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #44
  br label %.loopexit198

.loopexit199:                                     ; preds = %_ZNKSt6vectorIN7rocksdb5SliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit.split-lp:                               ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.v:                                             ; preds = %bb.q
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #44
  br label %bb.bi

bb.w:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit91
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit110

bb.x:                                             ; preds = %bb.t
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load ptr, ptr %i.cg, align 8, !tbaa !663 ; 2 uses
  %.not.i.i108 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i108, label %_ZN7rocksdb6StatusD2Ev.exit110, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i109

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i109: ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.cq) #41
  br label %_ZN7rocksdb6StatusD2Ev.exit110

_ZN7rocksdb6StatusD2Ev.exit110:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i109, %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.co, %bb.w ], [ %i.cp, %bb.x ], [ %i.cp, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #44
  br label %bb.bi

bb.y:                                             ; preds = %.lr.ph
  %.not.i111 = icmp eq ptr %.sroa.9191.0262, %.sroa.13.0258
  br i1 %.not.i111, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9191.0262, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1976
  br label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit

bb.aa:                                            ; preds = %bb.y
  %i.cr = ptrtoint ptr %.sroa.9191.0262 to i64
  %i.cs = ptrtoint ptr %.sroa.0187.0263 to i64
  %i.ct = sub i64 %i.cr, %i.cs                    ; 4 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775792
  br i1 %i.cu, label %bb.ab, label %_ZNKSt6vectorIN7rocksdb5SliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #42
          to label %.noexc114 unwind label %.loopexit.split-lp

.noexc114:                                        ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN7rocksdb5SliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aa
  %i.cv = ashr exact i64 %i.ct, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i.i, %i.cv ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cv
  %i.cy = call i64 @llvm.umin.i64(i64 %i.cw, i64 576460752303423487)
  %i.cz = select i1 %i.cx, i64 576460752303423487, i64 %i.cy ; 3 uses
  %.not.i.i.i112 = icmp ne i64 %i.cz, 0
  call void @llvm.assume(i1 %.not.i.i.i112)
  %i.da = shl nuw nsw i64 %i.cz, 4
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #43
          to label %.noexc115 unwind label %.loopexit199 ; 5 uses

.noexc115:                                        ; preds = %_ZNKSt6vectorIN7rocksdb5SliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1976
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0187.0263, %.sroa.9191.0262
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc115, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i ], [ %i.db, %.noexc115 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %.sroa.0187.0263, %.noexc115 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !1976, !alias.scope !1977
  %i.dd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i113 = icmp eq ptr %i.dd, %.sroa.9191.0262
  br i1 %.not.i.i.i.i.i113, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1981

_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc115
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.db, %.noexc115 ], [ %i.de, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.0187.0263, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0187.0263, i64 noundef %i.ct) #41
  br label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ac, %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.cz
  br label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.z
  %.sroa.13.2 = phi ptr [ %i.df, %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.13.0258, %bb.z ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.9191.0262, %bb.z ]
  %.sroa.0187.2 = phi ptr [ %i.db, %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0187.0263, %bb.z ] ; 4 uses
  %.sroa.9191.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 16
  %i.dg = load ptr, ptr %4, align 8, !tbaa !1965
  %i.dh = getelementptr inbounds nuw [80 x i8], ptr %i.dg, i64 %.046264
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1967 ; 2 uses
  %.not.i116 = icmp eq ptr %.sroa.9.0260, %.sroa.12.0261
  br i1 %.not.i116, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit
  store ptr %i.di, ptr %.sroa.9.0260, align 8, !tbaa !1982
  br label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.ae:                                            ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit
  %i.dj = ptrtoint ptr %.sroa.12.0261 to i64
  %i.dk = ptrtoint ptr %.sroa.0181.0259 to i64
  %i.dl = sub i64 %i.dj, %i.dk                    ; 6 uses
  %i.dm = icmp eq i64 %i.dl, 9223372036854775800
  br i1 %i.dm, label %bb.af, label %_ZNKSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #42
          to label %.noexc119 unwind label %.loopexit.split-lp201

.noexc119:                                        ; preds = %bb.af
  unreachable

_ZNKSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ae
  %i.dn = ashr exact i64 %i.dl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i117 = call i64 @llvm.umax.i64(i64 %i.dn, i64 1)
  %i.do = add nsw i64 %.sroa.speculated.i.i.i117, %i.dn ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.dn
  %i.dq = call i64 @llvm.umin.i64(i64 %i.do, i64 1152921504606846975)
  %i.dr = select i1 %i.dp, i64 1152921504606846975, i64 %i.dq ; 3 uses
  %.not.i.i.i118 = icmp ne i64 %i.dr, 0
  call void @llvm.assume(i1 %.not.i.i.i118)
  %i.ds = shl nuw nsw i64 %i.dr, 3
  %i.dt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #43
          to label %.noexc120 unwind label %.loopexit200 ; 4 uses

.noexc120:                                        ; preds = %_ZNKSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 %i.dl ; 2 uses
  store ptr %i.di, ptr %i.du, align 8, !tbaa !1982
  %i.dv = icmp sgt i64 %i.dl, 0
  br i1 %i.dv, label %bb.ag, label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.ag:                                            ; preds = %.noexc120
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dt, ptr align 8 %.sroa.0181.0259, i64 %i.dl, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.ag, %.noexc120
  %.not.i17.i.i = icmp eq ptr %.sroa.0181.0259, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0181.0259, i64 noundef %i.dl) #41
  br label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.ah, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dr
  br label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.ad
  %.sroa.0181.1 = phi ptr [ %i.dt, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0181.0259, %bb.ad ] ; 2 uses
  %.pn195 = phi ptr [ %i.du, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.9.0260, %bb.ad ]
  %.sroa.12.1 = phi ptr [ %i.dw, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.12.0261, %bb.ad ] ; 2 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.pn195, i64 8
  %i.dx = add nuw i64 %.046264, 1                 ; 2 uses
  %27 = icmp ult i64 %i.dx, %i.j
  br i1 %27, label %.lr.ph, label %.loopexit198, !llvm.loop !1983

.loopexit200:                                     ; preds = %_ZNKSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit202 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit.split-lp201:                            ; preds = %bb.af
  %lpad.loopexit.split-lp203 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit198:                                     ; preds = %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit, %_ZN7rocksdb6StatusD2Ev.exit107
  %.sroa.13.0250 = phi ptr [ %.sroa.13.0258, %_ZN7rocksdb6StatusD2Ev.exit107 ], [ %.sroa.13.2, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit ] ; 3 uses
  %.sroa.0181.0238 = phi ptr [ %.sroa.0181.0259, %_ZN7rocksdb6StatusD2Ev.exit107 ], [ %.sroa.0181.1, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit ] ; 6 uses
  %.sroa.12.0227 = phi ptr [ %.sroa.12.0261, %_ZN7rocksdb6StatusD2Ev.exit107 ], [ %.sroa.12.1, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit ] ; 3 uses
  %.sroa.0187.0218 = phi ptr [ %.sroa.0187.0263, %_ZN7rocksdb6StatusD2Ev.exit107 ], [ %.sroa.0187.2, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit ] ; 6 uses
  %i.dy = load i8, ptr %0, align 8, !tbaa !815
  %i.dz = icmp eq i8 %i.dy, 0
  br i1 %i.dz, label %bb.aq, label %.lr.ph269

.lr.ph269:                                        ; preds = %.loopexit198
  %i.ea = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.ed = getelementptr inbounds nuw i8, ptr %21, i64 5
  %i.ee = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph269, %bb.ap
  %.045268 = phi i64 [ 0, %.lr.ph269 ], [ %i.ex, %bb.ap ] ; 2 uses
  %i.ef = load ptr, ptr %4, align 8, !tbaa !1965
  %i.eg = getelementptr inbounds nuw [80 x i8], ptr %i.ef, i64 %.045268 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 3 uses
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !815
  %i.ej = icmp eq i8 %i.ei, 0
  br i1 %i.ej, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #44
  store ptr @.str.109, ptr %22, align 8, !tbaa !823
  store i64 80, ptr %i.ea, align 8, !tbaa !825
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #44
  store ptr @.str, ptr %23, align 8, !tbaa !823
  store i64 0, ptr %i.eb, align 8, !tbaa !825
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %23, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status10IncompleteERKNS_5SliceES3_.exit unwind label %bb.an

_ZN7rocksdb6Status10IncompleteERKNS_5SliceES3_.exit: ; preds = %bb.aj
  %.not.i.i122 = icmp eq ptr %i.eh, %21
  br i1 %.not.i.i122, label %_ZN7rocksdb22PinnableAttributeGroup9SetStatusERKNS_6StatusE.exit132, label %bb.ak

bb.ak:                                            ; preds = %_ZN7rocksdb6Status10IncompleteERKNS_5SliceES3_.exit
  %i.ek = load <4 x i8>, ptr %21, align 8, !tbaa !15
  store <4 x i8> %i.ek, ptr %i.eh, align 8, !tbaa !15
  %i.el = load i8, ptr %i.ec, align 4, !tbaa !839, !range !504, !noundef !505
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  store i8 %i.el, ptr %i.em, align 4, !tbaa !839
  %i.en = load i8, ptr %i.ed, align 1, !tbaa !840
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 13
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !840
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  %i.ep = load ptr, ptr %i.ee, align 8, !tbaa !663 ; 2 uses
  %.not.i.i.i123 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i123, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.57") align 8 %6, ptr noundef nonnull %i.ep)
          to label %.noexc131 unwind label %bb.ao

.noexc131:                                        ; preds = %bb.al
  %.pre.i.i124 = load ptr, ptr %6, align 8, !tbaa !663
  br label %bb.am

bb.am:                                            ; preds = %.noexc131, %bb.ak
  %i.eq = phi ptr [ %.pre.i.i124, %.noexc131 ], [ null, %bb.ak ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  store ptr null, ptr %6, align 8, !tbaa !663
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !663 ; 2 uses
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !663
  %.not.i.i.i.i.i.i125 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i.i.i125, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i.i130, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i.i126

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i.i126: ; preds = %bb.am
  call void @_ZdaPv(ptr noundef nonnull %i.es) #41
  %.pr.i.i127 = load ptr, ptr %6, align 8, !tbaa !663 ; 2 uses
  %.not.i12.i.i128 = icmp eq ptr %.pr.i.i127, null
  br i1 %.not.i12.i.i128, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i.i130, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i129

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i129: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i.i126
  call void @_ZdaPv(ptr noundef nonnull %.pr.i.i127) #41
  br label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i.i130

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i.i130: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i129, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i.i126, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  br label %_ZN7rocksdb22PinnableAttributeGroup9SetStatusERKNS_6StatusE.exit132

_ZN7rocksdb22PinnableAttributeGroup9SetStatusERKNS_6StatusE.exit132: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i.i130, %_ZN7rocksdb6Status10IncompleteERKNS_5SliceES3_.exit
  %i.et = load ptr, ptr %i.ee, align 8, !tbaa !663 ; 2 uses
  %.not.i.i133 = icmp eq ptr %i.et, null
  br i1 %.not.i.i133, label %_ZN7rocksdb6StatusD2Ev.exit135, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i134

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i134: ; preds = %_ZN7rocksdb22PinnableAttributeGroup9SetStatusERKNS_6StatusE.exit132
  call void @_ZdaPv(ptr noundef nonnull %i.et) #41
  br label %_ZN7rocksdb6StatusD2Ev.exit135

_ZN7rocksdb6StatusD2Ev.exit135:                   ; preds = %_ZN7rocksdb22PinnableAttributeGroup9SetStatusERKNS_6StatusE.exit132, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #44
  br label %bb.ap

bb.an:                                            ; preds = %bb.aj
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit138

bb.ao:                                            ; preds = %bb.al
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = load ptr, ptr %i.ee, align 8, !tbaa !663 ; 2 uses
  %.not.i.i136 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i136, label %_ZN7rocksdb6StatusD2Ev.exit138, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i137

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i137: ; preds = %bb.ao
  call void @_ZdaPv(ptr noundef nonnull %i.ew) #41
  br label %_ZN7rocksdb6StatusD2Ev.exit138

_ZN7rocksdb6StatusD2Ev.exit138:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i137, %bb.ao, %bb.an
  %.pn68 = phi { ptr, i32 } [ %i.eu, %bb.an ], [ %i.ev, %bb.ao ], [ %i.ev, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i137 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #44
  br label %bb.bi

bb.ap:                                            ; preds = %bb.ai, %_ZN7rocksdb6StatusD2Ev.exit135
  %i.ex = add nuw i64 %.045268, 1                 ; 2 uses
  %28 = icmp ult i64 %i.ex, %i.j
  br i1 %28, label %bb.ai, label %.loopexit197, !llvm.loop !1984

bb.aq:                                            ; preds = %.loopexit198
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #44
  %i.ey = icmp ugt i64 %i.j, 164703072086692425
  br i1 %i.ey, label %bb.ar, label %.lr.ph.preheader.i.i.i.i.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.206) #42
          to label %.noexc140 unwind label %bb.au

.noexc140:                                        ; preds = %bb.ar
  unreachable

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.aq
  %i.ez = mul nuw nsw i64 %i.j, 56                ; 3 uses
  %i.fa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #43
          to label %_ZNSt12_Vector_baseIN7rocksdb6StatusESaIS1_EEC2EmRKS2_.exit.i unwind label %bb.au ; 5 uses

_ZNSt12_Vector_baseIN7rocksdb6StatusESaIS1_EEC2EmRKS2_.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.fa, ptr %24, align 8, !tbaa !1985
  %i.fb = getelementptr inbounds nuw [56 x i8], ptr %i.fa, i64 %i.j
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fa, i8 0, i64 %i.ez, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.fa, i64 %i.ez
  %i.fc = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  store ptr %i.fb, ptr %i.fd, align 8, !tbaa !1987
  store ptr %scevgep.i.i.i.i.i, ptr %i.fc, align 8, !tbaa !1988
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #44
  %i.fe = shl nuw nsw i64 %i.j, 4
  %i.ff = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fe) #43
          to label %.noexc147 unwind label %bb.av ; 5 uses

.noexc147:                                        ; preds = %_ZNSt12_Vector_baseIN7rocksdb6StatusESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.ff, ptr %25, align 8, !tbaa !1989
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %i.j
  %i.fh = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !1992
  %29 = add nsw i64 %i.j, -1
  %xtraiter = and i64 %i.j, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i143.prol.loopexit, label %.lr.ph.i.i.i.i.i143.prol

.lr.ph.i.i.i.i.i143.prol:                         ; preds = %.noexc147, %.lr.ph.i.i.i.i.i143.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.fk, %.lr.ph.i.i.i.i.i143.prol ], [ %i.ff, %.noexc147 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.fj, %.lr.ph.i.i.i.i.i143.prol ], [ %i.j, %.noexc147 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i143.prol ], [ 0, %.noexc147 ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8
  store ptr null, ptr %i.fi, align 8, !tbaa !482
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i.prol, i8 0, i64 6, i1 false)
  %i.fj = add i64 %.01012.i.i.i.i.i.prol, -1      ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i143.prol.loopexit, label %.lr.ph.i.i.i.i.i143.prol, !llvm.loop !1993

.lr.ph.i.i.i.i.i143.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i143.prol, %.noexc147
  %.lcssa.unr = phi ptr [ poison, %.noexc147 ], [ %i.fk, %.lr.ph.i.i.i.i.i143.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.ff, %.noexc147 ], [ %i.fk, %.lr.ph.i.i.i.i.i143.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.j, %.noexc147 ], [ %i.fj, %.lr.ph.i.i.i.i.i143.prol ]
  %i.fl = icmp ult i64 %29, 7
  br i1 %i.fl, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i143

.lr.ph.i.i.i.i.i143:                              ; preds = %.lr.ph.i.i.i.i.i143.prol.loopexit, %.lr.ph.i.i.i.i.i143
  %.013.i.i.i.i.i = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i143 ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i143.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.gb, %.lr.ph.i.i.i.i.i143 ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i143.prol.loopexit ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store ptr null, ptr %i.fm, align 8, !tbaa !482
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i, i8 0, i64 6, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  %i.fo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  store ptr null, ptr %i.fo, align 8, !tbaa !482
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, i8 0, i64 6, i1 false)
  %i.fp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %i.fq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store ptr null, ptr %i.fq, align 8, !tbaa !482
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i8 0, i64 6, i1 false)
  %i.fr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  %i.fs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  store ptr null, ptr %i.fs, align 8, !tbaa !482
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, i8 0, i64 6, i1 false)
  %i.ft = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  %i.fu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  store ptr null, ptr %i.fu, align 8, !tbaa !482
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, i8 0, i64 6, i1 false)
  %i.fv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  %i.fw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  store ptr null, ptr %i.fw, align 8, !tbaa !482
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, i8 0, i64 6, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  %i.fy = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  store ptr null, ptr %i.fy, align 8, !tbaa !482
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i8 0, i64 6, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  %i.ga = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  store ptr null, ptr %i.ga, align 8, !tbaa !482
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fz, i8 0, i64 6, i1 false)
  %i.gb = add i64 %.01012.i.i.i.i.i, -8           ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i144.7 = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i.i.i.i144.7, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i143, !llvm.loop !1994

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.i.i143, %.lr.ph.i.i.i.i.i143.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i143.prol.loopexit ], [ %i.gc, %.lr.ph.i.i.i.i.i143 ]
  %i.gd = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  store ptr %.lcssa, ptr %i.gd, align 8, !tbaa !1995
  invoke void @_ZN7rocksdb6DBImpl14MultiGetCommonERKNS_11ReadOptionsEmPPNS_18ColumnFamilyHandleEPKNS_5SliceEPNS_13PinnableSliceEPNS_19PinnableWideColumnsEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_6StatusEb(ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull align 8 dereferenceable(192) %14, i64 noundef %i.j, ptr noundef %.sroa.0181.0238, ptr noundef %.sroa.0187.0218, ptr noundef null, ptr noundef nonnull %i.fa, ptr noundef null, ptr noundef nonnull %i.ff, i1 noundef zeroext false)
          to label %.lr.ph271 unwind label %bb.aw

._crit_edge:                                      ; preds = %_ZN7rocksdb22PinnableAttributeGroup9SetStatusERKNS_6StatusE.exit166
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !1995 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hv, %i.ge
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb6StatusES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyIN7rocksdb6StatusEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gh, %_ZSt8_DestroyIN7rocksdb6StatusEEvPT_.exit.i.i.i ], [ %i.hv, %._crit_edge ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !663 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7rocksdb6StatusEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.gg) #41
  br label %_ZSt8_DestroyIN7rocksdb6StatusEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb6StatusEEvPT_.exit.i.i.i:  ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i148 = icmp eq ptr %i.gh, %i.ge
  br i1 %.not.i.i.i148, label %_ZSt8_DestroyIPN7rocksdb6StatusES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1996

_ZSt8_DestroyIPN7rocksdb6StatusES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN7rocksdb6StatusEEvPT_.exit.i.i.i, %._crit_edge
  %.not.i.i1.i = icmp eq ptr %i.hv, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPN7rocksdb6StatusES1_EvT_S3_RSaIT0_E.exit.i
  %i.gi = load ptr, ptr %i.fh, align 8, !tbaa !1992
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = ptrtoint ptr %i.hv to i64
  %i.gl = sub i64 %i.gj, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef %i.gl) #41
  br label %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb6StatusESaIS1_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIPN7rocksdb6StatusES1_EvT_S3_RSaIT0_E.exit.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #44
  %i.gm = load ptr, ptr %24, align 8, !tbaa !1985 ; 5 uses
  %i.gn = load ptr, ptr %i.fc, align 8, !tbaa !1988 ; 2 uses
  %.not4.i.i.i149 = icmp eq ptr %i.gm, %i.gn
  br i1 %.not4.i.i.i149, label %_ZSt8_DestroyIPN7rocksdb19PinnableWideColumnsES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i150

.lr.ph.i.i.i150:                                  ; preds = %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EED2Ev.exit, %.lr.ph.i.i.i150
  %.05.i.i.i151 = phi ptr [ %i.go, %.lr.ph.i.i.i150 ], [ %i.gm, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN7rocksdb19PinnableWideColumnsD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.05.i.i.i151) #44
  %i.go = getelementptr inbounds nuw i8, ptr %.05.i.i.i151, i64 56 ; 2 uses
  %.not.i.i.i152 = icmp eq ptr %i.go, %i.gn
  br i1 %.not.i.i.i152, label %_ZSt8_DestroyIPN7rocksdb19PinnableWideColumnsES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i150, !llvm.loop !1997

_ZSt8_DestroyIPN7rocksdb19PinnableWideColumnsES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i150, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EED2Ev.exit
  %.not.i.i1.i154 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i1.i154, label %_ZNSt6vectorIN7rocksdb19PinnableWideColumnsESaIS1_EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZSt8_DestroyIPN7rocksdb19PinnableWideColumnsES1_EvT_S3_RSaIT0_E.exit.i
  %i.gp = load ptr, ptr %i.fd, align 8, !tbaa !1987
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = ptrtoint ptr %i.gm to i64
  %i.gs = sub i64 %i.gq, %i.gr
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef %i.gs) #41
  br label %_ZNSt6vectorIN7rocksdb19PinnableWideColumnsESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb19PinnableWideColumnsESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb19PinnableWideColumnsES1_EvT_S3_RSaIT0_E.exit.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #44
  br label %.loopexit197

bb.au:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.ar
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.av:                                            ; preds = %_ZNSt12_Vector_baseIN7rocksdb6StatusESaIS1_EEC2EmRKS2_.exit.i
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.aw:                                            ; preds = %.unr-lcssa
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph271:                                        ; preds = %.unr-lcssa, %_ZN7rocksdb22PinnableAttributeGroup9SetStatusERKNS_6StatusE.exit166
  %.0270 = phi i64 [ %i.iq, %_ZN7rocksdb22PinnableAttributeGroup9SetStatusERKNS_6StatusE.exit166 ], [ 0, %.unr-lcssa ] ; 6 uses
  %i.gw = load ptr, ptr %4, align 8, !tbaa !1965
  %i.gx = getelementptr inbounds nuw [80 x i8], ptr %i.gw, i64 %.0270 ; 7 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.gy, i8 0, i64 6, i1 false)
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !663 ; 2 uses
  store ptr null, ptr %i.gz, align 8, !tbaa !663
  %.not.i.i.i.i.i.i.i155 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i.i.i.i.i155, label %_ZN7rocksdb6StatusD2Ev.exit.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i.i.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i.i.i: ; preds = %.lr.ph271
  call void @_ZdaPv(ptr noundef nonnull %i.ha) #41
  br label %_ZN7rocksdb6StatusD2Ev.exit.i

_ZN7rocksdb6StatusD2Ev.exit.i:                    ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i.i.i, %.lr.ph271
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 24 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !1945 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.hc, null
  br i1 %.not12.i.i.i.i, label %_ZNSt12forward_listIN7rocksdb13PinnableSliceESaIS1_EE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN7rocksdb6StatusD2Ev.exit.i, %_ZSt10destroy_atIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.hd, %_ZSt10destroy_atIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i.i ], [ %i.hc, %_ZN7rocksdb6StatusD2Ev.exit.i ] ; 5 uses
  %i.hd = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !1945 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 56
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !9  ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 72 ; 2 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %_ZSt10destroy_atIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.hi = load i64, ptr %i.hg, align 8, !tbaa !15
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hj) #41
  br label %_ZSt10destroy_atIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i.i

_ZSt10destroy_atIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 24
  call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.hk) #44
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i, i64 noundef 104) #41
  %.not.i.i.i2.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i2.i, label %_ZNSt12forward_listIN7rocksdb13PinnableSliceESaIS1_EE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1948

_ZNSt12forward_listIN7rocksdb13PinnableSliceESaIS1_EE5clearEv.exit.i.i: ; preds = %_ZSt10destroy_atIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i.i, %_ZN7rocksdb6StatusD2Ev.exit.i
  store ptr null, ptr %i.hb, align 8, !tbaa !1945
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !1949 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gx, i64 40 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !1952
  %.not.i.i1.i.i = icmp eq ptr %i.ho, %i.hm
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit.i.i, label %_ZSt8_DestroyIPN7rocksdb10WideColumnES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN7rocksdb10WideColumnES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZNSt12forward_listIN7rocksdb13PinnableSliceESaIS1_EE5clearEv.exit.i.i
  store ptr %i.hm, ptr %i.hn, align 8, !tbaa !1952
  br label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit.i.i

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit.i.i: ; preds = %_ZSt8_DestroyIPN7rocksdb10WideColumnES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %_ZNSt12forward_listIN7rocksdb13PinnableSliceESaIS1_EE5clearEv.exit.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gx, i64 56
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !807 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gx, i64 64 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !808
  %.not.i.i2.i.i = icmp eq ptr %i.hs, %i.hq
  br i1 %.not.i.i2.i.i, label %_ZN7rocksdb22PinnableAttributeGroup5ResetEv.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit.i.i
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !808
  br label %_ZN7rocksdb22PinnableAttributeGroup5ResetEv.exit

_ZN7rocksdb22PinnableAttributeGroup5ResetEv.exit: ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit.i.i
  %i.ht = load ptr, ptr %4, align 8, !tbaa !1965  ; 2 uses
  %i.hu = getelementptr inbounds nuw [80 x i8], ptr %i.ht, i64 %.0270 ; 4 uses
  %i.hv = load ptr, ptr %25, align 8, !tbaa !1989 ; 6 uses
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.hv, i64 %.0270 ; 5 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  %.not.i.i156 = icmp eq ptr %i.hx, %i.hw
  br i1 %.not.i.i156, label %_ZN7rocksdb22PinnableAttributeGroup9SetStatusERKNS_6StatusE.exit166, label %bb.ax

bb.ax:                                            ; preds = %_ZN7rocksdb22PinnableAttributeGroup5ResetEv.exit
  %i.hy = load <4 x i8>, ptr %i.hw, align 8, !tbaa !15
  store <4 x i8> %i.hy, ptr %i.hx, align 8, !tbaa !15
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.ia = load i8, ptr %i.hz, align 4, !tbaa !839, !range !504, !noundef !505
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hu, i64 12
  store i8 %i.ia, ptr %i.ib, align 4, !tbaa !839
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 5
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !840
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hu, i64 13
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !840
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.if = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !663 ; 2 uses
  %.not.i.i.i157 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i157, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.57") align 8 %5, ptr noundef nonnull %i.ig)
          to label %.noexc165 unwind label %bb.ba

.noexc165:                                        ; preds = %bb.ay
  %.pre.i.i158 = load ptr, ptr %5, align 8, !tbaa !663
  br label %bb.az

bb.az:                                            ; preds = %.noexc165, %bb.ax
  %i.ih = phi ptr [ %.pre.i.i158, %.noexc165 ], [ null, %bb.ax ]
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hu, i64 16 ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !663
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !663 ; 2 uses
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !663
  %.not.i.i.i.i.i.i159 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i.i.i.i159, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i.i164, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i.i160

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i.i160: ; preds = %bb.az
  call void @_ZdaPv(ptr noundef nonnull %i.ij) #41
  %.pr.i.i161 = load ptr, ptr %5, align 8, !tbaa !663 ; 2 uses
  %.not.i12.i.i162 = icmp eq ptr %.pr.i.i161, null
  br i1 %.not.i12.i.i162, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i.i164, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i163

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i163: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i.i160
  call void @_ZdaPv(ptr noundef nonnull %.pr.i.i161) #41
  br label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i.i164

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i.i164: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i163, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i.i160, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  %.pre = load ptr, ptr %4, align 8, !tbaa !1965
  br label %_ZN7rocksdb22PinnableAttributeGroup9SetStatusERKNS_6StatusE.exit166

_ZN7rocksdb22PinnableAttributeGroup9SetStatusERKNS_6StatusE.exit166: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i.i164, %_ZN7rocksdb22PinnableAttributeGroup5ResetEv.exit
  %i.ik = phi ptr [ %.pre, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i.i164 ], [ %i.ht, %_ZN7rocksdb22PinnableAttributeGroup5ResetEv.exit ]
  %i.il = getelementptr inbounds nuw [80 x i8], ptr %i.ik, i64 %.0270
  %i.im = load ptr, ptr %24, align 8, !tbaa !1985
  %i.in = getelementptr inbounds nuw [56 x i8], ptr %i.im, i64 %.0270
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.ip = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN7rocksdb19PinnableWideColumnsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.io, ptr noundef nonnull align 8 dereferenceable(56) %i.in) #44 ; 0 uses
  %i.iq = add nuw i64 %.0270, 1                   ; 2 uses
  %30 = icmp ult i64 %i.iq, %i.j
  br i1 %30, label %.lr.ph271, label %._crit_edge, !llvm.loop !1998

bb.ba:                                            ; preds = %bb.ay
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.aw
  %.pn71 = phi { ptr, i32 } [ %i.ir, %bb.ba ], [ %i.gv, %bb.aw ]
  call void @_ZNSt6vectorIN7rocksdb6StatusESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #44
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.av
  %.pn71.pn = phi { ptr, i32 } [ %.pn71, %bb.bb ], [ %i.gu, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #44
  call void @_ZNSt6vectorIN7rocksdb19PinnableWideColumnsESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #44
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.au
  %.pn71.pn.pn = phi { ptr, i32 } [ %.pn71.pn, %bb.bc ], [ %i.gt, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #44
  br label %bb.bi

.loopexit197:                                     ; preds = %bb.ap, %_ZNSt6vectorIN7rocksdb19PinnableWideColumnsESaIS1_EED2Ev.exit
  %.not.i.i.i167 = icmp eq ptr %.sroa.0181.0238, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %.loopexit197
  %i.is = ptrtoint ptr %.sroa.12.0227 to i64
  %i.it = ptrtoint ptr %.sroa.0181.0238 to i64
  %i.iu = sub i64 %i.is, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0181.0238, i64 noundef %i.iu) #41
  br label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit: ; preds = %.loopexit197, %bb.be
  %.not.i.i.i168 = icmp eq ptr %.sroa.0187.0218, null
  br i1 %.not.i.i.i168, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit
  %i.iv = ptrtoint ptr %.sroa.13.0250 to i64
  %i.iw = ptrtoint ptr %.sroa.0187.0218 to i64
  %i.ix = sub i64 %i.iv, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0187.0218, i64 noundef %i.ix) #41
  br label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit:   ; preds = %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit, %bb.bf
  %i.iy = load ptr, ptr %i.an, align 8, !tbaa !634 ; 2 uses
  %.not.i.i169 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i169, label %_ZN7rocksdb11ReadOptionsD2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit
  %i.iz = invoke noundef zeroext i1 %i.iy(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i32 noundef 3)
          to label %_ZN7rocksdb11ReadOptionsD2Ev.exit unwind label %bb.bh ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  %i.ja = landingpad { ptr, i32 }
          catch ptr null
  %i.jb = extractvalue { ptr, i32 } %i.ja, 0
  call void @__clang_call_terminate(ptr %i.jb) #45
  unreachable

_ZN7rocksdb11ReadOptionsD2Ev.exit:                ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #44
  br label %.loopexit

bb.bi:                                            ; preds = %.loopexit200, %.loopexit.split-lp201, %.loopexit199, %.loopexit.split-lp, %_ZN7rocksdb6StatusD2Ev.exit138, %bb.v, %_ZN7rocksdb6StatusD2Ev.exit110, %bb.bd
  %.sroa.0181.0239 = phi ptr [ %.sroa.0181.0238, %bb.bd ], [ %.sroa.0181.0238, %_ZN7rocksdb6StatusD2Ev.exit138 ], [ %.sroa.0181.0259, %_ZN7rocksdb6StatusD2Ev.exit110 ], [ %.sroa.0181.0259, %bb.v ], [ %.sroa.0181.0259, %.loopexit.split-lp ], [ %.sroa.0181.0259, %.loopexit199 ], [ %.sroa.0181.0259, %.loopexit200 ], [ %.sroa.0181.0259, %.loopexit.split-lp201 ] ; 3 uses
  %.sroa.12.0228 = phi ptr [ %.sroa.12.0227, %bb.bd ], [ %.sroa.12.0227, %_ZN7rocksdb6StatusD2Ev.exit138 ], [ %.sroa.12.0261, %_ZN7rocksdb6StatusD2Ev.exit110 ], [ %.sroa.12.0261, %bb.v ], [ %.sroa.12.0261, %.loopexit.split-lp ], [ %.sroa.12.0261, %.loopexit199 ], [ %.sroa.12.0261, %.loopexit200 ], [ %.sroa.12.0261, %.loopexit.split-lp201 ]
  %.sroa.13.1 = phi ptr [ %.sroa.13.0250, %bb.bd ], [ %.sroa.13.0250, %_ZN7rocksdb6StatusD2Ev.exit138 ], [ %.sroa.13.0258, %_ZN7rocksdb6StatusD2Ev.exit110 ], [ %.sroa.13.0258, %bb.v ], [ %.sroa.9191.0262, %.loopexit.split-lp ], [ %.sroa.9191.0262, %.loopexit199 ], [ %.sroa.13.2, %.loopexit200 ], [ %.sroa.13.2, %.loopexit.split-lp201 ]
  %.sroa.0187.1 = phi ptr [ %.sroa.0187.0218, %bb.bd ], [ %.sroa.0187.0218, %_ZN7rocksdb6StatusD2Ev.exit138 ], [ %.sroa.0187.0263, %_ZN7rocksdb6StatusD2Ev.exit110 ], [ %.sroa.0187.0263, %bb.v ], [ %.sroa.0187.0263, %.loopexit.split-lp ], [ %.sroa.0187.0263, %.loopexit199 ], [ %.sroa.0187.2, %.loopexit200 ], [ %.sroa.0187.2, %.loopexit.split-lp201 ] ; 3 uses
  %.pn75.pn = phi { ptr, i32 } [ %.pn71.pn.pn, %bb.bd ], [ %.pn68, %_ZN7rocksdb6StatusD2Ev.exit138 ], [ %.pn, %_ZN7rocksdb6StatusD2Ev.exit110 ], [ %i.cn, %bb.v ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit199 ], [ %lpad.loopexit202, %.loopexit200 ], [ %lpad.loopexit.split-lp203, %.loopexit.split-lp201 ] ; 2 uses
  %.not.i.i.i170 = icmp eq ptr %.sroa.0181.0239, null
  br i1 %.not.i.i.i170, label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit171, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jc = ptrtoint ptr %.sroa.12.0228 to i64
  %i.jd = ptrtoint ptr %.sroa.0181.0239 to i64
  %i.je = sub i64 %i.jc, %i.jd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0181.0239, i64 noundef %i.je) #41
  br label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit171

_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit171: ; preds = %bb.bi, %bb.bj
  %.not.i.i.i172 = icmp eq ptr %.sroa.0187.1, null
  br i1 %.not.i.i.i172, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit173, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit171
  %i.jf = ptrtoint ptr %.sroa.13.1 to i64
  %i.jg = ptrtoint ptr %.sroa.0187.1 to i64
  %i.jh = sub i64 %i.jf, %i.jg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0187.1, i64 noundef %i.jh) #41
  br label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit173

_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit173: ; preds = %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit171, %bb.bk
  %i.ji = load ptr, ptr %i.an, align 8, !tbaa !634 ; 2 uses
  %.not.i.i174 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i174, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit173
  %i.jj = invoke noundef zeroext i1 %i.ji(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i32 noundef 3)
          to label %bb.bn unwind label %bb.bm     ; 0 uses

bb.bm:                                            ; preds = %bb.bl
  %i.jk = landingpad { ptr, i32 }
          catch ptr null
  %i.jl = extractvalue { ptr, i32 } %i.jk, 0
  call void @__clang_call_terminate(ptr %i.jl) #45
  unreachable

bb.bn:                                            ; preds = %bb.l, %bb.m, %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit173, %bb.bl
  %.pn75.pn.pn = phi { ptr, i32 } [ %i.at, %bb.l ], [ %.pn75.pn, %bb.bl ], [ %i.at, %bb.m ], [ %.pn75.pn, %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit173 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #44
  %.pre316 = load ptr, ptr %i.c, align 8, !tbaa !663 ; 2 uses
  %.not.i.i176 = icmp eq ptr %.pre316, null
  br i1 %.not.i.i176, label %_ZN7rocksdb6StatusD2Ev.exit178, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i177

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i177: ; preds = %.thread375, %bb.bn
  %.pn79378 = phi { ptr, i32 } [ %i.ak, %.thread375 ], [ %.pn75.pn.pn, %bb.bn ]
  %i.jm = phi ptr [ %i.z, %.thread375 ], [ %.pre316, %bb.bn ]
  call void @_ZdaPv(ptr noundef nonnull %i.jm) #41
  br label %_ZN7rocksdb6StatusD2Ev.exit178

_ZN7rocksdb6StatusD2Ev.exit178:                   ; preds = %bb.bn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i177
  %.pn79374 = phi { ptr, i32 } [ %.pn79378, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i177 ], [ %.pn75.pn.pn, %bb.bn ]
  resume { ptr, i32 } %.pn79374

.loopexit:                                        ; preds = %_ZN7rocksdb22PinnableAttributeGroup9SetStatusERKNS_6StatusE.exit, %_ZN7rocksdb6StatusD2Ev.exit, %_ZN7rocksdb11ReadOptionsD2Ev.exit, %bb.h, %bb.b
  ret void
}

; Function Attrs: uwtable
define void @_ZN7rocksdb6DBImpl14MultiGetCommonERKNS_11ReadOptionsEmPPNS_18ColumnFamilyHandleEPKNS_5SliceEPNS_13PinnableSliceEPNS_19PinnableWideColumnsEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_6StatusEb(ptr noundef nonnull align 64 dereferenceable(7336) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i1 noundef zeroext %9) local_unnamed_addr #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::unique_ptr.57", align 8 ; 12 uses
  %11 = alloca %"class.std::unique_ptr.57", align 8 ; 6 uses
  %12 = alloca %"class.rocksdb::PerfStepTimer", align 8 ; 16 uses
  %13 = alloca %"class.rocksdb::Status", align 8  ; 8 uses
  %14 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  %15 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %16 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %17 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %18 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %19 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %20 = alloca %"class.rocksdb::Status", align 8  ; 5 uses
  %21 = alloca %"class.rocksdb::autovector.1177", align 8 ; 16 uses
  %22 = alloca %"class.rocksdb::autovector.1163", align 8 ; 23 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %23 = alloca %"class.rocksdb::autovector.1750", align 8 ; 20 uses
  %24 = alloca %"class.rocksdb::autovector.1295", align 8 ; 26 uses
  %i.e = alloca ptr, align 8                      ; 11 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %25 = alloca %"class.rocksdb::GetWithTimestampReadCallback", align 8 ; 8 uses
  %26 = alloca %"class.rocksdb::Status", align 8  ; 12 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %.loopexit, label %.preheader392

.preheader392:                                    ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.h
  br i1 %spec.select152, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %17, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  br label %bb.i

bb.c:                                             ; preds = %.preheader392, %bb.h
  %.0118431 = phi i64 [ 0, %.preheader392 ], [ %i.aq, %bb.h ] ; 3 uses
  %.0119430 = phi i1 [ false, %.preheader392 ], [ %spec.select152, %bb.h ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.0118431
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1982 ; 2 uses
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !1999 ; 2 uses
  %.not151 = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.0118431 ; 11 uses
  br i1 %.not151, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #44
  call void @_ZNK7rocksdb6DBImpl18FailIfTsMismatchCfEPNS_18ColumnFamilyHandleERKNS_5SliceE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %15, ptr noundef nonnull align 64 dereferenceable(7336) %0, ptr noundef %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w)
  %.not.i = icmp eq ptr %i.x, %15
  %.pre605 = load ptr, ptr %i.l, align 8, !tbaa !663 ; 2 uses
  br i1 %.not.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load <4 x i8>, ptr %15, align 8, !tbaa !15
  store <4 x i8> %i.y, ptr %i.x, align 8, !tbaa !15
  store <4 x i8> zeroinitializer, ptr %15, align 8, !tbaa !15
end_hunk_0
