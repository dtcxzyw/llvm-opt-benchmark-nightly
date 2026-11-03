Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.00?download=true
inline.NumInlined: 618
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs3_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE18parse_capture_nameB9_:bb.a
  %i.fs = add i64 %i.fr, 1, !dbg !19086
  store i64 %i.fs, ptr %i.di, align 8, !dbg !19087, !noalias !18772
  br label %.body, !dbg !19088

bb.bm:                                            ; preds = %bb.at
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !19089

.body:                                            ; preds = %bb.bl, %bb.bm
  %eh.lpad-body = phi { ptr, i32 } [ %i.ft, %bb.bm ], [ %eh.lpad-body.i, %bb.bl ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast11CaptureNameEBF_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.i) #23
          to label %common.resume unwind label %bb.br, !dbg !19089

bb.bn:                                            ; preds = %bb.az
  %i.fu = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.i, !1733, !DIExpression(), !18219)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.i)
          to label %common.resume unwind label %bb.bo, !dbg !19090

bb.bo:                                            ; preds = %bb.bn
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !dbg !19066
  unreachable, !dbg !19066

common.resume:                                    ; preds = %.body, %bb.bn
  %common.resume.op = phi { ptr, i32 } [ %i.fu, %bb.bn ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !18289

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast11CaptureNameEBF_.exit: ; preds = %bb.az
    #dbg_value(ptr %i.i, !1733, !DIExpression(), !18221)
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.i), !dbg !19091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !19089
  br label %bb.bq, !dbg !18993

bb.bp:                                            ; preds = %bb.bg, %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fk, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !19092, !noalias !18772
  %i.fw = add nuw nsw i64 %i.fe, 1, !dbg !19093
    #dbg_value(i64 %i.fw, !18826, !DIExpression(), !18179)
  store i64 %i.fw, ptr %i.do, align 8, !dbg !19094, !alias.scope !18801, !noalias !18772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !19095, !noalias !18597
    #dbg_value(i64 -1, !18270, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18790)
    #dbg_value(ptr poison, !18270, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18790)
    #dbg_value(i64 %i.q, !18270, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18790)
    #dbg_value(i32 17, !18270, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !18790)
    #dbg_value(ptr poison, !18792, !DIExpression(), !18150)
    #dbg_value(ptr poison, !2357, !DIExpression(), !18152)
    #dbg_value(ptr poison, !2361, !DIExpression(), !18154)
  %i.fx = load i64, ptr %i.di, align 8, !dbg !19063, !noalias !18772, !noundef !978
  %i.fy = add i64 %i.fx, 1, !dbg !19064
  store i64 %i.fy, ptr %i.di, align 8, !dbg !19065, !noalias !18772
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fz, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false), !dbg !19097
  store i64 -1, ptr %0, align 8, !dbg !19096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !19089
  br label %bb.bq, !dbg !19098

bb.bq:                                            ; preds = %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE5errorB9_.exit98, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast11CaptureNameEBF_.exit, %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE5errorB9_.exit102, %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE5errorB9_.exit94, %bb.bp, %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE5errorB9_.exit
  ret void, !dbg !19098

bb.br:                                            ; preds = %.body
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !dbg !19099
  unreachable, !dbg !19099
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19parse_unicode_classB9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !19113 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [104 x i8], align 8               ; 21 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0421 = alloca [24 x i8], align 8         ; 4 uses
    #dbg_declare(ptr %.sroa.0421, !1536, !DIExpression(DW_OP_LLVM_fragment, 0, 192), !19115)
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [4 x i8], align 4                 ; 4 uses
  %i.p = alloca [48 x i8], align 8                ; 5 uses
  %i.q = alloca [48 x i8], align 8                ; 5 uses
    #dbg_value(ptr %1, !20041, !DIExpression(), !20060)
    #dbg_value(ptr %1, !20061, !DIExpression(), !20064)
    #dbg_value(ptr %1, !20065, !DIExpression(), !20068)
    #dbg_value(ptr %1, !20069, !DIExpression(), !20072)
    #dbg_value(ptr %1, !20061, !DIExpression(), !20074)
    #dbg_value(ptr %1, !20075, !DIExpression(), !20078)
    #dbg_value(ptr %1, !20079, !DIExpression(), !20082)
    #dbg_value(ptr %1, !20061, !DIExpression(), !20084)
    #dbg_value(ptr %1, !20065, !DIExpression(), !20086)
    #dbg_value(ptr %1, !20069, !DIExpression(), !20089)
    #dbg_value(ptr %1, !20061, !DIExpression(), !20092)
    #dbg_value(ptr %1, !20069, !DIExpression(), !20094)
    #dbg_value(ptr %1, !20061, !DIExpression(), !20097)
    #dbg_value(ptr %1, !20069, !DIExpression(), !20099)
    #dbg_value(ptr %1, !20061, !DIExpression(), !20102)
    #dbg_declare(ptr poison, !20103, !DIExpression(), !20107)
    #dbg_declare(ptr poison, !20108, !DIExpression(), !20111)
    #dbg_declare(ptr poison, !20104, !DIExpression(), !20113)
    #dbg_declare(ptr poison, !20103, !DIExpression(), !20114)
    #dbg_declare(ptr poison, !20108, !DIExpression(), !20116)
    #dbg_declare(ptr poison, !20104, !DIExpression(), !20119)
    #dbg_declare(ptr poison, !20103, !DIExpression(), !20120)
    #dbg_value(i8 0, !20051, !DIExpression(), !20121)
    #dbg_declare(ptr poison, !20122, !DIExpression(), !20127)
    #dbg_value(i64 -1, !20128, !DIExpression(), !20134)
    #dbg_declare(ptr poison, !20141, !DIExpression(), !20151)
    #dbg_declare(ptr poison, !20171, !DIExpression(), !20189)
    #dbg_declare(ptr poison, !20190, !DIExpression(), !20194)
    #dbg_declare(ptr poison, !20195, !DIExpression(), !20199)
    #dbg_declare(ptr poison, !20200, !DIExpression(), !20219)
    #dbg_value(i64 0, !20220, !DIExpression(), !20226)
    #dbg_declare(ptr poison, !20141, !DIExpression(), !20240)
    #dbg_declare(ptr poison, !20171, !DIExpression(), !20243)
    #dbg_declare(ptr poison, !20190, !DIExpression(), !20246)
    #dbg_declare(ptr poison, !20195, !DIExpression(), !20249)
    #dbg_declare(ptr poison, !20200, !DIExpression(), !20252)
    #dbg_value(i64 0, !20220, !DIExpression(), !20255)
    #dbg_declare(ptr poison, !20141, !DIExpression(), !20269)
    #dbg_declare(ptr poison, !20171, !DIExpression(), !20272)
    #dbg_declare(ptr poison, !20190, !DIExpression(), !20275)
    #dbg_declare(ptr poison, !20195, !DIExpression(), !20278)
    #dbg_declare(ptr poison, !20200, !DIExpression(), !20281)
    #dbg_value(i64 0, !20220, !DIExpression(), !20284)
    #dbg_declare(ptr poison, !20141, !DIExpression(), !20298)
    #dbg_declare(ptr poison, !20171, !DIExpression(), !20301)
    #dbg_declare(ptr poison, !20190, !DIExpression(), !20304)
    #dbg_declare(ptr poison, !20195, !DIExpression(), !20307)
    #dbg_declare(ptr poison, !20200, !DIExpression(), !20310)
    #dbg_value(i64 0, !20220, !DIExpression(), !20313)
    #dbg_declare(ptr poison, !20141, !DIExpression(), !20327)
    #dbg_declare(ptr poison, !20171, !DIExpression(), !20330)
    #dbg_declare(ptr poison, !20190, !DIExpression(), !20333)
    #dbg_declare(ptr poison, !20195, !DIExpression(), !20336)
    #dbg_declare(ptr poison, !20200, !DIExpression(), !20339)
    #dbg_value(i64 0, !20220, !DIExpression(), !20342)
    #dbg_declare(ptr poison, !20141, !DIExpression(), !20356)
    #dbg_declare(ptr poison, !20171, !DIExpression(), !20359)
    #dbg_declare(ptr poison, !20190, !DIExpression(), !20362)
    #dbg_declare(ptr poison, !20195, !DIExpression(), !20365)
    #dbg_declare(ptr poison, !20200, !DIExpression(), !20368)
    #dbg_value(i64 0, !20220, !DIExpression(), !20371)
    #dbg_declare(ptr poison, !20141, !DIExpression(), !20385)
    #dbg_declare(ptr poison, !20171, !DIExpression(), !20388)
    #dbg_declare(ptr poison, !20190, !DIExpression(), !20391)
    #dbg_declare(ptr poison, !20195, !DIExpression(), !20394)
    #dbg_declare(ptr poison, !20200, !DIExpression(), !20397)
    #dbg_value(i64 0, !20220, !DIExpression(), !20400)
  %i.r = tail call fastcc noundef i32 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4charB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !21113
  %i.s = icmp eq i32 %i.r, 112, !dbg !21114
  br i1 %i.s, label %bb.c, label %bb.b, !dbg !21114

bb.b:                                             ; preds = %bb.a
  %i.t = tail call fastcc noundef i32 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4charB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !21115
  %i.u = icmp eq i32 %i.t, 80, !dbg !21116
  br i1 %i.u, label %bb.c, label %bb.d, !dbg !21116, !prof !2371

bb.c:                                             ; preds = %bb.b, %bb.a
  %.val286 = load ptr, ptr %1, align 8, !dbg !21117, !nonnull !978, !align !2250, !noundef !978 ; 10 uses
    #dbg_value(ptr %.val286, !20123, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !20401)
    #dbg_value(ptr %.val286, !20135, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !20402)
  %i.v = getelementptr inbounds nuw i8, ptr %.val286, i64 128, !dbg !21118 ; 6 uses
    #dbg_value(ptr %i.v, !20139, !DIExpression(), !20403)
    #dbg_value(ptr %i.v, !20404, !DIExpression(), !20407)
    #dbg_value(ptr %i.v, !20129, !DIExpression(), !20134)
  %i.w = load i64, ptr %i.v, align 8, !dbg !21119, !noundef !978
  %i.x = icmp eq i64 %i.w, 0, !dbg !21120
  br i1 %i.x, label %bb.e, label %bb.f, !dbg !21120, !prof !2371

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 58, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #25, !dbg !21121
  unreachable, !dbg !21121

