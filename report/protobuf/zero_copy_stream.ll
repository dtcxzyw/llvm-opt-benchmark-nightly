inline.NumInlined: 207
inline.NumDeleted: 134
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.absl::lts_20250512::CordBuffer" = type { %"struct.absl::lts_20250512::CordBuffer::Rep" }
%"struct.absl::lts_20250512::CordBuffer::Rep" = type { %union.anon }
%union.anon = type { %"struct.absl::lts_20250512::CordBuffer::Rep::Long" }
%"struct.absl::lts_20250512::CordBuffer::Rep::Long" = type { ptr, ptr }
%class.anon.1 = type { ptr, ptr, ptr }
%"class.absl::lts_20250512::Cord::ChunkIterator" = type { %"class.std::basic_string_view", ptr, i64, %"class.absl::lts_20250512::cord_internal::CordRepBtreeReader" }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.absl::lts_20250512::cord_internal::CordRepBtreeReader" = type { i64, %"class.absl::lts_20250512::cord_internal::CordRepBtreeNavigator" }
%"class.absl::lts_20250512::cord_internal::CordRepBtreeNavigator" = type { i32, [12 x i8], [12 x ptr] }
%"class.absl::lts_20250512::log_internal::LogMessageFatal" = type { %"class.absl::lts_20250512::log_internal::LogMessage" }
%"class.absl::lts_20250512::log_internal::LogMessage" = type { %"class.absl::lts_20250512::base_internal::ErrnoSaver", %"class.std::unique_ptr" }
%"class.absl::lts_20250512::base_internal::ErrnoSaver" = type { i32 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.5" }
%"struct.std::_Head_base.5" = type { ptr }

$_ZN4absl12lts_2025051210CordBufferD2Ev = comdat any

$_ZN6google8protobuf2io19ZeroCopyInputStreamD2Ev = comdat any

$_ZN6google8protobuf2io19ZeroCopyInputStreamD0Ev = comdat any

$_ZN6google8protobuf2io20ZeroCopyOutputStreamD2Ev = comdat any

$_ZN6google8protobuf2io20ZeroCopyOutputStreamD0Ev = comdat any

$_ZNK6google8protobuf2io20ZeroCopyOutputStream14AllowsAliasingEv = comdat any

@.str = private unnamed_addr constant [77 x i8] c"/opt-bench/work/protobuf/protobuf/src/google/protobuf/io/zero_copy_stream.cc\00", align 1
@.str.1 = private unnamed_addr constant [123 x i8] c"This ZeroCopyOutputStream doesn't support aliasing. Reaching here usually means a ZeroCopyOutputStream implementation bug.\00", align 1
@_ZTVN6google8protobuf2io19ZeroCopyInputStreamE = unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN6google8protobuf2io19ZeroCopyInputStreamE, ptr @_ZN6google8protobuf2io19ZeroCopyInputStreamD2Ev, ptr @_ZN6google8protobuf2io19ZeroCopyInputStreamD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN6google8protobuf2io19ZeroCopyInputStream8ReadCordEPN4absl12lts_202505124CordEi] }, align 8
@_ZTIN6google8protobuf2io19ZeroCopyInputStreamE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6google8protobuf2io19ZeroCopyInputStreamE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN6google8protobuf2io19ZeroCopyInputStreamE = constant [43 x i8] c"N6google8protobuf2io19ZeroCopyInputStreamE\00", align 1
@_ZTVN6google8protobuf2io20ZeroCopyOutputStreamE = unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN6google8protobuf2io20ZeroCopyOutputStreamE, ptr @_ZN6google8protobuf2io20ZeroCopyOutputStreamD2Ev, ptr @_ZN6google8protobuf2io20ZeroCopyOutputStreamD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN6google8protobuf2io20ZeroCopyOutputStream15WriteAliasedRawEPKvi, ptr @_ZNK6google8protobuf2io20ZeroCopyOutputStream14AllowsAliasingEv, ptr @_ZN6google8protobuf2io20ZeroCopyOutputStream9WriteCordERKN4absl12lts_202505124CordE] }, align 8
@_ZTIN6google8protobuf2io20ZeroCopyOutputStreamE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6google8protobuf2io20ZeroCopyOutputStreamE }, align 8
@_ZTSN6google8protobuf2io20ZeroCopyOutputStreamE = constant [44 x i8] c"N6google8protobuf2io20ZeroCopyOutputStreamE\00", align 1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io19ZeroCopyInputStream8ReadCordEPN4absl12lts_202505124CordEi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %3 = alloca %"class.absl::lts_20250512::CordBuffer", align 8 ; 24 uses
  %4 = alloca %class.anon.1, align 8              ; 8 uses
  %5 = alloca %"class.absl::lts_20250512::CordBuffer", align 8 ; 11 uses
  %6 = alloca %"class.absl::lts_20250512::CordBuffer", align 8 ; 11 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !7
  store i32 %2, ptr %i.d, align 4, !tbaa !3
  %i.e = icmp slt i32 %2, 1
  br i1 %i.e, label %bb.ay, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.f = zext nneg i32 %2 to i64                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  %i.g = load i8, ptr %1, align 1, !tbaa !13, !noalias !10 ; 2 uses
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13, !noalias !10
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14, !noalias !10
  br label %_ZNK4absl12lts_202505124Cord5emptyEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = sext i8 %i.g to i64
  %i.m = lshr exact i64 %i.l, 1
  br label %_ZNK4absl12lts_202505124Cord5emptyEv.exit.i

