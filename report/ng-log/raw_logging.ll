Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ng-log/original/raw_logging?download=true
inline.NumInlined: 82
inline.NumDeleted: 47
begin_hunk_0_@_ZN5nglog10LogMessage9LogStreamC2EPcil:bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8, !tbaa !9
  %i.h = load ptr, ptr %0, align 8, !tbaa !9
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.k, ptr noundef null)
  %i.l = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.l, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  store ptr %i.n, ptr %i.q, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.r, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, i8 0, i64 48, i1 false)
  tail call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #20
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5nglog12base_logging12LogStreamBufE, i64 16), ptr %i.r, align 8, !tbaa !9
  %i.u = sext i32 %3 to i64
  %i.v = getelementptr inbounds i8, ptr %2, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.x, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %i.y, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.w, ptr %i.z, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %4, ptr %i.aa, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %0, ptr %i.ab, align 8, !tbaa !24
  %i.ac = load ptr, ptr %0, align 8, !tbaa !9
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae
  %i.ag = invoke noundef ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.af, ptr noundef nonnull %i.r)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.r, align 8, !tbaa !9
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.t) #20
  resume { ptr, i32 } %i.ah
}

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5nglog10LogMessage9LogStreamC1EPcil(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr null, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 0, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 313
  store i8 0, ptr %i.d, align 1, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN5nglog10LogMessage9LogStreamE0_So, i64 24), ptr %0, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN5nglog10LogMessage9LogStreamE0_So, i64 64), ptr %i.a, align 8, !tbaa !9
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.a, ptr noundef null)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5nglog10LogMessage9LogStreamE, i64 24), ptr %0, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5nglog10LogMessage9LogStreamE, i64 64), ptr %i.a, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  tail call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #20
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5nglog12base_logging12LogStreamBufE, i64 16), ptr %i.f, align 8, !tbaa !9
  %i.i = sext i32 %2 to i64
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.l, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.m, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.k, ptr %i.n, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %3, ptr %i.o, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %0, ptr %i.p, align 8, !tbaa !24
  %i.q = load ptr, ptr %0, align 8, !tbaa !9
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  %i.u = invoke noundef ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.t, ptr noundef nonnull %i.f)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8, !tbaa !9
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.v, %bb.d ], [ %i.w, %bb.e ]
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.a) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5nglog6RawLogENS_11LogSeverityEPKciS2_z(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ...) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.nglog::(anonymous namespace)::StaticStringBuf", align 8 ; 19 uses
  %5 = alloca %"class.std::basic_ostream", align 8 ; 14 uses
  %i.a = alloca [3000 x i8], align 16             ; 6 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %6 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  %7 = alloca %class.anon, align 8                ; 8 uses
  %i.d = load i8, ptr @_ZN3fLB17FLAGS_logtostdoutE, align 1, !tbaa !51, !range !52, !noundef !53
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr @_ZN3fLB17FLAGS_logtostderrE, align 1, !range !52
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr @_ZN3fLI21FLAGS_stderrthresholdE, align 4, !tbaa !54
  %i.i = icmp sge i32 %0, %i.h
  %i.j = load i8, ptr @_ZN3fLB21FLAGS_alsologtostderrE, align 1, !range !52
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond3 = select i1 %i.i, i1 true, i1 %i.k
  br i1 %or.cond3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef zeroext i1 @_ZN5nglog20IsLoggingInitializedEv()
  br i1 %i.l, label %bb.aa, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %4, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #20
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5nglog12_GLOBAL__N_115StaticStringBufILm3000EEE, i64 16), ptr %4, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 3064 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  store ptr %i.o, ptr %i.q, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.o, ptr %i.r, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.p, ptr %i.s, align 8, !tbaa !17
  store ptr %i.o, ptr %i.m, align 8, !tbaa !55
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.o, ptr %i.t, align 8, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.p, ptr %i.u, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.v) #20
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 224
  store ptr null, ptr %i.w, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 232
  store i8 0, ptr %i.x, align 8, !tbaa !39
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 233
  store i8 0, ptr %i.y, align 1, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSo, i64 24), ptr %5, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSo, i64 64), ptr %i.v, align 8, !tbaa !9
  %i.aa = load i64, ptr getelementptr inbounds nuw inrange(0, 40) (i8, ptr @_ZTVSo, i64 0), align 8
  %i.ab = getelementptr inbounds i8, ptr %5, i64 %i.aa
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ab, ptr noundef nonnull %4)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %5, align 8, !tbaa !9
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %5, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 5, ptr %i.ag, align 8, !tbaa !58
  %i.ah = tail call i64 @pthread_self() #21       ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.3, i64 noundef 36)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE.exit unwind label %bb.r ; 0 uses