bb.e:                                             ; preds = %bb.c
  store i64 -1, ptr %i.v, align 8, !dbg !21122
    #dbg_value(ptr %i.v, !20136, !DIExpression(), !20409)
    #dbg_value(ptr %.val286, !20410, !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value), !20413)
  %i.y = getelementptr inbounds nuw i8, ptr %.val286, i64 136, !dbg !21123 ; 2 uses
    #dbg_value(ptr %i.y, !20042, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20414)
    #dbg_value(ptr %i.v, !20042, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20414)
    #dbg_value(ptr %i.y, !20415, !DIExpression(), !20418)
  %i.z = getelementptr inbounds nuw i8, ptr %.val286, i64 152, !dbg !21124 ; 4 uses
  store i64 0, ptr %i.z, align 8, !dbg !21124
  %i.aa = invoke fastcc noundef i32 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4charB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !21125

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #25, !dbg !21126
  unreachable, !dbg !21126

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bn, %bb.cj, %bb.dz, %bb.dy, %bb.w, %bb.v, %bb.z, %bb.x, %.split56.us.i22.i.i.invoke, %.invoke648, %.invoke, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.eg, %bb.ds, %.loopexit.i, %bb.ae, %bb.t, %bb.o, %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit.thread, %bb.h, %bb.g, %bb.ee, %select.unfold492, %.thread490, %select.unfold472, %bb.br, %select.unfold, %bb.ad, %bb.ac, %bb.aa, %bb.i, %bb.e
  %lpad.loopexit.split-lp722 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.g:                                             ; preds = %bb.e
  %i.ab = icmp eq i32 %i.aa, 80, !dbg !21127
    #dbg_value(i1 %i.ab, !20043, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20421), !dbg !21128
    #dbg_value(ptr %1, !3044, !DIExpression(), !19186)
    #dbg_value(ptr %1, !3046, !DIExpression(), !19188)
    #dbg_value(ptr %1, !3048, !DIExpression(), !19190)
    #dbg_value(ptr %1, !3052, !DIExpression(), !19192)
  %i.ac = invoke fastcc noundef zeroext i1 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4bumpB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !21129

.noexc:                                           ; preds = %bb.g
  br i1 %i.ac, label %bb.h, label %.noexc._RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit.thread_crit_edge, !dbg !21130

.noexc._RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit.thread_crit_edge: ; preds = %.noexc
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val292.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !21131
  br label %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit.thread, !dbg !21130

bb.h:                                             ; preds = %.noexc
  invoke fastcc void @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE10bump_spaceB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !21132

_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit: ; preds = %bb.h
    #dbg_value(ptr %.val286, !3054, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !19194)
  %i.ad = getelementptr inbounds nuw i8, ptr %.val286, i64 160, !dbg !21133 ; 9 uses
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !21134, !noalias !20421, !noundef !978 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21135
  %i.ag = load i64, ptr %i.af, align 8, !dbg !21135, !alias.scope !20421, !noundef !978 ; 13 uses
  %.not507 = icmp eq i64 %i.ae, %i.ag, !dbg !21136
  br i1 %.not507, label %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit.thread, label %bb.i, !dbg !21137

bb.i:                                             ; preds = %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit
  %i.ah = invoke fastcc noundef i32 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4charB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !21138

_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit.thread: ; preds = %.noexc._RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit.thread_crit_edge, %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit
  %.val292 = phi i64 [ %.val292.pre, %.noexc._RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit.thread_crit_edge ], [ %i.ae, %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit ], !dbg !21131 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !21139
    #dbg_value(ptr %.val286, !20422, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !20425)
  %i.ai = getelementptr inbounds nuw i8, ptr %.val286, i64 160, !dbg !21140 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 24, !dbg !21141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !dbg !21142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !dbg !21141
    #dbg_value(i32 10, !1530, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !20428)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21131
  %.val291 = load ptr, ptr %i.ak, align 8, !dbg !21131, !nonnull !978, !noundef !978
    #dbg_value(ptr poison, !1535, !DIExpression(), !19199)
    #dbg_declare(ptr %i.q, !1536, !DIExpression(), !19200)
    #dbg_declare(ptr poison, !1539, !DIExpression(), !19208)
    #dbg_declare(ptr poison, !1579, !DIExpression(), !19210)
    #dbg_declare(ptr poison, !1587, !DIExpression(), !19212)
    #dbg_declare(ptr poison, !1594, !DIExpression(), !19214)
    #dbg_declare(ptr poison, !1600, !DIExpression(), !19216)
    #dbg_value(i64 0, !1627, !DIExpression(), !19218)
    #dbg_value(ptr %.val291, !1572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19219)
    #dbg_value(ptr %.val291, !1568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19220)
    #dbg_value(ptr %.val291, !1569, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19221)
    #dbg_value(ptr %.val291, !1565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19222)
    #dbg_value(ptr %.val291, !1561, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19223)
    #dbg_value(i64 %.val292, !1572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19219)
    #dbg_value(i64 %.val292, !1568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19220)
    #dbg_value(i64 %.val292, !1569, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19221)
    #dbg_value(i64 %.val292, !1565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19222)
    #dbg_value(i64 %.val292, !1561, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19223)
    #dbg_value(ptr %.val291, !1554, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19224)
    #dbg_value(ptr %.val291, !1551, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19225)
    #dbg_value(ptr %.val291, !1547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19226)
    #dbg_value(ptr %.val291, !1582, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19227)
    #dbg_value(i64 %.val292, !1554, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19224)
    #dbg_value(i64 %.val292, !1551, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19225)
    #dbg_value(i64 %.val292, !1547, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19226)
    #dbg_value(i64 %.val292, !1582, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19227)
    #dbg_value(i64 %.val292, !1583, !DIExpression(), !19228)
    #dbg_value(i64 %.val292, !1591, !DIExpression(), !19229)
    #dbg_value(i64 %.val292, !1598, !DIExpression(), !19230)
    #dbg_value(i64 %.val292, !1639, !DIExpression(), !19232)
    #dbg_value(i64 %.val292, !1664, !DIExpression(), !19234)
    #dbg_value(i64 %.val292, !1611, !DIExpression(), !19235)
    #dbg_value(i64 %.val292, !1633, !DIExpression(), !19218)
    #dbg_value(i64 1, !1612, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19235)
    #dbg_value(i64 1, !1634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19218)
    #dbg_value(i64 1, !1612, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19235)
    #dbg_value(i64 1, !1634, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19218)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !21143, !noalias !20429
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.val292, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc297 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !21143

.noexc297:                                        ; preds = %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit.thread
  %i.al = load i64, ptr %i.d, align 8, !dbg !21143, !range !1670, !noalias !20429, !noundef !978
  %i.am = trunc nuw i64 %i.al to i1, !dbg !21144
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !21145
  %i.ao = load i64, ptr %i.an, align 8, !dbg !21145, !range !1671, !noalias !20429, !noundef !978 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !21145 ; 2 uses
  br i1 %i.am, label %bb.j, label %bb.k, !dbg !21144, !prof !1672

bb.j:                                             ; preds = %.noexc297
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !21146, !noalias !20429
    #dbg_value(i64 %i.ao, !1614, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19240)
    #dbg_value(i64 %i.aq, !1614, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19240)
  br label %.invoke, !dbg !21147

bb.k:                                             ; preds = %.noexc297
  %i.ar = load ptr, ptr %i.ap, align 8, !dbg !21148, !noalias !20429, !nonnull !978, !noundef !978 ; 2 uses
    #dbg_value(i64 %i.ao, !1613, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19241)
    #dbg_value(ptr %i.ar, !1613, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19241)
    #dbg_value(ptr poison, !1632, !DIExpression(), !19242)
  %i.as = icmp ule i64 %.val292, %i.ao, !dbg !21149
    #dbg_value(i1 true, !1675, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19244)
  tail call void @llvm.assume(i1 %i.as), !dbg !21150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !21151, !noalias !20429
    #dbg_value(i64 %i.ao, !1584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19245)
    #dbg_value(ptr %i.ar, !1584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19245)
    #dbg_value(i64 0, !1584, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19245)
  %.not.i = icmp eq i64 %.val292, 0, !dbg !21152
  br i1 %.not.i, label %bb.m, label %bb.l, !dbg !21152

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr %.val291, !1660, !DIExpression(), !19232)
    #dbg_value(ptr %.val291, !1667, !DIExpression(), !19234)
    #dbg_value(ptr %i.ar, !1661, !DIExpression(), !19232)
    #dbg_value(ptr %i.ar, !1668, !DIExpression(), !19234)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull readonly align 1 %.val291, i64 %.val292, i1 false), !dbg !21153, !noalias !20429
    #dbg_value(i64 %.val292, !1584, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19245)
  br label %bb.m, !dbg !21154

bb.m:                                             ; preds = %bb.l, %bb.k
    #dbg_value(i64 %.val292, !1584, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19245)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !21155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !dbg !21156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !21157
  store i64 %i.ao, ptr %0, align 8, !dbg !21155
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21155
  store ptr %i.ar, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !21155
  %.sroa.5.0..sroa_idx394 = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !21155
  store i64 %.val292, ptr %.sroa.5.0..sroa_idx394, align 8, !dbg !21155
  %.sroa.6395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !21155
  store i32 10, ptr %.sroa.6395.0..sroa_idx, align 8, !dbg !21155
  br label %bb.et, !dbg !21158

bb.n:                                             ; preds = %bb.i
  %i.at = icmp eq i32 %i.ah, 123, !dbg !21159
  %i.au = load i64, ptr %i.ad, align 8, !dbg !20420 ; 4 uses
  br i1 %i.at, label %bb.o, label %bb.ee, !dbg !21159

bb.o:                                             ; preds = %bb.n
    #dbg_value(ptr %1, !3263, !DIExpression(), !19247)
    #dbg_value(ptr %1, !3267, !DIExpression(), !19249)
    #dbg_value(ptr %1, !3269, !DIExpression(), !19251)
    #dbg_value(ptr %1, !3272, !DIExpression(), !19253)
    #dbg_value(ptr %1, !3275, !DIExpression(), !19255)
    #dbg_value(i64 1, !3277, !DIExpression(), !19257)
    #dbg_value(ptr %.val286, !3281, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !19259)
    #dbg_value(i64 %i.au, !3278, !DIExpression(), !19261)
  %i.av = invoke fastcc noundef i32 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4charB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %.noexc300 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !21160 ; 3 uses

