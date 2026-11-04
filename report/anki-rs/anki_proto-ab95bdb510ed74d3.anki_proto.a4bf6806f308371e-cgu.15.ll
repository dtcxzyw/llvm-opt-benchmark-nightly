Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki_proto-ab95bdb510ed74d3.anki_proto.a4bf6806f308371e-cgu.15?download=true
inline.NumInlined: 29
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [18 x i8] c"NoteWithEmptyCards", align 1
@1 = private unnamed_addr constant [7 x i8] c"note_id", align 1
@2 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he3240ba31e445e99E" }>, align 8
@3 = private unnamed_addr constant [8 x i8] c"card_ids", align 1
@4 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN159_$LT$$LT$anki_proto..card_rendering..empty_cards_report..NoteWithEmptyCards$u20$as$u20$core..fmt..Debug$GT$..fmt..ScalarWrapper$u20$as$u20$core..fmt..Debug$GT$3fmt17h80735eb0221adf80E" }>, align 8
@5 = private unnamed_addr constant [16 x i8] c"will_delete_note", align 1
@6 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h03d3837d3b2fedfbE" }>, align 8
@7 = private unnamed_addr constant [6 x i8] c"NORMAL", align 1
@8 = private unnamed_addr constant [5 x i8] c"EMPTY", align 1
@9 = private unnamed_addr constant [9 x i8] c"DUPLICATE", align 1
@10 = private unnamed_addr constant [13 x i8] c"MISSING_CLOZE", align 1
@11 = private unnamed_addr constant [18 x i8] c"NOTETYPE_NOT_CLOZE", align 1
@12 = private unnamed_addr constant [15 x i8] c"FIELD_NOT_CLOZE", align 1
@13 = private unnamed_addr constant [80 x i8] c"/rustc/ded5c06cf21d2b93bffd5d884aa6e96934ee4234/library/std/src/thread/local.rs\00", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"O\00\00\00\00\00\00\00\DA\01\00\00\19\00\00\00" }>, align 8
@15 = private unnamed_addr constant [6 x i8] c"Normal", align 1
@16 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@17 = private unnamed_addr constant [9 x i8] c"Duplicate", align 1
@18 = private unnamed_addr constant [12 x i8] c"MissingCloze", align 1
@19 = private unnamed_addr constant [16 x i8] c"NotetypeNotCloze", align 1
@20 = private unnamed_addr constant [13 x i8] c"FieldNotCloze", align 1
@switch.table._ZN10anki_proto5notes26note_fields_check_response5State11as_str_name17hd6f3a11130415f4bE = private unnamed_addr constant [6 x i8] c"\06\05\09\0D\12\0F", align 8
@switch.table._ZN10anki_proto5notes26note_fields_check_response5State11as_str_name17hd6f3a11130415f4bE.1 = private unnamed_addr constant [6 x ptr] [ptr @7, ptr @8, ptr @9, ptr @10, ptr @11, ptr @12], align 8
@"switch.table._ZN89_$LT$anki_proto..notes..note_fields_check_response..State$u20$as$u20$core..fmt..Debug$GT$3fmt17he50fbffc66191f95E" = private unnamed_addr constant [6 x i8] c"\06\05\09\0C\10\0D", align 8
@"switch.table._ZN89_$LT$anki_proto..notes..note_fields_check_response..State$u20$as$u20$core..fmt..Debug$GT$3fmt17he50fbffc66191f95E.2" = private unnamed_addr constant [6 x ptr] [ptr @15, ptr @16, ptr @17, ptr @18, ptr @19, ptr @20], align 8

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN103_$LT$anki_proto..card_rendering..empty_cards_report..NoteWithEmptyCards$u20$as$u20$core..fmt..Debug$GT$3fmt17h94e786ae1d55e5bcE"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 2 uses
  call void @_ZN4core3fmt9Formatter12debug_struct17h1e7fed6a090e7031E(ptr nonnull sret([16 x i8]) align 8 %i.d, ptr align 8 %1, ptr nonnull align 1 @0, i64 18)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.c, align 8
  %i.f = call align 8 ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr nonnull align 8 %i.d, ptr nonnull align 1 @1, i64 7, ptr nonnull align 1 %i.c, ptr nonnull align 8 @2)
  store ptr %0, ptr %i.b, align 8
  %i.g = call align 8 ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr align 8 %i.f, ptr nonnull align 1 @3, i64 8, ptr nonnull align 1 %i.b, ptr nonnull align 8 @4)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.h, ptr %i.a, align 8
  %i.i = call align 8 ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr align 8 %i.g, ptr nonnull align 1 @5, i64 16, ptr nonnull align 1 %i.a, ptr nonnull align 8 @6)
  %i.j = call zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17h85c161700f9add69E(ptr align 8 %i.i)
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i32, i32 } @"_ZN106_$LT$anki_proto..notes..note_fields_check_response..State$u20$as$u20$core..convert..TryFrom$LT$i32$GT$$GT$8try_from17h3611693e47720ee1E"(i32 %0) unnamed_addr #1 {
bb.a:
  %switch = icmp ugt i32 %0, 5
  %spec.select = zext i1 %switch to i32
  %i.a = insertvalue { i32, i32 } poison, i32 %spec.select, 0
  %i.b = insertvalue { i32, i32 } %i.a, i32 %0, 1
  ret { i32, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN109_$LT$anki_proto..card_rendering..empty_cards_report..NoteWithEmptyCards$u20$as$u20$core..default..Default$GT$7default17h1d4611a20aeb9586E"(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 33)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h20268aecca2a30e1E"(ptr nonnull sret([24 x i8]) align 8 %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i32 @"_ZN10anki_proto5notes26note_fields_check_response113_$LT$impl$u20$core..convert..From$LT$anki_proto..notes..note_fields_check_response..State$GT$$u20$for$u20$i32$GT$4from17h605ae1288c3bea3fE"(i32 returned %0) unnamed_addr #1 {
bb.a:
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_ZN10anki_proto5notes26note_fields_check_response5State11as_str_name17hd6f3a11130415f4bE(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #2 {
switch.lookup:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN10anki_proto5notes26note_fields_check_response5State11as_str_name17hd6f3a11130415f4bE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i32 %i.a to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN10anki_proto5notes26note_fields_check_response5State11as_str_name17hd6f3a11130415f4bE.1, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %switch.load2, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %switch.ext, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i32 0, 7) i32 @_ZN10anki_proto5notes26note_fields_check_response5State13from_str_name17h08a51063120edbfeE(ptr nofree readonly align 1 captures(none) %0, i64 %1) unnamed_addr #2 {
bb.a:
  switch i64 %1, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit20.thread" [
    i64 6, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit"
    i64 5, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit4"
    i64 9, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit8"
    i64 13, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit12"
    i64 18, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit16"
    i64 15, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit20"
  ]

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit": ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = xor i32 %i.a, 1297239886
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i16, ptr %i.c, align 1
  %i.e = zext i16 %i.d to i32
  %i.f = xor i32 %i.e, 19521
  %i.g = or i32 %i.b, %i.f
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit20.thread"

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit4": ; preds = %bb.a
  %i.k = load i32, ptr %0, align 1
  %i.l = xor i32 %i.k, 1414548805
  %i.m = getelementptr i8, ptr %0, i64 4
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = xor i32 %i.o, 89
  %i.q = or i32 %i.l, %i.p
  %i.r = icmp ne i32 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.b, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit20.thread"

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit8": ; preds = %bb.a
  %i.u = load i64, ptr %0, align 1
  %i.v = xor i64 %i.u, 6071207754764145988
  %i.w = getelementptr i8, ptr %0, i64 8
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = xor i64 %i.y, 69
  %i.aa = or i64 %i.v, %i.z
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.b, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit20.thread"

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit12": ; preds = %bb.a
  %i.ae = load i64, ptr %0, align 1
  %i.af = xor i64 %i.ae, 6865542233787156813
  %i.ag = getelementptr i8, ptr %0, i64 5
  %i.ah = load i64, ptr %i.ag, align 1
  %i.ai = xor i64 %i.ah, 4997393925487413070
  %i.aj = or i64 %i.af, %i.ai
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.b, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit20.thread"

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit16": ; preds = %bb.a
  %i.an = load i128, ptr %0, align 1
  %i.ao = xor i128 %i.an, 105404992702468500442963033853326020430
  %i.ap = getelementptr i8, ptr %0, i64 16
  %i.aq = load i16, ptr %i.ap, align 1
  %i.ar = zext i16 %i.aq to i128
  %i.as = xor i128 %i.ar, 17754
  %i.at = or i128 %i.ao, %i.as
  %i.au = icmp ne i128 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.b, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit20.thread"

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit20.thread": ; preds = %bb.a, %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit16", %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit12", %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit8", %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit", %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit4"
  br label %bb.b

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit20": ; preds = %bb.a
  %i.ax = load i64, ptr %0, align 1
  %i.ay = xor i64 %i.ax, 5714609724121762118
  %i.az = getelementptr i8, ptr %0, i64 7
  %i.ba = load i64, ptr %i.az, align 1
  %i.bb = xor i64 %i.ba, 4997393925487416399
  %i.bc = or i64 %i.ay, %i.bb
  %i.bd = icmp ne i64 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %bcmp.i19.fr = freeze i32 %i.be
  %i.bf = icmp eq i32 %bcmp.i19.fr, 0
  %spec.select = select i1 %i.bf, i32 5, i32 6
  br label %bb.b

bb.b:                                             ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit20", %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit20.thread", %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit16", %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit12", %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit8", %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit4", %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit"
  %.sroa.0.0 = phi i32 [ 4, %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit16" ], [ 0, %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit" ], [ 1, %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit4" ], [ 2, %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit8" ], [ 3, %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit12" ], [ 6, %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit20.thread" ], [ %spec.select, %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E.exit20" ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i32 0, 7) i32 @_ZN10anki_proto5notes26note_fields_check_response5State8from_i3217h76c674330644ff59E(i32 %0) unnamed_addr #1 {
switch.lookup:
  %spec.select = tail call i32 @llvm.umin.i32(i32 %0, i32 6)
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define zeroext i1 @_ZN10anki_proto5notes26note_fields_check_response5State8is_valid17h43f1755aa4f77026E(i32 %0) unnamed_addr #1 {
bb.a:
  %switch = icmp ult i32 %0, 6
  ret i1 %switch
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN110_$LT$anki_proto..card_rendering..empty_cards_report..NoteWithEmptyCards$u20$as$u20$prost..message..Message$GT$5clear17habbd3a0eeee73c5fE"(ptr align 8 initializes((24, 32)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.a, align 8
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5clear17he0dc2d2f604bb39bE"(ptr align 8 %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN159_$LT$$LT$anki_proto..card_rendering..empty_cards_report..NoteWithEmptyCards$u20$as$u20$core..fmt..Debug$GT$..fmt..ScalarWrapper$u20$as$u20$core..fmt..Debug$GT$3fmt17h80735eb0221adf80E"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  call void @_ZN4core3fmt9Formatter10debug_list17hce385b9777d986d7E(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr align 8 %1)
  %i.d = load ptr, ptr %0, align 8
  %i.e = call { ptr, ptr } @"_ZN94_$LT$$RF$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf19fc64e62fe521bE"(ptr align 8 %i.d) ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0
  %i.g = extractvalue { ptr, ptr } %i.e, 1
  store ptr %i.f, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.h, align 8
  %i.i = call align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51d1648347f4045dE"(ptr nonnull align 8 %i.b) ; 2 uses
  %.not2 = icmp eq ptr %i.i, null
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.j = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %bb.a ]
  store ptr %i.j, ptr %i.a, align 8
  %i.k = call align 8 ptr @_ZN4core3fmt8builders9DebugList5entry17h7200e436a7386bd3E(ptr nonnull align 8 %i.c, ptr nonnull align 1 %i.a, ptr nonnull align 8 @2) ; 0 uses
  %i.l = call align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51d1648347f4045dE"(ptr nonnull align 8 %i.b) ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.m = call zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17hbf71f56035f2c70aE(ptr nonnull align 8 %i.c)
  ret i1 %i.m
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h2741a31f01204cacE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call ptr %i.a(ptr align 8 null), !inline_history !3 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std6thread5local18panic_access_error17h8f81ecb49b0705c7E(ptr nonnull align 8 @14) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @"_ZN3std4hash6random11RandomState3new28_$u7b$$u7b$closure$u7d$$u7d$17h931fcfef24bb47f2E"(ptr nonnull align 8 %i.b)
  ret { i64, i64 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h3c4d92082c9978d1E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = tail call ptr %i.a(ptr align 8 null)     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @"_ZN3std4hash6random11RandomState3new28_$u7b$$u7b$closure$u7d$$u7d$17h931fcfef24bb47f2E"(ptr nonnull align 8 %i.b) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ 0, %bb.b ], [ 1, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcbe722fec4b25329E"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_ZN4core3fmt9Formatter12debug_struct17h1e7fed6a090e7031E(ptr nonnull sret([16 x i8]) align 8 %i.d, ptr align 8 %1, ptr nonnull align 1 @0, i64 18)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.f, ptr %i.c, align 8
  %i.g = call align 8 ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr nonnull align 8 %i.d, ptr nonnull align 1 @1, i64 7, ptr nonnull align 1 %i.c, ptr nonnull align 8 @2)
  store ptr %i.e, ptr %i.b, align 8
  %i.h = call align 8 ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr align 8 %i.g, ptr nonnull align 1 @3, i64 8, ptr nonnull align 1 %i.b, ptr nonnull align 8 @4)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.i, ptr %i.a, align 8
  %i.j = call align 8 ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr align 8 %i.h, ptr nonnull align 1 @5, i64 16, ptr nonnull align 1 %i.a, ptr nonnull align 8 @6)
  %i.k = call zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17h85c161700f9add69E(ptr align 8 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17hac356742b74317baE"(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  call void @_ZN4core3fmt9Formatter10debug_list17hce385b9777d986d7E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %2)
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1
  %i.c = call align 8 ptr @_ZN4core3fmt8builders9DebugList7entries17hded57b8044162664E(ptr nonnull align 8 %i.a, ptr %0, ptr %i.b)
  %i.d = call zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17hbf71f56035f2c70aE(ptr align 8 %i.c)
  ret i1 %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E"(ptr nofree readonly align 1 captures(none) %0, i64 %1, ptr nofree readonly align 1 captures(none) %2, i64 %3) unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %2, i64 %1)
  %i.a = icmp eq i32 %bcmp, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.a, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4core9core_arch3x867__m128i8as_i8x1617ha3f4e57a58f83f74E(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 16
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5c66ce22343e03e9E"(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hc6aac222587edc07E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1                          ; 2 uses
  %or.cond = icmp ugt i64 %i.e, 2305843009213693950
  br i1 %or.cond, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw i64 %i.e, 3
  %i.g = add nuw i64 %i.f, 8
  %i.h = and i64 %i.g, -16                        ; 3 uses
  %i.i = add nsw i64 %i.c, 17
  %i.j = add i64 %i.i, %i.h                       ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  br i1 %i.l, label %bb.e, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i

bb.e:                                             ; preds = %bb.d
  br label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.h, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.j, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.m = load ptr, ptr %0, align 8
  %i.n = sub nsw i64 0, %.sroa.8.0.i
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h946115732aa43fb8E"(ptr nonnull align 1 %i.a, ptr %i.o, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i)
  br label %_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hc6aac222587edc07E.exit

_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hc6aac222587edc07E.exit: ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h89df376d51c0570aE"(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hf3ec56a16590f8a1E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1                          ; 2 uses
  %or.cond = icmp ugt i64 %i.e, 2305843009213693950
  br i1 %or.cond, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw i64 %i.e, 3
  %i.g = add nuw i64 %i.f, 8
  %i.h = and i64 %i.g, -16                        ; 3 uses
  %i.i = add nsw i64 %i.c, 17
  %i.j = add i64 %i.i, %i.h                       ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  br i1 %i.l, label %bb.e, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i

bb.e:                                             ; preds = %bb.d
  br label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.h, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.j, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.m = load ptr, ptr %0, align 8
  %i.n = sub nsw i64 0, %.sroa.8.0.i
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h946115732aa43fb8E"(ptr nonnull align 1 %i.a, ptr %i.o, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i)
  br label %_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hf3ec56a16590f8a1E.exit

_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hf3ec56a16590f8a1E.exit: ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4d87c98f8d31957E"(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN9hashbrown3raw13RawTableInner16drop_inner_table17h1a98e44fe2a12850E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.e, i64 24) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = extractvalue { i64, i1 } %i.f, 0
  %i.i = add nuw i64 %i.h, 8
  %i.j = and i64 %i.i, -16                        ; 3 uses
  %i.k = add i64 %i.c, 17
  %i.l = add i64 %i.k, %i.j                       ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.j
  br i1 %i.m, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ugt i64 %i.l, 9223372036854775792
  br i1 %i.n, label %bb.e, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i

bb.e:                                             ; preds = %bb.d
  br label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.j, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.l, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.o = load ptr, ptr %0, align 8
  %i.p = sub nsw i64 0, %.sroa.8.0.i
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h946115732aa43fb8E"(ptr nonnull align 1 %i.a, ptr %i.q, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i)
  br label %_ZN9hashbrown3raw13RawTableInner16drop_inner_table17h1a98e44fe2a12850E.exit

_ZN9hashbrown3raw13RawTableInner16drop_inner_table17h1a98e44fe2a12850E.exit: ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hab8e9276b7f61f7bE"(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN9hashbrown3raw13RawTableInner16drop_inner_table17h54317882c5980d3fE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1                          ; 2 uses
  %or.cond = icmp ugt i64 %i.e, 2305843009213693950
  br i1 %or.cond, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw i64 %i.e, 3
  %i.g = add nuw i64 %i.f, 8
  %i.h = and i64 %i.g, -16                        ; 3 uses
  %i.i = add nsw i64 %i.c, 17
  %i.j = add i64 %i.i, %i.h                       ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  br i1 %i.l, label %bb.e, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i

bb.e:                                             ; preds = %bb.d
  br label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.h, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.j, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.m = load ptr, ptr %0, align 8
  %i.n = sub nsw i64 0, %.sroa.8.0.i
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h946115732aa43fb8E"(ptr nonnull align 1 %i.a, ptr %i.o, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i)
  br label %_ZN9hashbrown3raw13RawTableInner16drop_inner_table17h54317882c5980d3fE.exit

_ZN9hashbrown3raw13RawTableInner16drop_inner_table17h54317882c5980d3fE.exit: ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN89_$LT$anki_proto..notes..note_fields_check_response..State$u20$as$u20$core..fmt..Debug$GT$3fmt17he50fbffc66191f95E"(ptr nofree readonly align 4 captures(none) %0, ptr align 8 %1) unnamed_addr #3 {
switch.lookup:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN89_$LT$anki_proto..notes..note_fields_check_response..State$u20$as$u20$core..fmt..Debug$GT$3fmt17he50fbffc66191f95E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i32 %i.a to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN89_$LT$anki_proto..notes..note_fields_check_response..State$u20$as$u20$core..fmt..Debug$GT$3fmt17he50fbffc66191f95E.2", i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr align 8 %1, ptr nonnull align 1 %switch.load2, i64 %switch.ext)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @"_ZN95_$LT$anki_proto..notes..note_fields_check_response..State$u20$as$u20$core..default..Default$GT$7default17h69fe564986628b06E"() unnamed_addr #1 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_ZN9hashbrown3raw13RawTableInner13drop_elements17h183dbfd4733d68f4E(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_ZN9hashbrown3raw13RawTableInner13drop_elements17h9c66313c7d2e3911E(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_ZN9hashbrown3raw13RawTableInner13drop_elements17ha4e6a69800d2bbc2E(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9hashbrown3raw13RawTableInner13drop_elements17ha8f9a3c098b945feE(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_ZN4core9core_arch3x864sse214_mm_load_si12817h617502d1b1db8545E(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr %i.h)
  %i.i = load <2 x i64>, ptr %i.d, align 16
  store <2 x i64> %i.i, ptr %i.c, align 16
  %i.j = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817hae2ab878f2a56d9bE(ptr nonnull align 16 %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = load i64, ptr %i.e, align 8              ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = trunc i32 %i.j to i16
  %i.o = xor i16 %i.n, -1
  br label %.lr.ph

.loopexit:                                        ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit", %bb.c, %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.05.019 = phi ptr [ %.sroa.05.229, %bb.c ], [ %i.h, %.lr.ph.preheader ] ; 3 uses
  %.sroa.4.018 = phi ptr [ %.sroa.4.228, %bb.c ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %.sroa.10.sroa.1.017 = phi i64 [ %i.z, %bb.c ], [ %i.k, %.lr.ph.preheader ]
  %.sroa.76.016 = phi i16 [ %i.ab, %bb.c ], [ %i.o, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not9.i = icmp eq i16 %.sroa.76.016, 0
  br i1 %.not9.i, label %.lr.ph.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit"

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.sroa.4.1 = phi ptr [ %i.t, %.lr.ph.i ], [ %.sroa.4.018, %.lr.ph ] ; 2 uses
  %.sroa.05.1 = phi ptr [ %i.s, %.lr.ph.i ], [ %.sroa.05.019, %.lr.ph ]
  call void @_ZN4core9core_arch3x864sse214_mm_load_si12817h617502d1b1db8545E(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %.sroa.4.1)
  %i.p = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.p, ptr %i.a, align 16
  %i.q = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817hae2ab878f2a56d9bE(ptr nonnull align 16 %i.a)
  %i.r = trunc i32 %i.q to i16                    ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.05.1, i64 -768 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.4.1, i64 16 ; 2 uses
  %.not.i = icmp eq i16 %i.r, -1
  br i1 %.not.i, label %.lr.ph.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit.thread"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit.thread": ; preds = %.lr.ph.i
  %i.u = xor i16 %i.r, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit": ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.sroa.05.019, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit.thread", %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit"
  %.lcssa.i30 = phi i16 [ %i.u, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit.thread" ], [ %.sroa.76.016, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit" ] ; 3 uses
  %.sroa.05.229 = phi ptr [ %i.s, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit.thread" ], [ %.sroa.05.019, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit" ] ; 2 uses
  %.sroa.4.228 = phi ptr [ %i.t, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit.thread" ], [ %.sroa.4.018, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit" ]
  %i.v = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i30, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [48 x i8], ptr %.sroa.05.229, i64 %i.x
  %i.z = add i64 %.sroa.10.sroa.1.017, -1         ; 2 uses
  %i.aa = add i16 %.lcssa.i30, -1
  %i.ab = and i16 %i.aa, %.lcssa.i30
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 -48
  call void @"_ZN4core3ptr88drop_in_place$LT$$LP$alloc..string..String$C$anki_proto..i18n..TranslateArgValue$RP$$GT$17hd84af07bb2f8e801E"(ptr nonnull align 8 %i.ac)
  %i.ad = icmp eq i64 %i.z, 0
  br i1 %i.ad, label %.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_ZN9hashbrown3raw13RawTableInner13drop_elements17hca6c760c39ba2a41E(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9hashbrown3raw13RawTableInner16drop_inner_table17h1a98e44fe2a12850E(ptr nofree readonly align 8 captures(none) %0, ptr align 1 %1, i64 %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.d) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  %i.h = add i64 %3, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = sub i64 0, %3
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %i.b, 17
  %i.n = add i64 %i.m, %i.l                       ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = sub i64 -9223372036854775808, %3
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit

bb.f:                                             ; preds = %bb.e
  br label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.l, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.n, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ %3, %bb.e ]
  %i.r = load ptr, ptr %0, align 8
  %i.s = sub nsw i64 0, %.sroa.8.0
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h946115732aa43fb8E"(ptr align 1 %1, ptr %i.t, i64 %.sroa.0.0, i64 %.sroa.6.0)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9hashbrown3raw13RawTableInner16drop_inner_table17h54317882c5980d3fE(ptr nofree readonly align 8 captures(none) %0, ptr align 1 %1, i64 %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.d) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  %i.h = add i64 %3, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = sub i64 0, %3
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %i.b, 17
  %i.n = add i64 %i.m, %i.l                       ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = sub i64 -9223372036854775808, %3
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit

bb.f:                                             ; preds = %bb.e
  br label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.l, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.n, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ %3, %bb.e ]
  %i.r = load ptr, ptr %0, align 8
  %i.s = sub nsw i64 0, %.sroa.8.0
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h946115732aa43fb8E"(ptr align 1 %1, ptr %i.t, i64 %.sroa.0.0, i64 %.sroa.6.0)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hc6aac222587edc07E(ptr nofree readonly align 8 captures(none) %0, ptr align 1 %1, i64 %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.d) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  %i.h = add i64 %3, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = sub i64 0, %3
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %i.b, 17
  %i.n = add i64 %i.m, %i.l                       ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = sub i64 -9223372036854775808, %3
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit

bb.f:                                             ; preds = %bb.e
  br label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.l, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.n, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ %3, %bb.e ]
  %i.r = load ptr, ptr %0, align 8
  %i.s = sub nsw i64 0, %.sroa.8.0
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h946115732aa43fb8E"(ptr align 1 %1, ptr %i.t, i64 %.sroa.0.0, i64 %.sroa.6.0)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hf3ec56a16590f8a1E(ptr nofree readonly align 8 captures(none) %0, ptr align 1 %1, i64 %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.d) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  %i.h = add i64 %3, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = sub i64 0, %3
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %i.b, 17
  %i.n = add i64 %i.m, %i.l                       ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = sub i64 -9223372036854775808, %3
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit

bb.f:                                             ; preds = %bb.e
  br label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.l, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.n, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ %3, %bb.e ]
  %i.r = load ptr, ptr %0, align 8
  %i.s = sub nsw i64 0, %.sroa.8.0
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h946115732aa43fb8E"(ptr align 1 %1, ptr %i.t, i64 %.sroa.0.0, i64 %.sroa.6.0)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17h09db7cd94120b88bE"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 26)) %0, ptr %1, ptr %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %3
  call void @_ZN4core9core_arch3x864sse214_mm_load_si12817h617502d1b1db8545E(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %1)
  %i.d = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.d, ptr %i.a, align 16
  %i.e = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817hae2ab878f2a56d9bE(ptr nonnull align 16 %i.a)
  %i.f = trunc i32 %i.e to i16
  %i.g = xor i16 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.g, ptr %i.i, align 8
  store ptr %2, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17h2d9de00399f842b1E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 26)) %0, ptr %1, ptr %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %3
  call void @_ZN4core9core_arch3x864sse214_mm_load_si12817h617502d1b1db8545E(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %1)
  %i.d = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.d, ptr %i.a, align 16
  %i.e = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817hae2ab878f2a56d9bE(ptr nonnull align 16 %i.a)
  %i.f = trunc i32 %i.e to i16
  %i.g = xor i16 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.g, ptr %i.i, align 8
  store ptr %2, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17h3bcf17665fdb0941E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 26)) %0, ptr %1, ptr %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %3
  call void @_ZN4core9core_arch3x864sse214_mm_load_si12817h617502d1b1db8545E(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %1)
  %i.d = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.d, ptr %i.a, align 16
  %i.e = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817hae2ab878f2a56d9bE(ptr nonnull align 16 %i.a)
  %i.f = trunc i32 %i.e to i16
  %i.g = xor i16 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.g, ptr %i.i, align 8
  store ptr %2, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17h7798dcd1650e8197E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 26)) %0, ptr %1, ptr %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %3
  call void @_ZN4core9core_arch3x864sse214_mm_load_si12817h617502d1b1db8545E(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %1)
  %i.d = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.d, ptr %i.a, align 16
  %i.e = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817hae2ab878f2a56d9bE(ptr nonnull align 16 %i.a)
  %i.f = trunc i32 %i.e to i16
  %i.g = xor i16 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.g, ptr %i.i, align 8
  store ptr %2, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17hea9361ba33032aa2E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 26)) %0, ptr %1, ptr %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %3
  call void @_ZN4core9core_arch3x864sse214_mm_load_si12817h617502d1b1db8545E(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %1)
  %i.d = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.d, ptr %i.a, align 16
  %i.e = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817hae2ab878f2a56d9bE(ptr nonnull align 16 %i.a)
  %i.f = trunc i32 %i.e to i16
  %i.g = xor i16 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.g, ptr %i.i, align 8
  store ptr %2, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define ptr @"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h2f2de52951f82862E"(ptr nofree align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %.not9 = icmp eq i16 %i.d, 0
  br i1 %.not9, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre12 = load ptr, ptr %0, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.s, i64 -384
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %i.g = phi ptr [ %.pre12, %.._crit_edge_crit_edge ], [ %i.f, %._crit_edge.loopexit ]
  %.lcssa = phi i16 [ %i.d, %.._crit_edge_crit_edge ], [ %i.r, %._crit_edge.loopexit ] ; 3 uses
  %i.h = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.i = zext nneg i16 %i.h to i64
  %i.j = add i16 %.lcssa, -1
  %i.k = and i16 %i.j, %.lcssa
  store i16 %i.k, ptr %i.c, align 8
  %i.l = sub nsw i64 0, %i.i
  %i.m = getelementptr inbounds [24 x i8], ptr %i.g, i64 %i.l
  ret ptr %i.m

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.n = phi ptr [ %.pre, %.lr.ph ], [ %i.v, %bb.b ]
  call void @_ZN4core9core_arch3x864sse214_mm_load_si12817h617502d1b1db8545E(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %i.n)
  %i.o = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.o, ptr %i.a, align 16
  %i.p = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817hae2ab878f2a56d9bE(ptr nonnull align 16 %i.a)
  %i.q = trunc i32 %i.p to i16                    ; 2 uses
  %i.r = xor i16 %i.q, -1                         ; 2 uses
  store i16 %i.r, ptr %i.c, align 8
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -384
  store ptr %i.t, ptr %0, align 8
  %i.u = load ptr, ptr %i.e, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.v, ptr %i.e, align 8
  %.not = icmp eq i16 %i.q, -1
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit
}

