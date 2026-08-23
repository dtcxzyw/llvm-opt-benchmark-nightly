Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/recordio?download=true
inline.NumInlined: 395
inline.NumDeleted: 183
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.dmlc::LogMessageFatal::Entry" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.dmlc::LogMessageFatal" = type { i8 }
%"struct.dmlc::Error" = type { %"class.std::runtime_error" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.0 }
%union.anon.0 = type { ptr }
%"class.std::unique_ptr.7" = type { %"struct.std::__uniq_ptr_data.8" }
%"struct.std::__uniq_ptr_data.8" = type { %"class.std::__uniq_ptr_impl.9" }
%"class.std::__uniq_ptr_impl.9" = type { %"class.std::tuple.10" }
%"class.std::tuple.10" = type { %"struct.std::_Tuple_impl.11" }
%"struct.std::_Tuple_impl.11" = type { %"struct.std::_Head_base.14" }
%"struct.std::_Head_base.14" = type { ptr }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%"class.dmlc::DateLogger" = type { [9 x i8] }

$_ZN4dmlc15LogMessageFatalD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN4dmlc20FindNextRecordIOHeadEPcS0_ = comdat any

$_ZN4dmlc15LogMessageFatal8GetEntryEv = comdat any

$_ZN4dmlc15LogMessageFatal5Entry4InitEPKci = comdat any

$_ZN4dmlc15LogMessageFatal5Entry11ThreadLocalEv = comdat any

$_ZN4dmlc15LogMessageFatal5EntryD2Ev = comdat any

$_ZN4dmlc10StackTraceB5cxx11Emm = comdat any

$_ZN4dmlc15LogMessageFatal5Entry8FinalizeEv = comdat any

$_ZN4dmlc8DemangleB5cxx11EPKc = comdat any

$_ZN4dmlc5ErrorD0Ev = comdat any

$_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev = comdat any

$_ZN4dmlc14LogCheckFormatImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_ = comdat any

$_ZZN4dmlc15LogMessageFatal5Entry11ThreadLocalEvE6result = comdat any

$_ZGVZN4dmlc15LogMessageFatal5Entry11ThreadLocalEvE6result = comdat any

$_ZTIN4dmlc5ErrorE = comdat any

$_ZTSN4dmlc5ErrorE = comdat any

$_ZTVN4dmlc5ErrorE = comdat any

@.str = private unnamed_addr constant [58 x i8] c"/opt-bench/work/xgboost/xgboost/dmlc-core/src/recordio.cc\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Check failed: size < (1 << 29U)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"RecordIO only accept record less than 2^29 bytes\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Check failed: nread == sizeof(header)\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Inavlid RecordIO File\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Check failed: header[0] == RecordIOWriter::kMagic\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Invalid RecordIO File\00", align 1
@.str.8 = private unnamed_addr constant [83 x i8] c"Check failed: stream_->Read(BeginPtr(*out_rec) + size, upper_align) == upper_align\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Invalid RecordIO File upper_align=\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"Check failed: p[0] == RecordIOWriter::kMagic\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Check failed: pbegin_ <= pend_\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Invalid RecordIO Format\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Check failed: cflag == 1U\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"Check failed: pbegin_ + 2 * sizeof(uint32_t) <= pend_\00", align 1
@_ZZN4dmlc15LogMessageFatal5Entry11ThreadLocalEvE6result = linkonce_odr thread_local global %"struct.dmlc::LogMessageFatal::Entry" zeroinitializer, comdat, align 8
@_ZGVZN4dmlc15LogMessageFatal5Entry11ThreadLocalEvE6result = linkonce_odr thread_local local_unnamed_addr global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.16 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"%02d:%02d:%02d\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZTIN4dmlc5ErrorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4dmlc5ErrorE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4dmlc5ErrorE = linkonce_odr constant [14 x i8] c"N4dmlc5ErrorE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.22 = private unnamed_addr constant [14 x i8] c"Stack trace:\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"  [bt] (\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"_Z\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c" +\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"basic_string::basic_string\00", align 1
@.str.29 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"DMLC_LOG_STACK_TRACE_DEPTH\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@_ZTVN4dmlc5ErrorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4dmlc5ErrorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4dmlc5ErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.33 = private unnamed_addr constant [15 x i8] c"Check failed: \00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"(reinterpret_cast<size_t>(begin) & 3UL) == 0U\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"(reinterpret_cast<size_t>(end) & 3UL) == 0U\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c" vs. \00", align 1

@_ZN4dmlc19RecordIOChunkReaderC1ENS_10InputSplit4BlobEjj = unnamed_addr alias void (ptr, ptr, i64, i32, i32), ptr @_ZN4dmlc19RecordIOChunkReaderC2ENS_10InputSplit4BlobEjj

; Function Attrs: mustprogress uwtable
define void @_ZN4dmlc14RecordIOWriter11WriteRecordEPKvm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = icmp ult i64 %2, 536870912
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.f = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.f, ptr noundef nonnull @.str, i32 noundef 12)
  %i.g = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.c ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.b
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.1, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.3, i64 noundef 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 -824761590, ptr %i.a, align 4, !tbaa !8
  %i.l = trunc i64 %2 to i32                      ; 6 uses
  %i.m = add i32 %i.l, 3
  %i.n = and i32 %i.m, -4                         ; 2 uses
  %.not57 = icmp ult i32 %i.l, 4
  br i1 %.not57, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  br label %bb.f