_ZNK4absl12lts_202505124Cord5emptyEv.exit.i:      ; preds = %bb.d, %bb.c
  %i.n = phi i64 [ %i.k, %bb.c ], [ %i.m, %bb.d ]
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZNK4absl12lts_202505124Cord5emptyEv.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.p = icmp samesign ugt i32 %2, 15
  br i1 %i.p, label %bb.f, label %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit.thread

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 4083)
  %i.q = add nuw nsw i64 %spec.store.select.i.i.i.i, 13
  %.narrow.i.i.i.i = icmp samesign ult i32 %2, 19
  %.0.i.i.i.i = select i1 %.narrow.i.i.i.i, i64 32, i64 %i.q ; 2 uses
  %i.r = icmp samesign ult i64 %.0.i.i.i.i, 513   ; 2 uses
  %.neg.i.i.i.i = select i1 %i.r, i64 -8, i64 -64
  %i.s = select i1 %i.r, i64 8, i64 64
  %i.t = add nsw i64 %.0.i.i.i.i, -1
  %i.u = add nuw nsw i64 %i.t, %i.s
  %i.v = and i64 %i.u, %.neg.i.i.i.i              ; 3 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #16, !noalias !23 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 2, ptr %i.x, align 8, !noalias !23
  %i.y = icmp samesign ult i64 %i.v, 513          ; 2 uses
  %.sink6.i.i.i.i.i.i = select i1 %i.y, i64 3, i64 6
  %.sink5.i.i.i.i.i.i = select i1 %i.y, i64 2, i64 58
  %i.z = lshr i64 %i.v, %.sink6.i.i.i.i.i.i
  %i.aa = add nuw nsw i64 %i.z, %.sink5.i.i.i.i.i.i
  %i.ab = trunc nuw nsw i64 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i8 %i.ab, ptr %i.ac, align 4, !tbaa !24, !noalias !23
  store i64 0, ptr %i.w, align 8, !tbaa !14, !noalias !23
  store ptr %i.w, ptr %3, align 8, !tbaa !25, !alias.scope !23
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = trunc i64 %i.ad to i8
  br label %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit

_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit.thread: ; preds = %bb.e
  store i8 1, ptr %3, align 8, !tbaa !28, !alias.scope !23
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.af, i8 0, i64 15, i1 false), !alias.scope !23
  %i.ag = zext nneg i32 %2 to i64
  br label %bb.h

