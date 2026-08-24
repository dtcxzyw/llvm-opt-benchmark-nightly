Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_dd-289641d59659d41f.uu_dd.8952a91ac67bbfe3-cgu.0?download=true
inline.NumInlined: 1600
inline.NumDeleted: 713
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RINvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB3_10ProgUpdate15write_prog_lineNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StderrEB5_:bb.a

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit703: ; preds = %bb.lz, %bb.ly, %bb.ma
  %i.aot = icmp eq i64 %i.ek, 0
  %or.cond1334 = or i1 %.sroa.09.0.not, %i.aot
  br i1 %or.cond1334, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit706, label %bb.mc

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit706: ; preds = %bb.mc, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit703
  %i.aou = icmp eq i64 %i.lx, 0
  %or.cond1335 = or i1 %.sroa.010.0.not, %i.aou
  br i1 %or.cond1335, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit709, label %bb.md

bb.mc:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit703
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ame, i64 noundef %i.ek, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !428
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit706

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit709: ; preds = %bb.md, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.cs

bb.md:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit706
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ajx, i64 noundef %i.lx, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !431
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit709

bb.me:                                            ; preds = %bb.cs
  %i.aov = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.lt) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %.val.i710 = load i64, ptr %i.ba, align 8, !range !184, !alias.scope !434, !noundef !8 ; 2 uses
  %i.aow = icmp eq i64 %.val.i710, 0
  br i1 %i.aow, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit712, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.aox = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.val1.i711 = load ptr, ptr %i.aox, align 8, !alias.scope !434, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i711, i64 noundef %.val.i710, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !434
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit712

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit712: ; preds = %bb.me, %bb.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.ml

bb.mg:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %.val.i713 = load i64, ptr %i.ba, align 8, !range !184, !alias.scope !437, !noundef !8 ; 2 uses
  %i.aoy = icmp eq i64 %.val.i713, 0
  br i1 %i.aoy, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit715, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.val1.i714 = load ptr, ptr %i.aoz, align 8, !alias.scope !437, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i714, i64 noundef %.val.i713, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !437
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit715

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit715: ; preds = %bb.mg, %bb.mh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %.val123 = load i64, ptr %i.bd, align 8, !range !184, !noundef !8 ; 2 uses
  %i.apa = icmp eq i64 %.val123, 0
  br i1 %i.apa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit, label %bb.mi

bb.mi:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit715
  %.val124 = load ptr, ptr %i.cb, align 8, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val124, i64 noundef %.val123, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit715, %bb.mi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %.val.i716 = load i64, ptr %i.bg, align 8, !range !184, !alias.scope !440, !noundef !8 ; 2 uses
  %i.apb = icmp eq i64 %.val.i716, 0
  br i1 %i.apb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit718, label %bb.mj

bb.mj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit
  %i.apc = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.val1.i717 = load ptr, ptr %i.apc, align 8, !alias.scope !440, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i717, i64 noundef %.val.i716, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !440
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit718

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit718: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit, %bb.mj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %.val.i719 = load i64, ptr %i.bh, align 8, !range !184, !alias.scope !443, !noundef !8 ; 2 uses
  %i.apd = icmp eq i64 %.val.i719, 0
  br i1 %i.apd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit721, label %bb.mk

bb.mk:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit718
  %i.ape = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.val1.i720 = load ptr, ptr %i.ape, align 8, !alias.scope !443, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i720, i64 noundef %.val.i719, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !443
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit721

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit721: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit718, %bb.mk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %.val.i722 = load i64, ptr %i.bi, align 8, !range !184, !alias.scope !446, !noundef !8 ; 2 uses
  %i.apf = icmp eq i64 %.val.i722, 0
  br i1 %i.apf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit734, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit734.sink.split

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit734.sink.split: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit721, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit731
  %.val.i722.sink = phi i64 [ %.val.i732, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit731 ], [ %.val.i722, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit721 ]
  %.sroa.4.0.ph = phi ptr [ %.sroa.4.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit731 ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit721 ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit731 ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit721 ]
  %i.apg = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.val1.i723 = load ptr, ptr %i.apg, align 8, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i723, i64 noundef %.val.i722.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit734

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit734: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit734.sink.split, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit721, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit731
  %.sroa.4.0 = phi ptr [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit721 ], [ %.sroa.4.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit731 ], [ %.sroa.4.0.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit734.sink.split ]
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit721 ], [ %.sroa.0.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit731 ], [ %.sroa.0.0.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit734.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  %i.aph = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.api = insertvalue { ptr, ptr } %i.aph, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.api

bb.ml:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit712, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit
  %.pn = phi { ptr, ptr } [ %i.dx, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECsbMXVmEvvZJf_5uu_dd.exit ], [ %i.aov, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit712 ] ; 2 uses
  %.sroa.0.1 = extractvalue { ptr, ptr } %.pn, 0  ; 2 uses
  %.sroa.4.1 = extractvalue { ptr, ptr } %.pn, 1  ; 2 uses
  %.val = load i64, ptr %i.bd, align 8, !range !184, !noundef !8 ; 2 uses
  %i.apj = icmp eq i64 %.val, 0
  br i1 %i.apj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit725, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %.val122 = load ptr, ptr %i.cb, align 8, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val122, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit725

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit725: ; preds = %bb.ml, %bb.mm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %.val.i726 = load i64, ptr %i.bg, align 8, !range !184, !alias.scope !449, !noundef !8 ; 2 uses
  %i.apk = icmp eq i64 %.val.i726, 0
  br i1 %i.apk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit728, label %bb.mn

bb.mn:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit725
  %i.apl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.val1.i727 = load ptr, ptr %i.apl, align 8, !alias.scope !449, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i727, i64 noundef %.val.i726, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !449
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit728

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit728: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit725, %bb.mn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %.val.i729 = load i64, ptr %i.bh, align 8, !range !184, !alias.scope !452, !noundef !8 ; 2 uses
  %i.apm = icmp eq i64 %.val.i729, 0
  br i1 %i.apm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit731, label %bb.mo

bb.mo:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit728
  %i.apn = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.val1.i730 = load ptr, ptr %i.apn, align 8, !alias.scope !452, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i730, i64 noundef %.val.i729, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !452
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit731

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit731: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit728, %bb.mo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %.val.i732 = load i64, ptr %i.bi, align 8, !range !184, !alias.scope !455, !noundef !8 ; 2 uses
  %i.apo = icmp eq i64 %.val.i732, 0
  br i1 %i.apo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit734, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit734.sink.split
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 2, 12) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  switch i64 %i.d, label %.lr.ph.i.i [
    i64 0, label %bb.c
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.t, %.lr.ph.i.i ] ; 4 uses
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.05.0.lcssa.i.i ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %.sroa.0.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !alias.scope !470, !noalias !471, !nonnull !8, !noundef !8
  %.sroa.3.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i, align 8, !alias.scope !470, !noalias !471, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i, i64 %2)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !474, !noalias !478 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i32 %i.f, 0
  %i.i = sub i64 %.sroa.3.0.i.i.i.i.i, %2
  %spec.select.i.i.i.i.i.i = select i1 %i.h, i64 %i.i, i64 %i.g ; 2 uses
  %i.j = icmp eq i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %i.j, label %bb.g, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.025.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.05.024.i.i = phi i64 [ %i.t, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.sroa.01.025.i.i, 1            ; 2 uses
  %i.l = add nuw nsw i64 %i.k, %.sroa.05.024.i.i  ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.d
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %i.l ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  %.sroa.0.0.in.i.i.i14.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0.0.i.i.i15.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i, align 8, !alias.scope !485, !noalias !486, !nonnull !8, !noundef !8
  %.sroa.3.0.in.i.i.i16.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.3.0.i.i.i17.i.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i, align 8, !alias.scope !485, !noalias !486, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i, i64 %2)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i22.i.i), !alias.scope !488, !noalias !492 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %i.r = sub i64 %.sroa.3.0.i.i.i17.i.i, %2
  %spec.select.i.i.i.i23.i.i = select i1 %i.q, i64 %i.r, i64 %i.p
  %i.s = icmp sgt i64 %spec.select.i.i.i.i23.i.i, 0
  %i.t = select i1 %i.s, i64 %.sroa.05.024.i.i, i64 %i.l, !unpredictable !8 ; 2 uses
  %i.u = sub nuw nsw i64 %.sroa.01.025.i.i, %i.k  ; 2 uses
  %i.v = icmp ugt i64 %i.u, 1
  br i1 %i.v, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %spec.select.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.w = add nuw nsw i64 %spec.select.i.i.i.i.lobit.i.i, %.sroa.05.0.lcssa.i.i ; 2 uses
  %i.x = icmp ule i64 %i.w, %i.d
  tail call void @llvm.assume(i1 %i.x)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0.i.i.ph = phi i64 [ %i.w, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.y = icmp ult i64 %i.d, 64051194700380388
  tail call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %0, align 8, !range !184, !alias.scope !493, !noalias !496, !noundef !8
  %i.aa = icmp eq i64 %i.d, %i.z
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #31, !noalias !496
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !493, !noalias !496
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = phi ptr [ %.pre, %bb.d ], [ %i.b, %bb.c ]
  %i.ac = getelementptr inbounds nuw [144 x i8], ptr %i.ab, i64 %.sroa.4.0.i.i.ph ; 7 uses
  %i.ad = icmp samesign ult i64 %.sroa.4.0.i.i.ph, %i.d
  br i1 %i.ad, label %bb.f, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsbMXVmEvvZJf_5uu_dd.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.af = sub nuw nsw i64 %i.d, %.sroa.4.0.i.i.ph
  %i.ag = mul nuw nsw i64 %i.af, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ac, i64 %i.ag, i1 false), !noalias !496
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsbMXVmEvvZJf_5uu_dd.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsbMXVmEvvZJf_5uu_dd.exit: ; preds = %bb.e, %bb.f
  store i64 -1, ptr %i.ac, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %1, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %2, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.ah = add nuw nsw i64 %i.d, 1
  store i64 %i.ah, ptr %i.c, align 8, !alias.scope !493, !noalias !496
  br label %bb.j

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ai = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.d
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(144) %i.e) #27
  store i64 -1, ptr %i.e, align 8
  store ptr %1, ptr %.sroa.0.0.in.i.i.i.i.i, align 8
  store i64 %2, ptr %.sroa.3.0.in.i.i.i.i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 2, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #30
  unreachable

bb.j:                                             ; preds = %bb.h, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsbMXVmEvvZJf_5uu_dd.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 2, 12) %2, double noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  switch i64 %i.d, label %.lr.ph.i.i [
    i64 0, label %.thread
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.t, %.lr.ph.i.i ] ; 4 uses
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.05.0.lcssa.i.i ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %.sroa.0.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !alias.scope !510, !noalias !511, !nonnull !8, !noundef !8
  %.sroa.3.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i, align 8, !alias.scope !510, !noalias !511, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i, i64 %2)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !514, !noalias !518 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i32 %i.f, 0
  %i.i = sub i64 %.sroa.3.0.i.i.i.i.i, %2
  %spec.select.i.i.i.i.i.i = select i1 %i.h, i64 %i.i, i64 %i.g ; 2 uses
  %i.j = icmp eq i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %i.j, label %bb.f, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.025.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.05.024.i.i = phi i64 [ %i.t, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.sroa.01.025.i.i, 1            ; 2 uses
  %i.l = add nuw nsw i64 %i.k, %.sroa.05.024.i.i  ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.d
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %i.l ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %.sroa.0.0.in.i.i.i14.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0.0.i.i.i15.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i, align 8, !alias.scope !525, !noalias !526, !nonnull !8, !noundef !8
  %.sroa.3.0.in.i.i.i16.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.3.0.i.i.i17.i.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i, align 8, !alias.scope !525, !noalias !526, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i, i64 %2)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i22.i.i), !alias.scope !528, !noalias !532 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %i.r = sub i64 %.sroa.3.0.i.i.i17.i.i, %2
  %spec.select.i.i.i.i23.i.i = select i1 %i.q, i64 %i.r, i64 %i.p
  %i.s = icmp sgt i64 %spec.select.i.i.i.i23.i.i, 0
  %i.t = select i1 %i.s, i64 %.sroa.05.024.i.i, i64 %i.l, !unpredictable !8 ; 2 uses
  %i.u = sub nuw nsw i64 %.sroa.01.025.i.i, %i.k  ; 2 uses
  %i.v = icmp ugt i64 %i.u, 1
  br i1 %i.v, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %spec.select.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.w = add nuw nsw i64 %spec.select.i.i.i.i.lobit.i.i, %.sroa.05.0.lcssa.i.i ; 2 uses
  %i.x = icmp ule i64 %i.w, %i.d
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp ult i64 %i.d, 64051194700380388
  tail call void @llvm.assume(i1 %i.y)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %.sroa.4.0.i.i.ph60 = phi i64 [ %i.w, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.z = load i64, ptr %0, align 8, !range !184, !alias.scope !533, !noalias !536, !noundef !8
  %i.aa = icmp eq i64 %i.d, %i.z
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #31, !noalias !536
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !533, !noalias !536
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %i.ab = phi ptr [ %.pre, %bb.c ], [ %i.b, %.thread ]
  %i.ac = getelementptr inbounds nuw [144 x i8], ptr %i.ab, i64 %.sroa.4.0.i.i.ph60 ; 13 uses
  %i.ad = icmp samesign ult i64 %.sroa.4.0.i.i.ph60, %i.d
  br i1 %i.ad, label %bb.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsbMXVmEvvZJf_5uu_dd.exit

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.af = sub nuw nsw i64 %i.d, %.sroa.4.0.i.i.ph60
  %i.ag = mul nuw nsw i64 %i.af, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ac, i64 %i.ag, i1 false), !noalias !536
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsbMXVmEvvZJf_5uu_dd.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsbMXVmEvvZJf_5uu_dd.exit: ; preds = %bb.d, %bb.e
  store i64 -1, ptr %i.ac, align 8
  %.sroa.040.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %1, ptr %.sroa.040.sroa.4.0..sroa_idx, align 8
  %.sroa.040.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %2, ptr %.sroa.040.sroa.5.0..sroa_idx, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 0, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i64 0, ptr %.sroa.643.0..sroa_idx, align 8
  %.sroa.845.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store i64 0, ptr %.sroa.845.0..sroa_idx, align 8
  %.sroa.1047.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  store i64 0, ptr %.sroa.1047.0..sroa_idx, align 8
  %.sroa.1249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  store i64 0, ptr %.sroa.1249.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  store i64 -1, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  store double %3, ptr %.sroa.21.0..sroa_idx, align 8
  %i.ah = add nuw nsw i64 %i.d, 1
  store i64 %i.ah, ptr %i.c, align 8, !alias.scope !533, !noalias !536
  br label %bb.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ai = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.d
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(144) %i.e) #27
  store i64 -1, ptr %i.e, align 8
  store ptr %1, ptr %.sroa.0.0.in.i.i.i.i.i, align 8
  store i64 %2, ptr %.sroa.3.0.in.i.i.i.i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.aj, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 0, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 0, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i64 0, ptr %.sroa.617.0..sroa_idx, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 0, ptr %.sroa.718.0..sroa_idx, align 8
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i64 -1, ptr %.sroa.819.0..sroa_idx, align 8
  %.sroa.920.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.920.0..sroa_idx, align 8
  %.sroa.1321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store double %3, ptr %.sroa.1321.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #30
  unreachable