.noexc300:                                        ; preds = %bb.o
    #dbg_value(i32 %i.av, !3283, !DIExpression(), !19263)
    #dbg_value(i32 %i.av, !3285, !DIExpression(), !19265)
  %i.aw = icmp samesign ult i32 %i.av, 128, !dbg !21161
  br i1 %i.aw, label %bb.r, label %bb.p, !dbg !21161

bb.p:                                             ; preds = %.noexc300
  %i.ax = icmp samesign ult i32 %i.av, 2048, !dbg !21162
  br i1 %i.ax, label %bb.r, label %bb.q, !dbg !21162

bb.q:                                             ; preds = %bb.p
  %i.ay = icmp samesign ult i32 %i.av, 65536, !dbg !21163
  %..i = select i1 %i.ay, i64 3, i64 4, !dbg !21164
  br label %bb.r, !dbg !21164

bb.r:                                             ; preds = %bb.q, %bb.p, %.noexc300
  %.sroa.02.0.i = phi i64 [ 2, %bb.p ], [ %..i, %bb.q ], [ 1, %.noexc300 ], !dbg !21164
    #dbg_value(i64 %.sroa.02.0.i, !3279, !DIExpression(), !19261)
  %i.az = add i64 %.sroa.02.0.i, %i.au, !dbg !21165 ; 6 uses
  %i.ba = icmp ult i64 %i.az, %i.au, !dbg !21165
    #dbg_value(i1 %i.ba, !3287, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19267)
  br i1 %i.ba, label %.invoke648, label %bb.s, !dbg !21166, !prof !1672

bb.s:                                             ; preds = %bb.r
    #dbg_value(i64 %i.az, !3289, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19269)
    #dbg_value(i64 1, !3289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19269)
    #dbg_value(ptr %.val286, !3281, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !19271)
    #dbg_value(ptr %.val286, !3281, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !19273)
  %i.bb = getelementptr inbounds nuw i8, ptr %.val286, i64 176, !dbg !21167
  %i.bc = load i64, ptr %i.bb, align 8, !dbg !21167, !noalias !20431, !noundef !978 ; 2 uses
    #dbg_value(i64 %i.bc, !3278, !DIExpression(), !19257)
  %i.bd = icmp eq i64 %i.bc, -1, !dbg !21168
    #dbg_value(i1 %i.bd, !3287, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19278)
  br i1 %i.bd, label %.invoke648, label %bb.t, !dbg !21169, !prof !1672

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %.val286, i64 168, !dbg !21170
  %i.bf = load i64, ptr %i.be, align 8, !dbg !21170, !noalias !20431, !noundef !978
    #dbg_value(i64 %i.bc, !3289, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19280)
end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19parse_unicode_classB9_:bb.a
    #dbg_value(ptr %i.ei, !20704, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19550)
    #dbg_value(ptr %i.ei, !20709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19553)
    #dbg_value(ptr %i.ei, !20709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19555)
    #dbg_value(ptr %i.ei, !20704, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19557)
    #dbg_value(ptr %i.ei, !20704, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19559)
    #dbg_value(ptr %i.ei, !20709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19561)
    #dbg_value(ptr %i.ei, !20709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19563)
    #dbg_value(i64 %i.ek, !20665, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19529)
    #dbg_value(i64 %i.ek, !20665, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19530)
    #dbg_value(i64 %i.ek, !20693, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19538)
    #dbg_value(i64 %i.ek, !20693, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19540)
    #dbg_value(i64 %i.ek, !20699, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19543)
    #dbg_value(i64 %i.ek, !20699, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19545)
    #dbg_value(i64 %i.ek, !20704, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19548)
    #dbg_value(i64 %i.ek, !20704, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19550)
    #dbg_value(i64 %i.ek, !20709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19553)
    #dbg_value(i64 %i.ek, !20709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19555)
    #dbg_value(i64 %i.ek, !20704, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19557)
    #dbg_value(i64 %i.ek, !20704, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19559)
    #dbg_value(i64 %i.ek, !20709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19561)
    #dbg_value(i64 %i.ek, !20709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19563)
    #dbg_value(ptr %i.em, !20666, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19529)
    #dbg_value(ptr %i.em, !20666, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19530)
    #dbg_value(i64 %i.eo, !20666, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19529)
    #dbg_value(i64 %i.eo, !20666, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19530)
    #dbg_value(i64 1, !20715, !DIExpression(), !19566)
    #dbg_value(i64 1, !20715, !DIExpression(), !19568)
    #dbg_value(i64 1, !20718, !DIExpression(), !19571)
    #dbg_value(i64 1, !20718, !DIExpression(), !19573)
    #dbg_value(i64 1, !20721, !DIExpression(), !19576)
    #dbg_value(i64 1, !20721, !DIExpression(), !19578)
    #dbg_value(i64 1, !20724, !DIExpression(), !19581)
    #dbg_value(i64 1, !20724, !DIExpression(), !19583)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !21247 ; 2 uses
    #dbg_value(i64 poison, !20668, !DIExpression(), !19585)
    #dbg_value(i64 poison, !20668, !DIExpression(), !19586)
  %i.eq = add nsw i64 %i.eo, -1, !dbg !21248      ; 5 uses
  br i1 %i.eg, label %bb.bc, label %bb.au, !dbg !21249

bb.ap:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.am ], [ %..i.i.peel.i, %bb.an ], [ 1, %bb.al ], !dbg !21245
  %i.er = add i64 %.sroa.01.0.i.i.peel.i, %.promoted.i.i, !dbg !21250 ; 15 uses
    #dbg_value(ptr poison, !2420, !DIExpression(), !19445)
    #dbg_value(ptr poison, !2420, !DIExpression(), !19430)
    #dbg_value(ptr poison, !2420, !DIExpression(), !19419)
    #dbg_value(ptr poison, !2420, !DIExpression(), !19404)
    #dbg_value(ptr poison, !2446, !DIExpression(), !19400)
    #dbg_value(ptr poison, !20623, !DIExpression(), !19398)
    #dbg_value(ptr %i.c, !20600, !DIExpression(), !19587)
    #dbg_declare(ptr poison, !20627, !DIExpression(), !19588)
    #dbg_value(ptr %i.c, !20602, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20727), !dbg !21251
    #dbg_value(i1 true, !20603, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19364)
    #dbg_value(i64 %i.er, !20604, !DIExpression(), !19365)
    #dbg_value(i64 %i.er, !20612, !DIExpression(), !19372)
    #dbg_value(ptr %i.cf, !20618, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19373)
    #dbg_value(ptr %i.cf, !20614, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19374)
    #dbg_value(i64 %i.ch, !20618, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19373)
    #dbg_value(i64 %i.ch, !20614, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19374)
    #dbg_value(i64 %i.er, !20619, !DIExpression(), !19373)
    #dbg_value(i64 %i.er, !20613, !DIExpression(), !19374)
    #dbg_value(i64 %i.ch, !20615, !DIExpression(), !19372)
    #dbg_value(i64 %i.er, !2498, !DIExpression(), !19376)
    #dbg_value(ptr %i.cf, !2508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19376)
    #dbg_value(ptr %i.cf, !2511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19378)
    #dbg_value(ptr %i.cf, !2517, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19380)
    #dbg_value(ptr %i.cf, !2523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19382)
    #dbg_value(i64 %i.ch, !2508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19376)
    #dbg_value(i64 %i.ch, !2511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19378)
    #dbg_value(i64 %i.ch, !2517, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19380)
    #dbg_value(i64 %i.ch, !2523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19382)
    #dbg_value(i64 %i.er, !2515, !DIExpression(), !19378)
    #dbg_value(i64 %i.er, !2520, !DIExpression(), !19380)
    #dbg_value(i64 %i.er, !2530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19382)
    #dbg_value(i64 %i.er, !2537, !DIExpression(), !19384)
  %i.es = icmp eq i64 %i.er, 0, !dbg !21201
  br i1 %i.es, label %bb.as, label %bb.aq, !dbg !21201

bb.aq:                                            ; preds = %bb.ap
  %.not.i.i.i.i = icmp ult i64 %i.er, %i.ch, !dbg !21202
  br i1 %.not.i.i.i.i, label %bb.ar, label %.split.i.i.i.i, !dbg !21202

.split.i.i.i.i:                                   ; preds = %bb.aq
  %i.et = icmp eq i64 %i.er, %i.ch, !dbg !21203
  br i1 %i.et, label %bb.as, label %.loopexit.i, !dbg !21204

bb.ar:                                            ; preds = %bb.aq
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.er, !dbg !21205
  %i.ev = load i8, ptr %i.eu, align 1, !dbg !21205, !alias.scope !20621, !noalias !20728, !noundef !978
    #dbg_value(i8 %i.ev, !2543, !DIExpression(), !19392)
  %i.ew = icmp sgt i8 %i.ev, -65, !dbg !21206
  br i1 %i.ew, label %bb.as, label %.loopexit.i, !dbg !21204

bb.as:                                            ; preds = %bb.ar, %.split.i.i.i.i, %bb.ap
    #dbg_value(ptr %i.cf, !2531, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19393)
    #dbg_value(i64 %i.ch, !2531, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19393)
    #dbg_value(i64 %i.ch, !2521, !DIExpression(), !19394)
    #dbg_value(i64 %i.ch, !2530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19382)
    #dbg_value(!DIArgList(i64 %i.ch, i64 %i.er), !2532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !19395)
    #dbg_value(ptr %i.cf, !2540, !DIExpression(), !19384)
    #dbg_value(ptr undef, !20623, !DIExpression(), !19398)
    #dbg_value(ptr undef, !2446, !DIExpression(), !19400)
    #dbg_value(i32 2, !2580, !DIExpression(), !19402)
    #dbg_value(ptr undef, !2420, !DIExpression(), !19404)
    #dbg_value(i64 1, !2575, !DIExpression(), !19406)
    #dbg_value(!DIArgList(ptr %i.cf, i64 %i.er), !2431, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !19407)
    #dbg_value(!DIArgList(ptr %i.cf, i64 %i.er), !2574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !19406)
    #dbg_value(!DIArgList(ptr %i.cf, i64 %i.ch), !2432, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !19408)
    #dbg_value(ptr poison, !2568, !DIExpression(), !19410)
    #dbg_value(ptr poison, !2569, !DIExpression(), !19411)
  %i.ex = icmp samesign eq i64 %i.er, %i.ch, !dbg !21208
  br i1 %i.ex, label %.thread, label %bb.at, !dbg !21209