.lr.ph:                                           ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = and i64 %2, 4294967292
  br label %bb.g

._crit_edge:                                      ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %.not = icmp eq i32 %.1, 0
  %spec.select = select i1 %.not, i32 0, i32 1610612736
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %.047.lcssa65 = phi i32 [ %.1, %._crit_edge ], [ 0, %._crit_edge.thread ] ; 3 uses
  %4 = phi i32 [ %spec.select, %._crit_edge ], [ 0, %._crit_edge.thread ]
  %i.t = sub i32 %i.l, %.047.lcssa65              ; 2 uses
  %i.u = or i32 %4, %i.t
  store i32 %i.u, ptr %i.c, align 4, !tbaa !8
  %i.v = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %i.a, i64 noundef 4) ; 0 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.c, i64 noundef 4) ; 0 uses
  %.not50 = icmp eq i32 %.047.lcssa65, %i.l
  br i1 %.not50, label %bb.p, label %bb.o

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 8 uses
  %.04755 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.n ] ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !17
  %i.ah = load i8, ptr %i.a, align 4, !tbaa !17
  %i.ai = icmp eq i8 %i.ag, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !17
  %i.am = load i8, ptr %i.o, align 1, !tbaa !17
  %i.an = icmp eq i8 %i.al, %i.am
  br i1 %i.an, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !17
  %i.ar = load i8, ptr %i.p, align 2, !tbaa !17
  %i.as = icmp eq i8 %i.aq, %i.ar
  br i1 %i.as, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 3
  %i.av = load i8, ptr %i.au, align 1, !tbaa !17
  %i.aw = load i8, ptr %i.q, align 1, !tbaa !17
  %i.ax = icmp eq i8 %i.av, %i.aw
  br i1 %i.ax, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.ay = icmp eq i32 %.04755, 0
  %i.az = select i1 %i.ay, i32 536870912, i32 1073741824
  %i.ba = trunc nuw i64 %indvars.iv to i32
  %i.bb = sub i32 %i.ba, %.04755                  ; 2 uses
  %i.bc = or i32 %i.az, %i.bb
  store i32 %i.bc, ptr %i.b, align 4, !tbaa !8
  %i.bd = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call noundef i64 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull %i.a, i64 noundef 4) ; 0 uses
  %i.bi = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call noundef i64 %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull %i.b, i64 noundef 4) ; 0 uses
  %i.bn = zext i32 %.04755 to i64                 ; 2 uses
  %.not52 = icmp eq i64 %indvars.iv, %i.bn
  br i1 %.not52, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %i.bn
  %i.bq = zext i32 %i.bb to i64
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !15
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef i64 %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef %i.bp, i64 noundef %i.bq) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bv = load i64, ptr %i.r, align 8, !tbaa !18
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.r, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.bx = trunc i64 %indvars.iv to i32
  %i.by = add i32 %i.bx, 4
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.m
  %.1 = phi i32 [ %i.by, %bb.m ], [ %.04755, %bb.j ], [ %.04755, %bb.i ], [ %.04755, %bb.h ], [ %.04755, %bb.g ] ; 3 uses
  %indvars.iv.next = add i64 %indvars.iv, 4       ; 2 uses
  %i.bz = icmp samesign ult i64 %indvars.iv.next, %i.s
  br i1 %i.bz, label %bb.g, label %._crit_edge, !llvm.loop !19