bb.g:                                             ; preds = %_ZNK4absl12lts_202505124Cord5emptyEv.exit.i
  call void @_ZN4absl12lts_202505124Cord23GetAppendBufferSlowPathEmmm(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::CordBuffer") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0, i64 noundef %i.f, i64 noundef 16)
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3
  %.pre102 = load i8, ptr %3, align 8, !tbaa !13
  br label %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit

_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit: ; preds = %bb.f, %bb.g
  %i.ah = phi i8 [ %i.ae, %bb.f ], [ %.pre102, %bb.g ] ; 2 uses
  %i.ai = phi i32 [ %2, %bb.f ], [ %.pre, %bb.g ]
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = trunc i8 %i.ah to i1
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit.thread, %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit
  %i.al = phi i64 [ %i.ag, %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit.thread ], [ %i.aj, %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit ]
  %i.am = phi i8 [ 1, %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit.thread ], [ %i.ah, %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit ]
  %i.an = ashr i8 %i.am, 1
  %i.ao = sext i8 %i.an to i64                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  %i.ar = sub nsw i64 15, %i.ao
  br label %bb.j

bb.i:                                             ; preds = %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit
  %i.as = load ptr, ptr %3, align 8, !tbaa !13    ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !14 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 13
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !24  ; 3 uses
  %i.ay = zext i8 %i.ax to i32
  %i.az = icmp ult i8 %i.ax, 67                   ; 2 uses
  %i.ba = icmp ult i8 %i.ax, -69                  ; 2 uses
  %..i.i.i.i.i.i = select i1 %i.ba, i32 6, i32 12
  %.sink6.i.i.i.i.i.i22 = select i1 %i.az, i32 3, i32 %..i.i.i.i.i.i
  %i.bb = shl nuw nsw i32 %i.ay, %.sink6.i.i.i.i.i.i22
  %i.bc = select i1 %i.ba, i32 -3725, i32 -753677
  %i.bd = select i1 %i.az, i32 -29, i32 %i.bc
  %narrow.i.i.i.i.i = add nsw i32 %i.bb, %i.bd
  %i.be = sext i32 %narrow.i.i.i.i.i to i64
  %i.bf = sub i64 %i.be, %i.at
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bg = phi i64 [ %i.al, %bb.h ], [ %i.aj, %bb.i ]
  %.pn6.i.i = phi ptr [ %i.aq, %bb.h ], [ %i.av, %bb.i ]
  %.pn4.i.i = phi i64 [ %i.ar, %bb.h ], [ %i.bf, %bb.i ]
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.bg, i64 %.pn4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %i.c, ptr %4, align 8, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.bh, align 8, !tbaa !33
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %i.bi, align 8, !tbaa !35
  br label %bb.k

bb.k:                                             ; preds = %bb.ak, %bb.j
  %.sroa.068.0 = phi ptr [ %.pn6.i.i, %bb.j ], [ %i.ee, %bb.ak ]
  %.sroa.12.0 = phi i64 [ %.sroa.speculated.i.i, %bb.j ], [ %i.ef, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bj = load ptr, ptr %0, align 8, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = invoke noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %.noexc unwind label %.loopexit, !inline_history !39

.noexc:                                           ; preds = %bb.l
  br i1 %i.bm, label %bb.m, label %.thread

.thread:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.loopexit84

bb.m:                                             ; preds = %.noexc
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !3   ; 4 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.l, label %bb.n, !llvm.loop !40

bb.n:                                             ; preds = %bb.m
  %i.bp = load i32, ptr %i.d, align 4, !tbaa !3   ; 2 uses
  %i.bq = icmp sgt i32 %i.bn, %i.bp
  br i1 %i.bq, label %bb.o, label %.thread116

.thread116:                                       ; preds = %bb.n
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.aa

bb.o:                                             ; preds = %bb.n
  %i.bs = sub nsw i32 %i.bn, %i.bp
  %i.bt = load ptr, ptr %0, align 8, !tbaa !37
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.bs)
          to label %bb.p unwind label %.loopexit.split-lp, !inline_history !39

bb.p:                                             ; preds = %bb.o
  %i.bw = load i32, ptr %i.d, align 4, !tbaa !3   ; 2 uses
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.by = icmp eq i32 %i.bw, 0
  br i1 %i.by, label %.loopexit84, label %bb.aa

.loopexit84:                                      ; preds = %bb.p, %.thread
  %i.bz = load ptr, ptr %i.c, align 8, !tbaa !7   ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !43
  store i8 1, ptr %3, align 8, !tbaa !13
  %i.ca = load i8, ptr %5, align 8, !tbaa !13     ; 3 uses
  %i.cb = trunc i8 %i.ca to i1
  br i1 %i.cb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit84
  %i.cc = ashr i8 %i.ca, 1
  %i.cd = sext i8 %i.cc to i64
  br label %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i

bb.r:                                             ; preds = %.loopexit84
  %i.ce = load ptr, ptr %5, align 8               ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !14
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = trunc i64 %i.cg to i8
  br label %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i

_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i: ; preds = %bb.r, %bb.q
  %i.ci = phi i8 [ %i.ca, %bb.q ], [ %i.ch, %bb.r ] ; 2 uses
  %i.cj = phi i64 [ %i.cd, %bb.q ], [ %i.cf, %bb.r ]
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit, label %bb.s, !prof !44

bb.s:                                             ; preds = %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i
  %i.cl = load i8, ptr %i.bz, align 1, !tbaa !13
  %i.cm = trunc i8 %i.cl to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.co = load ptr, ptr %i.cn, align 8            ; 4 uses
  %i.cp = icmp ne ptr %i.co, null
  %.not6.i.i = select i1 %i.cm, i1 %i.cp, i1 false
  br i1 %.not6.i.i, label %bb.t, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i

bb.t:                                             ; preds = %bb.s
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !14
  %.not.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i, label %bb.u, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i, !prof !44

bb.u:                                             ; preds = %bb.t
  %i.cr = load i64, ptr %i.bz, align 8, !tbaa !13
  %i.cs = add nsw i64 %i.cr, -1                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i, label %bb.v, !prof !45

bb.v:                                             ; preds = %bb.u
  %i.ct = inttoptr i64 %i.cs to ptr
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.ct)
          to label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i unwind label %bb.z