; Function Attrs: nonlazybind uwtable
define ptr @"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h318eea50fa5883bbE"(ptr nofree align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %.not9 = icmp eq i16 %i.d, 0
  br i1 %.not9, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre12 = load ptr, ptr %0, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.s, i64 -128
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %i.g = phi ptr [ %.pre12, %.._crit_edge_crit_edge ], [ %i.f, %._crit_edge.loopexit ]
  %.lcssa = phi i16 [ %i.d, %.._crit_edge_crit_edge ], [ %i.r, %._crit_edge.loopexit ] ; 3 uses
  %i.h = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.i = zext nneg i16 %i.h to i64
  %i.j = add i16 %.lcssa, -1
  %i.k = and i16 %i.j, %.lcssa
  store i16 %i.k, ptr %i.c, align 8
  %i.l = sub nsw i64 0, %i.i
  %i.m = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.l
  ret ptr %i.m

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.n = phi ptr [ %.pre, %.lr.ph ], [ %i.v, %bb.b ]
  call void @_ZN4core9core_arch3x864sse214_mm_load_si12817h617502d1b1db8545E(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %i.n)
  %i.o = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.o, ptr %i.a, align 16
  %i.p = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817hae2ab878f2a56d9bE(ptr nonnull align 16 %i.a)
  %i.q = trunc i32 %i.p to i16                    ; 2 uses
  %i.r = xor i16 %i.q, -1                         ; 2 uses
  store i16 %i.r, ptr %i.c, align 8
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -128
  store ptr %i.t, ptr %0, align 8
  %i.u = load ptr, ptr %i.e, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.v, ptr %i.e, align 8
  %.not = icmp eq i16 %i.q, -1
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit
}

