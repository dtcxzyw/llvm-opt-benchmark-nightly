Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/clap_complete-34b131410fcb16ec.clap_complete.fbbadca75ff2ea6a-cgu.06?download=true
inline.NumInlined: 180
inline.NumDeleted: 87
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [1 x i8] c" ", align 1
@1 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCs4NRVxsYgnAr_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECslBX3rbrQpFC_13clap_complete, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCs2AWtUsOyxgP_3std2io5errorNtB2_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@3 = private unnamed_addr constant [2 x i8] c"''", align 1
@4 = private unnamed_addr constant [4 x i8] c"'\E2\80\99", align 1
@5 = private unnamed_addr constant [99 x i8] c"Fatal internal error. Please consider filing a bug report at https://github.com/clap-rs/clap/issues", align 1
@6 = private unnamed_addr constant [119 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/clap_complete-4.5.58/src/aot/shells/powershell.rs\00", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"v\00\00\00\00\00\00\00S\00\00\00\1F\00\00\00" }>, align 8
@8 = private unnamed_addr constant [37 x i8] c"\0A            [CompletionResult]::new(", align 1
@9 = private unnamed_addr constant [61 x i8] c"\01'\C0\04', '\C8\00\00,', [CompletionResultType]::ParameterValue, '\C0\02')\00", align 1
@10 = private unnamed_addr constant [47 x i8] c"\0A\0A        '\C0\03' {\C0\1C\0A            break\0A        }\00", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"v\00\00\00\00\00\00\00\88\00\00\00:\00\00\00" }>, align 8
@12 = private unnamed_addr constant [64 x i8] c"\C0\02'-\C0\05', '-\C8\01\00\C0+', [CompletionResultType]::ParameterName, '\C0\02')\00", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECslBX3rbrQpFC_13clap_complete, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char, ptr @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCslBX3rbrQpFC_13clap_complete }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"v\00\00\00\00\00\00\00\93\00\00\00:\00\00\00" }>, align 8
@15 = private unnamed_addr constant [65 x i8] c"\C0\03'--\C0\06', '--\C8\01\00+', [CompletionResultType]::ParameterName, '\C0\02')\00", align 1
@16 = private unnamed_addr constant [44 x i8] c"crate::generate should have set the bin_name", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"v\00\00\00\00\00\00\00\1A\00\00\00\0E\00\00\00" }>, align 8
@18 = private unnamed_addr constant [917 x i8] c"\80\96\00\0Ausing namespace System.Management.Automation\0Ausing namespace System.Management.Automation.Language\0A\0ARegister-ArgumentCompleter -Native -CommandName '\C0\80\99\00' -ScriptBlock {\0A    param($wordToComplete, $commandAst, $cursorPosition)\0A\0A    $commandElements = $commandAst.CommandElements\0A    $command = @(\0A        '\C8\00\00\80\D9\01'\0A        for ($i = 1; $i -lt $commandElements.Count; $i++) {\0A            $element = $commandElements[$i]\0A            if ($element -isnot [StringConstantExpressionAst] -or\0A                $element.StringConstantType -ne [StringConstantType]::BareWord -or\0A                $element.Value.StartsWith('-') -or\0A                $element.Value -eq $wordToComplete) {\0A                break\0A        }\0A        $element.Value\0A    }) -join ';'\0A\0A    $completions = @(switch ($command) {\C0}\0A    })\0A\0A    $completions.Where{ $_.CompletionText -like \22$wordToComplete*\22 } |\0A        Sort-Object -Property ListItemText\0A}\0A\00", align 1
@19 = private unnamed_addr constant [31 x i8] c"failed to write completion file", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"v\00\00\00\00\00\00\00\14\00\00\00\0E\00\00\00" }>, align 8
@21 = private unnamed_addr constant [9 x i8] c"\01_\C0\04.ps1\00", align 1
@22 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@23 = private unnamed_addr constant [76 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/alloc/src/string.rs\00", align 1
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"K\00\00\00\00\00\00\00q\0B\00\00\0E\00\00\00" }>, align 8
@25 = private unnamed_addr constant [5 x i8] c"Error", align 1

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs3_NtCscdodAO9FK5_5alloc3stre7replacecECslBX3rbrQpFC_13clap_complete(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef range(i32 10, 8218) %3, ptr noalias noundef nonnull readonly captures(none) %4, i64 noundef range(i64 1, 5) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = icmp samesign ult i32 %3, 128            ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %5, 1
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.i = trunc nuw nsw i32 %3 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %i.i, ptr %i.f, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.j = load i8, ptr %4, align 1, !noundef !3
  store i8 %i.j, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %1, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.e, ptr %i.n, align 8
  call void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCslBX3rbrQpFC_13clap_complete(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.s, %bb.c
  ret void

.thread:                                          ; preds = %bb.b, %bb.i
  %.sroa.03.0 = phi i64 [ %i.al, %bb.i ], [ %2, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslBX3rbrQpFC_13clap_complete(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.03.0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.o = load i64, ptr %i.a, align 8, !range !4, !noundef !3
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !5, !noundef !3 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.e, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslBX3rbrQpFC_13clap_complete.exit, !prof !6

bb.e:                                             ; preds = %.thread
  %i.t = load i64, ptr %i.s, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #13
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslBX3rbrQpFC_13clap_complete.exit: ; preds = %.thread
  %i.u = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.v = icmp ule i64 %.sroa.03.0, %i.r
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.r, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 10 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  br i1 %i.g, label %.lr.ph.split.i.lr.ph, label %bb.f

bb.f:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslBX3rbrQpFC_13clap_complete.exit
  %i.w = icmp samesign ult i32 %3, 2048
  %i.x = trunc i32 %3 to i8
  %i.y = and i8 %i.x, 63
  %i.z = or disjoint i8 %i.y, -128                ; 2 uses
  %i.aa = lshr i32 %3, 6                          ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = or disjoint i32 %i.aa, 192
  br label %.lr.ph.split.i.lr.ph

bb.h:                                             ; preds = %bb.f
  %i.ac = trunc nuw i32 %i.aa to i8
  %i.ad = lshr i32 %3, 12
  %i.ae = and i8 %i.ac, 63
  %i.af = or disjoint i8 %i.ae, -128
  %i.ag = or disjoint i32 %i.ad, 224
  %i.ah = zext i8 %i.z to i32
  %i.ai = shl nuw nsw i32 %i.ah, 16
  br label %.lr.ph.split.i.lr.ph

bb.i:                                             ; preds = %bb.a
  %i.aj = icmp samesign ult i32 %3, 2048
  %spec.select = select i1 %i.aj, i64 2, i64 3
  %i.ak = icmp samesign ugt i64 %spec.select, %5
  %i.al = select i1 %i.ak, i64 0, i64 %2
  br label %.thread

bb.j:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.k
  %.pn = phi { ptr, i32 } [ %i.am, %bb.k ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECslBX3rbrQpFC_13clap_complete(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #14
          to label %bb.x unwind label %bb.w

bb.k:                                             ; preds = %.loopexit75
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.lr.ph.split.i.lr.ph:                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslBX3rbrQpFC_13clap_complete.exit, %bb.g, %bb.h
  %.sroa.9.0.i = phi i32 [ %i.ai, %bb.h ], [ 0, %bb.g ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslBX3rbrQpFC_13clap_complete.exit ]
  %.sroa.7.0.i = phi i8 [ %i.af, %bb.h ], [ %i.z, %bb.g ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslBX3rbrQpFC_13clap_complete.exit ]
  %.sroa.0.0.i = phi i32 [ %i.ag, %bb.h ], [ %i.ab, %bb.g ], [ %3, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslBX3rbrQpFC_13clap_complete.exit ]
  %.sroa.0.05.i.i = phi i8 [ 3, %bb.h ], [ 2, %bb.g ], [ 1, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslBX3rbrQpFC_13clap_complete.exit ] ; 2 uses
  %.sroa.7.0.insert.ext.i = zext i8 %.sroa.7.0.i to i32
  %.sroa.7.0.insert.shift.i = shl nuw nsw i32 %.sroa.7.0.insert.ext.i, 8
  %.sroa.7.0.insert.insert.i = or disjoint i32 %.sroa.7.0.insert.shift.i, %.sroa.9.0.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.7.0.insert.insert.i, %.sroa.0.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %2, ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  store i32 %.sroa.0.0.insert.insert.i, ptr %.sroa.555.0..sroa_idx, align 8
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %3, ptr %.sroa.656.0..sroa_idx, align 4
  %.sroa.757.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i8 %.sroa.0.05.i.i, ptr %.sroa.757.0..sroa_idx, align 8
  %i.an = zext nneg i8 %.sroa.0.05.i.i to i64     ; 4 uses
  %i.ao = getelementptr i8, ptr %.sroa.555.0..sroa_idx, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 -1
  %.pre.i = load i8, ptr %i.ap, align 1, !alias.scope !25, !noalias !26 ; 2 uses
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.noexc33, %.lr.ph.split.i.lr.ph
  %.sroa.04.094 = phi i64 [ 0, %.lr.ph.split.i.lr.ph ], [ %i.bf, %.noexc33 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.split.i
  %i.aq = phi i64 [ %.sroa.04.094, %.lr.ph.split.i ], [ %i.bf, %bb.p ] ; 3 uses
  %i.ar = sub nuw i64 %2, %i.aq                   ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq ; 2 uses
  %i.at = icmp samesign ult i64 %i.ar, 16
  br i1 %i.at, label %.preheader.i.i, label %bb.m

.preheader.i.i:                                   ; preds = %bb.l
  %.not.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.m:                                             ; preds = %bb.l
  %i.au = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef range(i64 0, -9223372036854775808) %i.ar)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i unwind label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.n, %.lr.ph.i.i, %.preheader.i.i
  %.sroa.01.0.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %.sroa.01.05.i.i, %.lr.ph.i.i ], [ %i.ar, %bb.n ]
  %.sroa.0.1.i.i = phi i64 [ 0, %.preheader.i.i ], [ 1, %.lr.ph.i.i ], [ 0, %bb.n ]
  %i.av = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i, 0
  %i.aw = insertvalue { i64, i64 } %i.av, i64 %.sroa.01.0.lcssa.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.n
  %.sroa.01.05.i.i = phi i64 [ %i.ba, %bb.n ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.01.05.i.i
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !27, !noalias !28, !noundef !3
  %i.az = icmp eq i8 %i.ay, %.pre.i
  br i1 %i.az, label %._crit_edge.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.ba = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ba, %i.ar
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i: ; preds = %bb.m, %._crit_edge.i.i
  %.merged.i.i = phi { i64, i64 } [ %i.aw, %._crit_edge.i.i ], [ %i.au, %bb.m ] ; 2 uses
  %i.bb = extractvalue { i64, i64 } %.merged.i.i, 0
  %i.bc = trunc nuw i64 %i.bb to i1
  br i1 %i.bc, label %bb.o, label %.loopexit75

bb.o:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i
  %i.bd = extractvalue { i64, i64 } %.merged.i.i, 1
  %i.be = add i64 %i.aq, 1
  %i.bf = add i64 %i.be, %i.bd                    ; 5 uses
  %.not12.i = icmp ult i64 %i.bf, %i.an
  %.not13.i = icmp ugt i64 %i.bf, %2              ; 2 uses
  %or.cond.i = or i1 %.not12.i, %.not13.i
  br i1 %or.cond.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.q, %bb.o
  br i1 %.not13.i, label %.loopexit75, label %bb.l

bb.q:                                             ; preds = %bb.o
  %i.bg = sub nuw i64 %i.bf, %i.an                ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %i.bg
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.bh, ptr noundef nonnull dereferenceable(1) %.sroa.555.0..sroa_idx, i64 %i.an), !noalias !26
  %i.bi = icmp eq i32 %bcmp.i, 0
  br i1 %i.bi, label %bb.t, label %bb.p

.loopexit:                                        ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.t, %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit75:                                      ; preds = %bb.p, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.094
  %gepdiff74 = sub nuw nsw i64 %2, %.sroa.04.094  ; 3 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCslBX3rbrQpFC_13clap_complete(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %gepdiff74)
          to label %.noexc26 unwind label %bb.k

.noexc26:                                         ; preds = %.loopexit75
  %i.bk = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !29, !noundef !3 ; 3 uses
  %i.bl = icmp sgt i64 %i.bk, -1
  call void @llvm.assume(i1 %i.bl)
  %.not.i24 = icmp eq i64 %2, %.sroa.04.094
  br i1 %.not.i24, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc26
  %i.bm = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !29, !nonnull !3, !noundef !3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr nonnull readonly align 1 %i.bj, i64 %gepdiff74, i1 false)
  %.pre.i25 = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !29
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.noexc26
  %i.bo = phi i64 [ %.pre.i25, %bb.r ], [ %i.bk, %.noexc26 ]
  %i.bp = add i64 %i.bo, %gepdiff74
  store i64 %i.bp, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.t:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.094
  %gepdiff = sub nuw nsw i64 %i.bg, %.sroa.04.094 ; 3 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCslBX3rbrQpFC_13clap_complete(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %gepdiff)
          to label %.noexc29 unwind label %.loopexit.split-lp

.noexc29:                                         ; preds = %bb.t
  %i.br = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !30, !noundef !3 ; 3 uses
  %i.bs = icmp sgt i64 %i.br, -1
  call void @llvm.assume(i1 %i.bs)
  %.not.i27 = icmp eq i64 %i.bg, %.sroa.04.094
  br i1 %.not.i27, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.noexc29
  %i.bt = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !30, !nonnull !3, !noundef !3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr nonnull readonly align 1 %i.bq, i64 %gepdiff, i1 false)
  %.pre.i28 = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !30
  br label %bb.v

bb.v:                                             ; preds = %.noexc29, %bb.u
  %i.bv = phi i64 [ %.pre.i28, %bb.u ], [ %i.br, %.noexc29 ]
  %i.bw = add i64 %i.bv, %gepdiff
  store i64 %i.bw, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !30
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCslBX3rbrQpFC_13clap_complete(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %5)
          to label %.noexc33 unwind label %.loopexit.split-lp

.noexc33:                                         ; preds = %bb.v
  %i.bx = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !31, !noundef !3 ; 2 uses
  %i.by = icmp sgt i64 %i.bx, -1
  call void @llvm.assume(i1 %i.by)
  %i.bz = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !31, !nonnull !3, !noundef !3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ca, ptr noundef nonnull readonly align 1 dereferenceable(1) %4, i64 %5, i1 false)
  %.pre.i32 = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !31
  %i.cb = add i64 %.pre.i32, %5
  store i64 %i.cb, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !31
  br label %.lr.ph.split.i

bb.w:                                             ; preds = %bb.j
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.x:                                             ; preds = %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEEECslBX3rbrQpFC_13clap_complete(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !3 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECslBX3rbrQpFC_13clap_complete.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECslBX3rbrQpFC_13clap_complete.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.c = icmp eq i64 %i.a, 2
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECslBX3rbrQpFC_13clap_complete.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.d = icmp eq i64 %i.a, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECslBX3rbrQpFC_13clap_complete.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !41, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECslBX3rbrQpFC_13clap_complete.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !41, !nonnull !3, !noundef !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #16, !noalias !41
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECslBX3rbrQpFC_13clap_complete.exit
}
end_hunk_0