_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i: ; preds = %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cv = atomicrmw sub ptr %i.cu, i32 2 acq_rel, align 4
  %.not.i4.i.i = icmp eq i32 %i.cv, 2
  br i1 %.not.i4.i.i, label %bb.w, label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i, !prof !44

bb.w:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i
  invoke void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.co)
          to label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i unwind label %bb.z
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf2io19ZeroCopyInputStream8ReadCordEPN4absl12lts_202505124CordEi:bb.a
  %i.gg = load i8, ptr %3, align 8, !tbaa !13
  %i.gh = trunc i8 %i.gg to i1
  br i1 %i.gh, label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit58, label %bb.aw

bb.aw:                                            ; preds = %_ZN4absl12lts_2025051210CordBufferD2Ev.exit53
  %i.gi = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  %i.gk = load i8, ptr %i.gj, align 4, !tbaa !24  ; 3 uses
  %i.gl = zext i8 %i.gk to i32
  %i.gm = icmp ult i8 %i.gk, 67                   ; 2 uses
  %i.gn = icmp ult i8 %i.gk, -69                  ; 2 uses
  %..i.i.i54 = select i1 %i.gn, i32 6, i32 12
  %.7.i.i.i55 = select i1 %i.gn, i32 -3712, i32 -753664
  %.sink6.i.i.i56 = select i1 %i.gm, i32 3, i32 %..i.i.i54
  %.sink5.i.i.i57 = select i1 %i.gm, i32 -16, i32 %.7.i.i.i55
  %i.go = shl nuw nsw i32 %i.gl, %.sink6.i.i.i56
  %i.gp = add nsw i32 %i.go, %.sink5.i.i.i57
  %i.gq = sext i32 %i.gp to i64
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gq) #15
  br label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit58

_ZN4absl12lts_2025051210CordBufferD2Ev.exit58:    ; preds = %_ZN4absl12lts_2025051210CordBufferD2Ev.exit53, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.ay