; Function Attrs: nonlazybind uwtable
define ptr @"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h58d328132ffedf2dE"(ptr nofree align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %.not9 = icmp eq i16 %i.d, 0
  br i1 %.not9, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre12 = load ptr, ptr %0, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.s, i64 -128
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %i.g = phi ptr [ %.pre12, %.._crit_edge_crit_edge ], [ %i.f, %._crit_edge.loopexit ]
  %.lcssa = phi i16 [ %i.d, %.._crit_edge_crit_edge ], [ %i.r, %._crit_edge.loopexit ] ; 3 uses
  %i.h = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.i = zext nneg i16 %i.h to i64
  %i.j = add i16 %.lcssa, -1
  %i.k = and i16 %i.j, %.lcssa
  store i16 %i.k, ptr %i.c, align 8
  %i.l = sub nsw i64 0, %i.i
  %i.m = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.l
  ret ptr %i.m

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.n = phi ptr [ %.pre, %.lr.ph ], [ %i.v, %bb.b ]
  call void @_ZN4core9core_arch3x864sse214_mm_load_si12817h617502d1b1db8545E(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %i.n)
  %i.o = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.o, ptr %i.a, align 16
  %i.p = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817hae2ab878f2a56d9bE(ptr nonnull align 16 %i.a)
  %i.q = trunc i32 %i.p to i16                    ; 2 uses
  %i.r = xor i16 %i.q, -1                         ; 2 uses
  store i16 %i.r, ptr %i.c, align 8
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -128
  store ptr %i.t, ptr %0, align 8
  %i.u = load ptr, ptr %i.e, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.v, ptr %i.e, align 8
  %.not = icmp eq i16 %i.q, -1
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit
}