bb.at:                                            ; preds = %bb.as
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.er, !dbg !21207
    #dbg_value(ptr %i.ey, !2431, !DIExpression(), !19407)
    #dbg_value(ptr %i.ey, !2574, !DIExpression(), !19406)
  %i.ez = load i8, ptr %i.ey, align 1, !dbg !21210, !noalias !20729, !noundef !978 ; 3 uses
    #dbg_value(i8 %i.ez, !2447, !DIExpression(), !19414)
    #dbg_value(i8 %i.ez, !2577, !DIExpression(), !19402)
  %i.fa = icmp sgt i8 %i.ez, -1, !dbg !21211
  br i1 %i.fa, label %.thread, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3roNzt6HBWW_12regex_syntax.exit26.i.i.i.i, !dbg !21211

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3roNzt6HBWW_12regex_syntax.exit26.i.i.i.i: ; preds = %bb.at
    #dbg_value(i8 %i.ez, !2450, !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !19415)
    #dbg_value(i8 %i.ez, !2582, !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !19417)
    #dbg_value(ptr undef, !2420, !DIExpression(), !19419)
    #dbg_value(i64 1, !2575, !DIExpression(), !19421)
    #dbg_value(!DIArgList(ptr %i.cf, i64 %i.er), !2431, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !19422)
    #dbg_value(!DIArgList(ptr %i.cf, i64 %i.er), !2574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !19421)
    #dbg_value(!DIArgList(ptr %i.cf, i64 %i.ch), !2432, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !19423)
    #dbg_value(ptr poison, !2568, !DIExpression(), !19425)
    #dbg_value(ptr poison, !2569, !DIExpression(), !19426)
  %i.fb = add nuw nsw i64 %i.er, 1, !dbg !21214
  %i.fc = icmp samesign ne i64 %i.fb, %i.ch, !dbg !21214
  tail call void @llvm.assume(i1 %i.fc), !dbg !21215
    #dbg_value(i8 poison, !2451, !DIExpression(), !19427)
    #dbg_value(i8 poison, !2585, !DIExpression(), !19417)
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2452, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 6, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !19428)
  %i.fd = icmp samesign ugt i8 %i.ez, -33, !dbg !21219
  br i1 %i.fd, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3roNzt6HBWW_12regex_syntax.exit28.i.i.i.i, label %.thread, !dbg !21219

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3roNzt6HBWW_12regex_syntax.exit28.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3roNzt6HBWW_12regex_syntax.exit26.i.i.i.i
    #dbg_value(ptr undef, !2420, !DIExpression(), !19430)
    #dbg_value(i64 1, !2575, !DIExpression(), !19432)
    #dbg_value(!DIArgList(ptr %i.cf, i64 %i.er), !2431, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 2, DW_OP_stack_value), !19433)
    #dbg_value(!DIArgList(ptr %i.cf, i64 %i.er), !2574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 2, DW_OP_stack_value), !19432)
    #dbg_value(!DIArgList(ptr %i.cf, i64 %i.ch), !2432, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !19434)
    #dbg_value(ptr poison, !2568, !DIExpression(), !19436)
    #dbg_value(ptr poison, !2569, !DIExpression(), !19437)
  %i.fe = add nuw nsw i64 %i.er, 2, !dbg !21221
  %i.ff = icmp samesign ne i64 %i.fe, %i.ch, !dbg !21221
  tail call void @llvm.assume(i1 %i.ff), !dbg !21222
    #dbg_value(i8 poison, !2453, !DIExpression(), !19438)
    #dbg_value(i8 poison, !2585, !DIExpression(), !19440)
    #dbg_value(i8 poison, !2582, !DIExpression(DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !19440)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !2454, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !19441)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !2582, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !19443)
    #dbg_value(!DIArgList(i32 poison, i8 poison, i8 poison), !2452, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 12, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !19428)
  %i.fg = icmp samesign ugt i8 %i.ez, -17, !dbg !21228
  br i1 %i.fg, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3roNzt6HBWW_12regex_syntax.exit30.i.i.i.i, label %.thread, !dbg !21228

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3roNzt6HBWW_12regex_syntax.exit30.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3roNzt6HBWW_12regex_syntax.exit28.i.i.i.i
    #dbg_value(ptr undef, !2420, !DIExpression(), !19445)
    #dbg_value(i64 1, !2575, !DIExpression(), !19447)
    #dbg_value(!DIArgList(ptr %i.cf, i64 %i.er), !2431, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 3, DW_OP_stack_value), !19448)
    #dbg_value(!DIArgList(ptr %i.cf, i64 %i.er), !2574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 3, DW_OP_stack_value), !19447)
    #dbg_value(!DIArgList(ptr %i.cf, i64 %i.ch), !2432, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !19449)
    #dbg_value(ptr poison, !2568, !DIExpression(), !19451)
    #dbg_value(ptr poison, !2569, !DIExpression(), !19452)
  %i.fh = add nuw nsw i64 %i.er, 3, !dbg !21230
  %i.fi = icmp samesign ne i64 %i.fh, %i.ch, !dbg !21230
  tail call void @llvm.assume(i1 %i.fi), !dbg !21231
    #dbg_value(i8 poison, !2455, !DIExpression(), !19453)
    #dbg_value(i8 poison, !2585, !DIExpression(), !19443)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i8 poison), !2452, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_constu, 18, DW_OP_shl, DW_OP_constu, 1835008, DW_OP_and, DW_OP_or, DW_OP_stack_value), !19428)
  br label %.thread, !dbg !21237

.loopexit.i:                                      ; preds = %bb.ar, %.split.i.i.i.i, %bb.ag, %.split.i.i.i.peel.i
  %.lcssa61.i = phi i64 [ %.promoted.i.i, %.split.i.i.i.peel.i ], [ %.promoted.i.i, %bb.ag ], [ %i.er, %.split.i.i.i.i ], [ %i.er, %bb.ar ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cf, i64 noundef %i.ch, i64 noundef %.lcssa61.i, i64 noundef %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #25
          to label %.noexc310 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !21252

.noexc310:                                        ; preds = %.loopexit.i
  unreachable, !dbg !21252

bb.au:                                            ; preds = %bb.ao
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20730), !dbg !21253
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20731), !dbg !21253
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20732), !dbg !21253
    #dbg_value(i1 false, !20667, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19530)
    #dbg_value(i64 %i.eq, !20669, !DIExpression(), !19594)
  %.promoted.i.i.i = load i64, ptr %i.ep, align 8, !alias.scope !20733, !noalias !20527 ; 2 uses
  %i.fj = add i64 %.promoted.i.i.i, %i.eq, !dbg !21254 ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.ek, !dbg !21255
  br i1 %i.fk, label %.lr.ph.i12.i.i, label %.thread438, !dbg !21255

.lr.ph.i12.i.i:                                   ; preds = %bb.au
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !20733, !noalias !20527, !noundef !978
  %i.fn = load i64, ptr %i.bz, align 8, !alias.scope !20733, !noalias !20527 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !20733, !noalias !20527 ; 2 uses
  %i.fq = sub i64 %i.eo, %i.fp
  %invariant.op = sub i64 1, %i.fn, !dbg !21256
  br label %.lr.ph.split.i.i.i, !dbg !21256

.lr.ph.split.i.i.i:                               ; preds = %bb.ax, %.lr.ph.i12.i.i
  %.sink94.i.i29.i = phi i64 [ %.sink94.i.i.i, %bb.ax ], [ %i.ef, %.lr.ph.i12.i.i ] ; 3 uses
  %.sink95.i.i26.i = phi i64 [ %.sink95.i.i.i, %bb.ax ], [ %.promoted.i.i.i, %.lr.ph.i12.i.i ] ; 7 uses
  %i.fr = phi i64 [ %i.ga, %bb.ax ], [ %i.fj, %.lr.ph.i12.i.i ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.fr, !dbg !21257
  %i.ft = load i8, ptr %i.fs, align 1, !dbg !21258, !alias.scope !20731, !noalias !20734, !noundef !978
    #dbg_value(i8 %i.ft, !20670, !DIExpression(), !19595)
    #dbg_value(i8 %i.ft, !20691, !DIExpression(), !19535)
  %i.fu = and i8 %i.ft, 63, !dbg !21259
  %i.fv = zext nneg i8 %i.fu to i64, !dbg !21260
  %i.fw = shl nuw i64 1, %i.fv, !dbg !21261
  %i.fx = and i64 %i.fw, %i.fm, !dbg !21261
  %.not.i13.i.i = icmp eq i64 %i.fx, 0, !dbg !21261
  br i1 %.not.i13.i.i, label %bb.av, label %bb.aw, !dbg !21256

bb.av:                                            ; preds = %.lr.ph.split.i.i.i
  %i.fy = add i64 %.sink95.i.i26.i, %i.eo, !dbg !21262
  br label %bb.ax, !dbg !21263

bb.aw:                                            ; preds = %.lr.ph.split.i.i.i
    #dbg_value(i64 %i.fn, !20735, !DIExpression(), !19598)
    #dbg_value(i64 %.sink94.i.i29.i, !20736, !DIExpression(), !19598)
    #dbg_value(ptr undef, !20738, !DIExpression(DW_OP_deref), !19601)
    #dbg_value(ptr undef, !20740, !DIExpression(DW_OP_deref), !19601)
  %..i.i14.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sink94.i.i29.i, i64 %i.fn), !dbg !21264 ; 2 uses
    #dbg_value(i64 %..i.i14.i.i, !20672, !DIExpression(), !19602)
    #dbg_value(i64 %..i.i14.i.i, !20673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19603)
    #dbg_value(i64 %i.eo, !20673, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19603)
    #dbg_value(ptr undef, !20683, !DIExpression(), !19528)
    #dbg_value(ptr undef, !20680, !DIExpression(), !19526)
    #dbg_value(ptr undef, !20640, !DIExpression(), !19524)
    #dbg_value(ptr undef, !20641, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19604)
  %i.fz = icmp ult i64 %..i.i14.i.i, %i.eo, !dbg !21265
  br i1 %i.fz, label %.lr.ph, label %.preheader60.i.i.i.preheader, !dbg !21266

bb.ax:                                            ; preds = %bb.bb, %bb.ba, %bb.av
  %.sink95.i.i.i = phi i64 [ %i.gv, %bb.bb ], [ %i.gu, %bb.ba ], [ %i.fy, %bb.av ] ; 2 uses
  %.sink94.i.i.i = phi i64 [ 0, %bb.bb ], [ %i.fq, %bb.ba ], [ 0, %bb.av ]
  %i.ga = add i64 %.sink95.i.i.i, %i.eq, !dbg !21254 ; 2 uses
    #dbg_value(i64 %i.ga, !20696, !DIExpression(), !19540)
    #dbg_value(i64 %i.ga, !20702, !DIExpression(), !19545)
  %i.gb = icmp ult i64 %i.ga, %i.ek, !dbg !21255
  br i1 %i.gb, label %.lr.ph.split.i.i.i, label %.thread438, !dbg !21255