bb.ax:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.z, %bb.ad, %bb.ai, %bb.av
  %.pn14 = phi { ptr, i32 } [ %i.fw, %bb.av ], [ %i.de, %bb.z ], [ %i.ed, %bb.ai ], [ %i.dl, %bb.ad ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @_ZN4absl12lts_2025051210CordBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %.pn14

bb.ay:                                            ; preds = %bb.a, %_ZN4absl12lts_2025051210CordBufferD2Ev.exit58
  %.3 = phi i1 [ %.2, %_ZN4absl12lts_2025051210CordBufferD2Ev.exit58 ], [ true, %bb.a ]
  ret i1 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051210CordBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !13
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i8, ptr %i.d, align 4, !tbaa !24    ; 3 uses
  %i.f = zext i8 %i.e to i32
  %i.g = icmp ult i8 %i.e, 67                     ; 2 uses
  %i.h = icmp ult i8 %i.e, -69                    ; 2 uses
  %..i.i = select i1 %i.h, i32 6, i32 12
  %.7.i.i = select i1 %i.h, i32 -3712, i32 -753664
  %.sink6.i.i = select i1 %i.g, i32 3, i32 %..i.i
  %.sink5.i.i = select i1 %i.g, i32 -16, i32 %.7.i.i
  %i.i = shl nuw nsw i32 %i.f, %.sink6.i.i
  %i.j = add nsw i32 %i.i, %.sink5.i.i
  %i.k = sext i32 %i.j to i64
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.k) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc { ptr, i64 } @"_ZZN6google8protobuf2io19ZeroCopyInputStream8ReadCordEPN4absl12lts_202505124CordEiENK3$_1clEv"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::CordBuffer", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !48, !nonnull !50, !align !51
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52, !nonnull !50, !align !51 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !43
  store i8 1, ptr %i.d, align 8, !tbaa !13
  %i.e = load i8, ptr %1, align 8, !tbaa !13      ; 3 uses
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = ashr i8 %i.e, 1
  %i.h = sext i8 %i.g to i64
  br label %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8                ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !14
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = trunc i64 %i.k to i8
  br label %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i

_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i: ; preds = %bb.c, %bb.b
  %i.m = phi i8 [ %i.e, %bb.b ], [ %i.l, %bb.c ]  ; 2 uses
  %i.n = phi i64 [ %i.h, %bb.b ], [ %i.j, %bb.c ]
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit, label %bb.d, !prof !44

bb.d:                                             ; preds = %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i
  %i.p = load i8, ptr %i.b, align 1, !tbaa !13
  %i.q = trunc i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 4 uses
  %i.t = icmp ne ptr %i.s, null
  %.not6.i.i = select i1 %i.q, i1 %i.t, i1 false
  br i1 %.not6.i.i, label %bb.e, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8, !tbaa !14
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %bb.f, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i, !prof !44

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.b, align 8, !tbaa !13
  %i.w = add nsw i64 %i.v, -1                     ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i, label %bb.g, !prof !45

bb.g:                                             ; preds = %bb.f
  %i.x = inttoptr i64 %i.w to ptr
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.x)
          to label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i unwind label %bb.p

_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i: ; preds = %bb.g, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.z = atomicrmw sub ptr %i.y, i32 2 acq_rel, align 4
  %.not.i4.i.i = icmp eq i32 %i.z, 2
  br i1 %.not.i4.i.i, label %bb.h, label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i, !prof !44

bb.h:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i
  invoke void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.s)
          to label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i unwind label %bb.p

_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i: ; preds = %bb.h, %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %.pre.i = load i8, ptr %1, align 8, !tbaa !13
  br label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i

_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i: ; preds = %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i, %bb.e, %bb.d
  %i.aa = phi i8 [ %i.m, %bb.d ], [ %i.m, %bb.e ], [ %.pre.i, %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i ] ; 2 uses
  %i.ab = trunc i8 %i.aa to i1
  br i1 %i.ab, label %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i, label %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i

