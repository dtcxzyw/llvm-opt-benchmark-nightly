Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_codegen-e4a9ab2b15e5db98.ruff_python_codegen.e7a171c690cb58b7-cgu.02?download=true
inline.NumInlined: 41
inline.NumDeleted: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [11 x i8] c"\02\\U\C3 \00\00i\08\00\00", align 1
@1 = private unnamed_addr constant [11 x i8] c"\02\\u\C3 \00\00i\04\00\00", align 1
@2 = private unnamed_addr constant [11 x i8] c"\02\\x\C3 \00\00i\02\00\00", align 1
@3 = private unnamed_addr constant [11 x i8] c"ASCII bytes", align 1
@4 = private unnamed_addr constant [41 x i8] c"crates/ruff_python_literal/src/escape.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"(\00\00\00\00\00\00\00e\01\00\007\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@7 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@8 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCsjSXNr8pNfhj_19ruff_python_codegen }>, align 8
@9 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@10 = private unnamed_addr constant [11 x i8] c"valid_up_to", align 1
@11 = private unnamed_addr constant [9 x i8] c"error_len", align 1

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs6_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB6_9BytesRepr5writeNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !5, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i8, ptr %i.f, align 8, !range !5, !noundef !3
  %2 = shl nuw nsw i8 %i.g, 1
  %i.h = or disjoint i8 %2, %i.e
  %.sroa.01.1 = xor i8 %i.h, 2                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 11 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !44, !noundef !3 ; 3 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsjSXNr8pNfhj_19ruff_python_codegen(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !44, !nonnull !3, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  store i8 98, ptr %i.n, align 1
  %i.o = add nuw i64 %i.j, 1
  store i64 %i.o, ptr %i.i, align 8, !alias.scope !44
  %i.p = tail call { ptr, i64 } @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes17BytesLiteralFlagsNtB4_11StringFlags9quote_strCsjSXNr8pNfhj_19ruff_python_codegen(i8 noundef %.sroa.01.1) ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 1        ; 4 uses
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsjSXNr8pNfhj_19ruff_python_codegen(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.q), !noalias !45
  %i.r = load i64, ptr %i.i, align 8, !alias.scope !46, !noalias !45, !noundef !3 ; 3 uses
  %i.s = icmp sgt i64 %i.r, -1
  tail call void @llvm.assume(i1 %i.s)
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = extractvalue { ptr, i64 } %i.p, 0
  %i.u = load ptr, ptr %i.l, align 8, !alias.scope !46, !noalias !45, !nonnull !3, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %i.t, i64 %i.q, i1 false)
  %.pre.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !46, !noalias !45
  br label %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit

_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit: ; preds = %bb.a, %bb.b
  %i.w = phi i64 [ %.pre.i.i.i, %bb.b ], [ %i.r, %bb.a ]
  %i.x = add i64 %i.w, %i.q
  store i64 %i.x, ptr %i.i, align 8, !alias.scope !46, !noalias !45
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val.i.i = load i64, ptr %i.y, align 8, !alias.scope !49, !noalias !48, !noundef !3 ; 2 uses
  %i.z = load i64, ptr %i.c, align 8, !range !6, !alias.scope !49, !noalias !48, !noundef !3
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !49, !noalias !48
  %i.ad = icmp eq i64 %i.ac, %.val.i.i
  %.sroa.0.0.i.not.i = select i1 %i.aa, i1 %i.ad, i1 false
  br i1 %.sroa.0.0.i.not.i, label %bb.c, label %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape11AsciiEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen.exit

bb.c:                                             ; preds = %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !47, !noalias !48, !nonnull !3, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !51
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val.i.i), !noalias !51
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.af = load i64, ptr %i.b, align 8, !range !6, !alias.scope !52, !noalias !51, !noundef !3
  %i.ag = trunc nuw i64 %i.af to i1
  br i1 %i.ag, label %bb.d, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsjSXNr8pNfhj_19ruff_python_codegen.exit.i.i, !prof !53

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !54
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !noalias !51
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #8, !noalias !54
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsjSXNr8pNfhj_19ruff_python_codegen.exit.i.i: ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !52, !noalias !51, !nonnull !3, !noundef !3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !52, !noalias !51, !noundef !3 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !51
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsjSXNr8pNfhj_19ruff_python_codegen(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.al), !noalias !55
  %i.am = load i64, ptr %i.i, align 8, !alias.scope !56, !noalias !55, !noundef !3 ; 3 uses
  %i.an = icmp sgt i64 %i.am, -1
  tail call void @llvm.assume(i1 %i.an)
  %.not.i.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i.i, label %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape11AsciiEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen.exit.thread, label %bb.e