; Function Attrs: nonlazybind uwtable
define ptr @"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h971308088b9e0a6dE"(ptr nofree align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %.not9 = icmp eq i16 %i.d, 0
  br i1 %.not9, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre12 = load ptr, ptr %0, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.s, i64 -128
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %i.g = phi ptr [ %.pre12, %.._crit_edge_crit_edge ], [ %i.f, %._crit_edge.loopexit ]
  %.lcssa = phi i16 [ %i.d, %.._crit_edge_crit_edge ], [ %i.r, %._crit_edge.loopexit ] ; 3 uses
  %i.h = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.i = zext nneg i16 %i.h to i64
  %i.j = add i16 %.lcssa, -1
  %i.k = and i16 %i.j, %.lcssa
  store i16 %i.k, ptr %i.c, align 8
  %i.l = sub nsw i64 0, %i.i
  %i.m = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.l
  ret ptr %i.m

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.n = phi ptr [ %.pre, %.lr.ph ], [ %i.v, %bb.b ]
  call void @_ZN4core9core_arch3x864sse214_mm_load_si12817h617502d1b1db8545E(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %i.n)
  %i.o = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.o, ptr %i.a, align 16
  %i.p = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817hae2ab878f2a56d9bE(ptr nonnull align 16 %i.a)
  %i.q = trunc i32 %i.p to i16                    ; 2 uses
  %i.r = xor i16 %i.q, -1                         ; 2 uses
  store i16 %i.r, ptr %i.c, align 8
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -128
  store ptr %i.t, ptr %0, align 8
  %i.u = load ptr, ptr %i.e, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.v, ptr %i.e, align 8
  %.not = icmp eq i16 %i.q, -1
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit
}