_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i: ; preds = %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ad = ashr i8 %i.aa, 1
  %i.ae = sext i8 %i.ad to i64
  store i8 1, ptr %1, align 8, !tbaa !13
  br label %bb.j

_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i
  %i.af = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  store i8 1, ptr %1, align 8, !tbaa !13
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  invoke void @_ZN4absl12lts_202505124Cord9InlineRep10AppendTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.af, i32 noundef 2)
          to label %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit unwind label %bb.p

bb.j:                                             ; preds = %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i
  %.sroa.5.08.i = phi ptr [ %i.ac, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i ], [ null, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i ]
  %.sroa.0.07.i = phi i64 [ %i.ae, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i ], [ 0, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i ]
  invoke void @_ZN4absl12lts_202505124Cord13AppendPreciseESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 %.sroa.0.07.i, ptr %.sroa.5.08.i, i32 noundef 2)
          to label %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit unwind label %bb.p

_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit: ; preds = %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i, %bb.i, %bb.j
  %i.ag = load i8, ptr %1, align 8, !tbaa !13
  %i.ah = trunc i8 %i.ag to i1
  br i1 %i.ah, label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit
  %i.ai = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !24  ; 3 uses
  %i.al = zext i8 %i.ak to i32
  %i.am = icmp ult i8 %i.ak, 67                   ; 2 uses
  %i.an = icmp ult i8 %i.ak, -69                  ; 2 uses
  %..i.i.i = select i1 %i.an, i32 6, i32 12
  %.7.i.i.i = select i1 %i.an, i32 -3712, i32 -753664
  %.sink6.i.i.i = select i1 %i.am, i32 3, i32 %..i.i.i
  %.sink5.i.i.i = select i1 %i.am, i32 -16, i32 %.7.i.i.i
  %i.ao = shl nuw nsw i32 %i.al, %.sink6.i.i.i
  %i.ap = add nsw i32 %i.ao, %.sink5.i.i.i
  %i.aq = sext i32 %i.ap to i64
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.aq) #15
  br label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit

_ZN4absl12lts_2025051210CordBufferD2Ev.exit:      ; preds = %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit, %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !53, !nonnull !50, !align !54
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3  ; 3 uses
  %i.au = icmp ugt i32 %i.at, 15
  br i1 %i.au, label %bb.l, label %_ZN4absl12lts_2025051210CordBuffer22CreateWithDefaultLimitEm.exit

bb.l:                                             ; preds = %_ZN4absl12lts_2025051210CordBufferD2Ev.exit
  %i.av = call i32 @llvm.umin.i32(i32 %i.at, i32 4083)
  %narrow = add nuw nsw i32 %i.av, 13
  %.narrow.i.i.i = icmp ult i32 %i.at, 19
  %narrow18 = select i1 %.narrow.i.i.i, i32 32, i32 %narrow ; 2 uses
  %.0.i.i.i = zext nneg i32 %narrow18 to i64
  %i.aw = icmp samesign ult i32 %narrow18, 513    ; 2 uses
  %.neg.i.i.i = select i1 %i.aw, i64 -8, i64 -64
  %i.ax = select i1 %i.aw, i64 8, i64 64
  %i.ay = add nsw i64 %.0.i.i.i, -1
  %i.az = add nuw nsw i64 %i.ay, %i.ax
  %i.ba = and i64 %i.az, %.neg.i.i.i              ; 3 uses
  %i.bb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #16, !noalias !55 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 2, ptr %i.bc, align 8, !noalias !55
  %i.bd = icmp samesign ult i64 %i.ba, 513        ; 2 uses
  %.sink6.i.i.i.i.i = select i1 %i.bd, i64 3, i64 6
  %.sink5.i.i.i.i.i = select i1 %i.bd, i64 2, i64 58
  %i.be = lshr i64 %i.ba, %.sink6.i.i.i.i.i
  %i.bf = add nuw nsw i64 %i.be, %.sink5.i.i.i.i.i
  %i.bg = trunc nuw nsw i64 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i8 %i.bg, ptr %i.bh, align 4, !tbaa !24, !noalias !55
  store i64 0, ptr %i.bb, align 8, !tbaa !14, !noalias !55
  br label %_ZN4absl12lts_2025051210CordBuffer22CreateWithDefaultLimitEm.exit