bb.g:                                             ; preds = %bb.e
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.ah)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE.exit unwind label %bb.r ; 0 uses

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr %i.a, ptr %i.b, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 3000, ptr %i.c, align 8, !tbaa !42
  %i.al = invoke noundef ptr @_ZN5nglog18GetLogSeverityNameENS_11LogSeverityE(i32 noundef %0)
          to label %bb.h unwind label %bb.s

bb.h:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE.exit
  %i.am = load i8, ptr %i.al, align 1, !tbaa !59
  %i.an = load ptr, ptr %i.q, align 8, !tbaa !15  ; 5 uses
  %i.ao = load ptr, ptr %i.r, align 8, !tbaa !16
  %.not.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i, label %_ZN5nglog12_GLOBAL__N_115StaticStringBufILm3000EE4dataEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.s, align 8, !tbaa !17  ; 2 uses
  %.not1.i = icmp eq ptr %i.an, %i.ap
  br i1 %.not1.i, label %_ZN5nglog12_GLOBAL__N_115StaticStringBufILm3000EE4dataEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 -1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !59
  %.not2.i = icmp eq i8 %i.ar, 0
  br i1 %.not2.i, label %_ZN5nglog12_GLOBAL__N_115StaticStringBufILm3000EE4dataEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = icmp ult ptr %i.an, %i.ap
  br i1 %i.as, label %bb.l, label %bb.m, !prof !60

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.an, align 1, !tbaa !59
  %i.at = load ptr, ptr %i.q, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store ptr %i.au, ptr %i.q, align 8, !tbaa !15
  br label %_ZN5nglog12_GLOBAL__N_115StaticStringBufILm3000EE4dataEv.exit

bb.m:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %4, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 104
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(3064) %4, i32 noundef 0)
          to label %_ZN5nglog12_GLOBAL__N_115StaticStringBufILm3000EE4dataEv.exit unwind label %bb.n, !inline_history !50 ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #22
  unreachable

_ZN5nglog12_GLOBAL__N_115StaticStringBufILm3000EE4dataEv.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.l, %bb.m
  %i.bb = invoke noundef ptr @_ZN5nglog5tools14const_basenameEPKc(ptr noundef %1)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %_ZN5nglog12_GLOBAL__N_115StaticStringBufILm3000EE4dataEv.exit
  %i.bc = sext i8 %i.am to i32
  call void (ptr, ptr, ptr, ...) @_ZN5nglogL8DoRawLogEPPcPmPKcz(ptr noundef %i.b, ptr noundef %i.c, ptr noundef nonnull @.str, i32 noundef %i.bc, ptr noundef nonnull %i.o, ptr noundef %i.bb, i32 noundef %2)
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !41  ; 3 uses
  %i.be = load i64, ptr %i.c, align 8, !tbaa !42  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.va_start.p0(ptr nonnull %6)
  %i.bf = call i32 @vsnprintf(ptr noundef %i.bd, i64 noundef %i.be, ptr noundef readonly %3, ptr noundef nonnull %6) #20 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = zext nneg i32 %i.bf to i64              ; 3 uses
  %i.bi = icmp ult i64 %i.be, %i.bh
  br i1 %i.bi, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = sub nuw i64 %i.be, %i.bh
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !42
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bh
  store ptr %i.bk, ptr %i.b, align 8, !tbaa !41
  br label %bb.u

bb.r:                                             ; preds = %bb.d, %bb.g, %bb.f
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %_ZN5nglog12_GLOBAL__N_115StaticStringBufILm3000EE4dataEv.exit, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.t:                                             ; preds = %bb.w
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.u:                                             ; preds = %bb.o, %bb.p, %bb.q
  %.str.2.sink = phi ptr [ @.str.1, %bb.q ], [ @.str.2, %bb.p ], [ @.str.2, %bb.o ]
  call void @llvm.va_end.p0(ptr nonnull %6)
  call void (ptr, ptr, ptr, ...) @_ZN5nglogL8DoRawLogEPPcPmPKcz(ptr noundef %i.b, ptr noundef %i.c, ptr noundef nonnull %.str.2.sink)
  %i.bo = load ptr, ptr @stderr, align 8, !tbaa !62
  %i.bp = call i32 @fileno(ptr noundef %i.bo) #20
  %i.bq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #23
  %i.br = call i64 (i64, ...) @syscall(i64 noundef 1, i32 noundef %i.bp, ptr noundef nonnull %i.a, i64 noundef %i.bq) #20 ; 0 uses
  %i.bs = icmp eq i32 %0, 3
  br i1 %i.bs, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr %1, ptr %7, align 8, !tbaa !44
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %2, ptr %i.bt, align 8, !tbaa !45
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.bd, ptr %i.bu, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.be, ptr %i.bv, align 8, !tbaa !47
  invoke fastcc void @"_ZSt9call_onceIZN5nglog6RawLogENS0_11LogSeverityEPKciS3_zE3$_0JEEvRSt9once_flagOT_DpOT0_"(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  invoke void @_ZN5nglog10LogMessage4FailEv() #24
          to label %bb.x unwind label %bb.t

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.ab

bb.z:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.v) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %4, align 8, !tbaa !9
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.aa