bb.ay:                                            ; preds = %.lr.ph
  %i.gc = add nuw nsw i64 %.sroa.04.0.i.i.i674, 1, !dbg !21267 ; 2 uses
    #dbg_value(i64 %i.gc, !20673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19603)
    #dbg_value(i64 %i.gc, !20673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19603)
    #dbg_value(ptr undef, !20683, !DIExpression(), !19528)
    #dbg_value(ptr undef, !20680, !DIExpression(), !19526)
    #dbg_value(ptr undef, !20640, !DIExpression(), !19524)
    #dbg_value(ptr undef, !20641, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19604)
  %i.gd = icmp ult i64 %i.gc, %i.eo, !dbg !21265
  br i1 %i.gd, label %.lr.ph, label %.preheader60.i.i.i.preheader, !dbg !21266

.preheader60.i.i.i.preheader:                     ; preds = %bb.ay, %bb.aw
    #dbg_value(i64 %i.fn, !20676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19605)
    #dbg_value(ptr undef, !20655, !DIExpression(), !19513)
    #dbg_value(ptr undef, !20646, !DIExpression(), !19511)
    #dbg_value(ptr undef, !20643, !DIExpression(), !19509)
    #dbg_value(ptr undef, !20640, !DIExpression(), !19507)
    #dbg_value(ptr undef, !20641, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19606)
  %i.ge = icmp ult i64 %.sink94.i.i29.i, %i.fn, !dbg !21268
  br i1 %i.ge, label %.lr.ph676, label %.thread, !dbg !21269

.lr.ph:                                           ; preds = %bb.aw, %bb.ay
  %.sroa.04.0.i.i.i674 = phi i64 [ %i.gc, %bb.ay ], [ %..i.i14.i.i, %bb.aw ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.i.i.i674, !20673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19603)
    #dbg_value(i64 %.sroa.04.0.i.i.i674, !20681, !DIExpression(), !19607)
    #dbg_value(i64 %.sroa.04.0.i.i.i674, !20716, !DIExpression(), !19568)
    #dbg_value(i64 %.sroa.04.0.i.i.i674, !20719, !DIExpression(), !19573)
    #dbg_value(i64 %.sroa.04.0.i.i.i674, !20673, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !19603)
    #dbg_value(i64 %.sroa.04.0.i.i.i674, !20674, !DIExpression(), !19608)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.em, i64 %.sroa.04.0.i.i.i674, !dbg !21270
  %i.gg = load i8, ptr %i.gf, align 1, !dbg !21270, !alias.scope !20732, !noalias !20734, !noundef !978
  %i.gh = add i64 %.sroa.04.0.i.i.i674, %.sink95.i.i26.i, !dbg !21271 ; 2 uses
    #dbg_value(i64 %i.gh, !20707, !DIExpression(), !19550)
    #dbg_value(i64 %i.gh, !20712, !DIExpression(), !19555)
  %i.gi = icmp ult i64 %i.gh, %i.ek, !dbg !21272
  tail call void @llvm.assume(i1 %i.gi), !dbg !21273
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.gh, !dbg !21274
  %i.gk = load i8, ptr %i.gj, align 1, !dbg !21275, !alias.scope !20731, !noalias !20734, !noundef !978
  %.not45.i.i.i = icmp eq i8 %i.gg, %i.gk, !dbg !21270
  br i1 %.not45.i.i.i, label %bb.ay, label %bb.bb, !dbg !21270

.preheader60.i.i.i:                               ; preds = %bb.az
    #dbg_value(i64 %i.gm, !20676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19605)
    #dbg_value(ptr undef, !20655, !DIExpression(), !19513)
    #dbg_value(ptr undef, !20646, !DIExpression(), !19511)
    #dbg_value(ptr undef, !20643, !DIExpression(), !19509)
    #dbg_value(ptr undef, !20640, !DIExpression(), !19507)
    #dbg_value(ptr undef, !20641, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19606)
  %i.gl = icmp ult i64 %.sink94.i.i29.i, %i.gm, !dbg !21268
  br i1 %i.gl, label %.lr.ph676, label %.thread, !dbg !21269

.lr.ph676:                                        ; preds = %.preheader60.i.i.i.preheader, %.preheader60.i.i.i
  %.sroa.2.0.i.i.i675 = phi i64 [ %i.gm, %.preheader60.i.i.i ], [ %i.fn, %.preheader60.i.i.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.i.i.i675, !20676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19605)
    #dbg_value(i64 %.sroa.2.0.i.i.i675, !20722, !DIExpression(), !19578)
    #dbg_value(i64 %.sroa.2.0.i.i.i675, !20725, !DIExpression(), !19583)
  %i.gm = add i64 %.sroa.2.0.i.i.i675, -1, !dbg !21276 ; 6 uses
    #dbg_value(i64 %i.gm, !20676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19605)
    #dbg_value(i64 %i.gm, !20677, !DIExpression(), !19609)
  %i.gn = icmp ult i64 %i.gm, %i.eo, !dbg !21277
  br i1 %i.gn, label %bb.az, label %.split56.us.i22.i.i.invoke, !dbg !21277

bb.az:                                            ; preds = %.lr.ph676
  %i.go = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.gm, !dbg !21277
  %i.gp = load i8, ptr %i.go, align 1, !dbg !21277, !alias.scope !20732, !noalias !20734, !noundef !978
  %i.gq = add i64 %i.gm, %.sink95.i.i26.i, !dbg !21278 ; 2 uses
    #dbg_value(i64 %i.gq, !20707, !DIExpression(), !19559)
    #dbg_value(i64 %i.gq, !20712, !DIExpression(), !19563)
  %i.gr = icmp ult i64 %i.gq, %i.ek, !dbg !21279
  tail call void @llvm.assume(i1 %i.gr), !dbg !21280
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.gq, !dbg !21281
  %i.gt = load i8, ptr %i.gs, align 1, !dbg !21282, !alias.scope !20731, !noalias !20734, !noundef !978
  %.not44.i.i.i = icmp eq i8 %i.gp, %i.gt, !dbg !21277
  br i1 %.not44.i.i.i, label %.preheader60.i.i.i, label %bb.ba, !dbg !21277

bb.ba:                                            ; preds = %bb.az
  %i.gu = add i64 %.sink95.i.i26.i, %i.fp, !dbg !21283
  br label %bb.ax, !dbg !21284

bb.bb:                                            ; preds = %.lr.ph
  %.reass.i.reass.i.reass.reass = add i64 %.sink95.i.i26.i, %invariant.op
  %i.gv = add i64 %.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i674, !dbg !21285
  br label %bb.ax, !dbg !21286

bb.bc:                                            ; preds = %bb.ao
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20744), !dbg !21287
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20745), !dbg !21287
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20746), !dbg !21287
    #dbg_value(i1 true, !20667, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19529)
    #dbg_value(i64 %i.eq, !20669, !DIExpression(), !19614)
  %.promoted.i15.i.i = load i64, ptr %i.ep, align 8, !alias.scope !20747, !noalias !20527 ; 3 uses
  %i.gw = add i64 %.promoted.i15.i.i, %i.eq, !dbg !21288 ; 3 uses
  %i.gx = icmp ult i64 %i.gw, %i.ek, !dbg !21289
  br i1 %i.gx, label %.lr.ph.i18.i.i, label %.thread438, !dbg !21289

.lr.ph.i18.i.i:                                   ; preds = %bb.bc
  %i.gy = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !20747, !noalias !20527, !noundef !978 ; 2 uses
  %i.ha = load i64, ptr %i.bz, align 8, !alias.scope !20747, !noalias !20527
  %.fr74.i.i = freeze i64 %i.ha, !dbg !21290      ; 10 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !20747, !noalias !20527
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr74.i.i, i64 range(i64 0, -9223372036854775808) %i.eo), !dbg !21290 ; 2 uses
  %i.hd = add i64 %.fr74.i.i, -1, !dbg !21290     ; 2 uses
  %.first_iter.i19.i.i = icmp ult i64 %i.hd, %i.eo
  %i.he = sub i64 1, %.fr74.i.i                   ; 2 uses
  br i1 %.first_iter.i19.i.i, label %.lr.ph.split.us.i.us.i.i.preheader, label %.lr.ph.split.us.i.i.i.preheader

.lr.ph.split.us.i.i.i.preheader:                  ; preds = %.lr.ph.i18.i.i
  %exitcond.not.i.i.i678.not = icmp ult i64 %.fr74.i.i, %i.eo
  br label %.lr.ph.split.us.i.i.i, !dbg !21290

.lr.ph.split.us.i.us.i.i.preheader:               ; preds = %.lr.ph.i18.i.i
  %exitcond.not.i.us.i.i683.not = icmp ult i64 %.fr74.i.i, %i.eo
  %.not58.i.us.us.i.i686 = icmp eq i64 %.fr74.i.i, 0
  br label %.lr.ph.split.us.i.us.i.i, !dbg !21290

.lr.ph.split.us.i.us.i.i:                         ; preds = %.lr.ph.split.us.i.us.i.i.preheader, %bb.bf
  %.sink.i20.us.i34.i = phi i64 [ %.sink.i20.us.i.i, %bb.bf ], [ %.promoted.i15.i.i, %.lr.ph.split.us.i.us.i.i.preheader ] ; 7 uses
  %i.hf = phi i64 [ %i.ie, %bb.bf ], [ %i.gw, %.lr.ph.split.us.i.us.i.i.preheader ]
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.hf, !dbg !21291
  %i.hh = load i8, ptr %i.hg, align 1, !dbg !21292, !alias.scope !20745, !noalias !20734, !noundef !978
    #dbg_value(i8 %i.hh, !20670, !DIExpression(), !19615)
    #dbg_value(i8 %i.hh, !20691, !DIExpression(), !19533)
  %i.hi = and i8 %i.hh, 63, !dbg !21293
  %i.hj = zext nneg i8 %i.hi to i64, !dbg !21294
  %i.hk = shl nuw i64 1, %i.hj, !dbg !21295
  %i.hl = and i64 %i.hk, %i.gz, !dbg !21295
  %.not.us.i.us.i.i = icmp eq i64 %i.hl, 0, !dbg !21295
  br i1 %.not.us.i.us.i.i, label %bb.be, label %.preheader59.i.us.i.i.preheader, !dbg !21290

