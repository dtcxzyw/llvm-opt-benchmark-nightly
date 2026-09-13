Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpJournalist?download=true
inline.NumInlined: 231
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
$_ZNSt6vectorIN5Ipopt8SmartPtrINS0_7JournalEEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZTIN5Ipopt16ReferencedObjectE = comdat any

$_ZTSN5Ipopt16ReferencedObjectE = comdat any

@_ZTVN5Ipopt10JournalistE = constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN5Ipopt10JournalistE, ptr @_ZN5Ipopt10JournalistD1Ev, ptr @_ZN5Ipopt10JournalistD0Ev, ptr @_ZNK5Ipopt10Journalist6PrintfENS_13EJournalLevelENS_16EJournalCategoryEPKcz, ptr @_ZNK5Ipopt10Journalist20PrintStringOverLinesENS_13EJournalLevelENS_16EJournalCategoryEiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK5Ipopt10Journalist14PrintfIndentedENS_13EJournalLevelENS_16EJournalCategoryEiPKcz, ptr @_ZNK5Ipopt10Journalist7VPrintfENS_13EJournalLevelENS_16EJournalCategoryEPKcP13__va_list_tag, ptr @_ZNK5Ipopt10Journalist15VPrintfIndentedENS_13EJournalLevelENS_16EJournalCategoryEiPKcP13__va_list_tag, ptr @_ZNK5Ipopt10Journalist13ProduceOutputENS_13EJournalLevelENS_16EJournalCategoryE, ptr @_ZNK5Ipopt10Journalist11FlushBufferEv, ptr @_ZN5Ipopt10Journalist10AddJournalENS_8SmartPtrINS_7JournalEEE, ptr @_ZN5Ipopt10Journalist14AddFileJournalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS_13EJournalLevelEb, ptr @_ZN5Ipopt10Journalist10GetJournalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN5Ipopt10Journalist17DeleteAllJournalsEv] }, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@_ZTVN5Ipopt7JournalE = constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN5Ipopt7JournalE, ptr @_ZN5Ipopt7JournalD1Ev, ptr @_ZN5Ipopt7JournalD0Ev, ptr @_ZN5Ipopt7Journal4NameB5cxx11Ev, ptr @_ZN5Ipopt7Journal13SetPrintLevelENS_16EJournalCategoryENS_13EJournalLevelE, ptr @_ZN5Ipopt7Journal17SetAllPrintLevelsENS_13EJournalLevelE, ptr @_ZNK5Ipopt7Journal10IsAcceptedENS_16EJournalCategoryENS_13EJournalLevelE, ptr @_ZN5Ipopt7Journal5PrintENS_16EJournalCategoryENS_13EJournalLevelEPKc, ptr @_ZN5Ipopt7Journal6PrintfENS_16EJournalCategoryENS_13EJournalLevelEPKcP13__va_list_tag, ptr @_ZN5Ipopt7Journal11FlushBufferEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTVN5Ipopt11FileJournalE = constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN5Ipopt11FileJournalE, ptr @_ZN5Ipopt11FileJournalD1Ev, ptr @_ZN5Ipopt11FileJournalD0Ev, ptr @_ZN5Ipopt7Journal4NameB5cxx11Ev, ptr @_ZN5Ipopt7Journal13SetPrintLevelENS_16EJournalCategoryENS_13EJournalLevelE, ptr @_ZN5Ipopt7Journal17SetAllPrintLevelsENS_13EJournalLevelE, ptr @_ZNK5Ipopt7Journal10IsAcceptedENS_16EJournalCategoryENS_13EJournalLevelE, ptr @_ZN5Ipopt7Journal5PrintENS_16EJournalCategoryENS_13EJournalLevelEPKc, ptr @_ZN5Ipopt7Journal6PrintfENS_16EJournalCategoryENS_13EJournalLevelEPKcP13__va_list_tag, ptr @_ZN5Ipopt7Journal11FlushBufferEv, ptr @_ZN5Ipopt11FileJournal9PrintImplENS_16EJournalCategoryENS_13EJournalLevelEPKc, ptr @_ZN5Ipopt11FileJournal10PrintfImplENS_16EJournalCategoryENS_13EJournalLevelEPKcP13__va_list_tag, ptr @_ZN5Ipopt11FileJournal15FlushBufferImplEv, ptr @_ZN5Ipopt11FileJournal4OpenEPKcb] }, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@_ZTVN5Ipopt13StreamJournalE = constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN5Ipopt13StreamJournalE, ptr @_ZN5Ipopt7JournalD2Ev, ptr @_ZN5Ipopt13StreamJournalD0Ev, ptr @_ZN5Ipopt7Journal4NameB5cxx11Ev, ptr @_ZN5Ipopt7Journal13SetPrintLevelENS_16EJournalCategoryENS_13EJournalLevelE, ptr @_ZN5Ipopt7Journal17SetAllPrintLevelsENS_13EJournalLevelE, ptr @_ZNK5Ipopt7Journal10IsAcceptedENS_16EJournalCategoryENS_13EJournalLevelE, ptr @_ZN5Ipopt7Journal5PrintENS_16EJournalCategoryENS_13EJournalLevelEPKc, ptr @_ZN5Ipopt7Journal6PrintfENS_16EJournalCategoryENS_13EJournalLevelEPKcP13__va_list_tag, ptr @_ZN5Ipopt7Journal11FlushBufferEv, ptr @_ZN5Ipopt13StreamJournal9PrintImplENS_16EJournalCategoryENS_13EJournalLevelEPKc, ptr @_ZN5Ipopt13StreamJournal10PrintfImplENS_16EJournalCategoryENS_13EJournalLevelEPKcP13__va_list_tag, ptr @_ZN5Ipopt13StreamJournal15FlushBufferImplEv] }, align 8
@_ZTIN5Ipopt13StreamJournalE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Ipopt13StreamJournalE, ptr @_ZTIN5Ipopt7JournalE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5Ipopt13StreamJournalE = constant [24 x i8] c"N5Ipopt13StreamJournalE\00", align 1
@_ZTIN5Ipopt7JournalE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Ipopt7JournalE, ptr @_ZTIN5Ipopt16ReferencedObjectE }, align 8
@_ZTSN5Ipopt7JournalE = constant [17 x i8] c"N5Ipopt7JournalE\00", align 1
@_ZTIN5Ipopt16ReferencedObjectE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5Ipopt16ReferencedObjectE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5Ipopt16ReferencedObjectE = linkonce_odr constant [27 x i8] c"N5Ipopt16ReferencedObjectE\00", comdat, align 1
@_ZTIN5Ipopt10JournalistE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Ipopt10JournalistE, ptr @_ZTIN5Ipopt16ReferencedObjectE }, align 8
@_ZTSN5Ipopt10JournalistE = constant [21 x i8] c"N5Ipopt10JournalistE\00", align 1
@_ZTIN5Ipopt11FileJournalE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Ipopt11FileJournalE, ptr @_ZTIN5Ipopt7JournalE }, align 8
@_ZTSN5Ipopt11FileJournalE = constant [22 x i8] c"N5Ipopt11FileJournalE\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN5Ipopt10JournalistC1Ev = unnamed_addr alias void (ptr), ptr @_ZN5Ipopt10JournalistC2Ev
@_ZN5Ipopt10JournalistD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5Ipopt10JournalistD2Ev
@_ZN5Ipopt7JournalD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5Ipopt7JournalD2Ev
@_ZN5Ipopt11FileJournalC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13EJournalLevelE = unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN5Ipopt11FileJournalC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13EJournalLevelE
@_ZN5Ipopt11FileJournalD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5Ipopt11FileJournalD2Ev
@_ZN5Ipopt13StreamJournalC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13EJournalLevelE = unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN5Ipopt13StreamJournalC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13EJournalLevelE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5Ipopt10JournalistC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 12), (16, 40)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN5Ipopt10JournalistE, i64 16), ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5Ipopt10JournalistD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(40) dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN5Ipopt10JournalistE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_7JournalEEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_7JournalEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_7JournalEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !21 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_7JournalEEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !11
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !11
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_7JournalEEEEvPT_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(176) %i.e) #20, !inline_history !42
  br label %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_7JournalEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_7JournalEEEEvPT_.exit.i.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5Ipopt8SmartPtrINS0_7JournalEEESaIS3_EE5clearEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN5Ipopt8SmartPtrINS0_7JournalEEESaIS3_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_7JournalEEEEvPT_.exit.i.i.i.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !18
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !17  ; 3 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %i.b
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_7JournalEEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN5Ipopt8SmartPtrINS0_7JournalEEESaIS3_EE5clearEv.exit, %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_7JournalEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_7JournalEEEEvPT_.exit.i.i.i ], [ %.pre, %_ZNSt6vectorIN5Ipopt8SmartPtrINS0_7JournalEEESaIS3_EE5clearEv.exit ] ; 2 uses
  %i.n = load ptr, ptr %.05.i.i.i, align 8, !tbaa !21 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_7JournalEEEEvPT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !11
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.o, align 8, !tbaa !11
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_7JournalEEEEvPT_.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(176) %i.n) #20, !inline_history !43
  br label %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_7JournalEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_7JournalEEEEvPT_.exit.i.i.i: ; preds = %bb.e, %bb.d, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_7JournalEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_7JournalEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_7JournalEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_7JournalEEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_7JournalEEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %bb.a, %_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_7JournalEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN5Ipopt8SmartPtrINS0_7JournalEEESaIS3_EE5clearEv.exit
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_7JournalEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %_ZNSt6vectorIN5Ipopt8SmartPtrINS0_7JournalEEESaIS3_EE5clearEv.exit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5Ipopt8SmartPtrINS0_7JournalEEESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_7JournalEEES3_EvT_S5_RSaIT0_E.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #21
  br label %_ZNSt6vectorIN5Ipopt8SmartPtrINS0_7JournalEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN5Ipopt8SmartPtrINS0_7JournalEEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_7JournalEEES3_EvT_S5_RSaIT0_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5Ipopt10JournalistD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN5Ipopt10JournalistD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #21
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK5Ipopt10Journalist6PrintfENS_13EJournalLevelENS_16EJournalCategoryEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ...) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.va_start.p0(ptr nonnull %4)
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %4)
  call void @llvm.va_end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define void @_ZNK5Ipopt10Journalist20PrintStringOverLinesENS_13EJournalLevelENS_16EJournalCategoryEiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 25 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %.not88 = icmp eq i64 %i.d, 0
  br i1 %.not88, label %.loopexit64, label %.preheader63.lr.ph