_ZN4absl12lts_2025051210CordBuffer22CreateWithDefaultLimitEm.exit: ; preds = %_ZN4absl12lts_2025051210CordBufferD2Ev.exit, %bb.l
  %.sroa.0.0 = phi ptr [ %i.bb, %bb.l ], [ inttoptr (i64 1 to ptr), %_ZN4absl12lts_2025051210CordBufferD2Ev.exit ]
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !52, !nonnull !50, !align !51 ; 4 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !13
  %i.bk = trunc i8 %i.bj to i1
  br i1 %i.bk, label %_ZN4absl12lts_2025051210CordBufferaSEOS1_.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_2025051210CordBuffer22CreateWithDefaultLimitEm.exit
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !13 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !24  ; 3 uses
  %i.bo = zext i8 %i.bn to i32
  %i.bp = icmp ult i8 %i.bn, 67                   ; 2 uses
  %i.bq = icmp ult i8 %i.bn, -69                  ; 2 uses
  %..i.i.i5 = select i1 %i.bq, i32 6, i32 12
  %.7.i.i.i6 = select i1 %i.bq, i32 -3712, i32 -753664
  %.sink6.i.i.i7 = select i1 %i.bp, i32 3, i32 %..i.i.i5
  %.sink5.i.i.i8 = select i1 %i.bp, i32 -16, i32 %.7.i.i.i6
  %i.br = shl nuw nsw i32 %i.bo, %.sink6.i.i.i7
  %i.bs = add nsw i32 %i.br, %.sink5.i.i.i8
  %i.bt = sext i32 %i.bs to i64
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bt) #15
  br label %_ZN4absl12lts_2025051210CordBufferaSEOS1_.exit

_ZN4absl12lts_2025051210CordBufferaSEOS1_.exit:   ; preds = %_ZN4absl12lts_2025051210CordBuffer22CreateWithDefaultLimitEm.exit, %bb.m
  store ptr %.sroa.0.0, ptr %i.bi, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr null, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !13
  %i.bu = load ptr, ptr %i.c, align 8, !tbaa !52, !nonnull !50, !align !51 ; 3 uses
  %i.bv = load ptr, ptr %i.ar, align 8, !tbaa !53, !nonnull !50, !align !54
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = load i8, ptr %i.bu, align 8, !tbaa !13  ; 2 uses
  %i.by = trunc i8 %i.bx to i1
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4absl12lts_2025051210CordBufferaSEOS1_.exit
  %i.bz = ashr i8 %i.bx, 1
  %i.ca = sext i8 %i.bz to i64                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ca
  %i.cd = sub nsw i64 15, %i.ca
  br label %_ZN4absl12lts_2025051210CordBuffer15available_up_toEm.exit

bb.o:                                             ; preds = %_ZN4absl12lts_2025051210CordBufferaSEOS1_.exit
  %i.ce = load ptr, ptr %i.bu, align 8, !tbaa !13 ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !14 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 13
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.cj = load i8, ptr %i.ci, align 4, !tbaa !24  ; 3 uses
  %i.ck = zext i8 %i.cj to i32
  %i.cl = icmp ult i8 %i.cj, 67                   ; 2 uses
  %i.cm = icmp ult i8 %i.cj, -69                  ; 2 uses
  %..i.i.i.i.i.i = select i1 %i.cm, i32 6, i32 12
  %.sink6.i.i.i.i.i.i = select i1 %i.cl, i32 3, i32 %..i.i.i.i.i.i
  %i.cn = shl nuw nsw i32 %i.ck, %.sink6.i.i.i.i.i.i
  %i.co = select i1 %i.cm, i32 -3725, i32 -753677
  %i.cp = select i1 %i.cl, i32 -29, i32 %i.co
  %narrow.i.i.i.i.i = add nsw i32 %i.cn, %i.cp
  %i.cq = sext i32 %narrow.i.i.i.i.i to i64
  %i.cr = sub i64 %i.cq, %i.cf
  br label %_ZN4absl12lts_2025051210CordBuffer15available_up_toEm.exit