.preheader59.i.us.i.i.preheader:                  ; preds = %.lr.ph.split.us.i.us.i.i
    #dbg_value(i64 %.fr74.i.i, !20673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19616)
    #dbg_value(ptr undef, !20683, !DIExpression(), !19527)
    #dbg_value(ptr undef, !20680, !DIExpression(), !19525)
    #dbg_value(ptr undef, !20640, !DIExpression(), !19520)
    #dbg_value(ptr undef, !20641, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19617)
  br i1 %exitcond.not.i.us.i.i683.not, label %.lr.ph685, label %.preheader.i21.us.us.i.i.preheader, !dbg !21296

.preheader59.i.us.i.i:                            ; preds = %.lr.ph685
  %i.hm = add i64 %.sroa.04.0.us.i.us.i.i684, 1, !dbg !21297 ; 2 uses
    #dbg_value(i64 %i.hm, !20673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19616)
    #dbg_value(i64 %i.hm, !20673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19616)
    #dbg_value(ptr undef, !20683, !DIExpression(), !19527)
    #dbg_value(ptr undef, !20680, !DIExpression(), !19525)
    #dbg_value(ptr undef, !20640, !DIExpression(), !19520)
    #dbg_value(ptr undef, !20641, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19617)
  %exitcond.not.i.us.i.i = icmp eq i64 %i.hm, %umax.i.i.i, !dbg !21298
  br i1 %exitcond.not.i.us.i.i, label %.preheader.i21.us.us.i.i.preheader, label %.lr.ph685, !dbg !21296

.preheader.i21.us.us.i.i.preheader:               ; preds = %.preheader59.i.us.i.i, %.preheader59.i.us.i.i.preheader
    #dbg_value(i64 %.fr74.i.i, !20676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19618)
    #dbg_value(ptr undef, !20655, !DIExpression(), !19512)
    #dbg_value(ptr undef, !20646, !DIExpression(), !19510)
    #dbg_value(ptr undef, !20643, !DIExpression(), !19508)
    #dbg_value(ptr undef, !20640, !DIExpression(), !19501)
    #dbg_value(ptr undef, !20641, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19619)
  br i1 %.not58.i.us.us.i.i686, label %.thread, label %.lr.ph688, !dbg !21299

.lr.ph685:                                        ; preds = %.preheader59.i.us.i.i.preheader, %.preheader59.i.us.i.i
  %.sroa.04.0.us.i.us.i.i684 = phi i64 [ %i.hm, %.preheader59.i.us.i.i ], [ %.fr74.i.i, %.preheader59.i.us.i.i.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.us.i.us.i.i684, !20673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19616)
    #dbg_value(i64 %.sroa.04.0.us.i.us.i.i684, !20681, !DIExpression(), !19620)
    #dbg_value(i64 %.sroa.04.0.us.i.us.i.i684, !20716, !DIExpression(), !19566)
    #dbg_value(i64 %.sroa.04.0.us.i.us.i.i684, !20719, !DIExpression(), !19571)
    #dbg_value(i64 %.sroa.04.0.us.i.us.i.i684, !20673, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !19616)
    #dbg_value(i64 %.sroa.04.0.us.i.us.i.i684, !20674, !DIExpression(), !19621)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.em, i64 %.sroa.04.0.us.i.us.i.i684, !dbg !21300
  %i.ho = load i8, ptr %i.hn, align 1, !dbg !21300, !alias.scope !20746, !noalias !20734, !noundef !978
  %i.hp = add i64 %.sroa.04.0.us.i.us.i.i684, %.sink.i20.us.i34.i, !dbg !21301 ; 2 uses
    #dbg_value(i64 %i.hp, !20707, !DIExpression(), !19548)
    #dbg_value(i64 %i.hp, !20712, !DIExpression(), !19553)
  %i.hq = icmp ult i64 %i.hp, %i.ek, !dbg !21302
  tail call void @llvm.assume(i1 %i.hq), !dbg !21303
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.hp, !dbg !21304
  %i.hs = load i8, ptr %i.hr, align 1, !dbg !21305, !alias.scope !20745, !noalias !20734, !noundef !978
  %.not45.us.i.us.i.i = icmp eq i8 %i.ho, %i.hs, !dbg !21300
  br i1 %.not45.us.i.us.i.i, label %.preheader59.i.us.i.i, label %bb.bd, !dbg !21300

bb.bd:                                            ; preds = %.lr.ph685
  %i.ht = add i64 %.sink.i20.us.i34.i, %i.he, !dbg !21306
  %i.hu = add i64 %i.ht, %.sroa.04.0.us.i.us.i.i684, !dbg !21307
  br label %bb.bf, !dbg !21308

.preheader.i21.us.us.i.i:                         ; preds = %.lr.ph688
    #dbg_value(i64 %i.hv, !20676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19618)
    #dbg_value(ptr undef, !20655, !DIExpression(), !19512)
    #dbg_value(ptr undef, !20646, !DIExpression(), !19510)
    #dbg_value(ptr undef, !20643, !DIExpression(), !19508)
    #dbg_value(ptr undef, !20640, !DIExpression(), !19501)
    #dbg_value(ptr undef, !20641, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19619)
  %.not58.i.us.us.i.i = icmp eq i64 %i.hv, 0, !dbg !21309
  br i1 %.not58.i.us.us.i.i, label %.thread, label %.lr.ph688, !dbg !21299

.lr.ph688:                                        ; preds = %.preheader.i21.us.us.i.i.preheader, %.preheader.i21.us.us.i.i
  %.sroa.2.0.us.i.us.us.i.i687 = phi i64 [ %i.hv, %.preheader.i21.us.us.i.i ], [ %.fr74.i.i, %.preheader.i21.us.us.i.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.us.i.us.us.i.i687, !20676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19618)
    #dbg_value(i64 %.sroa.2.0.us.i.us.us.i.i687, !20722, !DIExpression(), !19576)
    #dbg_value(i64 %.sroa.2.0.us.i.us.us.i.i687, !20725, !DIExpression(), !19581)
  %i.hv = add i64 %.sroa.2.0.us.i.us.us.i.i687, -1, !dbg !21310 ; 4 uses
    #dbg_value(i64 %i.hv, !20676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19618)
    #dbg_value(i64 %i.hv, !20677, !DIExpression(), !19622)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.hv, !dbg !21311
  %i.hx = load i8, ptr %i.hw, align 1, !dbg !21311, !alias.scope !20746, !noalias !20734, !noundef !978
  %i.hy = add i64 %i.hv, %.sink.i20.us.i34.i, !dbg !21312 ; 2 uses
    #dbg_value(i64 %i.hy, !20707, !DIExpression(), !19557)
    #dbg_value(i64 %i.hy, !20712, !DIExpression(), !19561)
  %i.hz = icmp ult i64 %i.hy, %i.ek, !dbg !21313
  tail call void @llvm.assume(i1 %i.hz), !dbg !21314
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.hy, !dbg !21315
  %i.ib = load i8, ptr %i.ia, align 1, !dbg !21316, !alias.scope !20745, !noalias !20734, !noundef !978
  %.not44.us.i.us.us.i.i = icmp eq i8 %i.hx, %i.ib, !dbg !21311
  br i1 %.not44.us.i.us.us.i.i, label %.preheader.i21.us.us.i.i, label %.split.us.us.i.i, !dbg !21311

.split.us.us.i.i:                                 ; preds = %.lr.ph688
  %i.ic = add i64 %.sink.i20.us.i34.i, %i.hc, !dbg !21317
  br label %bb.bf, !dbg !21318

bb.be:                                            ; preds = %.lr.ph.split.us.i.us.i.i
  %i.id = add i64 %.sink.i20.us.i34.i, %i.eo, !dbg !21319
  br label %bb.bf, !dbg !21320

bb.bf:                                            ; preds = %bb.be, %.split.us.us.i.i, %bb.bd
  %.sink.i20.us.i.i = phi i64 [ %i.id, %bb.be ], [ %i.hu, %bb.bd ], [ %i.ic, %.split.us.us.i.i ] ; 2 uses
  %i.ie = add i64 %.sink.i20.us.i.i, %i.eq, !dbg !21288 ; 2 uses
    #dbg_value(i64 %i.ie, !20696, !DIExpression(), !19538)
    #dbg_value(i64 %i.ie, !20702, !DIExpression(), !19543)
  %i.if = icmp ult i64 %i.ie, %i.ek, !dbg !21289
  br i1 %i.if, label %.lr.ph.split.us.i.us.i.i, label %.thread438, !dbg !21289

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.split.us.i.i.i.preheader, %bb.bi
  %.sink.i20.i32.i = phi i64 [ %.sink.i20.i.i, %bb.bi ], [ %.promoted.i15.i.i, %.lr.ph.split.us.i.i.i.preheader ] ; 4 uses
  %i.ig = phi i64 [ %i.ix, %bb.bi ], [ %i.gw, %.lr.ph.split.us.i.i.i.preheader ]
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ig, !dbg !21291
  %i.ii = load i8, ptr %i.ih, align 1, !dbg !21292, !alias.scope !20745, !noalias !20734, !noundef !978
    #dbg_value(i8 %i.ii, !20670, !DIExpression(), !19615)
    #dbg_value(i8 %i.ii, !20691, !DIExpression(), !19533)
  %i.ij = and i8 %i.ii, 63, !dbg !21293
  %i.ik = zext nneg i8 %i.ij to i64, !dbg !21294
  %i.il = shl nuw i64 1, %i.ik, !dbg !21295
  %i.im = and i64 %i.il, %i.gz, !dbg !21295
  %.not.us.i.i.i = icmp eq i64 %i.im, 0, !dbg !21295
  br i1 %.not.us.i.i.i, label %bb.bh, label %.preheader59.i.i.i.preheader, !dbg !21290

.preheader59.i.i.i.preheader:                     ; preds = %.lr.ph.split.us.i.i.i
    #dbg_value(i64 %.fr74.i.i, !20673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19616)
    #dbg_value(ptr undef, !20683, !DIExpression(), !19527)
    #dbg_value(ptr undef, !20680, !DIExpression(), !19525)
    #dbg_value(ptr undef, !20640, !DIExpression(), !19520)
    #dbg_value(ptr undef, !20641, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19617)
  br i1 %exitcond.not.i.i.i678.not, label %.lr.ph680, label %.preheader.i21.i.i, !dbg !21296