.preheader63.lr.ph:                               ; preds = %bb.a
  %i.e = icmp sgt i32 %4, 0
  %i.f = icmp slt i32 %3, 1                       ; 2 uses
  br i1 %i.e, label %.preheader63.us.preheader, label %.preheader63.lr.ph.split

.preheader63.us.preheader:                        ; preds = %.preheader63.lr.ph
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 1)
  %i.g = zext nneg i32 %smax to i64
  %i.h = add nsw i32 %4, -1
  %i.i = zext nneg i32 %i.h to i64
  br label %.preheader63.us

.preheader63.us:                                  ; preds = %.preheader63.us.preheader, %.loopexit.us
  %i.j = phi i64 [ %i.bi, %.loopexit.us ], [ %i.d, %.preheader63.us.preheader ] ; 3 uses
  %.04875.us = phi i32 [ %3, %.loopexit.us ], [ 0, %.preheader63.us.preheader ]
  %.04974.us.not = phi i1 [ true, %.loopexit.us ], [ %i.f, %.preheader63.us.preheader ]
  %.05573.us = phi i64 [ %.3.us, %.loopexit.us ], [ 0, %.preheader63.us.preheader ] ; 12 uses
  %i.k = load ptr, ptr %5, align 8, !tbaa !29     ; 4 uses
  %i.l = sext i32 %.04875.us to i64               ; 5 uses
  %i.m = add i64 %.05573.us, 1
  %i.n = call i64 @llvm.umax.i64(i64 %i.j, i64 %i.m)
  %i.o = xor i64 %.05573.us, -1
  %i.p = add i64 %i.n, %i.o
  %i.q = freeze i64 %i.p
  %i.r = call i64 @llvm.umin.i64(i64 %i.q, i64 %i.i) ; 2 uses
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.r, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader63.us
  %i.t = ptrtoaddr ptr %i.k to i64
  %i.u = add i64 %i.b, %i.l
  %i.v = add nuw i64 %.05573.us, %i.t
  %i.w = sub i64 %i.v, %i.u
  %diff.check = icmp ugt i64 %i.w, -4
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, 4294967292               ; 5 uses
  %i.x = add nsw i64 %n.vec, %i.l                 ; 3 uses
  %i.y = trunc nuw i64 %n.vec to i32
  %i.z = add i64 %.05573.us, %n.vec               ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.05573.us, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 %.05573.us
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %vec.phi113 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi114 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi115 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %wide.load = load <2 x i8>, ptr %i.ab, align 1, !tbaa !30 ; 2 uses
  %wide.load116 = load <2 x i8>, ptr %i.ac, align 1, !tbaa !30 ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %gep, i64 2
  store <2 x i8> %wide.load, ptr %gep, align 1, !tbaa !30
  store <2 x i8> %wide.load116, ptr %i.ad, align 1, !tbaa !30
  %i.ae = icmp eq <2 x i8> %wide.load, splat (i8 32) ; 2 uses
  %i.af = icmp eq <2 x i8> %wide.load116, splat (i8 32) ; 2 uses
  %i.ag = select <2 x i1> %i.ae, <2 x i64> %vec.ind, <2 x i64> %vec.phi ; 2 uses
  %i.ah = select <2 x i1> %i.af, <2 x i64> %step.add, <2 x i64> %vec.phi113 ; 2 uses
  %i.ai = or <2 x i1> %vec.phi114, %i.ae          ; 2 uses
  %i.aj = or <2 x i1> %vec.phi115, %i.af          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <2 x i64> @llvm.umax.v2i64(<2 x i64> %i.ag, <2 x i64> %i.ah)
  %i.al = call i64 @llvm.vector.reduce.umax.v2i64(<2 x i64> %rdx.minmax)
  %i.am = add nuw i64 %i.al, 1
  %bin.rdx = or <2 x i1> %i.aj, %i.ai
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.an = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not = icmp eq i2 %i.an, 0
  %rdx.select = select i1 %.not, i64 %.05573.us, i64 %i.am ; 2 uses
  %ind.escape = add nsw i64 %i.x, -1
  %ind.escape117 = add i64 %i.z, -1
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %..critedge_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader63.us, %middle.block
  %indvars.iv.ph = phi i64 [ %i.l, %vector.memcheck ], [ %i.l, %.preheader63.us ], [ %i.x, %middle.block ]
  %.04668.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader63.us ], [ %i.y, %middle.block ]
  %.04767.us.ph = phi i64 [ %.05573.us, %vector.memcheck ], [ %.05573.us, %.preheader63.us ], [ %i.z, %middle.block ]
  %.15365.us.ph = phi i64 [ %.05573.us, %vector.memcheck ], [ %.05573.us, %.preheader63.us ], [ %rdx.select, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %.04668.us = phi i32 [ %i.at, %scalar.ph ], [ %.04668.us.ph, %scalar.ph.preheader ]
  %.04767.us = phi i64 [ %i.as, %scalar.ph ], [ %.04767.us.ph, %scalar.ph.preheader ] ; 3 uses
  %.15365.us = phi i64 [ %spec.select.us, %scalar.ph ], [ %.15365.us.ph, %scalar.ph.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 %.04767.us
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !30  ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !30
  %i.ar = icmp eq i8 %i.ap, 32
  %i.as = add nuw i64 %.04767.us, 1               ; 4 uses
  %spec.select.us = select i1 %i.ar, i64 %i.as, i64 %.15365.us ; 2 uses
  %i.at = add nuw nsw i32 %.04668.us, 1           ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.au = icmp slt i32 %i.at, %4
  %i.av = icmp ult i64 %i.as, %i.j
  %or.cond.us = select i1 %i.au, i1 %i.av, i1 false
  br i1 %or.cond.us, label %scalar.ph, label %..critedge_crit_edge.us, !llvm.loop !45

bb.b:                                             ; preds = %..critedge_crit_edge.us
  %i.aw = icmp eq i64 %spec.select.us.lcssa, %.05573.us
  br i1 %i.aw, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg.us = sub i64 %spec.select.us.lcssa, %.lcssa
  %i.ax = getelementptr i8, ptr %i.a, i64 %.neg.us
  %i.ay = getelementptr i8, ptr %i.ax, i64 %indvars.iv.lcssa
  store i8 0, ptr %i.ay, align 1, !tbaa !30
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 %.lcssa
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !30
  %i.bb = icmp eq i8 %i.ba, 32
  %i.bc = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.lcssa ; 2 uses
  br i1 %i.bb, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr i8, ptr %i.a, i64 %indvars.iv.lcssa
  store i8 45, ptr %i.bd, align 1, !tbaa !30
  store i8 0, ptr %i.bc, align 1, !tbaa !30
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i8 0, ptr %i.bc, align 1, !tbaa !30
  %i.be = add i64 %.04767.us.lcssa, 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.3.us = phi i64 [ %i.be, %bb.f ], [ %.04767.us.lcssa, %bb.e ], [ %spec.select.us.lcssa, %bb.c ] ; 2 uses
  %i.bf = load ptr, ptr %0, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void (ptr, i32, i32, ptr, ...) %i.bh(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a)
  br i1 %.04974.us.not, label %.loopexit.us, label %.lr.ph72.us.preheader

.lr.ph72.us.preheader:                            ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 32, i64 %i.g, i1 false), !tbaa !30
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.lr.ph72.us.preheader, %bb.g
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !28  ; 2 uses
  %i.bj = icmp ult i64 %.3.us, %i.bi
  br i1 %i.bj, label %.preheader63.us, label %.loopexit64

..critedge_crit_edge.us:                          ; preds = %scalar.ph, %middle.block
  %indvars.iv.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %indvars.iv, %scalar.ph ] ; 2 uses
  %.04767.us.lcssa = phi i64 [ %ind.escape117, %middle.block ], [ %.04767.us, %scalar.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.z, %middle.block ], [ %i.as, %scalar.ph ] ; 3 uses
  %spec.select.us.lcssa = phi i64 [ %rdx.select, %middle.block ], [ %spec.select.us, %scalar.ph ] ; 3 uses
  %indvars.iv.next.lcssa = phi i64 [ %i.x, %middle.block ], [ %indvars.iv.next, %scalar.ph ] ; 2 uses
  %i.bk = icmp eq i64 %.lcssa, %i.j
  br i1 %i.bk, label %.thread, label %bb.b