bb.e:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsjSXNr8pNfhj_19ruff_python_codegen.exit.i.i
  %i.ao = load ptr, ptr %i.l, align 8, !alias.scope !56, !noalias !55, !nonnull !3, !noundef !3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull readonly align 1 %i.aj, i64 %i.al, i1 false), !noalias !47
  %.pre.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !56, !noalias !55
  br label %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape11AsciiEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen.exit.thread

_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape11AsciiEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen.exit.thread: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsjSXNr8pNfhj_19ruff_python_codegen.exit.i.i, %bb.e
  %i.aq = phi i64 [ %.pre.i.i.i.i.i, %bb.e ], [ %i.am, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsjSXNr8pNfhj_19ruff_python_codegen.exit.i.i ]
  %i.ar = add i64 %i.aq, %i.al
  store i64 %i.ar, ptr %i.i, align 8, !alias.scope !56, !noalias !55
  br label %bb.f

_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape11AsciiEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen.exit: ; preds = %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit
  %i.as = tail call fastcc noundef zeroext i1 @_RINvXs5_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB6_11AsciiEscapeNtB6_6Escape15write_body_slowNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.as, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape11AsciiEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen.exit.thread, %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape11AsciiEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen.exit
  %i.at = tail call { ptr, i64 } @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes17BytesLiteralFlagsNtB4_11StringFlags9quote_strCsjSXNr8pNfhj_19ruff_python_codegen(i8 noundef %.sroa.01.1) ; 2 uses
  %i.au = extractvalue { ptr, i64 } %i.at, 1      ; 4 uses
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsjSXNr8pNfhj_19ruff_python_codegen(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.au), !noalias !57
  %i.av = load i64, ptr %i.i, align 8, !alias.scope !58, !noalias !57, !noundef !3 ; 3 uses
  %i.aw = icmp sgt i64 %i.av, -1
  tail call void @llvm.assume(i1 %i.aw)
  %.not.i.i.i7 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i7, label %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit9, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = extractvalue { ptr, i64 } %i.at, 0
  %i.ay = load ptr, ptr %i.l, align 8, !alias.scope !58, !noalias !57, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.av
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull readonly align 1 %i.ax, i64 %i.au, i1 false)
  %.pre.i.i.i8 = load i64, ptr %i.i, align 8, !alias.scope !58, !noalias !57
  br label %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit9

_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit9: ; preds = %bb.f, %bb.g
  %i.ba = phi i64 [ %.pre.i.i.i8, %bb.g ], [ %i.av, %bb.f ]
  %i.bb = add i64 %i.ba, %i.au
  store i64 %i.bb, ptr %i.i, align 8, !alias.scope !58, !noalias !57
  br label %bb.h

bb.h:                                             ; preds = %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape11AsciiEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen.exit, %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit9
  %.sroa.0.0.i12 = phi i1 [ true, %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape11AsciiEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen.exit ], [ false, %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit9 ]
  ret i1 %.sroa.0.0.i12
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB5_7StrRepr5writeNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !5, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 8, !range !5, !noundef !3
  %2 = shl nuw nsw i8 %i.e, 1
  %i.f = or disjoint i8 %2, %i.c
  %.sroa.01.1 = xor i8 %i.f, 2                    ; 2 uses
  %i.g = tail call { ptr, i64 } @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes18StringLiteralFlagsNtB4_11StringFlags9quote_strCsjSXNr8pNfhj_19ruff_python_codegen(i8 noundef %.sroa.01.1) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 1        ; 4 uses
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsjSXNr8pNfhj_19ruff_python_codegen(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.h), !noalias !90
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !91, !noalias !90, !noundef !3 ; 3 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = extractvalue { ptr, i64 } %i.g, 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !91, !noalias !90, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %i.l, i64 %i.h, i1 false)
  %.pre.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !91, !noalias !90
  br label %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit

_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit: ; preds = %bb.a, %bb.b
  %i.p = phi i64 [ %.pre.i.i.i, %bb.b ], [ %i.j, %bb.a ]
  %i.q = add i64 %i.p, %i.h
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !91, !noalias !90
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val.i.i = load i64, ptr %i.r, align 8, !alias.scope !94, !noalias !93, !noundef !3 ; 5 uses
  %i.s = load i64, ptr %i.a, align 8, !range !6, !alias.scope !94, !noalias !93, !noundef !3
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !94, !noalias !93
  %i.w = icmp eq i64 %i.v, %.val.i.i
  %.sroa.0.0.i.not.i = select i1 %i.t, i1 %i.w, i1 false
  br i1 %.sroa.0.0.i.not.i, label %bb.c, label %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape13UnicodeEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen.exit

bb.c:                                             ; preds = %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val.i = load ptr, ptr %i.x, align 8, !alias.scope !92, !noalias !93, !nonnull !3, !noundef !3
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsjSXNr8pNfhj_19ruff_python_codegen(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.val.i.i), !noalias !95
  %i.y = load i64, ptr %i.i, align 8, !alias.scope !96, !noalias !95, !noundef !3 ; 3 uses
  %i.z = icmp sgt i64 %i.y, -1
  tail call void @llvm.assume(i1 %i.z)
  %.not.i.i.i.i.i = icmp eq i64 %.val.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape13UnicodeEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !96, !noalias !95, !nonnull !3, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %.val.i, i64 %.val.i.i, i1 false), !noalias !92
  %.pre.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !96, !noalias !95
  br label %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape13UnicodeEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen.exit.thread

_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape13UnicodeEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen.exit.thread: ; preds = %bb.c, %bb.d
  %i.ad = phi i64 [ %.pre.i.i.i.i.i, %bb.d ], [ %i.y, %bb.c ]
  %i.ae = add i64 %i.ad, %.val.i.i
  store i64 %i.ae, ptr %i.i, align 8, !alias.scope !96, !noalias !95
  br label %bb.e

_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape13UnicodeEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen.exit: ; preds = %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit
  %i.af = tail call fastcc noundef zeroext i1 @_RINvXs2_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB6_13UnicodeEscapeNtB6_6Escape15write_body_slowNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a, ptr noalias noundef align 8 dereferenceable(24) %1)
  br i1 %i.af, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape13UnicodeEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen.exit.thread, %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape13UnicodeEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen.exit
  %i.ag = tail call { ptr, i64 } @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes18StringLiteralFlagsNtB4_11StringFlags9quote_strCsjSXNr8pNfhj_19ruff_python_codegen(i8 noundef %.sroa.01.1) ; 2 uses
  %i.ah = extractvalue { ptr, i64 } %i.ag, 1      ; 4 uses
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsjSXNr8pNfhj_19ruff_python_codegen(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ah), !noalias !97
  %i.ai = load i64, ptr %i.i, align 8, !alias.scope !98, !noalias !97, !noundef !3 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  tail call void @llvm.assume(i1 %i.aj)
  %.not.i.i.i7 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i7, label %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = extractvalue { ptr, i64 } %i.ag, 0
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !98, !noalias !97, !nonnull !3, !noundef !3
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull readonly align 1 %i.ak, i64 %i.ah, i1 false)
  %.pre.i.i.i8 = load i64, ptr %i.i, align 8, !alias.scope !98, !noalias !97
  br label %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit9

_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit9: ; preds = %bb.e, %bb.f
  %i.ao = phi i64 [ %.pre.i.i.i8, %bb.f ], [ %i.ai, %bb.e ]
  %i.ap = add i64 %i.ao, %i.ah
  store i64 %i.ap, ptr %i.i, align 8, !alias.scope !98, !noalias !97
  br label %bb.g