_ZN4absl12lts_2025051210CordBuffer15available_up_toEm.exit: ; preds = %bb.n, %bb.o
  %.pn6.i.i = phi ptr [ %i.cc, %bb.n ], [ %i.ch, %bb.o ]
  %.pn4.i.i = phi i64 [ %i.cd, %bb.n ], [ %i.cr, %bb.o ]
  %i.cs = sext i32 %i.bw to i64
  %.fca.0.insert.i.pn.i.i = insertvalue { ptr, i64 } poison, ptr %.pn6.i.i, 0
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.cs, i64 %.pn4.i.i)
  %.fca.1.insert.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.pn.i.i, i64 %.sroa.speculated.i.i, 1
  ret { ptr, i64 } %.fca.1.insert.i.i

bb.p:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051210CordBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #15
  resume { ptr, i32 } %i.ct
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io20ZeroCopyOutputStream9WriteCordERKN4absl12lts_202505124CordE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %2 = alloca %"class.absl::lts_20250512::Cord::ChunkIterator", align 8 ; 17 uses
  %i.c = load i8, ptr %1, align 8, !tbaa !13      ; 2 uses
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  br label %_ZNK4absl12lts_202505124Cord5emptyEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = sext i8 %i.c to i64
  %i.i = lshr exact i64 %i.h, 1
  br label %_ZNK4absl12lts_202505124Cord5emptyEv.exit

_ZNK4absl12lts_202505124Cord5emptyEv.exit:        ; preds = %bb.b, %bb.c
  %i.j = phi i64 [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.ai, label %bb.d

bb.d:                                             ; preds = %_ZNK4absl12lts_202505124Cord5emptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.l = load ptr, ptr %0, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.o, label %bb.e, label %bb.ah

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, i8 0, i64 40, i1 false), !alias.scope !64
  store i32 -1, ptr %i.s, align 8, !tbaa !65, !alias.scope !64
  %i.t = load i8, ptr %1, align 8, !tbaa !13, !noalias !64 ; 2 uses
  %i.u = trunc i8 %i.t to i1                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !64 ; 5 uses
  %.not8.i.i.i = icmp ne ptr %i.w, null
  %.not.not.i.i.i = select i1 %i.u, i1 %.not8.i.i.i, i1 false
  br i1 %.not.not.i.i.i, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.w, align 8, !tbaa !14, !noalias !64 ; 3 uses
  store i64 %i.x, ptr %i.q, align 8, !tbaa !67, !alias.scope !64
  %.not7.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not7.i.i.i, label %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.._crit_edge_crit_edge, label %bb.g, !prof !44

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.z = load i8, ptr %i.y, align 4, !tbaa !24, !noalias !64 ; 2 uses
  %i.aa = icmp eq i8 %i.z, 2
  br i1 %i.aa, label %bb.h, label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !44

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !73, !noalias !64 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !24, !noalias !64
  br label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.ad = phi i8 [ %.pre.i.i.i.i, %bb.h ], [ %i.z, %bb.g ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.ac, %bb.h ], [ %i.w, %bb.g ] ; 11 uses
  %i.ae = icmp eq i8 %i.ad, 3
  br i1 %i.ae, label %bb.i, label %bb.n

bb.i:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13, !noalias !64 ; 4 uses
  %i.ah = zext i8 %i.ag to i32
  store i32 %i.ah, ptr %i.s, align 8, !tbaa !65, !alias.scope !64
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !64 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.al = zext i8 %i.ag to i64                    ; 5 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al
  store ptr %.0.i.i.i.i.i, ptr %i.am, align 8, !tbaa !77, !alias.scope !64
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 %i.aj, ptr %i.ao, align 1, !tbaa !13, !alias.scope !64
  %.018.i.i.i.i.i.i.i = zext i8 %i.aj to i64      ; 3 uses
end_hunk_1