bb.i:                                             ; preds = %bb.g, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsbMXVmEvvZJf_5uu_dd.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 2, 12) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  switch i64 %i.d, label %.lr.ph.i.i [
    i64 0, label %.thread
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.t, %.lr.ph.i.i ] ; 4 uses
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.05.0.lcssa.i.i ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %.sroa.0.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !alias.scope !550, !noalias !551, !nonnull !8, !noundef !8
  %.sroa.3.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i, align 8, !alias.scope !550, !noalias !551, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i, i64 %2)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !554, !noalias !558 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i32 %i.f, 0
  %i.i = sub i64 %.sroa.3.0.i.i.i.i.i, %2
  %spec.select.i.i.i.i.i.i = select i1 %i.h, i64 %i.i, i64 %i.g ; 2 uses
  %i.j = icmp eq i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %i.j, label %bb.f, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.025.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.05.024.i.i = phi i64 [ %i.t, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.sroa.01.025.i.i, 1            ; 2 uses
  %i.l = add nuw nsw i64 %i.k, %.sroa.05.024.i.i  ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.d
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %i.l ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %.sroa.0.0.in.i.i.i14.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0.0.i.i.i15.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i, align 8, !alias.scope !565, !noalias !566, !nonnull !8, !noundef !8
  %.sroa.3.0.in.i.i.i16.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.3.0.i.i.i17.i.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i, align 8, !alias.scope !565, !noalias !566, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i, i64 %2)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i22.i.i), !alias.scope !568, !noalias !572 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %i.r = sub i64 %.sroa.3.0.i.i.i17.i.i, %2
  %spec.select.i.i.i.i23.i.i = select i1 %i.q, i64 %i.r, i64 %i.p
  %i.s = icmp sgt i64 %spec.select.i.i.i.i23.i.i, 0
  %i.t = select i1 %i.s, i64 %.sroa.05.024.i.i, i64 %i.l, !unpredictable !8 ; 2 uses
  %i.u = sub nuw nsw i64 %.sroa.01.025.i.i, %i.k  ; 2 uses
  %i.v = icmp ugt i64 %i.u, 1
  br i1 %i.v, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %spec.select.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.w = add nuw nsw i64 %spec.select.i.i.i.i.lobit.i.i, %.sroa.05.0.lcssa.i.i ; 2 uses
  %i.x = icmp ule i64 %i.w, %i.d
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp ult i64 %i.d, 64051194700380388
  tail call void @llvm.assume(i1 %i.y)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %.sroa.4.0.i.i.ph60 = phi i64 [ %i.w, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.z = sitofp i64 %3 to double
  %i.aa = load i64, ptr %0, align 8, !range !184, !alias.scope !573, !noalias !576, !noundef !8
  %i.ab = icmp eq i64 %i.d, %i.aa
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #31, !noalias !576
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !573, !noalias !576
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %i.ac = phi ptr [ %.pre, %bb.c ], [ %i.b, %.thread ]
  %i.ad = getelementptr inbounds nuw [144 x i8], ptr %i.ac, i64 %.sroa.4.0.i.i.ph60 ; 13 uses
  %i.ae = icmp samesign ult i64 %.sroa.4.0.i.i.ph60, %i.d
  br i1 %i.ae, label %bb.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsbMXVmEvvZJf_5uu_dd.exit

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.ag = sub nuw nsw i64 %i.d, %.sroa.4.0.i.i.ph60
  %i.ah = mul nuw nsw i64 %i.ag, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.ad, i64 %i.ah, i1 false), !noalias !576
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsbMXVmEvvZJf_5uu_dd.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsbMXVmEvvZJf_5uu_dd.exit: ; preds = %bb.d, %bb.e
  store i64 -1, ptr %i.ad, align 8
  %.sroa.040.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %1, ptr %.sroa.040.sroa.4.0..sroa_idx, align 8
  %.sroa.040.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %2, ptr %.sroa.040.sroa.5.0..sroa_idx, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 0, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i64 0, ptr %.sroa.643.0..sroa_idx, align 8
  %.sroa.845.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store i64 0, ptr %.sroa.845.0..sroa_idx, align 8
  %.sroa.1047.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  store i64 0, ptr %.sroa.1047.0..sroa_idx, align 8
  %.sroa.1249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  store i64 0, ptr %.sroa.1249.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  store i64 -1, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  store double %i.z, ptr %.sroa.21.0..sroa_idx, align 8
  %i.ai = add nuw nsw i64 %i.d, 1
  store i64 %i.ai, ptr %i.c, align 8, !alias.scope !573, !noalias !576
  br label %bb.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.aj = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.d
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = sitofp i64 %3 to double
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(144) %i.e) #27
  store i64 -1, ptr %i.e, align 8
  store ptr %1, ptr %.sroa.0.0.in.i.i.i.i.i, align 8
  store i64 %2, ptr %.sroa.3.0.in.i.i.i.i.i, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.al, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 0, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 0, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i64 0, ptr %.sroa.617.0..sroa_idx, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 0, ptr %.sroa.718.0..sroa_idx, align 8
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i64 -1, ptr %.sroa.819.0..sroa_idx, align 8
  %.sroa.920.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.920.0..sroa_idx, align 8
  %.sroa.1321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store double %i.ak, ptr %.sroa.1321.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #30
  unreachable

bb.i:                                             ; preds = %bb.g, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsbMXVmEvvZJf_5uu_dd.exit
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsbMXVmEvvZJf_5uu_dd(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i8, ptr %i.b, align 8, !range !242, !noundef !8
  switch i8 %i.c, label %default.unreachable7 [
    i8 0, label %bb.b
    i8 1, label %bb.k
    i8 2, label %bb.c
  ]

default.unreachable7:                             ; preds = %bb.e, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.d = load i64, ptr %1, align 8, !range !22, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  store i64 0, ptr %1, align 8
  %i.g = trunc nuw i64 %i.d to i1
  br i1 %i.g, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %0, align 8
  store i8 1, ptr %i.b, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.h = tail call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #27
  %.pre = load i8, ptr %i.b, align 8, !range !242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = load ptr, ptr %0, align 8                ; 3 uses
  store ptr %i.i, ptr %i.a, align 8
  store ptr %i.h, ptr %0, align 8
  store i8 1, ptr %i.b, align 8
  switch i8 %.pre, label %default.unreachable7 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.j
  ], !prof !578

bb.f:                                             ; preds = %.thread, %bb.e
  tail call void @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %0, ptr noundef nonnull @_RINvNtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazy7destroyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB19_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEECsbMXVmEvvZJf_5uu_dd) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEEECsbMXVmEvvZJf_5uu_dd.exit

bb.g:                                             ; preds = %bb.e
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEEECsbMXVmEvvZJf_5uu_dd.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !579
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEEECsbMXVmEvvZJf_5uu_dd.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #31
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEEECsbMXVmEvvZJf_5uu_dd.exit

bb.j:                                             ; preds = %bb.e
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #30
  unreachable

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEEECsbMXVmEvvZJf_5uu_dd.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.c, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEEECsbMXVmEvvZJf_5uu_dd.exit
  %.sroa.02.0 = phi ptr [ %0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEEECsbMXVmEvvZJf_5uu_dd.exit ], [ null, %bb.c ], [ %0, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !8 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit, label %bb.b

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !592, !nonnull !8, !noundef !8
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !592
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit
end_hunk_0
begin_hunk_1_@_RINvNtNtCs2vKOLqTMYjT_3std3sys9backtrace28___rust_begin_short_backtraceNCNvNtCsbMXVmEvvZJf_5uu_dd8progress16gen_prog_updater0uEB1d_:bb.a
  %i.nt = and i64 %i.ns, 3
  switch i64 %i.nt, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbMXVmEvvZJf_5uu_dd.exit4.i.i.i.i
    i64 3, label %bb.ea
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbMXVmEvvZJf_5uu_dd.exit4.i.i.i.i
    i64 1, label %bb.eb
  ], !prof !113

bb.ea:                                            ; preds = %bb.dz
  %i.nu = icmp ult ptr %i.nr, inttoptr (i64 188978561024 to ptr)
  %i.nv = and i64 %i.ns, 1095216660480
  %i.nw = icmp ne i64 %i.nv, 1095216660480
  call void @llvm.assume(i1 %i.nu)
  call void @llvm.assume(i1 %i.nw)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbMXVmEvvZJf_5uu_dd.exit4.i.i.i.i

bb.eb:                                            ; preds = %bb.dz
  %i.nx = getelementptr i8, ptr %i.nr, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nx) ]
  %i.ny = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.nx, ptr %i.ny, align 8, !alias.scope !1106, !noalias !1103
  store i8 3, ptr %i.b, align 8, !alias.scope !1106, !noalias !1103
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ny) #27, !noalias !1103
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbMXVmEvvZJf_5uu_dd.exit4.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbMXVmEvvZJf_5uu_dd.exit4.i.i.i.i: ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1103
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef 1) #27, !noalias !1098
  br label %_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate14print_io_lines.exit.i.i.i

_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate14print_io_lines.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbMXVmEvvZJf_5uu_dd.exit4.i.i.i.i, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1098
  br label %_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate17print_final_stats.exit.i.i

_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate17print_final_stats.exit.i.i: ; preds = %_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate14print_io_lines.exit.i.i.i, %bb.dx, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !851
  br label %_RNvYNCNvNtCsbMXVmEvvZJf_5uu_dd8progress16gen_prog_updater0INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceuE9call_onceB8_.exit

bb.ec:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1109
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.a, align 8, !noalias !1109
  %i.nz = call fastcc { ptr, ptr } @_RINvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB3_10ProgUpdate15write_prog_lineNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StderrEB5_(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.ad, ptr noalias nofree noundef align 8 dereferenceable(8) %i.a, i1 noundef zeroext true) #27, !noalias !851 ; 2 uses
  %i.oa = extractvalue { ptr, ptr } %i.nz, 0      ; 3 uses
  %i.ob = extractvalue { ptr, ptr } %i.nz, 1      ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.oa, null
  br i1 %.not.i.i.i, label %_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate17reprint_prog_line.exit.i.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ob) ]
  %i.oc = load ptr, ptr %i.ob, align 8, !invariant.load !8, !noalias !1109 ; 2 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.oc, null
  br i1 %.not.i.i4.i.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void %i.oc(ptr noundef nonnull %i.oa) #33, !noalias !1109, !inline_history !1112
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.oe = load i64, ptr %i.od, align 8, !range !184, !invariant.load !8, !noalias !1109 ; 2 uses
  %i.of = icmp eq i64 %i.oe, 0
  br i1 %i.of, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsbMXVmEvvZJf_5uu_dd.exit6.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i5.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i5.i.i.i: ; preds = %bb.ef
  %i.og = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %i.oh = load i64, ptr %i.og, align 8, !range !601, !invariant.load !8, !noalias !1109
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oa, i64 noundef %i.oe, i64 noundef range(i64 1, -9223372036854775807) %i.oh) #27, !noalias !1109
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsbMXVmEvvZJf_5uu_dd.exit6.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsbMXVmEvvZJf_5uu_dd.exit6.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i5.i.i.i, %bb.ef
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef 1) #27, !noalias !1109
  br label %_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate17reprint_prog_line.exit.i.i

_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate17reprint_prog_line.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsbMXVmEvvZJf_5uu_dd.exit6.i.i.i, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1109
  br label %bb.eg

bb.eg:                                            ; preds = %_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate17reprint_prog_line.exit.i.i, %bb.dv, %bb.du
  %.sroa.0.1.i.i = phi i8 [ 1, %_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate17reprint_prog_line.exit.i.i ], [ %.sroa.0.0.i.i, %bb.du ], [ 0, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !851
  br label %bb.w

_RNvYNCNvNtCsbMXVmEvvZJf_5uu_dd8progress16gen_prog_updater0INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceuE9call_onceB8_.exit: ; preds = %.loopexit.i.i, %_RNvMNtCsbMXVmEvvZJf_5uu_dd8progressNtB2_10ProgUpdate17print_final_stats.exit.i.i
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCNvNtCsbMXVmEvvZJf_5uu_dd8progress16gen_prog_updater0EBH_(i64 %.val.i.i, ptr %.val5.i.i) #27, !noalias !845
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !833
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtNtCsh036I4OHgIr_6uucore4mods2io16read_and_discardNtNtCs2vKOLqTMYjT_3std2fs4FileECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 6 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 6 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  %.not = icmp eq i64 %..i, 0
  br i1 %.not, label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  %..i14.i.i = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 range(i64 0, -1) 8) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1119
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, i64 0, ptr nonnull inttoptr (i64 1 to ptr), i64 noundef %..i14.i.i, i64 noundef 1, i64 noundef 1) #27, !noalias !1119
  %i.k = load i64, ptr %i.f, align 8, !range !22, !noalias !1119, !noundef !8
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %.thread, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbMXVmEvvZJf_5uu_dd.exit.i

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1119
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit18

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbMXVmEvvZJf_5uu_dd.exit.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !1119, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1119
  store ptr %i.n, ptr %i.i, align 8, !alias.scope !1119
  %i.o = icmp sgt i64 %..i14.i.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i.i, ptr %i.h, align 8, !alias.scope !1119
  br label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit

_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit: ; preds = %bb.a, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbMXVmEvvZJf_5uu_dd.exit.i
  %.not77 = icmp eq i64 %1, 0
  br i1 %.not77, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.ak
  %.sroa.05.074 = phi i64 [ 0, %.lr.ph ], [ %.sroa.05.1, %bb.ak ] ; 4 uses
  %i.aa = sub nuw i64 %1, %.sroa.05.074
  %..i14 = call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.aa) ; 2 uses
  store i64 0, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %0, ptr %i.g, align 8
  store i64 %..i14, ptr %i.p, align 8
  store i64 %..i14, ptr %i.q, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  %i.ab = load i64, ptr %i.h, align 8, !range !184, !alias.scope !1123, !noalias !1120, !noundef !8 ; 3 uses
  %i.ac = icmp samesign ult i64 %i.ab, 32
  br i1 %i.ac, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.ad = call fastcc { i64, ptr } @_RINvNvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #27 ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = extractvalue { i64, ptr } %i.ad, 1      ; 2 uses
  %i.ag = trunc nuw i64 %i.ae to i1
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = ptrtoint ptr %i.af to i64
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ai = icmp eq ptr %i.af, null
  br i1 %i.ai, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread29.thread, label %._crit_edge88.i

._crit_edge88.i:                                  ; preds = %bb.f
  %.pre.pre.i = load i64, ptr %i.j, align 8, !alias.scope !1123, !noalias !1120
  %.pre81.pre.i = load i64, ptr %i.h, align 8, !range !184, !alias.scope !1123, !noalias !1120
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge88.i, %bb.c
  %.ph = phi i64 [ %i.ab, %bb.c ], [ %.pre81.pre.i, %._crit_edge88.i ]
  %.ph187 = phi i64 [ 0, %bb.c ], [ %.pre.pre.i, %._crit_edge88.i ]
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.y
  %i.aj = phi i64 [ %i.be, %bb.y ], [ %.ph, %.preheader ] ; 3 uses
  %i.ak = phi i64 [ %i.dd, %bb.y ], [ %.ph187, %.preheader ] ; 2 uses
  %.sroa.037.3.i = phi i64 [ %.sroa.037.4.i, %bb.y ], [ 8192, %.preheader ] ; 5 uses
  %i.al = icmp eq i64 %i.ak, %i.aj
  %i.am = icmp eq i64 %i.aj, %i.ab
  %or.cond46.i = and i1 %i.am, %i.al
  br i1 %or.cond46.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %bb.g
  %i.an = phi i64 [ %.pre83.i, %._crit_edge.i ], [ %i.aj, %bb.g ] ; 6 uses
  %i.ao = phi i64 [ %.pre82.i, %._crit_edge.i ], [ %i.ak, %bb.g ] ; 8 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i64 %i.ao, %i.an
  %.pre84.i = load ptr, ptr %i.i, align 8, !alias.scope !1123, !noalias !1120 ; 2 uses
  br i1 %i.aq, label %bb.m, label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.ar = call fastcc { i64, ptr } @_RINvNvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #27 ; 2 uses
  %i.as = extractvalue { i64, ptr } %i.ar, 0
  %i.at = extractvalue { i64, ptr } %i.ar, 1      ; 2 uses
  %i.au = trunc nuw i64 %i.as to i1
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.av = ptrtoint ptr %i.at to i64
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.aw = icmp eq ptr %i.at, null
  %.pre82.i = load i64, ptr %i.j, align 8, !alias.scope !1123, !noalias !1120 ; 3 uses
  br i1 %i.aw, label %bb.l, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k
  %.pre83.i = load i64, ptr %i.h, align 8, !range !184, !alias.scope !1123, !noalias !1120
  br label %bb.h