bb.g:                                             ; preds = %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape13UnicodeEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen.exit, %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit9
  %.sroa.0.0.i12 = phi i1 [ true, %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape13UnicodeEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen.exit ], [ false, %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit9 ]
  ret i1 %.sroa.0.0.i12
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvXs2_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB6_13UnicodeEscapeNtB6_6Escape15write_body_slowNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !3 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l ; 4 uses
  %.not = icmp samesign eq i64 %i.l, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !5, !noundef !3
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %..i = select i1 %i.p, i32 34, i32 39
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.0.014 = phi ptr [ %i.j, %.lr.ph ], [ %.sroa.0.1.ph, %.backedge ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 1 ; 3 uses
  %i.t = load i8, ptr %.sroa.0.014, align 1, !noalias !139, !noundef !3 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.c, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjSXNr8pNfhj_19ruff_python_codegen.exit12.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjSXNr8pNfhj_19ruff_python_codegen.exit12.i: ; preds = %bb.b
  %i.v = and i8 %i.t, 31
  %i.w = zext nneg i8 %i.v to i32                 ; 3 uses
  %i.x = icmp ne ptr %i.s, %i.m
  call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 2 ; 3 uses
  %i.z = load i8, ptr %i.s, align 1, !noalias !139, !noundef !3
  %i.aa = shl nuw nsw i32 %i.w, 6
  %i.ab = and i8 %i.z, 63
  %i.ac = zext nneg i8 %i.ab to i32               ; 2 uses
  %i.ad = or disjoint i32 %i.aa, %i.ac
  %i.ae = icmp samesign ugt i8 %i.t, -33
  br i1 %i.ae, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjSXNr8pNfhj_19ruff_python_codegen.exit14.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.af = zext nneg i8 %i.t to i32
  br label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjSXNr8pNfhj_19ruff_python_codegen.exit14.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjSXNr8pNfhj_19ruff_python_codegen.exit12.i
  %i.ag = icmp ne ptr %i.y, %i.m
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 3 ; 3 uses
  %i.ai = load i8, ptr %i.y, align 1, !noalias !139, !noundef !3
  %i.aj = shl nuw nsw i32 %i.ac, 6
  %i.ak = and i8 %i.ai, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al            ; 2 uses
  %i.an = shl nuw nsw i32 %i.w, 12
  %i.ao = or disjoint i32 %i.am, %i.an
  %i.ap = icmp samesign ugt i8 %i.t, -17
  br i1 %i.ap, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjSXNr8pNfhj_19ruff_python_codegen.exit16.i, label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjSXNr8pNfhj_19ruff_python_codegen.exit16.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjSXNr8pNfhj_19ruff_python_codegen.exit14.i
  %i.aq = icmp ne ptr %i.ah, %i.m
  call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 4
  %i.as = load i8, ptr %i.ah, align 1, !noalias !139, !noundef !3
  %i.at = shl nuw nsw i32 %i.w, 18
  %i.au = and i32 %i.at, 1835008
  %i.av = shl nuw nsw i32 %i.am, 6
  %i.aw = and i8 %i.as, 63
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.av, %i.ax
  %i.az = or disjoint i32 %i.ay, %i.au
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjSXNr8pNfhj_19ruff_python_codegen.exit12.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjSXNr8pNfhj_19ruff_python_codegen.exit16.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjSXNr8pNfhj_19ruff_python_codegen.exit14.i
  %.sroa.0.1.ph = phi ptr [ %i.y, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjSXNr8pNfhj_19ruff_python_codegen.exit12.i ], [ %i.ah, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjSXNr8pNfhj_19ruff_python_codegen.exit14.i ], [ %i.ar, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjSXNr8pNfhj_19ruff_python_codegen.exit16.i ], [ %i.s, %bb.c ] ; 2 uses
  %.sroa.4.0.i.ph = phi i32 [ %i.ad, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjSXNr8pNfhj_19ruff_python_codegen.exit12.i ], [ %i.ao, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjSXNr8pNfhj_19ruff_python_codegen.exit14.i ], [ %i.az, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjSXNr8pNfhj_19ruff_python_codegen.exit16.i ], [ %i.af, %bb.c ] ; 21 uses
  %i.ba = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  call void @llvm.assume(i1 %i.ba)
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  switch i32 %.sroa.4.0.i.ph, label %bb.e [
    i32 10, label %.split9
    i32 9, label %_RINvMs1_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB6_13UnicodeEscape10write_charNtNtCscdodAO9FK5_5alloc6string6StringECsjSXNr8pNfhj_19ruff_python_codegen.exit
    i32 13, label %.split
  ]

bb.e:                                             ; preds = %bb.d
  %i.bb = add nsw i32 %.sroa.4.0.i.ph, -32
  %or.cond.i = icmp ult i32 %i.bb, 95
  br i1 %or.cond.i, label %bb.g, label %bb.f

.split9:                                          ; preds = %bb.d
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsjSXNr8pNfhj_19ruff_python_codegen(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 2), !noalias !141
  %i.bc = load i64, ptr %i.q, align 8, !alias.scope !142, !noalias !141, !noundef !3 ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, -1
  call void @llvm.assume(i1 %i.bd)
end_hunk_0