.preheader63.lr.ph.split:                         ; preds = %.preheader63.lr.ph
  br i1 %i.f, label %.preheader63.preheader, label %bb.h

bb.h:                                             ; preds = %.preheader63.lr.ph.split
  %i.bl = zext nneg i32 %3 to i64                 ; 3 uses
  %i.bm = load ptr, ptr %5, align 8, !tbaa !29
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !30
  %i.bo = icmp eq i8 %i.bn, 32
  br i1 %i.bo, label %..loopexit_crit_edge.us84.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr i8, ptr %i.a, i64 -1
  store i8 45, ptr %i.bp, align 1, !tbaa !30
  br label %..loopexit_crit_edge.us84.peel

..loopexit_crit_edge.us84.peel:                   ; preds = %bb.h, %bb.i
  %.3.us80.peel = phi i64 [ -1, %bb.i ], [ 1, %bb.h ] ; 2 uses
  store i8 0, ptr %i.a, align 16, !tbaa !30
  %i.bq = load ptr, ptr %0, align 8, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void (ptr, i32, i32, ptr, ...) %i.bs(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 32, i64 %i.bl, i1 false), !tbaa !30
  %i.bt = load i64, ptr %i.c, align 8, !tbaa !28
  %i.bu = icmp ult i64 %.3.us80.peel, %i.bt
  br i1 %i.bu, label %.preheader63.us76.peel.next, label %.loopexit64