bb.l:                                             ; preds = %bb.k
  %i.ax = icmp sgt i64 %.pre82.i, -1
  call void @llvm.assume(i1 %i.ax)
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread29

bb.m:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.ay = add nuw i64 %i.an, 32
  %i.az = shl nuw i64 %i.an, 1
  %..i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ay, i64 range(i64 0, -1) %i.az) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1131
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, i64 %i.an, ptr %.pre84.i, i64 noundef %..i.i.i.i, i64 noundef 1, i64 noundef 1) #27, !noalias !1131
  %i.ba = load i64, ptr %i.d, align 8, !range !22, !noalias !1131, !noundef !8
  %i.bb = trunc nuw i64 %i.ba to i1
  br i1 %i.bb, label %bb.n, label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1131
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread

_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit.i: ; preds = %bb.m
  %i.bc = load ptr, ptr %i.r, align 8, !noalias !1131, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1131
  store ptr %i.bc, ptr %i.i, align 8, !alias.scope !1132, !noalias !1120
  %i.bd = icmp sgt i64 %..i.i.i.i, -1
  call void @llvm.assume(i1 %i.bd)
  store i64 %..i.i.i.i, ptr %i.h, align 8, !alias.scope !1132, !noalias !1120
  %.pre.i.i = sub nuw nsw i64 %..i.i.i.i, %i.an
  %3 = icmp samesign ugt i64 %.pre.i.i, 31
  call void @llvm.assume(i1 %3)
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit.i, %bb.h
  %i.be = phi i64 [ %i.an, %bb.h ], [ %..i.i.i.i, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit.i ] ; 2 uses
  %i.bf = phi ptr [ %.pre84.i, %bb.h ], [ %i.bc, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsbMXVmEvvZJf_5uu_dd.exit.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ao
  %i.bh = sub nsw i64 %i.be, %i.ao                ; 2 uses
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.037.3.i, i64 %i.bh) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1133
  store ptr %i.bg, ptr %i.e, align 8, !noalias !1133
  store i64 %..i.i, ptr %i.s, align 8, !noalias !1133
  store i64 0, ptr %i.t, align 8, !noalias !1133
  store i8 0, ptr %i.u, align 8, !noalias !1133
  %.promoted.i = load i64, ptr %i.q, align 8, !alias.scope !1134, !noalias !1137 ; 2 uses
  %i.bi = icmp eq i64 %.promoted.i, 0
  br i1 %i.bi, label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.thread.i, label %.lr.ph.i

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.thread.i: ; preds = %bb.o
  store i64 %i.ao, ptr %i.j, align 8, !alias.scope !1123, !noalias !1120
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread34

.lr.ph.i:                                         ; preds = %bb.o
  %.val15.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1120, !noalias !1123, !nonnull !8, !align !1139 ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit.i, %.lr.ph.i
  %i.bj = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.cg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit.i ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  %i.bk = load i64, ptr %i.s, align 8, !alias.scope !1141, !noalias !1142, !noundef !8
  %i.bl = load i64, ptr %i.t, align 8, !alias.scope !1141, !noalias !1142, !noundef !8 ; 4 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = icmp ult i64 %i.bj, %i.bm
  br i1 %i.bn, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = call noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %.val15.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #27, !noalias !1142
  %i.bp = load i64, ptr %i.t, align 8, !alias.scope !1141, !noalias !1142, !noundef !8 ; 2 uses
  %.neg.i.i = add i64 %i.bl, %i.bj
  %i.bq = sub i64 %.neg.i.i, %i.bp
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.i

bb.r:                                             ; preds = %bb.p
  %i.br = load i8, ptr %i.u, align 8, !range !44, !alias.scope !1141, !noalias !1142, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1143
  %i.bs = load ptr, ptr %i.e, align 8, !alias.scope !1141, !noalias !1142, !nonnull !8, !noundef !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bl ; 2 uses
  %i.bu = trunc nuw i8 %i.br to i1
  store ptr %i.bt, ptr %i.c, align 8, !noalias !1143
  store i64 %i.bj, ptr %i.v, align 8, !noalias !1143
  store i64 0, ptr %i.w, align 8, !noalias !1143
  store i8 0, ptr %i.x, align 8, !noalias !1143
  br i1 %i.bu, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = call noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %.val15.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #27, !noalias !1143 ; 2 uses
  %i.bw = load i8, ptr %i.x, align 8, !range !44, !noalias !1143, !noundef !8
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = load i64, ptr %i.w, align 8, !noalias !1143, !noundef !8 ; 2 uses
  br i1 %i.bx, label %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCsbMXVmEvvZJf_5uu_dd.exit.i.i, label %bb.u

bb.t:                                             ; preds = %bb.r
  store i8 1, ptr %i.x, align 8, !noalias !1143
  %i.bz = call noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %.val15.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #27, !noalias !1143
  %i.ca = load i64, ptr %i.w, align 8, !noalias !1143, !noundef !8
  br label %bb.u

bb.u:                                             ; preds = %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCsbMXVmEvvZJf_5uu_dd.exit.i.i, %bb.t, %bb.s
  %.sroa.09.0.i.i = phi i64 [ %i.ca, %bb.t ], [ %i.by, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCsbMXVmEvvZJf_5uu_dd.exit.i.i ], [ %i.by, %bb.s ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.bz, %bb.t ], [ %i.bv, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCsbMXVmEvvZJf_5uu_dd.exit.i.i ], [ %i.bv, %bb.s ]
  %i.cb = add i64 %.sroa.09.0.i.i, %i.bl          ; 2 uses
  store i64 %i.cb, ptr %i.t, align 8, !alias.scope !1141, !noalias !1142
  %i.cc = sub i64 %i.bj, %.sroa.09.0.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1143
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.i

_RNvXsd_NtNtCs6JMX4GRUq9U_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCsbMXVmEvvZJf_5uu_dd.exit.i.i: ; preds = %bb.s
  %i.cd = sub nuw i64 %i.bm, %i.bj
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bj
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ce, i8 0, i64 range(i64 0, -9223372036854775808) %i.cd, i1 false), !alias.scope !1144, !noalias !1149
  store i8 1, ptr %i.u, align 8, !alias.scope !1141, !noalias !1142
  br label %bb.u

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.i: ; preds = %bb.u, %bb.q
  %i.cf = phi i64 [ %i.bp, %bb.q ], [ %i.cb, %bb.u ] ; 2 uses
  %i.cg = phi i64 [ %i.bq, %bb.q ], [ %i.cc, %bb.u ] ; 5 uses
  %.sroa.0.0.i47.i = phi ptr [ %i.bo, %bb.q ], [ %.sroa.01.0.i.i, %bb.u ] ; 7 uses
  %i.ch = ptrtoint ptr %.sroa.0.0.i47.i to i64    ; 5 uses
  %.not45.i = icmp eq ptr %.sroa.0.0.i47.i, null
  br i1 %.not45.i, label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.i.loopexit, label %bb.v

bb.v:                                             ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.i
  %i.ci = and i64 %i.ch, 3
  switch i64 %i.ci, label %.unreachabledefault [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split58.i
    i64 1, label %.split57.i
  ], !prof !113

.unreachabledefault:                              ; preds = %bb.v
  unreachable

default.unreachable:                              ; preds = %bb.al, %bb.ae
  unreachable

.split.i:                                         ; preds = %bb.v
  %i.cj = lshr i64 %i.ch, 32
  %i.ck = trunc nuw i64 %i.cj to i32
  %i.cl = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #27, !noalias !1133
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !1133, !nonnull !8, !noundef !8
  %i.co = call noundef zeroext i1 %i.cn(i32 noundef %i.ck) #27, !noalias !1133, !inline_history !1151
  br i1 %i.co, label %.thread61.i, label %.split..thread_crit_edge.i

.split..thread_crit_edge.i:                       ; preds = %.split.i
  store i64 %i.cg, ptr %i.q, align 8
  %.pre85.i = load i64, ptr %i.t, align 8, !noalias !1133
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit

.split58.i:                                       ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i47.i, i64 16
  %i.cq = load i8, ptr %i.cp, align 8, !range !1152, !noalias !1133, !noundef !8
  %i.cr = icmp eq i8 %i.cq, 35
  br i1 %i.cr, label %.thread61.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.loopexit

.split57.i:                                       ; preds = %bb.v
  %i.cs = getelementptr i8, ptr %.sroa.0.0.i47.i, i64 31
  %i.ct = load i8, ptr %i.cs, align 8, !range !1152, !noalias !1133, !noundef !8
  %i.cu = icmp eq i8 %i.ct, 35
  br i1 %i.cu, label %bb.x, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.loopexit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.v
  %i.cv = lshr i64 %i.ch, 32
  %i.cw = icmp ult ptr %.sroa.0.0.i47.i, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.cv to i8
  %spec.select.i.i.i.i = select i1 %i.cw, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.cx = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.cx)
  %i.cy = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.cy, label %bb.w, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.loopexit

.thread61.i:                                      ; preds = %.split58.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1153
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit.i

bb.w:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1156
  %i.cz = and i64 %i.ch, 1095216660480
  %i.da = icmp ne i64 %i.cz, 1095216660480
  call void @llvm.assume(i1 %i.cw)
  call void @llvm.assume(i1 %i.da)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit.i

bb.x:                                             ; preds = %.split57.i
  %i.db = getelementptr i8, ptr %.sroa.0.0.i47.i, i64 -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1158
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.db) ]
  store ptr %i.db, ptr %i.y, align 8, !alias.scope !1160, !noalias !1158
  store i8 3, ptr %i.b, align 8, !alias.scope !1160, !noalias !1158
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #27, !noalias !1158
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit.i: ; preds = %bb.x, %bb.w, %.thread61.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1158
  %i.dc = icmp eq i64 %i.cg, 0
  br i1 %i.dc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.loopexit_crit_edge.i, label %bb.p

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.loopexit_crit_edge.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit.i
  store i64 0, ptr %i.q, align 8
  %.pre86.pre.i = load i64, ptr %i.t, align 8, !noalias !1133
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.i

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.i.loopexit: ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.i
  store i64 %i.cg, ptr %i.q, align 8
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.i

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.i: ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.i.loopexit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.loopexit_crit_edge.i
  %.pre86.i = phi i64 [ %.pre86.pre.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit._RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.loopexit_crit_edge.i ], [ %i.cf, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.i.loopexit ] ; 3 uses
  %.pre87.i = load i8, ptr %i.u, align 8, !range !44, !noalias !1133
  %i.dd = add i64 %.pre86.i, %i.ao                ; 3 uses
  store i64 %i.dd, ptr %i.j, align 8, !alias.scope !1123, !noalias !1120
  %i.de = icmp eq i64 %.pre86.i, 0
  br i1 %i.de, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read19default_read_to_endINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsbMXVmEvvZJf_5uu_dd.exit.thread34, label %bb.z

bb.y:                                             ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.sroa.037.4.i = phi i64 [ -1, %bb.ac ], [ %i.di, %bb.ab ], [ %.sroa.037.3.i, %bb.aa ], [ -1, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1133
  br label %bb.g

bb.z:                                             ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB7_4read4Read8read_bufCsbMXVmEvvZJf_5uu_dd.exit.thread.i
  %i.df = trunc nuw i8 %.pre87.i to i1
  br i1 %i.df, label %bb.aa, label %bb.y

bb.aa:                                            ; preds = %bb.z
  %i.dg = icmp uge i64 %i.bh, %.sroa.037.3.i
  %i.dh = icmp eq i64 %.pre86.i, %..i.i
  %or.cond.i = and i1 %i.dg, %i.dh
  br i1 %or.cond.i, label %bb.ab, label %bb.y

end_hunk_1
begin_hunk_2_@_RNvCsbMXVmEvvZJf_5uu_dd6uu_app:_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECsbMXVmEvvZJf_5uu_dd.exit
  store i32 0, ptr %i.z, align 8, !alias.scope !1827
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1827
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !1827
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1827
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !1827
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1827
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.414.0..sroa_idx.i, align 8, !alias.scope !1827
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1827
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx.i, align 8, !alias.scope !1827
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1827
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.420.0..sroa_idx.i, align 8, !alias.scope !1827
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1827
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.423.0..sroa_idx.i, align 8, !alias.scope !1827
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1827
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.426.0..sroa_idx.i, align 8, !alias.scope !1827
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store i64 0, ptr %.sroa.527.0..sroa_idx.i, align 8, !alias.scope !1827
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  store i32 -1, ptr %i.aa, align 8, !alias.scope !1827
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  store ptr null, ptr %i.ab, align 8, !alias.scope !1827
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store i64 0, ptr %i.ac, align 8, !alias.scope !1827
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.429.0..sroa_idx.i, align 8, !alias.scope !1827
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1827
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.432.0..sroa_idx.i, align 8, !alias.scope !1827
  %.sroa.533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store i64 0, ptr %i.a, align 8, !alias.scope !1827
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1827
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.435.0..sroa_idx.i, align 8, !alias.scope !1827
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  store i64 0, ptr %.sroa.536.0..sroa_idx.i, align 8, !alias.scope !1827
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 628
  store i32 -1, ptr %i.ae, align 4, !alias.scope !1827
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store i64 0, ptr %i.af, align 8, !alias.scope !1827
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.440.0..sroa_idx.i, align 8, !alias.scope !1827
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.541.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1827
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.443.0..sroa_idx.i, align 8, !alias.scope !1827
  %.sroa.544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.544.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1827
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.446.0..sroa_idx.i, align 8, !alias.scope !1827
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  store i64 0, ptr %.sroa.547.0..sroa_idx.i, align 8, !alias.scope !1827
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  store i64 -2, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !1827
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  store ptr null, ptr %i.ag, align 8, !alias.scope !1827
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %i.ah, align 8, !alias.scope !1827
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %i.ai, align 8, !alias.scope !1827
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  store i64 0, ptr %i.aj, align 8, !alias.scope !1827
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.459.0..sroa_idx.i, align 8, !alias.scope !1827
  %.sroa.560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.560.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1827
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1827
  %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  store i64 0, ptr %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1827
  store ptr @98, ptr %i.s, align 8
  store i64 8, ptr %i.t, align 8
  store i64 1, ptr %i.ad, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 -1, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.a) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %i.g, i64 712, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  %.val.i19 = load i64, ptr %i.c, align 8, !range !184, !alias.scope !1830, !noundef !8 ; 2 uses
  %i.ak = icmp eq i64 %.val.i19, 0
  br i1 %i.ak, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit, label %bb.a