.preheader59.i.i.i:                               ; preds = %.lr.ph680
  %i.in = add i64 %.sroa.04.0.us.i.i.i679, 1, !dbg !21297 ; 2 uses
    #dbg_value(i64 %i.in, !20673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19616)
    #dbg_value(i64 %i.in, !20673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19616)
    #dbg_value(ptr undef, !20683, !DIExpression(), !19527)
    #dbg_value(ptr undef, !20680, !DIExpression(), !19525)
    #dbg_value(ptr undef, !20640, !DIExpression(), !19520)
    #dbg_value(ptr undef, !20641, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19617)
  %exitcond.not.i.i.i = icmp eq i64 %i.in, %umax.i.i.i, !dbg !21298
  br i1 %exitcond.not.i.i.i, label %.preheader.i21.i.i, label %.lr.ph680, !dbg !21296

.lr.ph680:                                        ; preds = %.preheader59.i.i.i.preheader, %.preheader59.i.i.i
  %.sroa.04.0.us.i.i.i679 = phi i64 [ %i.in, %.preheader59.i.i.i ], [ %.fr74.i.i, %.preheader59.i.i.i.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.us.i.i.i679, !20673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19616)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i679, !20681, !DIExpression(), !19620)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i679, !20716, !DIExpression(), !19566)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i679, !20719, !DIExpression(), !19571)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i679, !20673, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !19616)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i679, !20674, !DIExpression(), !19621)
  %i.io = getelementptr inbounds nuw i8, ptr %i.em, i64 %.sroa.04.0.us.i.i.i679, !dbg !21300
  %i.ip = load i8, ptr %i.io, align 1, !dbg !21300, !alias.scope !20746, !noalias !20734, !noundef !978
  %i.iq = add i64 %.sroa.04.0.us.i.i.i679, %.sink.i20.i32.i, !dbg !21301 ; 2 uses
    #dbg_value(i64 %i.iq, !20707, !DIExpression(), !19548)
    #dbg_value(i64 %i.iq, !20712, !DIExpression(), !19553)
  %i.ir = icmp ult i64 %i.iq, %i.ek, !dbg !21302
  tail call void @llvm.assume(i1 %i.ir), !dbg !21303
  %i.is = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.iq, !dbg !21304
  %i.it = load i8, ptr %i.is, align 1, !dbg !21305, !alias.scope !20745, !noalias !20734, !noundef !978
  %.not45.us.i.i.i = icmp eq i8 %i.ip, %i.it, !dbg !21300
  br i1 %.not45.us.i.i.i, label %.preheader59.i.i.i, label %bb.bg, !dbg !21300

.preheader.i21.i.i:                               ; preds = %.preheader59.i.i.i.preheader, %.preheader59.i.i.i
    #dbg_value(i64 %i.ha, !20676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19618)
    #dbg_value(ptr undef, !20655, !DIExpression(), !19512)
    #dbg_value(ptr undef, !20646, !DIExpression(), !19510)
    #dbg_value(ptr undef, !20643, !DIExpression(), !19508)
    #dbg_value(ptr undef, !20640, !DIExpression(), !19501)
    #dbg_value(ptr undef, !20641, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19619)
  %.not58.i.i.i = icmp eq i64 %.fr74.i.i, 0, !dbg !21309
  br i1 %.not58.i.i.i, label %.thread, label %.split56.us.i22.i.i.invoke, !dbg !21299