; Function Attrs: nonlazybind uwtable
define ptr @"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E"(ptr nofree align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %.not9 = icmp eq i16 %i.d, 0
  br i1 %.not9, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre12 = load ptr, ptr %0, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.s, i64 -768
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %i.g = phi ptr [ %.pre12, %.._crit_edge_crit_edge ], [ %i.f, %._crit_edge.loopexit ]
  %.lcssa = phi i16 [ %i.d, %.._crit_edge_crit_edge ], [ %i.r, %._crit_edge.loopexit ] ; 3 uses
  %i.h = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.i = zext nneg i16 %i.h to i64
  %i.j = add i16 %.lcssa, -1
  %i.k = and i16 %i.j, %.lcssa
  store i16 %i.k, ptr %i.c, align 8
  %i.l = sub nsw i64 0, %i.i
  %i.m = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.l
  ret ptr %i.m

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.n = phi ptr [ %.pre, %.lr.ph ], [ %i.v, %bb.b ]
  call void @_ZN4core9core_arch3x864sse214_mm_load_si12817h617502d1b1db8545E(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %i.n)
  %i.o = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.o, ptr %i.a, align 16
  %i.p = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817hae2ab878f2a56d9bE(ptr nonnull align 16 %i.a)
  %i.q = trunc i32 %i.p to i16                    ; 2 uses
  %i.r = xor i16 %i.q, -1                         ; 2 uses
  store i16 %i.r, ptr %i.c, align 8
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -768
  store ptr %i.t, ptr %0, align 8
  %i.u = load ptr, ptr %i.e, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.v, ptr %i.e, align 8
  %.not = icmp eq i16 %i.q, -1
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17h50750f416d91f6f2E"(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  ret void

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8
  call void @"_ZN4core3ptr211drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$u32$C$u32$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$u32$C$u32$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h98650619c493ae68E"(ptr nonnull align 8 %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17h561549eb1e6579e8E"(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  ret void

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8
  call void @"_ZN4core3ptr341drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$i32$C$anki_proto..stats..graphs_response..review_counts_and_times..Reviews$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$i32$C$anki_proto..stats..graphs_response..review_counts_and_times..Reviews$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf1ecb57fe7ca3c4bE"(ptr nonnull align 8 %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17hb82715f976c8e1f8E"(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  ret void

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8
  call void @"_ZN4core3ptr211drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$u32$C$f32$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$u32$C$f32$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hc96d9dc02e6fcdeeE"(ptr nonnull align 8 %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17hc81a058ee8826996E"(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8
  invoke void @_ZN9hashbrown3raw13RawTableInner13drop_elements17ha8f9a3c098b945feE(ptr nonnull align 8 %0)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.e
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr311drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$anki_proto..i18n..TranslateArgValue$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$anki_proto..i18n..TranslateArgValue$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h464c99babc8d1cebE"(ptr nonnull align 8 %i.a) #17
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @"_ZN4core3ptr311drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$anki_proto..i18n..TranslateArgValue$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$anki_proto..i18n..TranslateArgValue$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h464c99babc8d1cebE"(ptr nonnull align 8 %i.a)
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #18
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17hfa259d2b139a6851E"(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  ret void

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8
  call void @"_ZN4core3ptr211drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$i32$C$u32$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$i32$C$u32$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h551f241556a91b49E"(ptr nonnull align 8 %i.a)
  br label %bb.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear28_$u7b$$u7b$closure$u7d$$u7d$17h11993de9b7483152E"(ptr nofree readnone align 1 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.e, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = add i64 %i.c, 17
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 -1, i64 %i.g, i1 false)
  %.pre = load i64, ptr %i.b, align 8
  %.pre.fr = freeze i64 %.pre                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  %i.i = icmp ult i64 %.pre.fr, 8
  %i.j = add i64 %.pre.fr, 1
  %i.k = lshr i64 %i.j, 3
  %i.l = mul nuw i64 %i.k, 7
  %spec.select = select i1 %i.i, i64 %.pre.fr, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.m = phi i64 [ %spec.select, %bb.b ], [ 0, %.thread ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.m, ptr %i.n, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear28_$u7b$$u7b$closure$u7d$$u7d$17h3a42c06cd2513fe8E"(ptr nofree readnone align 1 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.e, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = add i64 %i.c, 17
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 -1, i64 %i.g, i1 false)
  %.pre = load i64, ptr %i.b, align 8
  %.pre.fr = freeze i64 %.pre                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  %i.i = icmp ult i64 %.pre.fr, 8
  %i.j = add i64 %.pre.fr, 1
  %i.k = lshr i64 %i.j, 3
  %i.l = mul nuw i64 %i.k, 7
  %spec.select = select i1 %i.i, i64 %.pre.fr, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.m = phi i64 [ %spec.select, %bb.b ], [ 0, %.thread ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.m, ptr %i.n, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear28_$u7b$$u7b$closure$u7d$$u7d$17hcc4273d60633b11aE"(ptr nofree readnone align 1 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.e, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = add i64 %i.c, 17
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 -1, i64 %i.g, i1 false)
  %.pre = load i64, ptr %i.b, align 8
  %.pre.fr = freeze i64 %.pre                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  %i.i = icmp ult i64 %.pre.fr, 8
  %i.j = add i64 %.pre.fr, 1
  %i.k = lshr i64 %i.j, 3
  %i.l = mul nuw i64 %i.k, 7
  %spec.select = select i1 %i.i, i64 %.pre.fr, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.m = phi i64 [ %spec.select, %bb.b ], [ 0, %.thread ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.m, ptr %i.n, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear28_$u7b$$u7b$closure$u7d$$u7d$17he20841a4274dd581E"(ptr nofree readnone align 1 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.e, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = add i64 %i.c, 17
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 -1, i64 %i.g, i1 false)
  %.pre = load i64, ptr %i.b, align 8
  %.pre.fr = freeze i64 %.pre                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  %i.i = icmp ult i64 %.pre.fr, 8
  %i.j = add i64 %.pre.fr, 1
  %i.k = lshr i64 %i.j, 3
  %i.l = mul nuw i64 %i.k, 7
  %spec.select = select i1 %i.i, i64 %.pre.fr, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.m = phi i64 [ %spec.select, %bb.b ], [ 0, %.thread ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.m, ptr %i.n, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear28_$u7b$$u7b$closure$u7d$$u7d$17hfa686334ca9acaafE"(ptr nofree readnone align 1 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.e, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = add i64 %i.c, 17
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 -1, i64 %i.g, i1 false)
  %.pre = load i64, ptr %i.b, align 8
  %.pre.fr = freeze i64 %.pre                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  %i.i = icmp ult i64 %.pre.fr, 8
  %i.j = add i64 %.pre.fr, 1
  %i.k = lshr i64 %i.j, 3
  %i.l = mul nuw i64 %i.k, 7
  %spec.select = select i1 %i.i, i64 %.pre.fr, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.m = phi i64 [ %spec.select, %bb.b ], [ 0, %.thread ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.m, ptr %i.n, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter12debug_struct17h1e7fed6a090e7031E(ptr sret([16 x i8]) align 8, ptr align 8, ptr align 1, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he3240ba31e445e99E"(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr align 8, ptr align 1, i64, ptr align 1, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h03d3837d3b2fedfbE"(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17h85c161700f9add69E(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h20268aecca2a30e1E"(ptr sret([24 x i8]) align 8) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5clear17he0dc2d2f604bb39bE"(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter10debug_list17hce385b9777d986d7E(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @"_ZN94_$LT$$RF$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf19fc64e62fe521bE"(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51d1648347f4045dE"(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17hbf71f56035f2c70aE(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_ZN4core3fmt8builders9DebugList5entry17h7200e436a7386bd3E(ptr align 8, ptr align 1, ptr align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN3std6thread5local18panic_access_error17h8f81ecb49b0705c7E(ptr align 8) unnamed_addr #8

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #9

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, i64 } @"_ZN3std4hash6random11RandomState3new28_$u7b$$u7b$closure$u7d$$u7d$17h931fcfef24bb47f2E"(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_ZN4core3fmt8builders9DebugList7entries17hded57b8044162664E(ptr align 8, ptr, ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr align 8, ptr align 1, i64) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #10

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr88drop_in_place$LT$$LP$alloc..string..String$C$anki_proto..i18n..TranslateArgValue$RP$$GT$17hd84af07bb2f8e801E"(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h946115732aa43fb8E"(ptr align 1, ptr, i64, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4core9core_arch3x864sse214_mm_load_si12817h617502d1b1db8545E(ptr sret([16 x i8]) align 16, ptr) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817hae2ab878f2a56d9bE(ptr align 16) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr211drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$u32$C$u32$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$u32$C$u32$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h98650619c493ae68E"(ptr align 8) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr341drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$i32$C$anki_proto..stats..graphs_response..review_counts_and_times..Reviews$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$i32$C$anki_proto..stats..graphs_response..review_counts_and_times..Reviews$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf1ecb57fe7ca3c4bE"(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr211drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$u32$C$f32$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$u32$C$f32$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hc96d9dc02e6fcdeeE"(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr311drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$anki_proto..i18n..TranslateArgValue$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$anki_proto..i18n..TranslateArgValue$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h464c99babc8d1cebE"(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr211drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$i32$C$u32$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$i32$C$u32$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h551f241556a91b49E"(ptr align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #16 = { noreturn }
attributes #17 = { cold }
attributes #18 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.92.0 (ded5c06cf 2025-12-08)"}
!3 = !{ptr @"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h3c4d92082c9978d1E"}
end_hunk_0