bb.a:                                             ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECsbMXVmEvvZJf_5uu_dd.exit
  %.val1.i = load ptr, ptr %i.m, align 8, !alias.scope !1830, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i19, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !1830
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit: ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECsbMXVmEvvZJf_5uu_dd.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef ptr @_RNvCsbMXVmEvvZJf_5uu_dd7dd_copy(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [48 x i8], align 16               ; 7 uses
  %i.c = alloca [120 x i8], align 8               ; 18 uses
  %i.d = alloca [24 x i8], align 8                ; 17 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [96 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [96 x i8], align 8                ; 9 uses
  %i.j = alloca [120 x i8], align 8               ; 15 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 11 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 3 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 2 uses
  %i.v = alloca [8 x i8], align 8                 ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 10 uses
  %i.x = alloca [1 x i8], align 1                 ; 3 uses
  %i.y = alloca [1 x i8], align 1                 ; 3 uses
  %i.z = alloca [1 x i8], align 1                 ; 3 uses
  %i.aa = alloca [32 x i8], align 16              ; 7 uses
  %i.ab = alloca [48 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [40 x i8], align 8               ; 4 uses
  %i.af = alloca [96 x i8], align 16              ; 3 uses
  %i.ag = alloca [96 x i8], align 16              ; 11 uses
  %i.ah = alloca [48 x i8], align 16              ; 11 uses
  %i.ai = alloca [24 x i8], align 8               ; 20 uses
  %i.aj = alloca [40 x i8], align 8               ; 34 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [8 x i8], align 8                ; 5 uses
  %i.ao = alloca [24 x i8], align 8               ; 10 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [32 x i8], align 8               ; 4 uses
  %i.ar = alloca [40 x i8], align 8               ; 5 uses
  %i.as = alloca [24 x i8], align 8               ; 9 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aa, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.av = tail call { i64, i32 } @_RNvMNtCs2vKOLqTMYjT_3std4timeNtB2_7Instant3now() #27 ; 2 uses
  %i.aw = extractvalue { i64, i32 } %i.av, 0      ; 3 uses
  %i.ax = extractvalue { i64, i32 } %i.av, 1      ; 3 uses
  store i64 %i.aw, ptr %i.at, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %i.ax, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !8, !align !59, !noundef !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !8 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !8, !align !59, !noundef !8 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 120 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !8 ; 5 uses
  %i.bh = icmp eq i64 %i.bc, 0
  br i1 %i.bh, label %_RNvCs23vzI9HMERv_3gcd12binary_usize.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bi = icmp eq i64 %i.bg, 0
  br i1 %i.bi, label %_RNvCs23vzI9HMERv_3gcd12binary_usize.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bj = or i64 %i.bg, %i.bc
  %i.bk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bj, i1 true) ; 3 uses
  %i.bl = lshr i64 %i.bc, %i.bk                   ; 2 uses
  %i.bm = lshr i64 %i.bg, %i.bk
  %i.bn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bl, i1 false)
  %i.bo = and i64 %i.bn, 63
  %i.bp = lshr i64 %i.bl, %i.bo
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.010.0.i.i = phi i64 [ %i.bm, %bb.c ], [ %i.bt, %bb.d ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.bp, %bb.c ], [ %spec.select24.i.i, %bb.d ] ; 2 uses
  %i.bq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.010.0.i.i, i1 false)
  %i.br = and i64 %i.bq, 63
  %i.bs = lshr i64 %.sroa.010.0.i.i, %i.br        ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 %i.bs)
  %spec.select24.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i, i64 %i.bs) ; 3 uses
  %i.bt = sub nuw i64 %spec.select.i.i, %spec.select24.i.i ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  %i.bv = shl i64 %spec.select24.i.i, %i.bk
  br label %_RNvCs23vzI9HMERv_3gcd12binary_usize.exit.i

_RNvCs23vzI9HMERv_3gcd12binary_usize.exit.i:      ; preds = %bb.e, %bb.a
  %.sroa.020.0.i.i = phi i64 [ %i.bv, %bb.e ], [ %i.bg, %bb.a ] ; 2 uses
  %i.bw = icmp eq i64 %.sroa.020.0.i.i, 0
  br i1 %i.bw, label %bb.f, label %_RNvCs23vzI9HMERv_3gcd12binary_usize.exit.thread.i

_RNvCs23vzI9HMERv_3gcd12binary_usize.exit.thread.i: ; preds = %_RNvCs23vzI9HMERv_3gcd12binary_usize.exit.i, %bb.b
  %.sroa.020.0.i2.i = phi i64 [ %.sroa.020.0.i.i, %_RNvCs23vzI9HMERv_3gcd12binary_usize.exit.i ], [ %i.bc, %bb.b ]
  %i.bx = udiv i64 %i.bc, %.sroa.020.0.i2.i
  %i.by = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bx, i64 %i.bg) ; 2 uses
  %i.bz = extractvalue { i64, i1 } %i.by, 0
  %i.ca = extractvalue { i64, i1 } %i.by, 1
  br i1 %i.ca, label %bb.g, label %_RNvCsbMXVmEvvZJf_5uu_dd10calc_bsize.exit, !prof !33

bb.f:                                             ; preds = %_RNvCs23vzI9HMERv_3gcd12binary_usize.exit.i
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #30
  unreachable

bb.g:                                             ; preds = %_RNvCs23vzI9HMERv_3gcd12binary_usize.exit.thread.i
  br label %_RNvCsbMXVmEvvZJf_5uu_dd10calc_bsize.exit

_RNvCsbMXVmEvvZJf_5uu_dd10calc_bsize.exit:        ; preds = %_RNvCs23vzI9HMERv_3gcd12binary_usize.exit.thread.i, %bb.g
  %.sroa.0.0.i = phi i64 [ -1, %bb.g ], [ %i.bz, %_RNvCs23vzI9HMERv_3gcd12binary_usize.exit.thread.i ] ; 6 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1833
  %i.cb = tail call noundef align 128 dereferenceable_or_null(512) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 512, i64 noundef range(i64 1, 129) 128) #27, !noalias !1833 ; 19 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.h, label %bb.i, !prof !33

bb.h:                                             ; preds = %_RNvCsbMXVmEvvZJf_5uu_dd10calc_bsize.exit
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 512) #32, !noalias !1833
  unreachable

bb.i:                                             ; preds = %_RNvCsbMXVmEvvZJf_5uu_dd10calc_bsize.exit
  %.sroa.543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 128
  %.sroa.745.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 256
  store i32 0, ptr %.sroa.745.0..sroa_idx.i, align 128, !noalias !1838
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 260
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !1838
  %.sroa.947.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 264
  store i64 0, ptr %.sroa.947.0..sroa_idx.i, align 8, !noalias !1838
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false), !noalias !1838
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(16) %.sroa.543.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !1838
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.0..sroa_idx.i, align 16, !noalias !1838
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 280
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !1838
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !1838
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 304
  store i64 0, ptr %.sroa.14.0..sroa_idx.i, align 16, !noalias !1838
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 312
  store i8 1, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !1838
  %.sroa.1648.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 384
  store i64 1, ptr %.sroa.1648.0..sroa_idx.i, align 128, !noalias !1838
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 392
  store i64 1, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !1838
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 400
  store i8 0, ptr %.sroa.18.0..sroa_idx.i, align 16, !noalias !1838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.cd = load ptr, ptr %i.az, align 8, !nonnull !8, !align !59, !noundef !8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 166
  %i.cf = load i8, ptr %i.ce, align 2, !range !921, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  store i64 -1, ptr %i.cg, align 8
  store i64 0, ptr %i.ab, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i8 0, ptr %i.ch, align 8
  %i.ci = load atomic i64, ptr @_RNvNCNvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8, !noalias !1839 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1839
  call void @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 14) #27, !noalias !1839
  %i.ck = load i64, ptr %i.t, align 8, !range !7, !noalias !1839, !noundef !8 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.ck, -1
  br i1 %.not.i.i.i, label %_RNCNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCNvNtCsbMXVmEvvZJf_5uu_dd8progress16gen_prog_updater0uE00B16_.exit.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cl = add i64 %i.ci, -1
  br label %bb.t

bb.l:                                             ; preds = %bb.j
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.45.0.copyload.i.i.i = load ptr, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8, !noalias !1839, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.56.0.copyload.i.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i.i, align 8, !noalias !1839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1848
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.45.0.copyload.i.i.i, i64 noundef %.sroa.56.0.copyload.i.i.i) #27, !noalias !1848
  %i.cm = load i64, ptr %i.s, align 8, !range !22, !noalias !1848, !noundef !8
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1848
  br label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !1848, !nonnull !8, !noundef !8 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !1848, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1848
  switch i64 %i.cr, label %thread-pre-split.i.i.i.i.i [
    i64 0, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.cs = load i8, ptr %i.cp, align 1, !alias.scope !1851, !noalias !1854, !noundef !8 ; 2 uses
  switch i8 %i.cs, label %bb.p [
    i8 43, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i
    i8 45, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i:                       ; preds = %bb.n
  %.pr.i.i.i.i.i = load i8, ptr %i.cp, align 1, !alias.scope !1851, !noalias !1854
  br label %bb.p

bb.p:                                             ; preds = %thread-pre-split.i.i.i.i.i, %bb.o
  %i.ct = phi i8 [ %.pr.i.i.i.i.i, %thread-pre-split.i.i.i.i.i ], [ %i.cs, %bb.o ]
  %cond.i.i.i.i.i = icmp eq i8 %i.ct, 43          ; 2 uses
  %i.cu = sext i1 %cond.i.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i.i = add nsw i64 %i.cr, %i.cu ; 4 uses
  %.sroa.0.0.idx.i.i.i.i.i = zext i1 %cond.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.sroa.0.0.idx.i.i.i.i.i ; 2 uses
  %i.cv = icmp samesign ult i64 %.sroa.15.0.i.i.i.i.i, 17
  br i1 %i.cv, label %.preheader.i.i.i.i.i, label %.preheader56.i.i.i.i.i.preheader

.preheader.i.i.i.i.i:                             ; preds = %bb.p
  %.not5366.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i, 0
  br i1 %.not5366.i.i.i.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader56.i.i.i.i.i:                           ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i1062, i64 1
  %i.cx = add nsw i64 %.sroa.15.1.i.i.i.i.i1061, -1 ; 2 uses
  %.not52.i.not.i.i.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not52.i.not.i.i.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.preheader56.i.i.i.i.i.preheader

.preheader56.i.i.i.i.i.preheader:                 ; preds = %bb.p, %.preheader56.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i1062 = phi ptr [ %i.cw, %.preheader56.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.p ] ; 2 uses
  %.sroa.15.1.i.i.i.i.i1061 = phi i64 [ %i.cx, %.preheader56.i.i.i.i.i ], [ %.sroa.15.0.i.i.i.i.i, %bb.p ]
  %.sroa.042.0.i.i.i.i.i1060 = phi i64 [ %i.dg, %.preheader56.i.i.i.i.i ], [ 0, %bb.p ]
  %i.cy = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i.i.i1060, i64 10) ; 2 uses
  %i.cz = extractvalue { i64, i1 } %i.cy, 1
  br i1 %i.cz, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %bb.q, !prof !33

bb.q:                                             ; preds = %.preheader56.i.i.i.i.i.preheader
  %i.da = extractvalue { i64, i1 } %i.cy, 0       ; 2 uses
  %i.db = load i8, ptr %.sroa.0.1.i.i.i.i.i1062, align 1, !alias.scope !1851, !noalias !1854, !noundef !8
  %i.dc = zext i8 %i.db to i32
  %i.dd = add nsw i32 %i.dc, -48                  ; 2 uses
  %i.de = icmp ugt i32 %i.dd, 9
  %i.df = zext nneg i32 %i.dd to i64
  %i.dg = add i64 %i.da, %i.df                    ; 3 uses
  %i.dh = icmp ult i64 %i.dg, %i.da
  %or.cond.i.i.i.i = select i1 %i.de, i1 true, i1 %i.dh, !prof !161
  br i1 %or.cond.i.i.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.preheader56.i.i.i.i.i, !prof !161

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.r
  %.sroa.0.269.i.i.i.i.i = phi ptr [ %i.do, %bb.r ], [ %.sroa.0.0.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i.i.i = phi i64 [ %i.dn, %bb.r ], [ %.sroa.15.0.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %.sroa.042.267.i.i.i.i.i = phi i64 [ %i.dq, %bb.r ], [ 0, %.preheader.i.i.i.i.i ]
  %i.di = load i8, ptr %.sroa.0.269.i.i.i.i.i, align 1, !alias.scope !1851, !noalias !1854, !noundef !8
  %i.dj = zext i8 %i.di to i32
  %i.dk = add nsw i32 %i.dj, -48                  ; 2 uses
  %i.dl = icmp ugt i32 %i.dk, 9
  br i1 %i.dl, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dm = mul i64 %.sroa.042.267.i.i.i.i.i, 10
  %i.dn = add nsw i64 %.sroa.15.268.i.i.i.i.i, -1 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i.i.i, i64 1
  %i.dp = zext nneg i32 %i.dk to i64
  %i.dq = add i64 %i.dm, %i.dp                    ; 2 uses
  %.not53.i.i.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not53.i.i.i.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i: ; preds = %bb.q, %.preheader56.i.i.i.i.i.preheader, %.preheader56.i.i.i.i.i, %bb.r, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i, %bb.o, %bb.o, %bb.n, %bb.m
  %.sroa.0.1.i.i.i.i = phi i64 [ 2097152, %bb.m ], [ 0, %.preheader.i.i.i.i.i ], [ 2097152, %bb.o ], [ 2097152, %bb.n ], [ 2097152, %bb.o ], [ %i.dq, %bb.r ], [ 2097152, %.lr.ph.i.i.i.i.i ], [ 2097152, %bb.q ], [ 2097152, %.preheader56.i.i.i.i.i.preheader ], [ %i.dg, %.preheader56.i.i.i.i.i ] ; 2 uses
  %i.dr = icmp eq i64 %i.ck, 0
  br i1 %i.dr, label %_RNCNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCNvNtCsbMXVmEvvZJf_5uu_dd8progress16gen_prog_updater0uE00B16_.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.45.0.copyload.i.i.i, i64 noundef %i.ck, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !1848
  br label %_RNCNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCNvNtCsbMXVmEvvZJf_5uu_dd8progress16gen_prog_updater0uE00B16_.exit.i.i.i

_RNCNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCNvNtCsbMXVmEvvZJf_5uu_dd8progress16gen_prog_updater0uE00B16_.exit.i.i.i: ; preds = %bb.s, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, %bb.j
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.1.i.i.i.i, %bb.s ], [ %.sroa.0.1.i.i.i.i, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i ], [ 2097152, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1839
  %i.ds = add i64 %.sroa.0.0.i.i.i, 1
  store atomic i64 %i.ds, ptr @_RNvNCNvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8, !noalias !1839
  br label %bb.t
end_hunk_2
begin_hunk_3_@_RNvCsbMXVmEvvZJf_5uu_dd7dd_copy:bb.a

bb.bg:                                            ; preds = %bb.em
  switch i64 %i.jo, label %bb.bh [
    i64 2, label %_RNvCsbMXVmEvvZJf_5uu_dd15calc_loop_bsize.exit
    i64 0, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.jr = call i64 @llvm.usub.sat.i64(i64 %i.jq, i64 %.sroa.16.0)
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %i.jr, i64 %.sroa.0.0.i)
  br label %_RNvCsbMXVmEvvZJf_5uu_dd15calc_loop_bsize.exit

bb.bi:                                            ; preds = %bb.bg
  %i.js = getelementptr inbounds nuw i8, ptr %i.jn, i64 112
  %i.jt = load i64, ptr %i.js, align 8, !noundef !8
  %i.ju = add i64 %.sroa.0.0214, %.sroa.11.0
  %i.jv = sub i64 %i.jq, %i.ju
  %i.jw = mul i64 %i.jt, %i.jv
  %..i6.i = call noundef i64 @llvm.umin.i64(i64 %i.jw, i64 %.sroa.0.0.i)
  br label %_RNvCsbMXVmEvvZJf_5uu_dd15calc_loop_bsize.exit

_RNvCsbMXVmEvvZJf_5uu_dd15calc_loop_bsize.exit:   ; preds = %.backedge, %bb.bg, %bb.bh, %bb.bi
  %.sroa.05.0.i = phi i64 [ %..i.i, %bb.bh ], [ %..i6.i, %bb.bi ], [ %.sroa.0.0.i, %bb.bg ], [ %.sroa.0.0.i, %.backedge ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  call void @llvm.experimental.noalias.scope.decl(metadata !1943)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !1945)
  %i.jx = icmp sgt i64 %i.jm, -1
  call void @llvm.assume(i1 %i.jx)
  %i.jy = icmp ugt i64 %.sroa.05.0.i, %i.jm
  br i1 %i.jy, label %bb.bj, label %_RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsbMXVmEvvZJf_5uu_dd.exit.i

bb.bj:                                            ; preds = %_RNvCsbMXVmEvvZJf_5uu_dd15calc_loop_bsize.exit
  %i.jz = sub nuw i64 %.sroa.05.0.i, %i.jm        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1948)
  %i.ka = load i64, ptr %i.ai, align 8, !range !184, !alias.scope !1951, !noalias !1954, !noundef !8
  %i.kb = sub nsw i64 %i.ka, %i.jm
  %i.kc = icmp ugt i64 %i.jz, %i.kb
  br i1 %i.kc, label %bb.bk, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i, !prof !33

bb.bk:                                            ; preds = %bb.bj
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.jm, i64 noundef %i.jz, i64 noundef 1, i64 noundef 1) #27, !noalias !1956
  %.pre.i.i.i = load i64, ptr %i.hm, align 8, !alias.scope !1957, !noalias !1954
  %.pre612 = load ptr, ptr %i.hl, align 8, !alias.scope !1957, !noalias !1954
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i: ; preds = %bb.bk, %bb.bj
  %i.kd = phi ptr [ %i.jl, %bb.bj ], [ %.pre612, %bb.bk ] ; 3 uses
  %i.ke = phi i64 [ %i.jm, %bb.bj ], [ %.pre.i.i.i, %bb.bk ] ; 4 uses
  %i.kf = icmp sgt i64 %i.ke, -1
  call void @llvm.assume(i1 %i.kf)
  %i.kg = getelementptr i8, ptr %i.kd, i64 %i.ke  ; 2 uses
  %i.kh = icmp ugt i64 %i.jz, 1
  br i1 %i.kh, label %._crit_edge.thread.i.i.i, label %._crit_edge.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i
  %i.ki = add i64 %i.jz, -1                       ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.kg, i8 range(i8 -35, 33) -35, i64 %i.ki, i1 false), !noalias !1958
  %i.kj = add i64 %i.ke, %i.ki                    ; 2 uses
  %scevgep.i.i.i = getelementptr i8, ptr %i.kd, i64 %i.kj
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.thread.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i
  %.sroa.0.0.lcssa23.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.thread.i.i.i ], [ %i.kg, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i ]
  %storemerge.lcssa22.i.i.i = phi i64 [ %i.kj, %._crit_edge.thread.i.i.i ], [ %i.ke, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbMXVmEvvZJf_5uu_dd.exit.i.i.i ]
  store i8 -35, ptr %.sroa.0.0.lcssa23.i.i.i, align 1, !noalias !1958
  %i.kk = add i64 %storemerge.lcssa22.i.i.i, 1
  %.pre613 = load ptr, ptr %i.az, align 8, !alias.scope !1940, !noalias !1959
  br label %_RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsbMXVmEvvZJf_5uu_dd.exit.i

_RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsbMXVmEvvZJf_5uu_dd.exit.i: ; preds = %._crit_edge.i.i.i, %_RNvCsbMXVmEvvZJf_5uu_dd15calc_loop_bsize.exit
  %i.kl = phi ptr [ %i.jl, %_RNvCsbMXVmEvvZJf_5uu_dd15calc_loop_bsize.exit ], [ %i.kd, %._crit_edge.i.i.i ]
  %i.km = phi ptr [ %i.jn, %_RNvCsbMXVmEvvZJf_5uu_dd15calc_loop_bsize.exit ], [ %.pre613, %._crit_edge.i.i.i ] ; 4 uses
  %storemerge.i.i = phi i64 [ %.sroa.05.0.i, %_RNvCsbMXVmEvvZJf_5uu_dd15calc_loop_bsize.exit ], [ %i.kk, %._crit_edge.i.i.i ] ; 7 uses
  store i64 %storemerge.i.i, ptr %i.hm, align 8, !alias.scope !1960, !noalias !1954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1961
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 104
  %i.ko = load i8, ptr %i.kn, align 8, !range !44, !noalias !1959, !noundef !8
  %i.kp = trunc nuw i8 %i.ko to i1
  br i1 %i.kp, label %bb.bl, label %bb.cm

bb.bl:                                            ; preds = %_RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsbMXVmEvvZJf_5uu_dd.exit.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 105
  %i.kr = load i8, ptr %i.kq, align 1, !noalias !1959, !noundef !8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1962)
  call void @llvm.experimental.noalias.scope.decl(metadata !1965)
  %i.ks = icmp sgt i64 %storemerge.i.i, -1
  call void @llvm.assume(i1 %i.ks)
  %.not121.i.i = icmp eq i64 %storemerge.i.i, 0
  br i1 %.not121.i.i, label %.sink.split.i, label %.lr.ph107.i.i

.lr.ph107.i.i:                                    ; preds = %bb.bl
  %i.kt = icmp eq i8 %i.kr, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.km, i64 112
  %.pre162.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !1967
  %.pre163.i.i = load ptr, ptr %i.hl, align 8, !alias.scope !1969, !noalias !1970
  br label %bb.bm

bb.bm:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i, %.lr.ph107.i.i
  %.pre168.i.i = phi i64 [ %storemerge.i.i, %.lr.ph107.i.i ], [ %.pre168.i221.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ] ; 9 uses
  %i.ku = phi ptr [ %.pre163.i.i, %.lr.ph107.i.i ], [ %i.rm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ] ; 11 uses
  %i.kv = phi i64 [ %.pre162.i.i, %.lr.ph107.i.i ], [ %i.rp, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ]
  %.sroa.0.0106.i.i = phi i64 [ 0, %.lr.ph107.i.i ], [ %.sroa.0.1.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ] ; 3 uses
  %.sroa.02.0105.i.i = phi i64 [ 0, %.lr.ph107.i.i ], [ %.sroa.02.1.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ] ; 3 uses
  %.sroa.04.0104.i.i = phi i64 [ 0, %.lr.ph107.i.i ], [ %i.rq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ] ; 11 uses
  %.sroa.011.0103.i.i = phi i64 [ 0, %.lr.ph107.i.i ], [ %.sroa.011.1.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ] ; 2 uses
  %i.kw = ptrtoaddr ptr %i.ku to i64
  %i.kx = add i64 %.sroa.04.0104.i.i, %i.kv       ; 3 uses
  %..i.i.i106 = call noundef i64 @llvm.umin.i64(i64 %.pre168.i.i, i64 %i.kx) ; 16 uses
  %i.ky = sub i64 %..i.i.i106, %.sroa.04.0104.i.i ; 3 uses
  %i.kz = icmp ult i64 %i.kx, %.sroa.04.0104.i.i
  br i1 %i.kz, label %bb.bn, label %bb.bo, !prof !1971

._crit_edge.i.i:                                  ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i, %bb.bp
  %.sroa.011.0.lcssa.ph.i.i = phi i64 [ %.sroa.011.1.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ], [ %.sroa.011.0103.i.i, %bb.bp ] ; 2 uses
  %.sroa.04.0.lcssa.ph.i.i = phi i64 [ %i.rq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ], [ %.sroa.04.0104.i.i, %bb.bp ] ; 2 uses
  %.sroa.02.0.lcssa.ph.i.i = phi i64 [ %.sroa.02.1.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ], [ %.sroa.02.0105.i.i, %bb.bp ] ; 2 uses
  %.sroa.0.0.lcssa.ph.i.i = phi i64 [ %.sroa.0.1.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ], [ %.sroa.0.0106.i.i, %bb.bp ] ; 2 uses
  %.lcssa41.ph.i.i = phi i64 [ %.pre168.i221.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i ], [ %.pre168.i.i, %bb.bp ]
  %i.la = icmp ugt i64 %.sroa.04.0.lcssa.ph.i.i, %.lcssa41.ph.i.i
  br i1 %i.la, label %bb.cs, label %.sink.split.i

bb.bn:                                            ; preds = %bb.bm
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.04.0104.i.i, i64 noundef %..i.i.i106, i64 noundef %.pre168.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #30, !noalias !1967
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.sroa.04.0104.i.i
  %i.lc = call { i64, ptr } @_RNvXs4_CsbMXVmEvvZJf_5uu_ddNtB5_5InputNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull %i.lb, i64 noundef %i.ky) #27, !noalias !1967 ; 2 uses
  %i.ld = extractvalue { i64, ptr } %i.lc, 0
  %i.le = extractvalue { i64, ptr } %i.lc, 1      ; 3 uses
  %i.lf = ptrtoint ptr %i.le to i64               ; 7 uses
  %i.lg = trunc nuw i64 %i.ld to i1
  br i1 %i.lg, label %.loopexit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lh = icmp eq ptr %i.le, null
  br i1 %i.lh, label %._crit_edge.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.li = icmp ugt i64 %i.ky, %i.lf
  br i1 %i.li, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lj = add i64 %.sroa.0.0106.i.i, 1
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.lk = add i64 %.sroa.02.0105.i.i, 1
  %i.ll = sub nuw i64 %i.ky, %i.lf                ; 24 uses
  %.not.i.i.i.i = icmp slt i64 %i.ll, 0           ; 2 uses
  br i1 %i.kt, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  br i1 %.not.i.i.i.i, label %bb.by, label %bb.bu, !prof !161

bb.bu:                                            ; preds = %bb.bt
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1972
  %i.lm = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.ll, i64 noundef range(i64 1, 17) 1) #27, !noalias !1972 ; 2 uses
  %i.ln = icmp eq ptr %i.lm, null
  br i1 %i.ln, label %bb.by, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i

bb.bv:                                            ; preds = %bb.bs
  br i1 %.not.i.i.i.i, label %bb.bx, label %bb.bw, !prof !161

bb.bw:                                            ; preds = %bb.bv
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1977
  %i.lo = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ll, i64 noundef range(i64 1, 9) 1) #27, !noalias !1977 ; 3 uses
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %bb.bx, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.bw ], [ 0, %bb.bv ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.ll) #32, !noalias !1980
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i: ; preds = %bb.bw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.lo, i8 %i.kr, i64 %i.ll, i1 false), !noalias !1980
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i

bb.by:                                            ; preds = %bb.bu, %bb.bt
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.bu ], [ 0, %bb.bt ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.ll) #32, !noalias !1980
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i, %bb.bu
  %.sroa.5.0.i.i = phi ptr [ %i.lo, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i ], [ %i.lm, %bb.bu ] ; 17 uses
  %.sroa.5.0.i.i1066 = ptrtoaddr ptr %.sroa.5.0.i.i to i64 ; 2 uses
  %i.lq = add i64 %.sroa.04.0104.i.i, %i.lf       ; 14 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1981)
  call void @llvm.experimental.noalias.scope.decl(metadata !1984)
  %i.lr = icmp ugt i64 %i.lq, %..i.i.i106
  br i1 %i.lr, label %bb.bz, label %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE6spliceINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejEBw_ECsbMXVmEvvZJf_5uu_dd.exit.i.i, !prof !33

bb.bz:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.lq, i64 noundef %..i.i.i106, i64 noundef range(i64 0, -9223372036854775808) %.pre168.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #30, !noalias !1987
  unreachable

_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE6spliceINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejEBw_ECsbMXVmEvvZJf_5uu_dd.exit.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbMXVmEvvZJf_5uu_dd.exit.i.i.i
  store i64 %i.lq, ptr %i.hm, align 8, !alias.scope !1993, !noalias !1994
  %i.ls = sub nuw nsw i64 %.pre168.i.i, %..i.i.i106 ; 5 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i, i64 %i.ll ; 5 uses
  %.not.i.i = icmp ugt i64 %.pre168.i.i, %i.kx
  br i1 %.not.i.i, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE6spliceINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejEBw_ECsbMXVmEvvZJf_5uu_dd.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1995)
  call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  %i.lu = load i64, ptr %i.ai, align 8, !range !184, !alias.scope !2001, !noalias !2004, !noundef !8
  %i.lv = sub nsw i64 %i.lu, %i.lq
  %i.lw = icmp ugt i64 %i.ll, %i.lv
  br i1 %i.lw, label %bb.cb, label %iter.check1109, !prof !33

bb.cb:                                            ; preds = %bb.ca
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.lq, i64 noundef %i.ll, i64 noundef 1, i64 noundef 1) #27, !noalias !2011
  %.pre.i.i.i.i.i.i = load i64, ptr %i.hm, align 8, !alias.scope !2012, !noalias !2004
  br label %iter.check1109

iter.check1109:                                   ; preds = %bb.cb, %bb.ca
  %i.lx = phi i64 [ %i.lq, %bb.ca ], [ %.pre.i.i.i.i.i.i, %bb.cb ] ; 7 uses
  %i.ly = load ptr, ptr %i.hl, align 8, !alias.scope !2012, !noalias !2004, !nonnull !8, !noundef !8 ; 7 uses
  %min.iters.check1093 = icmp ult i64 %i.ll, 8
  br i1 %min.iters.check1093, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck1090

vector.memcheck1090:                              ; preds = %iter.check1109
  %i.lz = ptrtoaddr ptr %i.ly to i64
  %i.ma = add i64 %i.lx, %i.lz
  %i.mb = sub i64 %.sroa.5.0.i.i1066, %i.ma
  %diff.check1091 = icmp ugt i64 %i.mb, -32
  br i1 %diff.check1091, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check1094

vector.main.loop.iter.check1094:                  ; preds = %vector.memcheck1090
  %min.iters.check1095 = icmp ult i64 %i.ll, 32
  br i1 %min.iters.check1095, label %vec.epilog.ph1113, label %vector.ph1096

vector.ph1096:                                    ; preds = %vector.main.loop.iter.check1094
  %i.mc = and i64 %i.ll, 24
  %n.vec1097 = and i64 %i.ll, -32                 ; 5 uses
  %i.md = add i64 %i.lx, %n.vec1097               ; 2 uses
  %i.me = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %n.vec1097
  %i.mf = getelementptr i8, ptr %i.ly, i64 %i.lx
  br label %vector.body1098

vector.body1098:                                  ; preds = %vector.body1098, %vector.ph1096
  %index1099 = phi i64 [ 0, %vector.ph1096 ], [ %index.next1103, %vector.body1098 ] ; 3 uses
  %next.gep1100 = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %index1099 ; 2 uses
  %i.mg = getelementptr i8, ptr %next.gep1100, i64 16
  %wide.load1101 = load <16 x i8>, ptr %next.gep1100, align 1, !noalias !2013
  %wide.load1102 = load <16 x i8>, ptr %i.mg, align 1, !noalias !2013
  %i.mh = getelementptr i8, ptr %i.mf, i64 %index1099 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store <16 x i8> %wide.load1101, ptr %i.mh, align 1, !noalias !2026
  store <16 x i8> %wide.load1102, ptr %i.mi, align 1, !noalias !2026
  %index.next1103 = add nuw i64 %index1099, 32    ; 2 uses
  %i.mj = icmp eq i64 %index.next1103, %n.vec1097
  br i1 %i.mj, label %middle.block1104, label %vector.body1098, !llvm.loop !2033

middle.block1104:                                 ; preds = %vector.body1098
  %cmp.n1105 = icmp eq i64 %i.ll, %n.vec1097
  br i1 %cmp.n1105, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i, label %vec.epilog.iter.check1111

vec.epilog.iter.check1111:                        ; preds = %middle.block1104
  %min.epilog.iters.check1112 = icmp eq i64 %i.mc, 0
  br i1 %min.epilog.iters.check1112, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph1113, !prof !2036

vec.epilog.ph1113:                                ; preds = %vector.main.loop.iter.check1094, %vec.epilog.iter.check1111
  %vec.epilog.resume.val1106 = phi i64 [ %n.vec1097, %vec.epilog.iter.check1111 ], [ 0, %vector.main.loop.iter.check1094 ]
  %n.vec1114 = and i64 %i.ll, -8                  ; 4 uses
  %i.mk = add i64 %i.lx, %n.vec1114               ; 2 uses
  %i.ml = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %n.vec1114
  %i.mm = getelementptr i8, ptr %i.ly, i64 %i.lx
  br label %vec.epilog.vector.body1115