.split56.us.i22.i.i.invoke:                       ; preds = %.lr.ph676, %.preheader.i21.i.i
  %2 = phi i64 [ %i.hd, %.preheader.i21.i.i ], [ %i.gm, %.lr.ph676 ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %i.eo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #25
          to label %.split56.us.i22.i.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !21321

.split56.us.i22.i.i.cont:                         ; preds = %.split56.us.i22.i.i.invoke
  unreachable

bb.bg:                                            ; preds = %.lr.ph680
  %i.iu = add i64 %.sink.i20.i32.i, %i.he, !dbg !21306
  %i.iv = add i64 %i.iu, %.sroa.04.0.us.i.i.i679, !dbg !21307
  br label %bb.bi, !dbg !21308

bb.bh:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.iw = add i64 %.sink.i20.i32.i, %i.eo, !dbg !21319
  br label %bb.bi, !dbg !21320

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sink.i20.i.i = phi i64 [ %i.iw, %bb.bh ], [ %i.iv, %bb.bg ] ; 2 uses
  %i.ix = add i64 %.sink.i20.i.i, %i.eq, !dbg !21288 ; 2 uses
    #dbg_value(i64 %i.ix, !20696, !DIExpression(), !19538)
    #dbg_value(i64 %i.ix, !20702, !DIExpression(), !19543)
  %i.iy = icmp ult i64 %i.ix, %i.ek, !dbg !21289
  br i1 %i.iy, label %.lr.ph.split.us.i.i.i, label %.thread438, !dbg !21289

.thread:                                          ; preds = %.preheader60.i.i.i.preheader, %.preheader60.i.i.i, %.preheader.i21.us.us.i.i.preheader, %.preheader.i21.us.us.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3roNzt6HBWW_12regex_syntax.exit26.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3roNzt6HBWW_12regex_syntax.exit28.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3roNzt6HBWW_12regex_syntax.exit30.i.i.i.i, %bb.at, %bb.as, %bb.ak, %.preheader.i21.i.i
  %.sroa.4.0.i.ph = phi i64 [ %.sink.i20.i32.i, %.preheader.i21.i.i ], [ %.promoted.i.i, %bb.ak ], [ %i.er, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3roNzt6HBWW_12regex_syntax.exit26.i.i.i.i ], [ %i.ch, %bb.as ], [ %.sink95.i.i26.i, %.preheader60.i.i.i ], [ %i.er, %bb.at ], [ %i.er, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3roNzt6HBWW_12regex_syntax.exit30.i.i.i.i ], [ %i.er, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3roNzt6HBWW_12regex_syntax.exit28.i.i.i.i ], [ %.sink.i20.us.i34.i, %.preheader.i21.us.us.i.i.preheader ], [ %.sink.i20.us.i34.i, %.preheader.i21.us.us.i.i ], [ %.sink95.i.i26.i, %.preheader60.i.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !21322, !noalias !20527
  br label %bb.bk, !dbg !21323

.thread438:                                       ; preds = %bb.ax, %bb.bi, %bb.bf, %bb.bc, %bb.au, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !21322, !noalias !20527
  br label %.lr.ph.split.i.i.preheader, !dbg !21323

bb.bj:                                            ; preds = %bb.ah
    #dbg_value(i32 0, !20626, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !19457)
    #dbg_value(i32 undef, !20626, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !19457)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !21322, !noalias !20527
  br i1 %i.ci, label %bb.bk, label %.lr.ph.split.i.i.preheader, !dbg !21323

.lr.ph.split.i.i.preheader:                       ; preds = %.thread438, %bb.bj
  br label %.lr.ph.split.i.i, !dbg !21324

bb.bk:                                            ; preds = %.thread, %bb.bj
  %.sroa.4.0.i435 = phi i64 [ %.sroa.4.0.i.ph, %.thread ], [ %.promoted.i.i, %bb.bj ] ; 10 uses
    #dbg_value(i64 %.sroa.4.0.i435, !20053, !DIExpression(), !20788)
    #dbg_value(i64 %.sroa.4.0.i435, !20468, !DIExpression(), !20789)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !21325
    #dbg_value(i64 %.sroa.4.0.i435, !20457, !DIExpression(), !20462)
    #dbg_value(i64 %.sroa.4.0.i435, !20467, !DIExpression(), !20476)
    #dbg_value(i64 %.sroa.4.0.i435, !20790, !DIExpression(), !19641)
    #dbg_value(ptr %i.bv, !20793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19641)
    #dbg_value(ptr %i.bv, !20795, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19644)
    #dbg_value(i64 %i.bw, !20793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19641)
    #dbg_value(i64 %i.bw, !20795, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19644)
    #dbg_value(i64 %.sroa.4.0.i435, !20796, !DIExpression(), !19644)
  %i.iz = icmp eq i64 %.sroa.4.0.i435, 0, !dbg !21326 ; 2 uses
  br i1 %i.iz, label %select.unfold, label %bb.bl, !dbg !21326

bb.bl:                                            ; preds = %bb.bk
  %.not.i313 = icmp ult i64 %.sroa.4.0.i435, %i.bw, !dbg !21327
  br i1 %.not.i313, label %bb.bm, label %.split, !dbg !21327

.split:                                           ; preds = %bb.bl
  %i.ja = icmp eq i64 %.sroa.4.0.i435, %i.bw, !dbg !21328
  br i1 %i.ja, label %select.unfold, label %bb.br, !dbg !21329

bb.bm:                                            ; preds = %bb.bl
  %i.jb = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.4.0.i435, !dbg !21330
  %i.jc = load i8, ptr %i.jb, align 1, !dbg !21330, !alias.scope !20798, !noundef !978
    #dbg_value(i8 %i.jc, !20799, !DIExpression(), !19649)
  %i.jd = icmp sgt i8 %i.jc, -65, !dbg !21331
  br i1 %i.jd, label %select.unfold, label %bb.br, !dbg !21329

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.backedge, %.lr.ph.split.i.i.preheader
  %i.je = phi i64 [ 0, %.lr.ph.split.i.i.preheader ], [ %i.js, %.lr.ph.split.i.i.backedge ] ; 5 uses
    #dbg_value(i64 %i.je, !20801, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19656)
  %i.jf = sub nuw i64 %i.bw, %i.je, !dbg !21332   ; 4 uses
    #dbg_value(i64 %i.jf, !20825, !DIExpression(), !19661)
    #dbg_value(i64 %i.jf, !20827, !DIExpression(), !19664)
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.je, !dbg !21333 ; 2 uses
    #dbg_value(ptr %i.jg, !20773, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19665)
    #dbg_value(i64 %i.jf, !20773, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19665)
    #dbg_value(i8 58, !20776, !DIExpression(), !19666)
    #dbg_value(i8 58, !20753, !DIExpression(), !19667)
    #dbg_value(i8 58, !20834, !DIExpression(), !19671)
    #dbg_value(ptr %i.jg, !20754, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19667)
    #dbg_value(ptr %i.jg, !20835, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19671)
    #dbg_value(i64 %i.jf, !20754, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19667)
    #dbg_value(i64 %i.jf, !20835, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19671)
  %i.jh = icmp samesign ult i64 %i.jf, 16, !dbg !21324
  br i1 %i.jh, label %.preheader.i.i.i, label %bb.bn, !dbg !21324

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
    #dbg_value(i64 0, !20836, !DIExpression(), !19672)
  %.not.i.i.i = icmp eq i64 %i.bw, %i.je, !dbg !21334
  br i1 %.not.i.i.i, label %.lr.ph.split.i.i326.preheader, label %.lr.ph.i.i.i, !dbg !21334

bb.bn:                                            ; preds = %.lr.ph.split.i.i
  %i.ji = invoke { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef 58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jg, i64 noundef range(i64 0, -9223372036854775808) %i.jf)
          to label %.noexc318 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !21335 ; 2 uses

.noexc318:                                        ; preds = %bb.bn
  %i.jj = extractvalue { i64, i64 } %i.ji, 0, !dbg !21335
  %i.jk = extractvalue { i64, i64 } %i.ji, 1, !dbg !21335
    #dbg_value(i64 %i.jj, !20755, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19673)
    #dbg_value(i64 %i.jk, !20755, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19673)
  %i.jl = trunc nuw i64 %i.jj to i1, !dbg !21336
  br i1 %i.jl, label %.loopexit.i.i, label %.lr.ph.split.i.i326.preheader, !dbg !21336

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.bo
  %.sroa.04.015.i.i.i = phi i64 [ %i.jp, %bb.bo ], [ 0, %.preheader.i.i.i ] ; 3 uses
    #dbg_value(i64 %.sroa.04.015.i.i.i, !20836, !DIExpression(), !19672)
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jg, i64 %.sroa.04.015.i.i.i, !dbg !21337
  %i.jn = load i8, ptr %i.jm, align 1, !dbg !21337, !alias.scope !20838, !noalias !20839, !noundef !978
  %i.jo = icmp eq i8 %i.jn, 58, !dbg !21337
  br i1 %i.jo, label %.loopexit.i.i, label %bb.bo, !dbg !21337

bb.bo:                                            ; preds = %.lr.ph.i.i.i
  %i.jp = add nuw nsw i64 %.sroa.04.015.i.i.i, 1, !dbg !21338 ; 2 uses
    #dbg_value(i64 %i.jp, !20836, !DIExpression(), !19672)
  %exitcond.not.i.i.i317 = icmp eq i64 %i.jp, %i.jf, !dbg !21334
  br i1 %exitcond.not.i.i.i317, label %.lr.ph.split.i.i326.preheader, label %.lr.ph.i.i.i, !dbg !21334

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %.noexc318
  %.sroa.5.0.i.i.i = phi i64 [ %i.jk, %.noexc318 ], [ %.sroa.04.015.i.i.i, %.lr.ph.i.i.i ], !dbg !21339 ; 3 uses
    #dbg_value(i64 1, !20755, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19673)
    #dbg_value(i64 %.sroa.5.0.i.i.i, !20755, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19673)
    #dbg_value(i64 %.sroa.5.0.i.i.i, !20756, !DIExpression(), !19681)
  %i.jq = icmp ult i64 %.sroa.5.0.i.i.i, %i.jf, !dbg !21340
    #dbg_value(i1 true, !20840, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19684)
  tail call void @llvm.assume(i1 %i.jq), !dbg !21341
    #dbg_value(i64 1, !20755, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19673)
    #dbg_value(i64 %.sroa.5.0.i.i.i, !20755, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19673)
    #dbg_value(i64 %.sroa.5.0.i.i.i, !20777, !DIExpression(), !19685)
  %i.jr = add i64 %i.je, 1, !dbg !21342
  %i.js = add i64 %i.jr, %.sroa.5.0.i.i.i, !dbg !21343 ; 2 uses
    #dbg_value(!DIArgList(i64 %i.js, i64 1), !20778, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !19686)
    #dbg_value(!DIArgList(i64 %i.js, i64 1), !20801, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !19688)
    #dbg_value(!DIArgList(i64 %i.js, i64 1), !20823, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !19690)
    #dbg_value(!DIArgList(i64 %i.js, i64 1), !20817, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !19692)
    #dbg_value(!DIArgList(i64 %i.js, i64 1), !20831, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !19694)
    #dbg_value(ptr %i.bv, !20813, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19688)
    #dbg_value(ptr %i.bv, !20824, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19690)
    #dbg_value(ptr %i.bv, !20830, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19694)
    #dbg_value(!DIArgList(i64 poison, i64 %.sroa.5.0.i.i.i), !20801, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19688)
    #dbg_value(!DIArgList(i64 poison, i64 %.sroa.5.0.i.i.i), !20823, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !19690)
    #dbg_value(!DIArgList(i64 poison, i64 %.sroa.5.0.i.i.i), !20816, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value), !19692)
    #dbg_value(i64 %i.bw, !20813, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19688)
    #dbg_value(i64 %i.bw, !20824, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19690)
    #dbg_value(i64 %i.bw, !20830, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19694)
    #dbg_value(i64 1, !20825, !DIExpression(), !19690)
    #dbg_value(i64 1, !20827, !DIExpression(), !19694)
  %.not51.i.i = icmp ugt i64 %i.js, %i.bw         ; 2 uses
  %i.jt = add i64 %.sroa.5.0.i.i.i, %i.je, !dbg !21344 ; 9 uses
  %or.cond.i.not.i = icmp ult i64 %i.jt, %i.bw, !dbg !21344
  br i1 %or.cond.i.not.i, label %bb.bq, label %bb.bp, !dbg !21344

bb.bp:                                            ; preds = %.loopexit.i.i
    #dbg_value(ptr %i.bv, !20813, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19656)
    #dbg_value(ptr %i.bv, !20824, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19661)
    #dbg_value(ptr %i.bv, !20830, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19664)
    #dbg_value(i64 %i.js, !20801, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19656)
    #dbg_value(i64 %i.js, !20823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19661)
    #dbg_value(i64 %i.js, !20817, !DIExpression(), !19695)
    #dbg_value(i64 %i.js, !20831, !DIExpression(), !19664)
    #dbg_value(i64 %i.bw, !20801, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19656)
    #dbg_value(i64 %i.bw, !20823, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19661)
    #dbg_value(i64 %i.bw, !20816, !DIExpression(), !19695)
    #dbg_value(i64 %i.bw, !20813, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19656)
    #dbg_value(i64 %i.bw, !20824, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19661)
    #dbg_value(i64 %i.bw, !20830, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19664)
    #dbg_value(!DIArgList(i64 %i.bw, i64 %i.js), !20825, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !19661)
    #dbg_value(!DIArgList(i64 %i.bw, i64 %i.js), !20827, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !19664)
  br i1 %.not51.i.i, label %.lr.ph.split.i.i326.preheader, label %.lr.ph.split.i.i.backedge, !dbg !21345

bb.bq:                                            ; preds = %.loopexit.i.i
    #dbg_value(i64 %i.jt, !20778, !DIExpression(), !19686)
    #dbg_value(i64 %i.jt, !20801, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19688)
    #dbg_value(i64 %i.jt, !20823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19690)
    #dbg_value(i64 %i.jt, !20817, !DIExpression(), !19692)
    #dbg_value(i64 %i.jt, !20831, !DIExpression(), !19694)
    #dbg_value(!DIArgList(ptr %i.bv, i64 %i.jt), !20779, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !19696)
    #dbg_value(!DIArgList(ptr %i.bv, i64 %i.jt), !20847, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !19702)
    #dbg_value(i64 1, !20779, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19696)
    #dbg_value(i64 1, !20847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19702)
    #dbg_value(ptr poison, !20851, !DIExpression(), !19703)
    #dbg_value(i64 1, !20816, !DIExpression(), !19711)
    #dbg_value(i64 1, !20827, !DIExpression(), !19713)
    #dbg_value(ptr undef, !20830, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19713)
    #dbg_value(i64 4, !20830, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19713)
  %i.ju = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.jt, !dbg !21346
    #dbg_value(ptr %i.ju, !20779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19696)
    #dbg_value(ptr %i.ju, !20847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19702)
    #dbg_value(ptr undef, !20848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19702)
    #dbg_value(i64 1, !20848, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19702)
    #dbg_value(ptr poison, !20852, !DIExpression(), !19714)
    #dbg_value(i64 1, !20849, !DIExpression(), !19715)
    #dbg_value(i64 1, !20874, !DIExpression(), !19719)
    #dbg_value(i64 1, !20877, !DIExpression(), !19720)
    #dbg_value(ptr %i.ju, !20875, !DIExpression(), !19719)
    #dbg_value(ptr undef, !20876, !DIExpression(), !19719)
  %lhsc.i = load i8, ptr %i.ju, align 1, !dbg !21347, !alias.scope !20879
  %i.jv = icmp eq i8 %lhsc.i, 58, !dbg !21347     ; 2 uses
  %brmerge.i = or i1 %.not51.i.i, %i.jv, !dbg !21348
  br i1 %brmerge.i, label %bb.ci, label %.lr.ph.split.i.i.backedge, !dbg !21348

.lr.ph.split.i.i.backedge:                        ; preds = %bb.bq, %bb.bp
  br label %.lr.ph.split.i.i, !dbg !21332

select.unfold:                                    ; preds = %bb.bm, %.split, %bb.bk
    #dbg_value(ptr %i.bv, !20152, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20880)
    #dbg_value(ptr %i.bv, !20154, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20881)
    #dbg_value(ptr %i.bv, !20155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20882)
    #dbg_value(ptr %i.bv, !20163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20883)
    #dbg_value(ptr %i.bv, !20165, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20884)
    #dbg_value(i64 %.sroa.4.0.i435, !20152, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20880)
    #dbg_value(i64 %.sroa.4.0.i435, !20154, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20881)
    #dbg_value(i64 %.sroa.4.0.i435, !20155, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20882)
    #dbg_value(i64 %.sroa.4.0.i435, !20163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20883)
    #dbg_value(i64 %.sroa.4.0.i435, !20165, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20884)
    #dbg_value(ptr %i.bv, !20167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20885)
    #dbg_value(ptr %i.bv, !20169, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20886)
    #dbg_value(ptr %i.bv, !20142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20887)
    #dbg_value(ptr %i.bv, !20172, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20888)
    #dbg_value(i64 %.sroa.4.0.i435, !20167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20885)
    #dbg_value(i64 %.sroa.4.0.i435, !20169, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20886)
end_hunk_1