.preheader63.us76.peel.next:                      ; preds = %..loopexit_crit_edge.us84.peel
  %i.bv = getelementptr i8, ptr %i.a, i64 %i.bl   ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 -1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bl
  br label %bb.k

.preheader63.preheader:                           ; preds = %.preheader63.lr.ph.split
  %i.by = load ptr, ptr %5, align 8, !tbaa !29
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !30
  %i.ca = icmp eq i8 %i.bz, 32
  br i1 %i.ca, label %.preheader.peel, label %bb.j

bb.j:                                             ; preds = %.preheader63.preheader
  %i.cb = getelementptr i8, ptr %i.a, i64 -1
  store i8 45, ptr %i.cb, align 1, !tbaa !30
  br label %.preheader.peel

.preheader.peel:                                  ; preds = %.preheader63.preheader, %bb.j
  %.3.peel = phi i64 [ -1, %bb.j ], [ 1, %.preheader63.preheader ] ; 2 uses
  store i8 0, ptr %i.a, align 16, !tbaa !30
  %i.cc = load ptr, ptr %0, align 8, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  call void (ptr, i32, i32, ptr, ...) %i.ce(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a)
  %i.cf = load i64, ptr %i.c, align 8, !tbaa !28
  %i.cg = icmp ult i64 %.3.peel, %i.cf
  br i1 %i.cg, label %.preheader63.peel.next, label %.loopexit64

.preheader63.peel.next:                           ; preds = %.preheader.peel
  %i.ch = sext i32 %3 to i64
  %i.ci = getelementptr i8, ptr %i.a, i64 %i.ch   ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 -1
  %i.ck = sext i32 %3 to i64
  %i.cl = getelementptr inbounds i8, ptr %i.a, i64 %i.ck
  br label %bb.n

bb.k:                                             ; preds = %..loopexit_crit_edge.us84, %.preheader63.us76.peel.next
  %.05573.us79 = phi i64 [ %i.cq, %..loopexit_crit_edge.us84 ], [ %.3.us80.peel, %.preheader63.us76.peel.next ] ; 2 uses
  %i.cm = load ptr, ptr %5, align 8, !tbaa !29
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.05573.us79
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !30
  %i.cp = icmp eq i8 %i.co, 32
  br i1 %i.cp, label %bb.m, label %bb.l
end_hunk_0