vec.epilog.vector.body1115:                       ; preds = %vec.epilog.vector.body1115, %vec.epilog.ph1113
  %index1116 = phi i64 [ %vec.epilog.resume.val1106, %vec.epilog.ph1113 ], [ %index.next1119, %vec.epilog.vector.body1115 ] ; 3 uses
  %next.gep1117 = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %index1116
  %wide.load1118 = load <8 x i8>, ptr %next.gep1117, align 1, !noalias !2013
  %i.mn = getelementptr i8, ptr %i.mm, i64 %index1116
  store <8 x i8> %wide.load1118, ptr %i.mn, align 1, !noalias !2026
  %index.next1119 = add nuw i64 %index1116, 8     ; 2 uses
  %i.mo = icmp eq i64 %index.next1119, %n.vec1114
  br i1 %i.mo, label %vec.epilog.middle.block1120, label %vec.epilog.vector.body1115, !llvm.loop !2037

vec.epilog.middle.block1120:                      ; preds = %vec.epilog.vector.body1115
  %cmp.n1121 = icmp eq i64 %i.ll, %n.vec1114
  br i1 %cmp.n1121, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %vector.memcheck1090, %iter.check1109, %vec.epilog.iter.check1111, %vec.epilog.middle.block1120
  %.ph1127 = phi i64 [ %i.lx, %iter.check1109 ], [ %i.lx, %vector.memcheck1090 ], [ %i.md, %vec.epilog.iter.check1111 ], [ %i.mk, %vec.epilog.middle.block1120 ]
  %.ph1128 = phi ptr [ %.sroa.5.0.i.i, %iter.check1109 ], [ %.sroa.5.0.i.i, %vector.memcheck1090 ], [ %i.me, %vec.epilog.iter.check1111 ], [ %i.ml, %vec.epilog.middle.block1120 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.mp = phi i64 [ %i.mu, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.ph1127, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.mq = phi ptr [ %i.ms, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.ph1128, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.mr = load i8, ptr %i.mq, align 1, !noalias !2013, !noundef !8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 1 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.mp
  store i8 %i.mr, ptr %i.mt, align 1, !noalias !2026
  %i.mu = add i64 %i.mp, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ms, %i.lt
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2038

bb.cc:                                            ; preds = %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE6spliceINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejEBw_ECsbMXVmEvvZJf_5uu_dd.exit.i.i
  %.not6.i.i.i.i.i = icmp samesign ult i64 %i.lq, %..i.i.i106
  br i1 %.not6.i.i.i.i.i, label %iter.check, label %.loopexit.i.i.i.i

iter.check:                                       ; preds = %bb.cc
  %min.iters.check1069 = icmp ult i64 %i.ll, 8
  br i1 %min.iters.check1069, label %.lr.ph.i.i.preheader, label %vector.memcheck1065

vector.memcheck1065:                              ; preds = %iter.check
  %i.mv = add i64 %.sroa.04.0104.i.i, %i.lf
  %i.mw = add i64 %i.mv, %i.kw
  %i.mx = sub i64 %.sroa.5.0.i.i1066, %i.mw
  %diff.check1067 = icmp ugt i64 %i.mx, -32
  br i1 %diff.check1067, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck1065
  %min.iters.check1070 = icmp ult i64 %i.ll, 32
  br i1 %min.iters.check1070, label %vec.epilog.ph, label %vector.ph1071

vector.ph1071:                                    ; preds = %vector.main.loop.iter.check
  %i.my = and i64 %i.ll, 24
  %n.vec1072 = and i64 %i.ll, -32                 ; 5 uses
  %i.mz = add i64 %i.lq, %n.vec1072
  %i.na = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %n.vec1072 ; 2 uses
  %i.nb = getelementptr i8, ptr %i.ku, i64 %i.lq
  br label %vector.body1073

vector.body1073:                                  ; preds = %vector.body1073, %vector.ph1071
  %index1074 = phi i64 [ 0, %vector.ph1071 ], [ %index.next1078, %vector.body1073 ] ; 3 uses
  %next.gep1075 = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %index1074 ; 2 uses
  %i.nc = getelementptr i8, ptr %next.gep1075, i64 16
  %wide.load1076 = load <16 x i8>, ptr %next.gep1075, align 1, !noalias !2039
  %wide.load1077 = load <16 x i8>, ptr %i.nc, align 1, !noalias !2039
  %i.nd = getelementptr i8, ptr %i.nb, i64 %index1074 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  store <16 x i8> %wide.load1076, ptr %i.nd, align 1, !noalias !2044
  store <16 x i8> %wide.load1077, ptr %i.ne, align 1, !noalias !2044
  %index.next1078 = add nuw i64 %index1074, 32    ; 2 uses
  %i.nf = icmp eq i64 %index.next1078, %n.vec1072
  br i1 %i.nf, label %middle.block1079, label %vector.body1073, !llvm.loop !2045

middle.block1079:                                 ; preds = %vector.body1073
  %cmp.n = icmp eq i64 %i.ll, %n.vec1072
  br i1 %cmp.n, label %.loopexit.i.i.i.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block1079
  %min.epilog.iters.check = icmp eq i64 %i.my, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !2036

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1072, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1082 = and i64 %i.ll, -8                  ; 4 uses
  %i.ng = add i64 %i.lq, %n.vec1082
  %i.nh = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %n.vec1082 ; 2 uses
  %i.ni = getelementptr i8, ptr %i.ku, i64 %i.lq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1083 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1086, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1084 = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %index1083
  %wide.load1085 = load <8 x i8>, ptr %next.gep1084, align 1, !noalias !2039
  %i.nj = getelementptr i8, ptr %i.ni, i64 %index1083
  store <8 x i8> %wide.load1085, ptr %i.nj, align 1, !noalias !2044
  %index.next1086 = add nuw i64 %index1083, 8     ; 2 uses
  %i.nk = icmp eq i64 %index.next1086, %n.vec1082
  br i1 %i.nk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2046

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1087 = icmp eq i64 %i.ll, %n.vec1082
  br i1 %cmp.n1087, label %.loopexit.i.i.i.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck1065, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.03.i.i.i96.i.i.ph = phi i64 [ %i.lq, %iter.check ], [ %i.lq, %vector.memcheck1065 ], [ %i.mz, %vec.epilog.iter.check ], [ %i.ng, %vec.epilog.middle.block ] ; 4 uses
  %.ph1126 = phi ptr [ %.sroa.5.0.i.i, %iter.check ], [ %.sroa.5.0.i.i, %vector.memcheck1065 ], [ %i.na, %vec.epilog.iter.check ], [ %i.nh, %vec.epilog.middle.block ] ; 2 uses
  %i.nl = sub i64 %..i.i.i106, %.sroa.01.03.i.i.i96.i.i.ph
  %xtraiter = and i64 %i.nl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.01.03.i.i.i96.i.i.prol = phi i64 [ %i.np, %.lr.ph.i.i.prol ], [ %.sroa.01.03.i.i.i96.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.nm = phi ptr [ %i.nn, %.lr.ph.i.i.prol ], [ %.ph1126, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 1 ; 3 uses
  %i.no = load i8, ptr %i.nm, align 1, !noalias !2039, !noundef !8
  %i.np = add i64 %.sroa.01.03.i.i.i96.i.i.prol, 1 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.sroa.01.03.i.i.i96.i.i.prol
  store i8 %i.no, ptr %i.nq, align 1, !noalias !2044
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2047

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa1143.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.nn, %.lr.ph.i.i.prol ]
  %.sroa.01.03.i.i.i96.i.i.unr = phi i64 [ %.sroa.01.03.i.i.i96.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.np, %.lr.ph.i.i.prol ]
  %.unr = phi ptr [ %.ph1126, %.lr.ph.i.i.preheader ], [ %i.nn, %.lr.ph.i.i.prol ]
  %i.nr = sub i64 %.sroa.01.03.i.i.i96.i.i.ph, %..i.i.i106
  %i.ns = icmp ugt i64 %i.nr, -4
end_hunk_3
begin_hunk_4_@_RNvCsbMXVmEvvZJf_5uu_dd7dd_copy:bb.a
  br label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i

_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i: ; preds = %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %i.on, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i ], [ %.pre10.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i ] ; 3 uses
  %i.oo = phi i64 [ %.promoted97.i.i, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i ], [ %i.oy, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i ]
  %.pre-phi.i.i.i.i = phi i64 [ %i.om, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i ], [ %.pre.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i ]
  %.val.i.i.i29.i.i.i.i = phi ptr [ %.val18.i.i.i.i, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i ], [ %i.qf, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i ]
  %.not.i.i.i.i.i.i.i.i = icmp slt i64 %.pre-phi.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ce, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i, !prof !2053

_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i: ; preds = %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i, %.loopexit.i.i.i.i
  %i.op = phi ptr [ %i.oz, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ %i.ku, %.loopexit.i.i.i.i ] ; 2 uses
  %.val.i.i.i29.i39.i.i.i = phi ptr [ %.val.i.i.i29.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ %.val18.i.i.i.i, %.loopexit.i.i.i.i ] ; 2 uses
  %i.oq = phi i64 [ %i.oy, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ %..i.i.i106, %.loopexit.i.i.i.i ] ; 6 uses
  %.pre-phi.i38.i.i.i = phi i64 [ %.pre-phi.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ %i.om, %.loopexit.i.i.i.i ]
  %i.or = phi i64 [ %i.oo, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ %i.ok, %.loopexit.i.i.i.i ] ; 3 uses
  %.pre-phi36.i.i.i = phi i64 [ %.pre-phi.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ 0, %.loopexit.i.i.i.i ] ; 10 uses
  %i.os = icmp eq ptr %i.lt, %.val.i.i.i29.i39.i.i.i
  br i1 %i.os, label %.loopexit.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !2054
  %i.ot = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.pre-phi36.i.i.i, i64 noundef range(i64 1, 9) 1) #27, !noalias !2054 ; 6 uses
  %i.ou = icmp eq ptr %i.ot, null
  br i1 %i.ou, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i
  %.pre-phi37.i.i.i = phi i64 [ %.pre-phi36.i.i.i, %bb.cd ], [ %.pre-phi.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ]
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 1, %bb.cd ], [ 0, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %.pre-phi37.i.i.i) #32, !noalias !2063
  unreachable

bb.cf:                                            ; preds = %.loopexit.i.i.i.i
  %i.ov = load i64, ptr %i.ai, align 8, !range !184, !alias.scope !1969, !noalias !2064, !noundef !8
  %i.ow = sub nsw i64 %i.ov, %.pre168.i.i
  %i.ox = icmp ugt i64 %i.on, %i.ow
  br i1 %i.ox, label %bb.cg, label %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i, !prof !33

bb.cg:                                            ; preds = %bb.cf
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %.pre168.i.i, i64 noundef %i.on, i64 noundef 1, i64 noundef 1) #27, !noalias !2067
  %.pre164.i.i = load i64, ptr %i.hm, align 8, !alias.scope !1969, !noalias !2050
  br label %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i

_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i: ; preds = %bb.cg, %bb.cf
  %.promoted97.i.i = phi i64 [ %.pre164.i.i, %bb.cg ], [ %i.ok, %bb.cf ] ; 8 uses
  %i.oy = add i64 %i.on, %..i.i.i106              ; 7 uses
  %i.oz = load ptr, ptr %i.hl, align 8, !alias.scope !1969, !noalias !2064, !nonnull !8, !noundef !8 ; 7 uses
  %i.pa = ptrtoaddr ptr %i.oz to i64
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 %..i.i.i106
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.oy
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.pc, ptr nonnull align 1 %i.pb, i64 %i.ls, i1 false), !noalias !2068
  %.not6.i31.i.i.i.i = icmp ult i64 %.promoted97.i.i, %i.oy
  br i1 %.not6.i31.i.i.i.i, label %.lr.ph100.i.i.preheader, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i

.lr.ph100.i.i.preheader:                          ; preds = %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i
  %i.pd = ptrtoaddr ptr %.sroa.5.0.i.i to i64     ; 2 uses
  %i.pe = shl i64 %..i.i.i106, 1
  %i.pf = add i64 %i.pe, %i.pd
  %i.pg = xor i64 %.promoted97.i.i, -1
  %i.ph = add i64 %i.pf, %i.pg
  %i.pi = add i64 %.sroa.04.0104.i.i, %i.lf
  %i.pj = add i64 %i.pi, %i.om
  %i.pk = sub i64 %i.ph, %i.pj
  %i.pl = add i64 %..i.i.i106, %i.pd
  %i.pm = xor i64 %.sroa.04.0104.i.i, -1
  %i.pn = add i64 %i.pl, %i.pm
  %i.po = add i64 %i.lf, %i.om
  %i.pp = sub i64 %i.pn, %i.po
  %i.pq = call i64 @llvm.umin.i64(i64 %i.pk, i64 %i.pp)
  %i.pr = add i64 %i.pq, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.pr, 33
  br i1 %min.iters.check, label %.lr.ph100.i.i.preheader1124, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph100.i.i.preheader
  %i.ps = add i64 %.promoted97.i.i, %i.pa
  %i.pt = sub i64 %i.om, %i.ps
  %diff.check = icmp ugt i64 %i.pt, -32
  br i1 %diff.check, label %.lr.ph100.i.i.preheader1124, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.pu = and i64 %i.pr, 31                       ; 2 uses
  %i.pv = icmp eq i64 %i.pu, 0
  %i.pw = select i1 %i.pv, i64 32, i64 %i.pu
  %n.vec = sub i64 %i.pr, %i.pw                   ; 3 uses
  %i.px = add i64 %.promoted97.i.i, %n.vec
  %i.py = getelementptr i8, ptr %.val18.i.i.i.i, i64 %n.vec
  %i.pz = getelementptr i8, ptr %i.oz, i64 %.promoted97.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.val18.i.i.i.i, i64 %index ; 2 uses
  %i.qa = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !noalias !2069
  %wide.load1063 = load <16 x i8>, ptr %i.qa, align 1, !noalias !2069
  %i.qb = getelementptr i8, ptr %i.pz, i64 %index ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  store <16 x i8> %wide.load, ptr %i.qb, align 1, !noalias !2072
  store <16 x i8> %wide.load1063, ptr %i.qc, align 1, !noalias !2072
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.qd = icmp eq i64 %index.next, %n.vec
  br i1 %i.qd, label %.lr.ph100.i.i.preheader1124, label %vector.body, !llvm.loop !2073

.lr.ph100.i.i.preheader1124:                      ; preds = %vector.body, %vector.memcheck, %.lr.ph100.i.i.preheader
  %.sroa.01.03.i35.i.i99.i.i.ph = phi i64 [ %.promoted97.i.i, %vector.memcheck ], [ %.promoted97.i.i, %.lr.ph100.i.i.preheader ], [ %i.px, %vector.body ]
  %.ph1125 = phi ptr [ %.val18.i.i.i.i, %vector.memcheck ], [ %.val18.i.i.i.i, %.lr.ph100.i.i.preheader ], [ %i.py, %vector.body ]
  br label %.lr.ph100.i.i

.lr.ph.i33.i.i.i.i:                               ; preds = %.lr.ph100.i.i
  %.not.not.i36.i.i.i.i = icmp eq ptr %i.qf, %i.lt
  br i1 %.not.not.i36.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph100.i.i, !llvm.loop !2074

.lr.ph100.i.i:                                    ; preds = %.lr.ph100.i.i.preheader1124, %.lr.ph.i33.i.i.i.i
  %.sroa.01.03.i35.i.i99.i.i = phi i64 [ %i.qh, %.lr.ph.i33.i.i.i.i ], [ %.sroa.01.03.i35.i.i99.i.i.ph, %.lr.ph100.i.i.preheader1124 ] ; 2 uses
  %i.qe = phi ptr [ %i.qf, %.lr.ph.i33.i.i.i.i ], [ %.ph1125, %.lr.ph100.i.i.preheader1124 ] ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 1 ; 4 uses
  %i.qg = load i8, ptr %i.qe, align 1, !noalias !2069, !noundef !8
  %i.qh = add i64 %.sroa.01.03.i35.i.i99.i.i, 1   ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.oz, i64 %.sroa.01.03.i35.i.i99.i.i
  store i8 %i.qg, ptr %i.qi, align 1, !noalias !2072
  %exitcond.not.i37.i.i.i.i = icmp eq i64 %i.qh, %i.oy
  br i1 %exitcond.not.i37.i.i.i.i, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i, label %.lr.ph.i33.i.i.i.i