bb.o:                                             ; preds = %bb.f
  %i.ca = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.cb = zext i32 %.047.lcssa65 to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cb
  %i.cd = zext i32 %i.t to i64
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !15
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call noundef i64 %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef %i.cc, i64 noundef %i.cd) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !8
  %.not51 = icmp eq i32 %i.n, %i.l
  br i1 %.not51, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.cj = sub i32 %i.n, %i.l
  %i.ck = zext i32 %i.cj to i64
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !15
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = call noundef i64 %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull %i.d, i64 noundef %i.ck) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void

bb.s:                                             ; preds = %bb.c
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #23
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %0) ; 2 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.21, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str.31) #7 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN4dmlc18LogStackTraceLevelEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.a) #7
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN4dmlc18LogStackTraceLevelEv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.a, align 8, !tbaa !21
  %i.h = add i64 %i.g, 1
  br label %_ZN4dmlc18LogStackTraceLevelEv.exit

_ZN4dmlc18LogStackTraceLevelEv.exit:              ; preds = %bb.a, %bb.b, %bb.c
  %i.i = phi i64 [ %i.h, %bb.c ], [ 10, %bb.b ], [ 10, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @_ZN4dmlc10StackTraceB5cxx11Emm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, i64 noundef 1, i64 noundef %i.i)
  %i.j = load ptr, ptr %1, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !26
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZN4dmlc18LogStackTraceLevelEv.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.21, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !17
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.t = call ptr @__cxa_allocate_exception(i64 16) #7 ; 3 uses
  %i.u = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN4dmlc15LogMessageFatal5Entry8FinalizeEv(ptr dead_on_unwind writable sret(%"struct.dmlc::Error") align 8 %i.t, ptr noundef nonnull align 8 dereferenceable(376) %i.u)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @__cxa_throw(ptr %i.t, ptr nonnull @_ZTIN4dmlc5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZN4dmlc18LogStackTraceLevelEv.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  %i.z = load i64, ptr %i.x, align 8, !tbaa !17
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.t) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #7 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4dmlc14RecordIOReader10NextRecordEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(17) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 7 uses
  %2 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %3 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %4 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !27, !range !30, !noundef !31
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !26
  %i.f = load ptr, ptr %1, align 8, !tbaa !22
  store i8 0, ptr %i.f, align 1, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.q, %bb.b
  %.031 = phi i64 [ 0, %bb.b ], [ %i.ay, %bb.q ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.h = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef i64 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.a, i64 noundef 8)
  switch i64 %i.k, label %bb.d [
    i64 0, label %.thread
    i64 8, label %bb.g
  ]

.thread:                                          ; preds = %bb.c
  store i8 1, ptr %i.b, align 8, !tbaa !27
  br label %.sink.split

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.l = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.l, ptr noundef nonnull @.str, i32 noundef 62)
  %i.m = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.e ; 3 uses
end_hunk_0