bb.aa:                                            ; preds = %bb.c, %bb.z
  ret void

bb.ab:                                            ; preds = %bb.y, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.t ], [ %i.bw, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ab ], [ %i.bm, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.body

.body:                                            ; preds = %bb.r, %bb.ac
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.r ], [ %.pn.pn, %bb.ac ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.v) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %4, align 8, !tbaa !9
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare noundef zeroext i1 @_ZN5nglog20IsLoggingInitializedEv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree nounwind uwtable
define internal void @_ZN5nglogL8DoRawLogEPPcPmPKcz(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readonly captures(none) %2, ...) unnamed_addr #4 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = load ptr, ptr %0, align 8, !tbaa !41
  %i.b = load i64, ptr %1, align 8, !tbaa !42
  %i.c = call i32 @vsnprintf(ptr noundef %i.a, i64 noundef %i.b, ptr noundef %2, ptr noundef nonnull %3) #20 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %i.c to i64                ; 3 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.g = icmp ult i64 %i.f, %i.e
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sub nuw i64 %i.f, %i.e
  store i64 %i.h, ptr %1, align 8, !tbaa !42
  %i.i = load ptr, ptr %0, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e
  store ptr %i.j, ptr %0, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

declare noundef ptr @_ZN5nglog18GetLogSeverityNameENS_11LogSeverityE(i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN5nglog5tools14const_basenameEPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #5

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt9call_onceIZN5nglog6RawLogENS0_11LogSeverityEPKciS3_zE3$_0JEEvRSt9once_flagOT_DpOT0_"(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.0, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store ptr %0, ptr %1, align 8, !tbaa !48
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !48
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN5nglog6RawLogENS3_11LogSeverityEPKciS6_zE3$_0JEEvRS_OT_DpOT0_EUlvE_EERS9_ENUlvE_8__invokeEv", ptr %i.b, align 8, !tbaa !48
  %i.c = invoke noundef i32 @pthread_once(ptr noundef nonnull @_ZN5nglogL7crashedE, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit:                  ; preds = %bb.a
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.c) #24
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.a, align 8, !tbaa !48
  store ptr null, ptr %i.b, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit
  store ptr null, ptr %i.a, align 8, !tbaa !48
  store ptr null, ptr %i.b, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: noreturn
declare void @_ZN5nglog10LogMessage4FailEv() local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSoD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt15basic_streambufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #9 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSoD0Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSoD1Ev(ptr noundef) unnamed_addr #10 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSoD0Ev(ptr noundef) unnamed_addr #10 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5nglog10LogMessage9LogStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5nglog10LogMessage9LogStreamE, i64 24), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5nglog10LogMessage9LogStreamE, i64 64), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #20
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.a) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5nglog10LogMessage9LogStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5nglog10LogMessage9LogStreamE, i64 24), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5nglog10LogMessage9LogStreamE, i64 64), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #20, !inline_history !49
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.a) #20, !inline_history !49
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 352) #25
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N5nglog10LogMessage9LogStreamD1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5nglog10LogMessage9LogStreamE, i64 24), ptr %i.d, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5nglog10LogMessage9LogStreamE, i64 64), ptr %i.e, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #20, !inline_history !49
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.e) #20, !inline_history !49
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N5nglog10LogMessage9LogStreamD0Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5nglog10LogMessage9LogStreamE, i64 24), ptr %i.d, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5nglog10LogMessage9LogStreamE, i64 64), ptr %i.e, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #20, !inline_history !63
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.e) #20, !inline_history !63
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 noundef 352) #25, !inline_history !64
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5nglog12base_logging12LogStreamBufD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #25
  ret void
}

end_hunk_0