bb.ch:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ot, ptr nonnull align 1 %.val.i.i.i29.i39.i.i.i, i64 %.pre-phi36.i.i.i, i1 false), !noalias !2075
  %i.qj = getelementptr inbounds nuw i8, ptr %i.ot, i64 %.pre-phi36.i.i.i
  %.not14.i.i.i.i = icmp eq i64 %.pre-phi.i38.i.i.i, %i.ol
  br i1 %.not14.i.i.i.i, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i, label %bb.ci

_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit: ; preds = %.lr.ph, %.lr.ph.i42.i.i.i.i, %.lr.ph.i42.i.i.i.i.preheader
  %.pre.i.i21.i.ph = phi i64 [ %.promoted, %.lr.ph.i42.i.i.i.i.preheader ], [ %i.qq, %.lr.ph ], [ %i.rb, %.lr.ph.i42.i.i.i.i ] ; 2 uses
  store i64 %.pre.i.i21.i.ph, ptr %i.hm, align 8
  br label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i

_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i: ; preds = %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i, %bb.ch
  %.pre.i.i21.i = phi i64 [ %i.or, %bb.ch ], [ %.promoted, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i ], [ %.pre.i.i21.i.ph, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit ]
  %i.qk = phi ptr [ %i.op, %bb.ch ], [ %i.qr, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i ], [ %i.qr, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit ]
  %i.ql = phi i64 [ %i.oq, %bb.ch ], [ %i.qq, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i ], [ %i.qq, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ot, i64 noundef %.pre-phi36.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !2094
  br label %.loopexit.i.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.qm = add i64 %i.oq, %i.ls                    ; 2 uses
  %i.qn = load i64, ptr %i.ai, align 8, !range !184, !alias.scope !1969, !noalias !2097, !noundef !8
  %i.qo = sub i64 %i.qn, %i.qm
  %i.qp = icmp ugt i64 %.pre-phi36.i.i.i, %i.qo
  br i1 %i.qp, label %bb.cj, label %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i, !prof !33

bb.cj:                                            ; preds = %bb.ci
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.qm, i64 noundef %.pre-phi36.i.i.i, i64 noundef 1, i64 noundef 1) #27, !noalias !2100
  %.pre165.i.i = load i64, ptr %i.hm, align 8, !alias.scope !1969, !noalias !2101
  br label %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i

_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i: ; preds = %bb.cj, %bb.ci
  %.promoted = phi i64 [ %.pre165.i.i, %bb.cj ], [ %i.or, %bb.ci ] ; 6 uses
  %i.qq = add i64 %.pre-phi36.i.i.i, %i.oq        ; 6 uses
  %i.qr = load ptr, ptr %i.hl, align 8, !alias.scope !1969, !noalias !2097, !nonnull !8, !noundef !8 ; 5 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.oq
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.qq
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.qt, ptr nonnull align 1 %i.qs, i64 %i.ls, i1 false), !noalias !2104
  %.not6.i40.i.i.i.i = icmp ult i64 %.promoted, %i.qq
  br i1 %.not6.i40.i.i.i.i, label %.lr.ph.i42.i.i.i.i.preheader, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i

.lr.ph.i42.i.i.i.i.preheader:                     ; preds = %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i
  %.not.not.i45.i.i.i.i426 = icmp samesign eq i64 %.pre-phi36.i.i.i, 0
  br i1 %.not.not.i45.i.i.i.i426, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i42.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.qr, i64 %.promoted
  %i.qu = add nsw i64 %.pre-phi36.i.i.i, -1       ; 2 uses
  %i.qv = add i64 %i.qu, %i.oq
  %i.qw = sub i64 %i.qv, %.promoted
  %umin = call i64 @llvm.umin.i64(i64 %i.qw, i64 %i.qu)
  %i.qx = add nuw nsw i64 %umin, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, ptr noundef nonnull align 1 dereferenceable(1) %i.ot, i64 %i.qx, i1 false), !noalias !2105
  br label %.lr.ph

.lr.ph.i42.i.i.i.i:                               ; preds = %.lr.ph
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qz, i64 1 ; 2 uses
  %.not.not.i45.i.i.i.i = icmp eq ptr %i.qy, %i.qj
  br i1 %.not.not.i45.i.i.i.i, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i42.i.i.i.i
  %i.qz = phi ptr [ %i.qy, %.lr.ph.i42.i.i.i.i ], [ %i.ot, %.lr.ph.preheader ]
  %i.ra = phi i64 [ %i.rb, %.lr.ph.i42.i.i.i.i ], [ %.promoted, %.lr.ph.preheader ]
  %i.rb = add i64 %i.ra, 1                        ; 3 uses
  %exitcond.not.i46.i.i.i.i = icmp eq i64 %i.rb, %i.qq
  br i1 %exitcond.not.i46.i.i.i.i, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit, label %.lr.ph.i42.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i33.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i
  %i.rc = phi ptr [ %i.qk, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i ], [ %i.op, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i ], [ %i.oz, %.lr.ph.i33.i.i.i.i ]
  %i.rd = phi i64 [ %i.ql, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i ], [ %i.oq, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i ], [ %i.oy, %.lr.ph.i33.i.i.i.i ] ; 2 uses
  %i.re = phi i64 [ %.pre.i.i21.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i ], [ %i.or, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i ], [ %i.qh, %.lr.ph.i33.i.i.i.i ] ; 4 uses
  %i.rf = icmp sgt i64 %i.re, -1
  call void @llvm.assume(i1 %i.rf)
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %i.rd, %i.re
  br i1 %.not3.i.i.i.i.i.i.i, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cl, %.loopexit.i.i.i
  %i.rg = phi ptr [ %i.ri, %bb.cl ], [ %i.rc, %.loopexit.i.i.i ]
  %i.rh = add nuw i64 %i.re, %i.ls
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i

bb.cl:                                            ; preds = %.loopexit.i.i.i
  %i.ri = load ptr, ptr %i.hl, align 8, !alias.scope !1969, !noalias !2106, !nonnull !8, !noundef !8 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rd
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.re
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.rk, ptr nonnull align 1 %i.rj, i64 %i.ls, i1 false), !noalias !2111
  br label %bb.ck

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block1104, %vec.epilog.middle.block1120, %bb.ck
  %i.rl = phi ptr [ %i.rg, %bb.ck ], [ %i.ly, %middle.block1104 ], [ %i.ly, %vec.epilog.middle.block1120 ], [ %i.ly, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %storemerge31.i.i = phi i64 [ %i.rh, %bb.ck ], [ %i.md, %middle.block1104 ], [ %i.mk, %vec.epilog.middle.block1120 ], [ %i.mu, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  store i64 %storemerge31.i.i, ptr %i.hm, align 8, !alias.scope !1969, !noalias !2112
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i.i, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !2113
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i, %bb.br
  %.pre168.i221.i = phi i64 [ %.pre168.i.i, %bb.br ], [ %storemerge31.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i ] ; 4 uses
  %i.rm = phi ptr [ %i.ku, %bb.br ], [ %i.rl, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i ]
  %.sroa.02.1.i.i = phi i64 [ %.sroa.02.0105.i.i, %bb.br ], [ %i.lk, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i ] ; 2 uses
  %.sroa.0.1.i.i = phi i64 [ %i.lj, %bb.br ], [ %.sroa.0.0106.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i ] ; 2 uses
  %.sroa.011.1.i.i = add i64 %.sroa.011.0103.i.i, %i.lf ; 2 uses
  %i.rn = load ptr, ptr %i.az, align 8, !alias.scope !2116, !noalias !1967, !nonnull !8, !align !59, !noundef !8
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 112
  %i.rp = load i64, ptr %i.ro, align 8, !noalias !1967, !noundef !8 ; 2 uses
  %i.rq = add i64 %i.rp, %.sroa.04.0104.i.i       ; 3 uses
  %i.rr = icmp sgt i64 %.pre168.i221.i, -1
  call void @llvm.assume(i1 %i.rr)
  %i.rs = icmp ult i64 %i.rq, %.pre168.i221.i
  br i1 %i.rs, label %bb.bm, label %._crit_edge.i.i

bb.cm:                                            ; preds = %_RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsbMXVmEvvZJf_5uu_dd.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2117)
  %i.rt = getelementptr inbounds nuw i8, ptr %i.km, i64 112
  %i.ru = load i64, ptr %i.rt, align 8, !noalias !2120, !noundef !8 ; 2 uses
  %i.rv = icmp eq i64 %i.ru, 0
  br i1 %i.rv, label %bb.cn, label %bb.co, !prof !33

bb.cn:                                            ; preds = %bb.cm
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #30, !noalias !2120
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.rw = icmp eq i64 %storemerge.i.i, 0
  br i1 %i.rw, label %.sink.split.i, label %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i

_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i: ; preds = %bb.co, %bb.cr
  %.sroa.0.041.i.i = phi i64 [ %i.sl, %bb.cr ], [ 0, %bb.co ] ; 2 uses
  %.sroa.04.040.i.i = phi i64 [ %i.sk, %bb.cr ], [ 0, %bb.co ] ; 2 uses
  %.sroa.0.02439.i.i = phi ptr [ %i.rx, %bb.cr ], [ %i.kl, %bb.co ] ; 2 uses
  %.sroa.6.038.i.i = phi i64 [ %i.ry, %bb.cr ], [ %storemerge.i.i, %bb.co ] ; 2 uses
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ru, i64 %.sroa.6.038.i.i) ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.0.02439.i.i, i64 %..i.i.i.i
  %i.ry = sub nuw i64 %.sroa.6.038.i.i, %..i.i.i.i ; 2 uses
  %i.rz = call { i64, ptr } @_RNvXs4_CsbMXVmEvvZJf_5uu_ddNtB5_5InputNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull %.sroa.0.02439.i.i, i64 noundef %..i.i.i.i) #27, !noalias !2123 ; 2 uses
  %i.sa = extractvalue { i64, ptr } %i.rz, 0
  %i.sb = extractvalue { i64, ptr } %i.rz, 1      ; 3 uses
  %i.sc = ptrtoint ptr %i.sb to i64               ; 3 uses
  %i.sd = trunc nuw i64 %i.sa to i1
  br i1 %i.sd, label %.loopexit, label %bb.cp

_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i: ; preds = %bb.cr, %bb.cq
  %.sroa.0.032.i.i = phi i64 [ %.sroa.0.041.i.i, %bb.cq ], [ %i.sl, %bb.cr ] ; 2 uses
  %.sroa.04.1.i.i = phi i64 [ %i.sj, %bb.cq ], [ %i.sk, %bb.cr ] ; 4 uses
  %.sroa.02.0.i.i = phi i64 [ %spec.select21.i.i, %bb.cq ], [ 0, %bb.cr ] ; 2 uses
  %i.se = icmp ugt i64 %.sroa.04.1.i.i, %storemerge.i.i
  br i1 %i.se, label %bb.cs, label %.sink.split.i

bb.cp:                                            ; preds = %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i
  %i.sf = load ptr, ptr %i.az, align 8, !alias.scope !2124, !noalias !2123, !nonnull !8, !align !59, !noundef !8
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 112
  %i.sh = load i64, ptr %i.sg, align 8, !noalias !2123, !noundef !8
  %i.si = icmp eq i64 %i.sh, %i.sc
  br i1 %i.si, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.not20.i.i = icmp ne ptr %i.sb, null
  %i.sj = add i64 %.sroa.04.040.i.i, %i.sc
  %spec.select21.i.i = zext i1 %.not20.i.i to i64
  br label %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i

bb.cr:                                            ; preds = %bb.cp
  %i.sk = add i64 %.sroa.04.040.i.i, %i.sc        ; 2 uses
  %i.sl = add i64 %.sroa.0.041.i.i, 1             ; 2 uses
  %i.sm = icmp eq i64 %i.ry, 0
  br i1 %i.sm, label %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i, label %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i

.sink.split.i:                                    ; preds = %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i, %bb.co, %._crit_edge.i.i, %bb.bl
  %.sroa.04.0.lcssa203.i.sink.i = phi i64 [ 0, %bb.bl ], [ %.sroa.04.0.lcssa.ph.i.i, %._crit_edge.i.i ], [ %.sroa.04.1.i.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i ], [ 0, %bb.co ]
  %.sroa.535.0.ph.sink.ph.i = phi i64 [ 0, %bb.bl ], [ %.sroa.0.0.lcssa.ph.i.i, %._crit_edge.i.i ], [ %.sroa.0.032.i.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i ], [ 0, %bb.co ]
  %.sroa.936.0.ph.sink.ph.i = phi i64 [ 0, %bb.bl ], [ %.sroa.02.0.lcssa.ph.i.i, %._crit_edge.i.i ], [ %.sroa.02.0.i.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i ], [ 0, %bb.co ]
  %.sroa.1137.0.ph.sink.ph.i = phi i64 [ 0, %bb.bl ], [ %.sroa.011.0.lcssa.ph.i.i, %._crit_edge.i.i ], [ %.sroa.04.1.i.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i ], [ 0, %bb.co ]
  store i64 %.sroa.04.0.lcssa203.i.sink.i, ptr %i.hm, align 8, !alias.scope !1943, !noalias !1954
  br label %bb.cs

bb.cs:                                            ; preds = %.sink.split.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i, %._crit_edge.i.i
  %.sroa.535.0.ph.sink.i = phi i64 [ %.sroa.0.032.i.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i ], [ %.sroa.0.0.lcssa.ph.i.i, %._crit_edge.i.i ], [ %.sroa.535.0.ph.sink.ph.i, %.sink.split.i ] ; 3 uses
  %.sroa.936.0.ph.sink.i = phi i64 [ %.sroa.02.0.i.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i ], [ %.sroa.02.0.lcssa.ph.i.i, %._crit_edge.i.i ], [ %.sroa.936.0.ph.sink.ph.i, %.sink.split.i ] ; 3 uses
  %.sroa.1137.0.ph.sink.i = phi i64 [ %.sroa.04.1.i.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i ], [ %.sroa.011.0.lcssa.ph.i.i, %._crit_edge.i.i ], [ %.sroa.1137.0.ph.sink.ph.i, %.sink.split.i ] ; 3 uses
  %i.sn = inttoptr i64 %.sroa.535.0.ph.sink.i to ptr
  store ptr %i.sn, ptr %i.l, align 8, !noalias !1961
  store i64 %.sroa.936.0.ph.sink.i, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !1961
  store i64 %.sroa.1137.0.ph.sink.i, ptr %.sroa.412.sroa.4.0..sroa.412.0..sroa_idx.sroa_idx.i, align 8, !noalias !1961
  store i32 0, ptr %.sroa.412.sroa.5.0..sroa.412.0..sroa_idx.sroa_idx.i, align 8, !noalias !1961
  %i.so = icmp eq i64 %.sroa.535.0.ph.sink.i, 0
  %i.sp = icmp eq i64 %.sroa.936.0.ph.sink.i, 0
  %or.cond.i = select i1 %i.so, i1 %i.sp, i1 false
  br i1 %or.cond.i, label %bb.ep, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.sq = load ptr, ptr %i.az, align 8, !alias.scope !1940, !noalias !1959, !nonnull !8, !align !59, !noundef !8 ; 3 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 106
  %i.ss = load i8, ptr %i.sr, align 2, !range !44, !noalias !1959, !noundef !8
  %i.st = trunc nuw i8 %i.ss to i1
  br i1 %i.st, label %bb.cu, label %_RNvNvCsbMXVmEvvZJf_5uu_dd11read_helper12perform_swab.exit.i

_RNvNvCsbMXVmEvvZJf_5uu_dd11read_helper12perform_swab.exit.loopexit.i: ; preds = %bb.cv
  %.pre.i = load ptr, ptr %i.az, align 8, !alias.scope !1940, !noalias !1959
  br label %_RNvNvCsbMXVmEvvZJf_5uu_dd11read_helper12perform_swab.exit.i

_RNvNvCsbMXVmEvvZJf_5uu_dd11read_helper12perform_swab.exit.i: ; preds = %bb.cu, %_RNvNvCsbMXVmEvvZJf_5uu_dd11read_helper12perform_swab.exit.loopexit.i, %bb.ct
  %i.su = phi ptr [ %.pre.i, %_RNvNvCsbMXVmEvvZJf_5uu_dd11read_helper12perform_swab.exit.loopexit.i ], [ %i.sq, %bb.cu ], [ %i.sq, %bb.ct ] ; 16 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 80 ; 2 uses
  %i.sw = load i8, ptr %i.sv, align 8, !range !2125, !noalias !1959, !noundef !8 ; 2 uses
  %.not.i101 = icmp eq i8 %i.sw, -1
  br i1 %.not.i101, label %bb.ep, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.sx = load ptr, ptr %i.hl, align 8, !alias.scope !1943, !noalias !1954, !nonnull !8, !noundef !8
  %i.sy = load i64, ptr %i.hm, align 8, !alias.scope !1943, !noalias !1954, !noundef !8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2126)
  %.sroa.06.0.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %i.sy, i64 1) ; 2 uses
  %i.sz = lshr i64 %.sroa.06.0.i.i.i.i, 1
  %.sroa.05.0.i.i.i.i = sub nuw nsw i64 %.sroa.06.0.i.i.i.i, %i.sz ; 2 uses
  %.not11.i.i = icmp eq i64 %.sroa.05.0.i.i.i.i, 0
  br i1 %.not11.i.i, label %_RNvNvCsbMXVmEvvZJf_5uu_dd11read_helper12perform_swab.exit.i, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %bb.cu, %bb.cv
  %.sroa.01.013.i.i = phi i64 [ %i.tc, %bb.cv ], [ 1, %bb.cu ] ; 4 uses
  %.sroa.06.012.i.i = phi i64 [ %i.tb, %bb.cv ], [ %.sroa.05.0.i.i.i.i, %bb.cu ]
  %i.ta = icmp samesign ult i64 %.sroa.01.013.i.i, %i.sy
  br i1 %i.ta, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %.lr.ph.i25.i
  %i.tb = add nsw i64 %.sroa.06.012.i.i, -1       ; 2 uses
  %i.tc = add nuw i64 %.sroa.01.013.i.i, 2
  %i.td = getelementptr i8, ptr %i.sx, i64 %.sroa.01.013.i.i ; 3 uses
  %i.te = getelementptr i8, ptr %i.td, i64 -1     ; 2 uses
  %.sroa.04.0.copyload.i.i = load i8, ptr %i.td, align 1, !alias.scope !2126, !noalias !1959
  %i.tf = load i8, ptr %i.te, align 1, !alias.scope !2126, !noalias !1959
  store i8 %i.tf, ptr %i.td, align 1, !alias.scope !2126, !noalias !1959
  store i8 %.sroa.04.0.copyload.i.i, ptr %i.te, align 1, !alias.scope !2126, !noalias !1959
  %.not.i26.i = icmp eq i64 %i.tb, 0
  br i1 %.not.i26.i, label %_RNvNvCsbMXVmEvvZJf_5uu_dd11read_helper12perform_swab.exit.loopexit.i, label %.lr.ph.i25.i

bb.cw:                                            ; preds = %.lr.ph.i25.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.013.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.sy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #30, !noalias !2129
  unreachable

bb.cx:                                            ; preds = %_RNvNvCsbMXVmEvvZJf_5uu_dd11read_helper12perform_swab.exit.i
  %.val18.i = load ptr, ptr %i.hl, align 8, !alias.scope !1943, !noalias !1954, !nonnull !8, !noundef !8
  %.val19.i = load i64, ptr %i.hm, align 8, !alias.scope !1943, !noalias !1954, !noundef !8 ; 27 uses
  %i.tg = icmp eq i64 %.val19.i, 0                ; 6 uses
  br i1 %i.tg, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsbMXVmEvvZJf_5uu_dd.exit.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !2130
  %i.th = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val19.i, i64 noundef range(i64 1, 9) 1) #27, !noalias !2130 ; 3 uses
  %i.ti = icmp eq ptr %i.th, null
  br i1 %i.ti, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val19.i) #32, !noalias !2138
  unreachable

bb.da:                                            ; preds = %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.th, ptr nonnull readonly align 1 %.val18.i, i64 range(i64 0, -9223372036854775808) %.val19.i, i1 false), !noalias !2139
  %.pre222.i = load i8, ptr %i.sv, align 8, !range !2140, !alias.scope !2141, !noalias !2144
  br label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsbMXVmEvvZJf_5uu_dd.exit.i

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsbMXVmEvvZJf_5uu_dd.exit.i: ; preds = %bb.da, %bb.cx
  %i.tj = phi i8 [ %.pre222.i, %bb.da ], [ %i.sw, %bb.cx ]
  %.sroa.8.0.i = phi ptr [ %i.th, %bb.da ], [ inttoptr (i64 1 to ptr), %bb.cx ] ; 26 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  switch i8 %i.tj, label %default.unreachable [
    i8 0, label %bb.db
    i8 1, label %bb.dc
    i8 2, label %bb.dd
    i8 3, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EEEB2t_.exit.i.i.i115.peel.i.i
    i8 4, label %bb.ee
    i8 5, label %bb.eg
    i8 6, label %bb.eh
  ]

bb.db:                                            ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsbMXVmEvvZJf_5uu_dd.exit.i
  %i.tk = getelementptr inbounds nuw i8, ptr %i.su, i64 88
  %i.tl = load ptr, ptr %i.tk, align 8, !alias.scope !2141, !noalias !2144, !nonnull !8, !noundef !8 ; 5 uses
  %i.tm = icmp sgt i64 %.val19.i, -1
  call void @llvm.assume(i1 %i.tm)
  br i1 %i.tg, label %_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EhEB2v_.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.db
  %i.tn = add nsw i64 %.val19.i, -1
  %xtraiter1322 = and i64 %.val19.i, 3            ; 3 uses
  %i.to = icmp ult i64 %i.tn, 3
  br i1 %i.to, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter1326 = and i64 %.val19.i, 9223372036854775804
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.01.01.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %i.ug, %.lr.ph.i.i.i.i ] ; 5 uses
  %niter1327 = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter1327.next.3, %.lr.ph.i.i.i.i ]
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i, i64 %.sroa.01.01.i.i.i.i ; 2 uses
  %i.tq = load i8, ptr %i.tp, align 1, !noalias !2148, !noundef !8
  %i.tr = zext i8 %i.tq to i64
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.tr
  %i.tt = load i8, ptr %i.ts, align 1, !noalias !2148, !noundef !8
  store i8 %i.tt, ptr %i.tp, align 1, !noalias !2148
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i, i64 %.sroa.01.01.i.i.i.i
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 1 ; 2 uses
  %i.tw = load i8, ptr %i.tv, align 1, !noalias !2148, !noundef !8
  %i.tx = zext i8 %i.tw to i64
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.tx
  %i.tz = load i8, ptr %i.ty, align 1, !noalias !2148, !noundef !8
  store i8 %i.tz, ptr %i.tv, align 1, !noalias !2148
  %i.ua = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i, i64 %.sroa.01.01.i.i.i.i
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 2 ; 2 uses
  %i.uc = load i8, ptr %i.ub, align 1, !noalias !2148, !noundef !8
  %i.ud = zext i8 %i.uc to i64
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.ud
  %i.uf = load i8, ptr %i.ue, align 1, !noalias !2148, !noundef !8
  store i8 %i.uf, ptr %i.ub, align 1, !noalias !2148
  %i.ug = add nuw nsw i64 %.sroa.01.01.i.i.i.i, 4 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i, i64 %.sroa.01.01.i.i.i.i
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 3 ; 2 uses
  %i.uj = load i8, ptr %i.ui, align 1, !noalias !2148, !noundef !8
  %i.uk = zext i8 %i.uj to i64
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.uk
  %i.um = load i8, ptr %i.ul, align 1, !noalias !2148, !noundef !8
  store i8 %i.um, ptr %i.ui, align 1, !noalias !2148
  %niter1327.next.3 = add i64 %niter1327, 4       ; 2 uses
  %niter1327.ncmp.3 = icmp eq i64 %niter1327.next.3, %unroll_iter1326
  br i1 %niter1327.ncmp.3, label %_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EhEB2v_.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EhEB2v_.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod1324.not = icmp eq i64 %xtraiter1322, 0
  br i1 %lcmp.mod1324.not, label %_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EhEB2v_.exit.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EhEB2v_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.01.01.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %i.ug, %_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EhEB2v_.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1325 = icmp ne i64 %xtraiter1322, 0
  call void @llvm.assume(i1 %lcmp.mod1325)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.01.01.i.i.i.i.epil = phi i64 [ %i.un, %.lr.ph.i.i.i.i.epil ], [ %.sroa.01.01.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter1323 = phi i64 [ %epil.iter1323.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.un = add nuw nsw i64 %.sroa.01.01.i.i.i.i.epil, 1
  %i.uo = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i, i64 %.sroa.01.01.i.i.i.i.epil ; 2 uses
  %i.up = load i8, ptr %i.uo, align 1, !noalias !2148, !noundef !8
  %i.uq = zext i8 %i.up to i64
  %i.ur = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.uq
  %i.us = load i8, ptr %i.ur, align 1, !noalias !2148, !noundef !8
  store i8 %i.us, ptr %i.uo, align 1, !noalias !2148
  %epil.iter1323.next = add i64 %epil.iter1323, 1 ; 2 uses
  %epil.iter1323.cmp.not = icmp eq i64 %epil.iter1323.next, %xtraiter1322
  br i1 %epil.iter1323.cmp.not, label %_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EhEB2v_.exit.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !2154

_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EhEB2v_.exit.i.i: ; preds = %_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EhEB2v_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.db
  store i64 %.val19.i, ptr %i.d, align 8, !noalias !1961
  store ptr %.sroa.8.0.i, ptr %i.hv, align 8, !noalias !1961
  store i64 %.val19.i, ptr %i.hw, align 8, !noalias !1961
  br label %_RNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper.exit.i

bb.dc:                                            ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsbMXVmEvvZJf_5uu_dd.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2155
  %i.ut = getelementptr inbounds nuw i8, ptr %i.su, i64 88
  %i.uu = load i64, ptr %i.ut, align 8, !alias.scope !2141, !noalias !2144, !noundef !8
  %i.uv = getelementptr inbounds nuw i8, ptr %i.su, i64 81
  %i.uw = load i8, ptr %i.uv, align 1, !range !44, !alias.scope !2141, !noalias !2144, !noundef !8
  %i.ux = trunc nuw i8 %i.uw to i1
  call fastcc void @_RNvNtCsbMXVmEvvZJf_5uu_dd6blocks5block(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.8.0.i, i64 noundef %.val19.i, i64 noundef %i.uu, i1 noundef zeroext %i.ux, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l) #27, !noalias !2156
  %i.uy = load ptr, ptr %i.io, align 8, !noalias !2155, !nonnull !8, !noundef !8 ; 3 uses
  %i.uz = load i64, ptr %i.f, align 8, !range !184, !noalias !2155, !noundef !8
  %i.va = load i64, ptr %i.ip, align 8, !noalias !2155, !noundef !8 ; 2 uses
  %i.vb = icmp ult i64 %i.va, 384307168202282326
  call void @llvm.assume(i1 %i.vb)
  %i.vc = getelementptr inbounds nuw [24 x i8], ptr %i.uy, i64 %i.va
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2155
  store ptr %i.uy, ptr %i.g, align 8, !noalias !2155
  store ptr %i.uy, ptr %.sroa.065.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2155
  store i64 %i.uz, ptr %.sroa.065.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2155
  store ptr %i.vc, ptr %.sroa.065.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2155
  store ptr null, ptr %.sroa.466.0..sroa_idx.i.i, align 8, !noalias !2155
  store ptr null, ptr %.sroa.668.0..sroa_idx.i.i, align 8, !noalias !2155
  call fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterCsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(96) %i.g) #27, !noalias !1959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2155
  br label %bb.ei

bb.dd:                                            ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsbMXVmEvvZJf_5uu_dd.exit.i
  %i.vd = getelementptr inbounds nuw i8, ptr %i.su, i64 88
  %i.ve = load i64, ptr %i.vd, align 8, !alias.scope !2141, !noalias !2144, !noundef !8
  call fastcc void @_RNvNtCsbMXVmEvvZJf_5uu_dd6blocks7unblock(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.8.0.i, i64 noundef %.val19.i, i64 noundef %i.ve) #27, !noalias !1959
  br label %bb.ei

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EEEB2t_.exit.i.i.i115.peel.i.i: ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsbMXVmEvvZJf_5uu_dd.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2155
  %i.vf = getelementptr inbounds nuw i8, ptr %i.su, i64 88
  %i.vg = load i64, ptr %i.vf, align 8, !alias.scope !2141, !noalias !2144, !noundef !8
  %i.vh = getelementptr inbounds nuw i8, ptr %i.su, i64 81
  %i.vi = load i8, ptr %i.vh, align 1, !range !44, !alias.scope !2141, !noalias !2144, !noundef !8
  %i.vj = trunc nuw i8 %i.vi to i1
  call fastcc void @_RNvNtCsbMXVmEvvZJf_5uu_dd6blocks5block(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.8.0.i, i64 noundef %.val19.i, i64 noundef %i.vg, i1 noundef zeroext %i.vj, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l) #27, !noalias !2156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2155
  %i.vk = load ptr, ptr %i.hz, align 8, !noalias !2155, !nonnull !8, !noundef !8 ; 6 uses
  %i.vl = load i64, ptr %i.k, align 8, !range !184, !noalias !2155, !noundef !8
  %i.vm = load i64, ptr %i.ia, align 8, !noalias !2155, !noundef !8 ; 3 uses
  %i.vn = icmp ult i64 %i.vm, 384307168202282326
  call void @llvm.assume(i1 %i.vn)
  %.idx.i.i = mul nuw nsw i64 %i.vm, 24
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vk, i64 %.idx.i.i ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.su, i64 96
  %i.vq = load ptr, ptr %i.vp, align 8, !alias.scope !2141, !noalias !2144, !nonnull !8, !noundef !8 ; 5 uses
  store ptr %i.vk, ptr %i.j, align 8, !noalias !2155
  store i64 %i.vl, ptr %.sroa.029.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2155
  store ptr %i.vo, ptr %.sroa.029.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2155
  store ptr %i.vq, ptr %.sroa.029.sroa.7.0..sroa_idx.i.i, align 8, !noalias !2155
  store ptr null, ptr %.sroa.632.0..sroa_idx.i.i, align 8, !noalias !2155
  call void @llvm.experimental.noalias.scope.decl(metadata !2157)
  call void @llvm.experimental.noalias.scope.decl(metadata !2160), !noalias !2163
  %.promoted42.i.i.i.i = load ptr, ptr %i.ib, align 8, !alias.scope !2166, !noalias !2167 ; 2 uses
  %.promoted43.i.i.i.i = load ptr, ptr %i.ic, align 8, !alias.scope !2166, !noalias !2167 ; 2 uses
  %.promoted45.i.i.i.i = load i64, ptr %i.id, align 8, !alias.scope !2166, !noalias !2167 ; 2 uses
  %.sroa.722.0..sroa_idx.i.i.promoted.i.i = load ptr, ptr %.sroa.722.0..sroa_idx.i.i.i.i, align 8, !noalias !2155 ; 2 uses
  %i.vr = icmp eq i64 %i.vm, 0
  br i1 %i.vr, label %.loopexit.i.i, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.peel.i.i

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.peel.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EEEB2t_.exit.i.i.i115.peel.i.i
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vk, i64 24 ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.i.peel.i.i = load i64, ptr %i.vk, align 8, !noalias !2168 ; 2 uses
  %.not.i.i.i.i116.peel.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.peel.i.i, -1
  br i1 %.not.i.i.i.i116.peel.i.i, label %.loopexit.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EEEB2t_.exit.i.i.i.i
end_hunk_4
