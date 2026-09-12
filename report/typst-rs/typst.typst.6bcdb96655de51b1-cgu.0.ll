Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_RNvNtCs9fPPV5zPXBl_5typst5watch5watch:bb.a
          to label %bb.li unwind label %.loopexit106

bb.li:                                            ; preds = %bb.lh, %bb.lg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %bb.u

bb.lj:                                            ; preds = %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  br label %bb.lk

bb.lk:                                            ; preds = %bb.kl, %bb.lj
  %.pn = phi { ptr, i64 } [ %i.ajl, %bb.lj ], [ %i.aiw, %bb.kl ] ; 2 uses
  %i.ajo = load i64, ptr %i.ef, align 16, !range !32, !noundef !28
  %i.ajp = icmp eq i64 %i.ajo, 2
  br i1 %i.ajp, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst5world18WorldCreationErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.eg)
          to label %bb.lm unwind label %.loopexit.split-lp107

bb.lm:                                            ; preds = %bb.ln, %bb.ll, %bb.lk
  %.pn102 = phi { ptr, i64 } [ %i.ajq, %bb.ln ], [ %.pn, %bb.ll ], [ %.pn, %bb.lk ] ; 2 uses
  %.sroa.0.5 = extractvalue { ptr, i64 } %.pn102, 0
  %.sroa.14.5 = extractvalue { ptr, i64 } %.pn102, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %bb.je

_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCs9fPPV5zPXBl_5typst5world18WorldCreationErrorINtB5_4IntoNtNtCsakL8LGkl72C_4ecow6string9EcoStringE4intoBC_.exit: ; preds = %bb.jg
  %i.ajq = invoke { ptr, i64 } @_RNvMs8_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedString3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.cq)
          to label %bb.ln unwind label %.loopexit.split-lp101.loopexit.split-lp

bb.ln:                                            ; preds = %_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCs9fPPV5zPXBl_5typst5world18WorldCreationErrorINtB5_4IntoNtNtCsakL8LGkl72C_4ecow6string9EcoStringE4intoBC_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %bb.lm

bb.lo:                                            ; preds = %bb.lq, %bb.je
  %.sroa.14.6 = phi i64 [ %i.ajs, %bb.lq ], [ %.sroa.14.3, %bb.je ]
  %.sroa.0.6 = phi ptr [ %i.ajr, %bb.lq ], [ %.sroa.0.3, %bb.je ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  br label %bb.lr

bb.lp:                                            ; preds = %.body109
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst5world18WorldCreationErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.eg) #62
          to label %bb.v unwind label %bb.jf

bb.lq:                                            ; preds = %bb.s
  %i.ajr = extractvalue { ptr, i64 } %i.ee, 0
  %i.ajs = extractvalue { ptr, i64 } %i.ee, 1
  br label %bb.lo

bb.lr:                                            ; preds = %bb.lu, %bb.lo
  %.sroa.14.7 = phi i64 [ %.sroa.14.6, %bb.lo ], [ %i.ajw, %bb.lu ]
  %.sroa.0.7 = phi ptr [ %.sroa.0.6, %bb.lo ], [ %i.ajv, %bb.lu ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst7compile13CompileConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.dd)
          to label %bb.lv unwind label %bb.i

bb.ls:                                            ; preds = %bb.o
  %i.ajt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.db) #62
          to label %bb.p unwind label %bb.jf

bb.lt:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %i.db, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  %i.aju = invoke { ptr, i64 } @_RNvMs8_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedString3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.cr)
          to label %bb.lu unwind label %bb.q      ; 2 uses

bb.lu:                                            ; preds = %bb.lt
  %i.ajv = extractvalue { ptr, i64 } %i.aju, 0
  %i.ajw = extractvalue { ptr, i64 } %i.aju, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br label %bb.lr

bb.lv:                                            ; preds = %bb.lr, %bb.j
  %.sroa.14.8 = phi i64 [ %i.ds, %bb.j ], [ %.sroa.14.7, %bb.lr ]
  %.sroa.0.8 = phi ptr [ %i.dq, %bb.j ], [ %.sroa.0.7, %bb.lr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  %.val116 = load i64, ptr %i.df, align 8, !range !55, !noundef !28 ; 2 uses
  %i.ajx = icmp sgt i64 %.val116, 0
  br i1 %i.ajx, label %bb.lw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit5timer5TimerECs9fPPV5zPXBl_5typst.exit492

bb.lw:                                            ; preds = %bb.lv
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.val117 = load ptr, ptr %i.ajy, align 8, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val117, i64 noundef %.val116, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !35266
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit5timer5TimerECs9fPPV5zPXBl_5typst.exit492

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit5timer5TimerECs9fPPV5zPXBl_5typst.exit492: ; preds = %bb.lv, %bb.lw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  %i.ajz = insertvalue { ptr, i64 } poison, ptr %.sroa.0.8, 0
  %i.aka = insertvalue { ptr, i64 } %i.ajz, i64 %.sroa.14.8, 1
  ret { ptr, i64 } %i.aka

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit5timer5TimerECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %.pn106
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs9fPPV5zPXBl_5typst7compile11pdf_options(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = alloca [12 x i8], align 4                ; 4 uses
  %i.f = alloca [12 x i8], align 4                ; 4 uses
  %i.g = alloca [12 x i8], align 4                ; 4 uses
  %i.h = alloca [12 x i8], align 4                ; 4 uses
  %i.i = alloca [12 x i8], align 4                ; 4 uses
  %i.j = alloca [12 x i8], align 4                ; 4 uses
  %i.k = alloca [12 x i8], align 4                ; 4 uses
  %i.l = alloca [12 x i8], align 4                ; 4 uses
  %i.m = alloca [12 x i8], align 4                ; 4 uses
  %i.n = alloca [12 x i8], align 4                ; 4 uses
  %i.o = alloca [12 x i8], align 4                ; 6 uses
  %i.p = alloca [12 x i8], align 4                ; 4 uses
  %i.q = alloca [12 x i8], align 4                ; 4 uses
  %i.r = alloca [12 x i8], align 4                ; 4 uses
  %i.s = alloca [12 x i8], align 4                ; 4 uses
  %i.t = alloca [12 x i8], align 4                ; 4 uses
  %i.u = alloca [12 x i8], align 4                ; 4 uses
  %i.v = alloca [12 x i8], align 4                ; 4 uses
  %i.w = alloca [12 x i8], align 4                ; 4 uses
  %i.x = alloca [12 x i8], align 4                ; 4 uses
  %i.y = alloca [16 x i8], align 4                ; 8 uses
  %i.z = alloca [12 x i8], align 4                ; 3 uses
  %i.aa = alloca [12 x i8], align 4               ; 5 uses
  %.sroa.0 = alloca [12 x i8], align 4            ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !noundef !28
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.o, ptr noundef nonnull align 8 dereferenceable(12) %i.ab, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !35291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !35291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.w, ptr noundef nonnull align 8 dereferenceable(12) %i.ab, i64 12, i1 false)
  call void @_RNvMNtNtCseKXfNLkF2r6_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.w, i32 noundef 0), !noalias !35291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !35291
  %i.ad = load i32, ptr %i.x, align 4, !range !111, !noalias !35291, !noundef !28
  %i.ae = ashr i32 %i.ad, 13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !35291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !35292
  call void @_RNvMNtNtCseKXfNLkF2r6_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.p, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.o, i32 noundef 0)
  %i.af = load i32, ptr %i.p, align 4, !range !111, !noalias !35292, !noundef !28
  %i.ag = lshr i32 %i.af, 3
  %i.ah = and i32 %i.ag, 1023                     ; 3 uses
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.aj = icmp samesign ult i32 %i.ah, 733
  br i1 %i.aj, label %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtB7_6traits8Datelike5monthCs9fPPV5zPXBl_5typst.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef 733, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #65, !noalias !35292
  unreachable

_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtB7_6traits8Datelike5monthCs9fPPV5zPXBl_5typst.exit.i: ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr @55, i64 %i.ai
  %i.al = load i8, ptr %i.ak, align 1, !noalias !35292, !noundef !28
  %i.am = zext i8 %i.al to i32
  %i.an = add nuw nsw i32 %i.ah, %i.am
  %i.ao = lshr i32 %i.an, 6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !35292
  %i.ap = trunc nuw nsw i32 %i.ao to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !35293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !35293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.o, i64 12, i1 false)
  call void @_RNvMNtNtCseKXfNLkF2r6_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.n, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.m, i32 noundef 0), !noalias !35293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !35293
  %i.aq = load i32, ptr %i.n, align 4, !range !111, !noalias !35293, !noundef !28
  %i.ar = lshr i32 %i.aq, 3                       ; 2 uses
  %i.as = and i32 %i.ar, 1023                     ; 2 uses
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = icmp samesign ult i32 %i.as, 733
  br i1 %i.au, label %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtB7_6traits8Datelike3dayCs9fPPV5zPXBl_5typst.exit.i, label %bb.d

bb.d:                                             ; preds = %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtB7_6traits8Datelike5monthCs9fPPV5zPXBl_5typst.exit.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef 733, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #65, !noalias !35293
  unreachable

_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtB7_6traits8Datelike3dayCs9fPPV5zPXBl_5typst.exit.i: ; preds = %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtB7_6traits8Datelike5monthCs9fPPV5zPXBl_5typst.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr @55, i64 %i.at
  %i.aw = load i8, ptr %i.av, align 1, !noalias !35293, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !35293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !35291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !35291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.u, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.o, i64 12, i1 false)
  call void @_RNvMNtNtCseKXfNLkF2r6_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.v, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.u, i32 noundef 0), !noalias !35291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !35291
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !noalias !35291, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !35291
  %i.az = icmp ugt i32 %i.ay, 921599
  br i1 %i.az, label %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset3utc3UtcEB4_.exit.thread, label %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset3utc3UtcEB4_.exit

_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset3utc3UtcEB4_.exit: ; preds = %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtB7_6traits8Datelike3dayCs9fPPV5zPXBl_5typst.exit.i
  %2 = trunc i32 %i.ar to i8
  %3 = add i8 %i.aw, %2
  %4 = lshr i8 %3, 1
  %i.ba = and i8 %4, 31
  %i.bb = udiv i32 %i.ay, 3600
  %i.bc = trunc nuw i32 %i.bb to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !35291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !35291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.o, i64 12, i1 false)
  call void @_RNvMNtNtCseKXfNLkF2r6_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.t, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.s, i32 noundef 0), !noalias !35291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !35291
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !noalias !35291, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !35291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !35291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !35291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.q, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.o, i64 12, i1 false)
  call void @_RNvMNtNtCseKXfNLkF2r6_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.r, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.q, i32 noundef 0), !noalias !35291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !35291
  %i.bf = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !noalias !35291, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !35291
  %i.bh = urem i32 %i.bg, 60
  %i.bi = udiv i32 %i.be, 60
  %i.bj = urem i32 %i.bi, 60
  %i.bk = trunc nuw nsw i32 %i.bj to i8
  %i.bl = trunc nuw nsw i32 %i.bh to i8
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations8datetimeNtB2_8Datetime12from_ymd_hms(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.aa, i32 noundef %i.ae, i8 noundef %i.ap, i8 noundef %i.ba, i8 noundef %i.bc, i8 noundef %i.bk, i8 noundef %i.bl), !noalias !35294
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aa, i64 11
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !67
  %i.bm = icmp eq i8 %.pre, -1
  br i1 %i.bm, label %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset3utc3UtcEB4_.exit.thread, label %bb.j

bb.e:                                             ; preds = %bb.a
  call void @_RNvMNtNtCseKXfNLkF2r6_6chrono6offset5localNtB2_5Local3now(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.y)
  %.sroa.930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.sroa.930.0.copyload = load i32, ptr %.sroa.930.0..sroa_idx, align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !35295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !35295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull align 4 dereferenceable(12) %i.y, i64 12, i1 false)
  call void @_RNvMNtNtCseKXfNLkF2r6_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.l, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.k, i32 noundef %.sroa.930.0.copyload), !noalias !35295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !35295
  %i.bn = load i32, ptr %i.l, align 4, !range !111, !noalias !35295, !noundef !28
  %i.bo = ashr i32 %i.bn, 13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !35295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !35296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %i.y, i64 12, i1 false)
  call void @_RNvMNtNtCseKXfNLkF2r6_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.c, i32 noundef %.sroa.930.0.copyload), !noalias !35296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !35296
  %i.bp = load i32, ptr %i.d, align 4, !range !111, !noalias !35296, !noundef !28
  %i.bq = lshr i32 %i.bp, 3
  %i.br = and i32 %i.bq, 1023                     ; 3 uses
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = icmp samesign ult i32 %i.br, 733
  br i1 %i.bt, label %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset5local5LocalENtNtB7_6traits8Datelike5monthCs9fPPV5zPXBl_5typst.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.bs, i64 noundef 733, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #65, !noalias !35296
  unreachable

_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset5local5LocalENtNtB7_6traits8Datelike5monthCs9fPPV5zPXBl_5typst.exit.i: ; preds = %bb.e
  %i.bu = getelementptr inbounds nuw i8, ptr @55, i64 %i.bs
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !35296, !noundef !28
  %i.bw = zext i8 %i.bv to i32
  %i.bx = add nuw nsw i32 %i.br, %i.bw
  %i.by = lshr i32 %i.bx, 6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35296
  %i.bz = trunc nuw nsw i32 %i.by to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35297
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.y, i64 12, i1 false)
  call void @_RNvMNtNtCseKXfNLkF2r6_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a, i32 noundef %.sroa.930.0.copyload), !noalias !35297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35297
  %i.ca = load i32, ptr %i.b, align 4, !range !111, !noalias !35297, !noundef !28
  %i.cb = lshr i32 %i.ca, 3                       ; 2 uses
  %i.cc = and i32 %i.cb, 1023                     ; 2 uses
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = icmp samesign ult i32 %i.cc, 733
  br i1 %i.ce, label %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset5local5LocalENtNtB7_6traits8Datelike3dayCs9fPPV5zPXBl_5typst.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset5local5LocalENtNtB7_6traits8Datelike5monthCs9fPPV5zPXBl_5typst.exit.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.cd, i64 noundef 733, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #65, !noalias !35297
  unreachable

_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset5local5LocalENtNtB7_6traits8Datelike3dayCs9fPPV5zPXBl_5typst.exit.i: ; preds = %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset5local5LocalENtNtB7_6traits8Datelike5monthCs9fPPV5zPXBl_5typst.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr @55, i64 %i.cd
  %i.cg = load i8, ptr %i.cf, align 1, !noalias !35297, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !35295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !35295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.y, i64 12, i1 false)
  call void @_RNvMNtNtCseKXfNLkF2r6_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.i, i32 noundef %.sroa.930.0.copyload), !noalias !35295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35295
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !noalias !35295, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !35295
  %i.cj = icmp ugt i32 %i.ci, 921599
  br i1 %i.cj, label %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit.thread, label %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit

_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit: ; preds = %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset5local5LocalENtNtB7_6traits8Datelike3dayCs9fPPV5zPXBl_5typst.exit.i
  %5 = trunc i32 %i.cb to i8
  %6 = add i8 %i.cg, %5
  %7 = lshr i8 %6, 1
  %i.ck = and i8 %7, 31
  %i.cl = udiv i32 %i.ci, 3600
  %i.cm = trunc nuw i32 %i.cl to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !35295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !35295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %i.y, i64 12, i1 false)
  call void @_RNvMNtNtCseKXfNLkF2r6_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.g, i32 noundef %.sroa.930.0.copyload), !noalias !35295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !35295
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !noalias !35295, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !35295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !35295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !35295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.y, i64 12, i1 false)
  call void @_RNvMNtNtCseKXfNLkF2r6_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.e, i32 noundef %.sroa.930.0.copyload), !noalias !35295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !35295
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !noalias !35295, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !35295
  %i.cr = urem i32 %i.cq, 60
  %i.cs = udiv i32 %i.co, 60
  %i.ct = urem i32 %i.cs, 60
  %i.cu = trunc nuw nsw i32 %i.ct to i8
  %i.cv = trunc nuw nsw i32 %i.cr to i8
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations8datetimeNtB2_8Datetime12from_ymd_hms(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.z, i32 noundef %i.bo, i8 noundef %i.bz, i8 noundef %i.ck, i8 noundef %i.cm, i8 noundef %i.cu, i8 noundef %i.cv)
  %.phi.trans.insert31 = getelementptr inbounds nuw i8, ptr %i.z, i64 11
  %.pre32 = load i8, ptr %.phi.trans.insert31, align 1, !range !67
  %i.cw = icmp eq i8 %.pre32, -1
  br i1 %i.cw, label %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit
  %i.cx = sdiv i32 %.sroa.930.0.copyload, 60      ; 2 uses
  %i.cy = add nsw i32 %i.cx, 1439
  %or.cond = icmp ult i32 %i.cy, 2879
  br i1 %or.cond, label %bb.i, label %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit.thread

bb.i:                                             ; preds = %bb.h
  %.lhs.trunc27.i = trunc nsw i32 %i.cx to i16    ; 2 uses
  %i.cz = srem i16 %.lhs.trunc27.i, 60
  %i.da = call i16 @llvm.abs.i16(i16 %i.cz, i1 true)
  %i.db = sdiv i16 %.lhs.trunc27.i, 60
  %i.dc = trunc nsw i16 %i.db to i8
  %i.dd = trunc nuw nsw i16 %i.da to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false)
  br label %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit.thread

_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit.thread: ; preds = %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit, %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset5local5LocalENtNtB7_6traits8Datelike3dayCs9fPPV5zPXBl_5typst.exit.i, %bb.h, %bb.i, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset3utc3UtcEB4_.exit.thread
  %.sroa.10.1 = phi i8 [ undef, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset3utc3UtcEB4_.exit.thread ], [ undef, %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset5local5LocalENtNtB7_6traits8Datelike3dayCs9fPPV5zPXBl_5typst.exit.i ], [ undef, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit ], [ undef, %bb.h ], [ %i.dd, %bb.i ]
  %.sroa.9.1 = phi i8 [ undef, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset3utc3UtcEB4_.exit.thread ], [ undef, %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset5local5LocalENtNtB7_6traits8Datelike3dayCs9fPPV5zPXBl_5typst.exit.i ], [ undef, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit ], [ undef, %bb.h ], [ %i.dc, %bb.i ]
  %.sroa.3.1 = phi i8 [ %.sroa.3.2, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset3utc3UtcEB4_.exit.thread ], [ 2, %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset5local5LocalENtNtB7_6traits8Datelike3dayCs9fPPV5zPXBl_5typst.exit.i ], [ 2, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit ], [ 2, %bb.h ], [ 1, %bb.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.df = load i64, ptr %i.de, align 8, !range !55, !noundef !28
  %.not14 = icmp eq i64 %i.df, -1
  br i1 %.not14, label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBM_6option6OptionINtNtNtBM_3num7nonzero7NonZerojEEEENtNtBM_5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit, label %bb.k

bb.j:                                             ; preds = %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset3utc3UtcEB4_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(12) %i.aa, i64 12, i1 false)
  br label %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset3utc3UtcEB4_.exit.thread

_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset3utc3UtcEB4_.exit.thread: ; preds = %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtB7_6traits8Datelike3dayCs9fPPV5zPXBl_5typst.exit.i, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset3utc3UtcEB4_.exit, %bb.j
  %.sroa.3.2 = phi i8 [ 0, %bb.j ], [ 2, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset3utc3UtcEB4_.exit ], [ 2, %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtB7_6traits8Datelike3dayCs9fPPV5zPXBl_5typst.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit.thread

bb.k:                                             ; preds = %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit.thread
  %i.dg = getelementptr i8, ptr %1, i64 80
  %.val = load ptr, ptr %i.dg, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.dh = getelementptr i8, ptr %1, i64 88
  %.val15 = load i64, ptr %i.dh, align 8, !noundef !28 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35298)
  %i.di = mul nuw nsw i64 %.val15, 24             ; 2 uses
  %i.dj = icmp eq i64 %.val15, 0
  br i1 %i.dj, label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBM_6option6OptionINtNtNtBM_3num7nonzero7NonZerojEEEENtNtBM_5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.k
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !35299
  %i.dk = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.di, i64 noundef range(i64 1, 17) 8) #56, !noalias !35299 ; 4 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %.noexc, label %.lr.ph.preheader.i.i

.noexc:                                           ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.di) #61
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.val15
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.preheader.i.i
  %.sroa.014.039.i.i = phi ptr [ %i.dq, %bb.l ], [ %.val, %.lr.ph.preheader.i.i ] ; 4 uses
  %.sroa.7.038.i.i = phi i64 [ %i.dp, %bb.l ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.10.037.i.i = phi i64 [ %i.do, %bb.l ], [ %.val15, %.lr.ph.preheader.i.i ]
  %i.dn = icmp eq ptr %.sroa.014.039.i.i, %i.dm
  br i1 %i.dn, label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBM_6option6OptionINtNtNtBM_3num7nonzero7NonZerojEEEENtNtBM_5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.do = add nsw i64 %.sroa.10.037.i.i, -1       ; 2 uses
  %i.dp = add nuw nsw i64 %.sroa.7.038.i.i, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.014.039.i.i, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.014.039.i.i, i64 16
  %i.ds = load i8, ptr %i.dr, align 8, !range !53, !alias.scope !35300, !noalias !35301, !noundef !28
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %.sroa.7.038.i.i ; 2 uses
  %i.du = load <2 x i64>, ptr %.sroa.014.039.i.i, align 8, !alias.scope !35300, !noalias !35301
  store <2 x i64> %i.du, ptr %i.dt, align 8, !noalias !35302
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i8 %i.ds, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !noalias !35302
  %i.dv = icmp eq i64 %i.do, 0
  br i1 %i.dv, label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBM_6option6OptionINtNtNtBM_3num7nonzero7NonZerojEEEENtNtBM_5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit, label %.lr.ph.i.i

_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveINtNtBM_6option6OptionINtNtNtBM_3num7nonzero7NonZerojEEEENtNtBM_5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit: ; preds = %.lr.ph.i.i, %bb.l, %bb.k, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit.thread
  %.sroa.5.sroa.4.0 = phi i64 [ undef, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit.thread ], [ 0, %bb.k ], [ %.val15, %bb.l ], [ %.val15, %.lr.ph.i.i ]
  %.sroa.5.sroa.0.0 = phi ptr [ undef, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit.thread ], [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.dk, %bb.l ], [ %i.dk, %.lr.ph.i.i ]
  %.sroa.0.0 = phi i64 [ -1, %_RINvNtCs9fPPV5zPXBl_5typst7compile16convert_datetimeNtNtNtCseKXfNLkF2r6_6chrono6offset5local5LocalEB4_.exit.thread ], [ 0, %bb.k ], [ %.val15, %bb.l ], [ %.val15, %.lr.ph.i.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 239
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.dx, ptr noundef nonnull align 1 dereferenceable(3) %i.dw, i64 3, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 242
  %i.dz = load i8, ptr %i.dy, align 2, !range !53, !noundef !28
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 237
  %i.eb = load i8, ptr %i.ea, align 1, !range !53, !noundef !28
  store i64 -1, ptr %0, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -2, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ed, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0, i64 12, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i8 %.sroa.3.1, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 85
  store i8 %.sroa.9.1, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 86
  store i8 %.sroa.10.1, ptr %.sroa.10.0..sroa_idx, align 2
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0, ptr %i.ee, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.5.sroa.4.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 91
  store i8 %i.dz, ptr %i.ef, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 %i.eb, ptr %i.eg, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtCs9fPPV5zPXBl_5typst7compile12compile_once(ptr noalias nofree noundef nonnull align 16 dereferenceable(592) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [96 x i8], align 8                ; 15 uses
  %i.p = alloca [96 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 14 uses
  %i.r = alloca [24 x i8], align 8                ; 11 uses
  %i.s = alloca [24 x i8], align 8                ; 14 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 16               ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [96 x i8], align 8                ; 17 uses
  %i.aa = alloca [96 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 11 uses
  %i.ac = alloca [16 x i8], align 8               ; 17 uses
  %i.ad = alloca [16 x i8], align 16              ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 11 uses
  %i.ah = alloca [32 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 11 uses
  %i.ak = alloca [32 x i8], align 8               ; 10 uses
  %i.al = alloca [8 x i8], align 8                ; 10 uses
  %i.am = alloca [24 x i8], align 8               ; 7 uses
  %i.an = alloca [112 x i8], align 8              ; 9 uses
  %i.ao = alloca [24 x i8], align 8               ; 7 uses
  %i.ap = alloca [24 x i8], align 8               ; 10 uses
  %i.aq = alloca [112 x i8], align 8              ; 13 uses
  %i.ar = alloca [8 x i8], align 8                ; 7 uses
  %i.as = alloca [48 x i8], align 8               ; 12 uses
  %i.at = alloca [24 x i8], align 8               ; 9 uses
  %i.au = alloca [96 x i8], align 8               ; 7 uses
  %i.av = alloca [24 x i8], align 8               ; 10 uses
  %i.aw = alloca [16 x i8], align 8               ; 4 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [16 x i8], align 8               ; 7 uses
  %i.az = alloca [16 x i8], align 8               ; 4 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [16 x i8], align 8               ; 8 uses
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector4path:bb.a
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector5pages(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #31 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector5query(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree readonly align 16 captures(none) %1) unnamed_addr #31 {
bb.a:
  ret { ptr, i64 } { ptr inttoptr (i64 16 to ptr), i64 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector6anchor(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #31 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector7locator(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1, i128 %2, i128 %3) unnamed_addr #37 {
bb.a:
  store i128 0, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector8document(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1, i128 %2) unnamed_addr #37 {
bb.a:
  store i128 0, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector8position(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias nofree nonnull readonly captures(none) %1, i128 %2) unnamed_addr #37 {
bb.a:
  store i64 -2, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCseKXfNLkF2r6_6chrono6format10formattingINtB4_13DelayedFormatNtNtB6_8strftime13StrftimeItemsENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 14 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [4 x i8], align 4                 ; 4 uses
  %i.n = alloca [4 x i8], align 4                 ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [4 x i8], align 4                 ; 6 uses
  %i.q = alloca [12 x i8], align 8                ; 8 uses
  %i.r = alloca [4 x i8], align 4                 ; 4 uses
  %i.s = alloca [4 x i8], align 4                 ; 4 uses
  %i.t = alloca [4 x i8], align 1                 ; 8 uses
  %i.u = alloca [4 x i8], align 1                 ; 8 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [4 x i8], align 4                 ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [4 x i8], align 4                ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [4 x i8], align 4                ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [4 x i8], align 4                ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [4 x i8], align 4                ; 4 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [4 x i8], align 4                ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [4 x i8], align 4                ; 4 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [4 x i8], align 4                ; 4 uses
  %i.ao = alloca [4 x i8], align 4                ; 7 uses
  %i.ap = alloca [96 x i8], align 8               ; 14 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [8 x i8], align 8                ; 8 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [8 x i8], align 8                ; 8 uses
  %i.ay = alloca [32 x i8], align 8               ; 7 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [8 x i8], align 8                ; 8 uses
  %i.bc = alloca [24 x i8], align 8               ; 12 uses
  %i.bd = alloca [24 x i8], align 8               ; 10 uses
  %i.be = alloca [32 x i8], align 8               ; 9 uses
  %i.bf = alloca [24 x i8], align 8               ; 169 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i64 0, ptr %i.bf, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 67 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 101 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46413)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !46414, !noalias !46415, !nonnull !28, !noundef !28
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !46414, !noalias !46415, !noundef !28
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !46414, !noalias !46415, !nonnull !28, !align !39, !noundef !28
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !46414, !noalias !46415, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !46416
  store ptr %i.bh, ptr %i.be, align 8, !noalias !46416
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.bj, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !46416
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %i.bl, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !46416
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i64 %i.bn, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !46416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !46416
  invoke void @_RNvXs_NtNtCseKXfNLkF2r6_6chrono6format8strftimeNtB4_13StrftimeItemsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bd, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.be)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.bo = load i8, ptr %i.bd, align 8, !range !108, !noalias !46416, !noundef !28
  %.not226.not.i = icmp eq i8 %i.bo, -1
  br i1 %.not226.not.i, label %.loopexit36, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.br = load i32, ptr %i.bq, align 4, !alias.scope !46412, !noalias !46413 ; 7 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.018.0.copyload.i.i = load i32, ptr %i.bs, align 8, !alias.scope !46412, !noalias !46413
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.10.0.copyload.i.i = load i32, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !alias.scope !46412, !noalias !46413 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.21.0.copyload.i.i = load i32, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !alias.scope !46412, !noalias !46413 ; 7 uses
  %i.bt = load i64, ptr %0, align 8, !range !55, !alias.scope !46412, !noalias !46413
  %.not.i37.i = icmp eq i64 %i.bt, -1             ; 4 uses
  %i.bu = trunc i32 %.sroa.018.0.copyload.i.i to i1 ; 13 uses
  %i.bv = urem i32 %.sroa.21.0.copyload.i.i, 1000000000 ; 9 uses
  %.sroa.4118.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bw = udiv i32 %.sroa.21.0.copyload.i.i, 1000
  %i.bx = urem i32 %i.bw, 1000000                 ; 2 uses
  %.sroa.4114.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.by = udiv i32 %.sroa.21.0.copyload.i.i, 1000000
  %.lhs.trunc13.i.i = trunc nuw nsw i32 %i.by to i16
  %i.bz = urem i16 %.lhs.trunc13.i.i, 1000
  %.zext14.i.i = zext nneg i16 %i.bz to i32       ; 2 uses
  %.sroa.4110.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.476.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.4106.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.4102.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.498.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ca = icmp eq i32 %i.bv, 0
  %i.cb = urem i32 %i.bv, 1000000
  %i.cc = icmp eq i32 %i.cb, 0
  %i.cd = urem i32 %i.bv, 1000
  %i.ce = icmp eq i32 %i.cd, 0
  %.sroa.494.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cf = udiv i32 %i.bv, 1000
  %.sroa.490.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.cg = udiv i32 %i.bv, 1000000
  %.sroa.486.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ch = icmp ugt i32 %.sroa.10.0.copyload.i.i, 43199 ; 3 uses
  %.146.i.i = select i1 %i.ch, ptr @90, ptr @89
  %i.ci = select i1 %i.ch, ptr getelementptr inbounds nuw (i8, ptr @90, i64 2), ptr getelementptr inbounds nuw (i8, ptr @89, i64 2)
  %.sroa.078.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 40 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 80 ; 11 uses
  %.sroa.379.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 88 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %.not140.i.i = icmp eq i32 %i.br, 0             ; 18 uses
  %i.cn = lshr i32 %i.br, 4
  %i.co = and i32 %i.cn, 511                      ; 9 uses
  %i.cp = and i32 %i.br, 7
  %i.cq = add nuw nsw i32 %i.co, %i.cp
  %.lhs.trunc9.i.i = trunc nuw nsw i32 %i.cq to i16
  %i.cr = urem i16 %.lhs.trunc9.i.i, 7            ; 6 uses
  %i.cs = icmp samesign ult i16 %i.cr, 6          ; 2 uses
  %narrow58.i.i = add nuw nsw i16 %i.cr, 1
  %narrow59.i.i = select i1 %i.cs, i16 %narrow58.i.i, i16 0
  %i.ct = zext nneg i16 %narrow59.i.i to i64      ; 2 uses
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr @88, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr @80, i64 %i.ct ; 2 uses
  %i.cx = lshr i32 %i.br, 3                       ; 3 uses
  %i.cy = and i32 %i.cx, 1023                     ; 7 uses
  %i.cz = zext nneg i32 %i.cy to i64              ; 7 uses
  %i.da = icmp samesign ult i32 %i.cy, 733        ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr @55, i64 %i.cz ; 6 uses
  %i.dc = icmp ne i32 %i.br, 0
  %or.cond5.i.i = select i1 %i.dc, i1 %i.bu, i1 false ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.de = load i32, ptr %i.dd, align 8, !alias.scope !46412, !noalias !46413 ; 7 uses
  %i.df = ashr i32 %i.br, 13                      ; 13 uses
  %or.cond.i93.i = icmp ult i32 %i.df, 10000      ; 2 uses
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.lhs.trunc.i96.i = trunc nuw nsw i32 %i.df to i16 ; 2 uses
  %i.dg = udiv i16 %.lhs.trunc.i96.i, 100
  %i.dh = trunc nuw nsw i16 %i.dg to i8           ; 2 uses
  %i.di = udiv i8 %i.dh, 10
  %i.dj = or disjoint i8 %i.di, 48                ; 2 uses
  %i.dk = urem i8 %i.dh, 10
  %i.dl = or disjoint i8 %i.dk, 48                ; 2 uses
  %2 = trunc i32 %i.cx to i8                      ; 2 uses
  %i.dm = urem i32 %.sroa.10.0.copyload.i.i, 60   ; 2 uses
  %i.dn = udiv i32 %.sroa.10.0.copyload.i.i, 60
  %i.do = urem i32 %i.dn, 60
  %i.dp = udiv i32 %.sroa.10.0.copyload.i.i, 3600 ; 2 uses
  %i.dq = icmp ugt i32 %.sroa.21.0.copyload.i.i, 999999999 ; 2 uses
  %i.dr = add i32 %.sroa.21.0.copyload.i.i, -1000000000
  %storemerge.i.i = select i1 %i.dq, i32 %i.dr, i32 %.sroa.21.0.copyload.i.i ; 6 uses
  %i.ds = zext i1 %i.dq to i32
  %.sroa.04.0.i.i = add nuw nsw i32 %i.dm, %i.ds
  %i.dt = trunc i32 %i.dp to i8                   ; 4 uses
  %i.du = icmp ugt i8 %i.dt, 99                   ; 2 uses
  %i.dv = udiv i8 %i.dt, 10
  %i.dw = or disjoint i8 %i.dv, 48                ; 2 uses
  %i.dx = urem i8 %i.dt, 10
  %i.dy = or disjoint i8 %i.dx, 48                ; 2 uses
  %i.dz = trunc nuw nsw i32 %i.do to i8           ; 3 uses
  %i.ea = udiv i8 %i.dz, 10
  %i.eb = or disjoint i8 %i.ea, 48                ; 2 uses
  %i.ec = urem i8 %i.dz, 10
  %i.ed = or disjoint i8 %i.ec, 48                ; 2 uses
  %i.ee = trunc nuw nsw i32 %.sroa.04.0.i.i to i8 ; 2 uses
  %i.ef = udiv i8 %i.ee, 10
  %i.eg = or disjoint i8 %i.ef, 48
  %i.eh = urem i8 %i.ee, 10
  %i.ei = or disjoint i8 %i.eh, 48
  %i.ej = icmp eq i32 %storemerge.i.i, 0
  %i.ek = urem i32 %storemerge.i.i, 1000000
  %i.el = icmp eq i32 %i.ek, 0
  %i.em = urem i32 %storemerge.i.i, 1000
  %i.en = icmp eq i32 %i.em, 0
  %.sroa.429.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.eo = udiv i32 %storemerge.i.i, 1000
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ep = udiv i32 %storemerge.i.i, 1000000
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.eq = urem i16 %.lhs.trunc.i96.i, 100
  %i.er = trunc nuw nsw i16 %i.eq to i8           ; 2 uses
  %i.es = udiv i8 %i.er, 10
  %i.et = or disjoint i8 %i.es, 48
  %i.eu = urem i8 %i.er, 10
  %i.ev = or disjoint i8 %i.eu, 48
  %i.ew = udiv i32 %.sroa.21.0.copyload.i.i, 1000000000
  %i.ex = add nuw nsw i32 %i.ew, %i.dm
  %i.ey = trunc nuw nsw i32 %i.ex to i8           ; 3 uses
  %i.ez = udiv i8 %i.ey, 10
  %i.fa = or disjoint i8 %i.ez, 48
  %i.fb = urem i8 %i.ey, 10
  %i.fc = or disjoint i8 %i.fb, 48
  %i.fd = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.fe = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.fg = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.fh = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.fk = sext i32 %i.de to i64
  %.sroa.055.0.i.i = select i1 %.not.i37.i, i64 0, i64 %i.fk
  %i.fl = add nsw i32 %i.df, -1
  %i.fm = icmp slt i32 %i.df, 1                   ; 2 uses
  %i.fn = sub nsw i32 1, %i.df
  %i.fo = udiv i32 %i.fn, 400
  %i.fp = add nuw nsw i32 %i.fo, 1                ; 2 uses
  %i.fq = mul nuw nsw i32 %i.fp, 400
  %.neg.i.i = mul nsw i32 %i.fp, -146097
  %i.fr = zext i32 %.sroa.10.0.copyload.i.i to i64
  %i.fs = add nuw nsw i32 %i.co, -719163
  %i.ft = sub nsw i64 %i.fr, %.sroa.055.0.i.i
  %.sroa.426.0..sroa_idx.i116.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.445.0..sroa_idx.i117.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.430.0..sroa_idx.i120.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.439.0..sroa_idx.i121.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.434.0..sroa_idx.i123.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.fw = zext nneg i32 %i.bv to i64
  %.sroa.426.0..sroa_idx.i105.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.445.0..sroa_idx.i106.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.430.0..sroa_idx.i109.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.439.0..sroa_idx.i110.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.434.0..sroa_idx.i112.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.fz = urem i32 %i.dp, 12                      ; 2 uses
  %i.ga = icmp eq i32 %i.fz, 0
  %i.gb = trunc nuw nsw i32 %i.fz to i8
  %i.gc = select i1 %i.ga, i8 12, i8 %i.gb
  %i.gd = zext nneg i32 %i.co to i64
  %.sroa.426.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.445.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.sroa.430.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.439.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.434.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %switch.idx.cast.i.i = trunc nuw nsw i16 %i.cr to i8
  %switch.offset.i.i = add nuw nsw i8 %switch.idx.cast.i.i, 49
  %i.gg = trunc i32 %i.br to i8
  %i.gh = and i8 %i.gg, 15                        ; 4 uses
  %i.gi = trunc nuw nsw i32 %i.co to i16
  %i.gj = add nuw nsw i16 %i.gi, 6
  %.lhs.trunc1.i101.i.i = sub nuw nsw i16 %i.gj, %i.cr
  %i.gk = udiv i16 %.lhs.trunc1.i101.i.i, 7
  %i.gl = trunc nuw nsw i16 %i.gk to i8
  %spec.select.i96.i.i = zext nneg i16 %i.cr to i32 ; 2 uses
  %i.gm = add nuw nsw i32 %spec.select.i96.i.i, 7
  %.pn.i.i.i = select i1 %i.cs, i32 %i.gm, i32 %spec.select.i96.i.i
  %.sroa.0.0.neg.i.i.i = add nuw nsw i32 %i.co, 6
  %i.gn = sub nsw i32 %.sroa.0.0.neg.i.i.i, %.pn.i.i.i
  %i.go = trunc nsw i32 %i.gn to i16
  %.lhs.trunc1.i.i.i = add nsw i16 %i.go, 6
  %i.gp = sdiv i16 %.lhs.trunc1.i.i.i, 7
  %i.gq = trunc nuw nsw i16 %i.gp to i8
  %i.gr = srem i32 %i.df, 100                     ; 4 uses
  %i.gs = icmp slt i32 %i.gr, 0
  %i.gt = add nsw i32 %i.gr, 100
  %spec.select.i.i.i = select i1 %i.gs, i32 %i.gt, i32 %i.gr
  %i.gu = trunc nuw nsw i32 %spec.select.i.i.i to i8
  %i.gv = sdiv i32 %i.df, 100
  %.lobit.i.i.i = ashr i32 %i.gr, 31
  %.sroa.0.0.i.i.i = add nsw i32 %.lobit.i.i.i, %i.gv
  %i.gw = trunc i32 %.sroa.0.0.i.i.i to i8
  %.sroa.03.0.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 6 uses
  %spec.select.i = select i1 %i.fm, i32 %.neg.i.i, i32 0
  %i.gy = select i1 %i.fm, i32 %i.fq, i32 0
  %spec.select228.i = add nsw i32 %i.fl, %i.gy    ; 2 uses
  %i.gz = sdiv i32 %spec.select228.i, 100         ; 2 uses
  %i.ha = mul nsw i32 %spec.select228.i, 1461
  %i.hb = ashr i32 %i.ha, 2
  %i.hc = ashr i32 %i.gz, 2
  %i.hd = add i32 %i.fs, %spec.select.i
  %i.he = sub i32 %i.hd, %i.gz
  %i.hf = add i32 %i.he, %i.hb
  %narrow.i.i = add i32 %i.hf, %i.hc
  %i.hg = sext i32 %narrow.i.i to i64
  %i.hh = mul nsw i64 %i.hg, 86400
  %i.hi = add nsw i64 %i.ft, %i.hh
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.hn = insertelement <2 x ptr> poison, ptr %.146.i.i, i64 0
  %i.ho = insertelement <2 x ptr> %i.hn, ptr %i.ci, i64 1
  %i.hp = shl nuw nsw i16 %i.cr, 3
  %switch.shiftamt = zext nneg i16 %i.hp to i56
  %switch.downshift = lshr i56 13570401019048497, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %bb.b

.loopexit.i:                                      ; preds = %.noexc53.i, %.noexc.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.ci, %.noexc163.i.i, %.noexc.peel.i.i
  %lpad.loopexit182.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit73.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit68.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit63.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit58.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit53.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit.i, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.al, %bb.aj, %bb.ah, %bb.ep, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i84.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit85.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit80.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit75.i.i, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fq, %bb.fp, %bb.fo, %bb.fm, %bb.fl, %bb.fj, %bb.fh, %bb.fg, %bb.ff, %bb.fd, %bb.fc, %bb.fa, %bb.ez, %bb.ew, %bb.et, %bb.es, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs9fPPV5zPXBl_5typst.exit.thread.i.i, %.noexc161.i, %bb.en, %bb.em, %bb.el, %bb.ej, %bb.ei, %bb.eh, %bb.ef, %bb.ee, %bb.ec, %bb.ea, %bb.dz, %bb.dx, %bb.dw, %bb.dv, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i19.i.i, %bb.dt, %bb.dr, %bb.dp, %bb.do, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i12.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i136.i, %bb.dj, %bb.di, %bb.db, %bb.da, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit224.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit219.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit214.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit209.i.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit199.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i198.i.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit191.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i190.i.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit183.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i182.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit180.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit175.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i167.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i164.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i168.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i161.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i157.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i153.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit58.i115.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit53.i119.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit.i122.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit58.i104.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit53.i108.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit.i111.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit58.i.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit53.i.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit.i.i.i, %bb.av, %bb.au, %bb.at, %bb.ao, %bb.an, %bb.am
  %lpad.loopexit185.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke326.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit182.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit185.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCseKXfNLkF2r6_6chrono6format4ItemECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bc) #62
  br label %.body

bb.b:                                             ; preds = %.noexc4, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !46416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false), !noalias !46416
  %i.hq = load i8, ptr %i.bc, align 8, !range !87, !noalias !46416, !noundef !28
  switch i8 %i.hq, label %default.unreachable [
    i8 0, label %bb.fz
    i8 1, label %bb.gb
    i8 2, label %bb.fz
    i8 3, label %bb.gb
    i8 4, label %bb.c
    i8 5, label %bb.ay
    i8 6, label %.loopexit
  ]

default.unreachable:                              ; preds = %_RNvMNtNtCseKXfNLkF2r6_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i, %bb.ax, %bb.aw, %bb.af, %bb.y, %bb.x, %bb.c, %bb.b
  unreachable
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCseKXfNLkF2r6_6chrono6format10formattingINtB4_13DelayedFormatNtNtB6_8strftime13StrftimeItemsENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCs9fPPV5zPXBl_5typst:bb.a
  %i.is = phi ptr [ %.pre4.i.i, %.noexc23 ], [ %i.im, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i.i18 ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.io
  store i8 %i.ip, ptr %i.it, align 1, !noalias !46429
  %i.iu = add nuw nsw i64 %i.ih, 2                ; 3 uses
  store i64 %i.iu, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46429
  %i.iv = trunc nuw nsw i16 %i.ic to i8           ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46431)
  %i.iw = udiv i8 %i.iv, 10
  %i.ix = urem i8 %i.iv, 10
  %i.iy = or disjoint i8 %i.iw, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !46432)
  call void @llvm.experimental.noalias.scope.decl(metadata !46433)
  %i.iz = icmp eq i64 %i.ir, %i.iu
  br i1 %i.iz, label %bb.ad, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i2.i, !prof !38

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.ir, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc24:                                         ; preds = %bb.ad
  %.pre.i5.i = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46434
  %.pre11.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46435
  br label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i2.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i2.i: ; preds = %.noexc24, %bb.ac
  %i.ja = phi ptr [ %.pre11.i, %.noexc24 ], [ %i.is, %bb.ac ] ; 2 uses
  %i.jb = phi i64 [ %.pre.i5.i, %.noexc24 ], [ %i.ir, %bb.ac ] ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.iu
  store i8 %i.iy, ptr %i.jc, align 1, !noalias !46435
  %i.jd = add nuw i64 %i.ih, 3                    ; 3 uses
  store i64 %i.jd, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46435
  %i.je = or disjoint i8 %i.ix, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !46436)
  call void @llvm.experimental.noalias.scope.decl(metadata !46437)
  %i.jf = icmp eq i64 %i.jb, %i.jd
  br i1 %i.jf, label %bb.ae, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.thread, !prof !38

bb.ae:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i2.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.jb, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc25:                                         ; preds = %bb.ae
  %.pre4.i4.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46438
  br label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.thread

_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.thread: ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i2.i, %.noexc25
  %i.jg = phi ptr [ %.pre4.i4.i, %.noexc25 ], [ %i.ja, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i2.i ]
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jd
  store i8 %i.je, ptr %i.jh, align 1, !noalias !46438
  %i.ji = add nuw i64 %i.ih, 4
  store i64 %i.ji, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46438
  br label %.critedge.i

.invoke325.i:                                     ; preds = %.noexc20.i, %bb.as, %bb.aq, %.noexc12.i, %.noexc10.i, %bb.u, %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.f, %bb.e
  %i.jj = phi i8 [ %i.dz, %bb.t ], [ %i.gw, %bb.e ], [ %i.kq, %.noexc10.i ], [ %i.kw, %.noexc12.i ], [ %i.lb, %bb.aq ], [ %i.lg, %bb.as ], [ %i.gu, %bb.f ], [ %i.gq, %bb.l ], [ %i.lk, %.noexc20.i ], [ %i.gl, %bb.m ], [ %i.dt, %bb.r ], [ %i.gc, %bb.s ], [ %i.ey, %bb.u ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46439)
  %i.jk = udiv i8 %i.jj, 10
  %i.jl = urem i8 %i.jj, 10
  %i.jm = icmp ult i8 %i.jj, 10
  br i1 %i.jm, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.invoke325.i
  switch i8 %i.hr, label %default.unreachable [
    i8 0, label %._crit_edge.i
    i8 2, label %bb.ak
    i8 1, label %bb.ag
  ]

._crit_edge.i:                                    ; preds = %bb.af
  %.pre.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46440
  br label %bb.ai

bb.ag:                                            ; preds = %bb.af, %.invoke325.i
  %i.jn = add nuw nsw i8 %i.jk, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !46441)
  call void @llvm.experimental.noalias.scope.decl(metadata !46442)
  %i.jo = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46443, !noundef !28 ; 5 uses
  %i.jp = icmp sgt i64 %i.jo, -1
  call void @llvm.assume(i1 %i.jp)
  %i.jq = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46444, !noundef !28
  %i.jr = icmp eq i64 %i.jq, %i.jo
  br i1 %i.jr, label %bb.ah, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i, !prof !38

bb.ah:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.jo, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i: ; preds = %bb.ah, %bb.ag
  %i.js = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46443, !nonnull !28, !noundef !28
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jo
  store i8 %i.jn, ptr %i.jt, align 1, !noalias !46443
  %i.ju = add nuw i64 %i.jo, 1                    ; 2 uses
  store i64 %i.ju, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46443
  br label %bb.ai

bb.ai:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit6.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i, %._crit_edge.i
  %i.jv = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.kf, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit6.i ], [ %i.ju, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46445)
  call void @llvm.experimental.noalias.scope.decl(metadata !46446)
  %i.jw = icmp sgt i64 %i.jv, -1
  call void @llvm.assume(i1 %i.jw)
  %i.jx = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46447, !noundef !28
  %i.jy = icmp eq i64 %i.jx, %i.jv
  br i1 %i.jy, label %bb.aj, label %_RINvNvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit, !prof !38

bb.aj:                                            ; preds = %bb.ai
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.jv, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %_RINvNvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.ak:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !46448)
  call void @llvm.experimental.noalias.scope.decl(metadata !46449)
  %i.jz = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46450, !noundef !28 ; 5 uses
  %i.ka = icmp sgt i64 %i.jz, -1
  call void @llvm.assume(i1 %i.ka)
  %i.kb = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46451, !noundef !28
  %i.kc = icmp eq i64 %i.kb, %i.jz
  br i1 %i.kc, label %bb.al, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit6.i, !prof !38

bb.al:                                            ; preds = %bb.ak
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.jz, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit6.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit6.i: ; preds = %bb.al, %bb.ak
  %i.kd = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46450, !nonnull !28, !noundef !28
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.jz
  store i8 32, ptr %i.ke, align 1, !noalias !46450
  %i.kf = add nuw i64 %i.jz, 1                    ; 2 uses
  store i64 %i.kf, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46450
  br label %bb.ai

_RINvNvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.aj, %bb.ai
  %i.kg = or disjoint i8 %i.jl, 48
  %i.kh = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46440, !nonnull !28, !noundef !28
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.jv
  store i8 %i.kg, ptr %i.ki, align 1, !noalias !46440
  %i.kj = add nuw i64 %i.jv, 1
  store i64 %i.kj, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46440
  br label %.critedge.i

bb.am:                                            ; preds = %bb.g
  %i.kk = invoke noundef i32 @_RNvMNtNtCseKXfNLkF2r6_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.df, i32 noundef %i.co, i8 noundef %i.gh)
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc8.i:                                        ; preds = %bb.am
  %i.kl = ashr i32 %i.kk, 10
  br label %.invoke.i

bb.an:                                            ; preds = %bb.h
  %i.km = invoke noundef i32 @_RNvMNtNtCseKXfNLkF2r6_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.df, i32 noundef %i.co, i8 noundef %i.gh)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc10.i:                                       ; preds = %bb.an
  %i.kn = ashr i32 %i.km, 10                      ; 2 uses
  %i.ko = sdiv i32 %i.kn, 100
  %i.kp = srem i32 %i.kn, 100
  %.lobit.i93.i.i = ashr i32 %i.kp, 31
  %.sroa.0.0.i94.i.i = add nsw i32 %.lobit.i93.i.i, %i.ko
  %i.kq = trunc i32 %.sroa.0.0.i94.i.i to i8
  br label %.invoke325.i

bb.ao:                                            ; preds = %bb.i
  %i.kr = invoke noundef i32 @_RNvMNtNtCseKXfNLkF2r6_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.df, i32 noundef %i.co, i8 noundef %i.gh)
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc12.i:                                       ; preds = %bb.ao
  %i.ks = ashr i32 %i.kr, 10
  %i.kt = srem i32 %i.ks, 100                     ; 3 uses
  %i.ku = icmp slt i32 %i.kt, 0
  %i.kv = add nsw i32 %i.kt, 100
  %spec.select.i95.i.i = select i1 %i.ku, i32 %i.kv, i32 %i.kt
  %i.kw = trunc nuw nsw i32 %spec.select.i95.i.i to i8
  br label %.invoke325.i

bb.ap:                                            ; preds = %bb.j
  br i1 %i.da, label %bb.aq, label %.invoke326.i

bb.aq:                                            ; preds = %bb.ap
  %i.kx = load i8, ptr %i.db, align 1, !noalias !46452, !noundef !28
  %i.ky = zext i8 %i.kx to i32
  %i.kz = add nuw nsw i32 %i.cy, %i.ky
  %i.la = lshr i32 %i.kz, 6
  %i.lb = trunc nuw nsw i32 %i.la to i8
  br label %.invoke325.i

.invoke326.i:                                     ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i94.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit16.i.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit13.i.i, %bb.br, %bb.bq, %bb.bo, %bb.bm, %bb.ar, %bb.ap
  %i.lc = phi i64 [ %i.cz, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit13.i.i ], [ %i.cz, %bb.ap ], [ %i.cz, %bb.ar ], [ %i.nh, %bb.br ], [ %i.mp, %bb.bo ], [ %i.yb, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit16.i.i ], [ %i.cz, %bb.bm ], [ %i.cz, %bb.bq ], [ %i.cz, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i94.i ]
  %i.ld = phi i64 [ 733, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit13.i.i ], [ 733, %bb.ap ], [ 733, %bb.ar ], [ 12, %bb.br ], [ 12, %bb.bo ], [ 12, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit16.i.i ], [ 733, %bb.bm ], [ 733, %bb.bq ], [ 733, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i94.i ]
  %i.le = phi ptr [ @57, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit13.i.i ], [ @57, %bb.ap ], [ @57, %bb.ar ], [ @72, %bb.br ], [ @59, %bb.bo ], [ @222, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit16.i.i ], [ @57, %bb.bm ], [ @57, %bb.bq ], [ @57, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i94.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.lc, i64 noundef %i.ld, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.le) #65
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke326.i
  unreachable

bb.ar:                                            ; preds = %bb.k
  br i1 %i.da, label %bb.as, label %.invoke326.i

bb.as:                                            ; preds = %bb.ar
  %i.lf = load i8, ptr %i.db, align 1, !noalias !46452, !noundef !28
  %3 = add i8 %i.lf, %2
  %4 = lshr i8 %3, 1
  %i.lg = and i8 %4, 31
  br label %.invoke325.i

bb.at:                                            ; preds = %bb.n
  %i.lh = invoke noundef i32 @_RNvMNtNtCseKXfNLkF2r6_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.df, i32 noundef %i.co, i8 noundef %i.gh)
          to label %.noexc20.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc20.i:                                       ; preds = %bb.at
  %i.li = lshr i32 %i.lh, 4
  %i.lj = trunc i32 %i.li to i8
  %i.lk = and i8 %i.lj, 63
  br label %.invoke325.i

switch.lookup:                                    ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !46453)
  call void @llvm.experimental.noalias.scope.decl(metadata !46454)
  %i.ll = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46455, !noalias !46456, !noundef !28 ; 5 uses
  %i.lm = icmp sgt i64 %i.ll, -1
  call void @llvm.assume(i1 %i.lm)
  %i.ln = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46457, !noalias !46456, !noundef !28
  %i.lo = icmp eq i64 %i.ln, %i.ll
  br i1 %i.lo, label %bb.au, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i.i, !prof !38

bb.au:                                            ; preds = %switch.lookup
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.ll, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i.i: ; preds = %bb.au, %switch.lookup
  %i.lp = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46455, !noalias !46456, !nonnull !28, !noundef !28
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.ll
  store i8 %switch.masked, ptr %i.lq, align 1, !noalias !46458
  %i.lr = add nuw i64 %i.ll, 1
  store i64 %i.lr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46455, !noalias !46456
  br label %.critedge.i

switch.lookup.i.i:                                ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !46459)
  call void @llvm.experimental.noalias.scope.decl(metadata !46460)
  %i.ls = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46461, !noalias !46456, !noundef !28 ; 5 uses
  %i.lt = icmp sgt i64 %i.ls, -1
  call void @llvm.assume(i1 %i.lt)
  %i.lu = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46462, !noalias !46456, !noundef !28
  %i.lv = icmp eq i64 %i.lu, %i.ls
  br i1 %i.lv, label %bb.av, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit103.i.i, !prof !38

bb.av:                                            ; preds = %switch.lookup.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.ls, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit103.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit103.i.i: ; preds = %bb.av, %switch.lookup.i.i
  %i.lw = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46461, !noalias !46456, !nonnull !28, !noundef !28
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.ls
  store i8 %switch.offset.i.i, ptr %i.lx, align 1, !noalias !46463
  %i.ly = add nuw i64 %i.ls, 1
  store i64 %i.ly, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46461, !noalias !46456
  br label %.critedge.i

bb.aw:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !46452
  store i64 %i.gd, ptr %i.bb, align 8, !noalias !46464
  switch i8 %i.hr, label %default.unreachable [
    i8 0, label %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit.i.i.i
    i8 1, label %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit53.i.i.i
    i8 2, label %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit58.i.i.i
  ]

_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !46464
  store ptr %i.bb, ptr %i.ba, align 8, !noalias !46464
  store ptr @_RNvXse_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx.i.i.i, align 8, !noalias !46464
  %i.lz = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @712, ptr noundef nonnull @95, ptr noundef nonnull %i.ba)
          to label %.noexc24.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc24.i:                                       ; preds = %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !46464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !46452
  br i1 %i.lz, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i, label %.critedge.i

_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit53.i.i.i: ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !46464
  store ptr %i.bb, ptr %i.az, align 8, !noalias !46464
  store ptr @_RNvXse_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx.i.i.i, align 8, !noalias !46464
  store ptr null, ptr %i.gf, align 8, !noalias !46464
  store i16 3, ptr %.sroa.439.0..sroa_idx.i.i.i, align 8, !noalias !46464
  %i.ma = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @712, ptr noundef nonnull @233, ptr noundef nonnull %i.az)
          to label %_RINvNvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit58.i.i.i: ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !46464
  store ptr %i.bb, ptr %i.ay, align 8, !noalias !46464
  store ptr @_RNvXse_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx.i.i.i, align 8, !noalias !46464
  store ptr null, ptr %i.ge, align 8, !noalias !46464
  store i16 3, ptr %.sroa.445.0..sroa_idx.i.i.i, align 8, !noalias !46464
  %i.mb = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @712, ptr noundef nonnull @234, ptr noundef nonnull %i.ay)
          to label %.noexc26.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc26.i:                                       ; preds = %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit58.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !46464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !46452
  br i1 %i.mb, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i, label %.critedge.i

_RINvNvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit53.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !46464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !46452
  br i1 %i.ma, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i, label %.critedge.i

bb.ax:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !46452
  store i64 %i.fw, ptr %i.ax, align 8, !noalias !46465
  switch i8 %i.hr, label %default.unreachable [
    i8 0, label %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit.i111.i.i
    i8 1, label %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit53.i108.i.i
    i8 2, label %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit58.i104.i.i
  ]

_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit.i111.i.i: ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !46465
  store ptr %i.ax, ptr %i.aw, align 8, !noalias !46465
  store ptr @_RNvXse_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx.i112.i.i, align 8, !noalias !46465
  %i.mc = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @712, ptr noundef nonnull @95, ptr noundef nonnull %i.aw)
          to label %.noexc31.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc31.i:                                       ; preds = %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit.i111.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !46465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !46452
  br i1 %i.mc, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i, label %.critedge.i

_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit53.i108.i.i: ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !46465
  store ptr %i.ax, ptr %i.av, align 8, !noalias !46465
  store ptr @_RNvXse_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx.i109.i.i, align 8, !noalias !46465
  store ptr null, ptr %i.fy, align 8, !noalias !46465
  store i16 9, ptr %.sroa.439.0..sroa_idx.i110.i.i, align 8, !noalias !46465
  %i.md = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @712, ptr noundef nonnull @233, ptr noundef nonnull %i.av)
          to label %_RINvNvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit114.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit58.i104.i.i: ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !46465
  store ptr %i.ax, ptr %i.au, align 8, !noalias !46465
  store ptr @_RNvXse_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx.i105.i.i, align 8, !noalias !46465
  store ptr null, ptr %i.fx, align 8, !noalias !46465
  store i16 9, ptr %.sroa.445.0..sroa_idx.i106.i.i, align 8, !noalias !46465
  %i.me = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @712, ptr noundef nonnull @234, ptr noundef nonnull %i.au)
          to label %.noexc33.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc33.i:                                       ; preds = %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit58.i104.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !46465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !46452
  br i1 %i.me, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i, label %.critedge.i

_RINvNvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit114.i.i: ; preds = %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit53.i108.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !46465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !46452
  br i1 %i.md, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i, label %.critedge.i

_RNvMNtNtCseKXfNLkF2r6_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i: ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !46452
  store i64 %i.hi, ptr %i.at, align 8, !noalias !46466
  switch i8 %i.hr, label %default.unreachable [
    i8 0, label %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit.i122.i.i
    i8 1, label %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit53.i119.i.i
    i8 2, label %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit58.i115.i.i
  ]

_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit.i122.i.i: ; preds = %_RNvMNtNtCseKXfNLkF2r6_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !46466
  store ptr %i.at, ptr %i.as, align 8, !noalias !46466
  store ptr @_RNvXse_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx.i123.i.i, align 8, !noalias !46466
  %i.mf = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @712, ptr noundef nonnull @95, ptr noundef nonnull %i.as)
          to label %.noexc34.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc34.i:                                       ; preds = %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit.i122.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !46466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !46452
  br i1 %i.mf, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i, label %.critedge.i

_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit53.i119.i.i: ; preds = %_RNvMNtNtCseKXfNLkF2r6_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !46466
  store ptr %i.at, ptr %i.ar, align 8, !noalias !46466
  store ptr @_RNvXse_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx.i120.i.i, align 8, !noalias !46466
  store ptr null, ptr %i.fv, align 8, !noalias !46466
  store i16 9, ptr %.sroa.439.0..sroa_idx.i121.i.i, align 8, !noalias !46466
  %i.mg = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @712, ptr noundef nonnull @233, ptr noundef nonnull %i.ar)
          to label %_RINvNvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit125.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit58.i115.i.i: ; preds = %_RNvMNtNtCseKXfNLkF2r6_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !46466
  store ptr %i.at, ptr %i.aq, align 8, !noalias !46466
  store ptr @_RNvXse_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx.i116.i.i, align 8, !noalias !46466
  store ptr null, ptr %i.fu, align 8, !noalias !46466
  store i16 9, ptr %.sroa.445.0..sroa_idx.i117.i.i, align 8, !noalias !46466
  %i.mh = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @712, ptr noundef nonnull @234, ptr noundef nonnull %i.aq)
          to label %.noexc36.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc36.i:                                       ; preds = %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit58.i115.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !46466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !46452
  br i1 %i.mh, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i, label %.critedge.i

_RINvNvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit125.i.i: ; preds = %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit53.i119.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !46466
end_hunk_2
begin_hunk_3_@_RNvXs_NtNtCseKXfNLkF2r6_6chrono6format10formattingINtB4_13DelayedFormatNtNtB6_8strftime13StrftimeItemsENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCs9fPPV5zPXBl_5typst:bb.a

bb.em:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit51.i129.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.aav, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc159.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc159.i:                                      ; preds = %bb.em
  %.pre.i55.i132.i = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46689, !noalias !46595
  %.pre76.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46690, !noalias !46595
  br label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i52.i130.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i52.i130.i: ; preds = %.noexc159.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit51.i129.i
  %i.aba = phi ptr [ %.pre76.i.i, %.noexc159.i ], [ %i.aaw, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit51.i129.i ] ; 2 uses
  %i.abb = phi i64 [ %.pre.i55.i132.i, %.noexc159.i ], [ %i.aav, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit51.i129.i ] ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aba, i64 %i.aay
  store i8 %i.fa, ptr %i.abc, align 1, !noalias !46691
  %i.abd = add nuw i64 %i.yn, 16                  ; 3 uses
  store i64 %i.abd, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46690, !noalias !46595
  call void @llvm.experimental.noalias.scope.decl(metadata !46692)
  call void @llvm.experimental.noalias.scope.decl(metadata !46693)
  %i.abe = icmp eq i64 %i.abb, %i.abd
  br i1 %i.abe, label %bb.en, label %bb.eo, !prof !38

bb.en:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i52.i130.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.abb, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc160.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc160.i:                                      ; preds = %bb.en
  %.pre4.i54.i131.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46694, !noalias !46595
  br label %bb.eo

bb.eo:                                            ; preds = %.noexc160.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i52.i130.i
  %i.abf = phi ptr [ %.pre4.i54.i131.i, %.noexc160.i ], [ %i.aba, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i52.i130.i ]
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 %i.abd
  store i8 %i.fc, ptr %i.abg, align 1, !noalias !46695
  %i.abh = add nuw nsw i64 %i.yn, 17              ; 4 uses
  store i64 %i.abh, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46694, !noalias !46595
  call void @llvm.experimental.noalias.scope.decl(metadata !46696)
  call void @llvm.experimental.noalias.scope.decl(metadata !46697)
  %i.abi = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46698, !noundef !28
  %i.abj = icmp eq i64 %i.abi, %i.abh
  br i1 %i.abj, label %bb.ep, label %.noexc161.i, !prof !38

bb.ep:                                            ; preds = %bb.eo
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.abh, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc161.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc161.i:                                      ; preds = %bb.eo, %bb.ep
  %i.abk = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46699, !nonnull !28, !noundef !28
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.abh
  store i8 32, ptr %i.abl, align 1, !noalias !46699
  %i.abm = add nuw i64 %i.yn, 18
  store i64 %i.abm, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46699
  %i.abn = invoke fastcc noundef zeroext i1 @_RINvMs0_NtNtCseKXfNLkF2r6_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) @223, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i32 noundef %i.de)
          to label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.eq:                                            ; preds = %bb.de
  call void @llvm.experimental.noalias.scope.decl(metadata !46700)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !46701
  store i32 %i.df, ptr %i.p, align 4, !noalias !46701
  br i1 %or.cond.i93.i, label %bb.er, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs9fPPV5zPXBl_5typst.exit.thread.i.i

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs9fPPV5zPXBl_5typst.exit.thread.i.i: ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !46701
  store ptr %i.p, ptr %i.o, align 8, !noalias !46701
  store ptr @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !46701
  %i.abo = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @712, ptr noundef nonnull @224, ptr noundef nonnull %i.o)
          to label %.noexc98.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc98.i:                                       ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs9fPPV5zPXBl_5typst.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !46701
  br i1 %i.abo, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.thread.i, label %bb.eu

bb.er:                                            ; preds = %bb.eq
  call void @llvm.experimental.noalias.scope.decl(metadata !46702)
  call void @llvm.experimental.noalias.scope.decl(metadata !46703)
  call void @llvm.experimental.noalias.scope.decl(metadata !46704)
  %i.abp = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46705, !noalias !46706, !noundef !28 ; 8 uses
  %i.abq = icmp sgt i64 %i.abp, -1
  call void @llvm.assume(i1 %i.abq)
  %i.abr = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46707, !noalias !46706, !noundef !28 ; 2 uses
  %i.abs = icmp eq i64 %i.abr, %i.abp
  br i1 %i.abs, label %bb.es, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i.i.i, !prof !38

bb.es:                                            ; preds = %bb.er
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.abp, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc99.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc99.i:                                       ; preds = %bb.es
  %.pre.i.i97.i = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46708, !noalias !46706
  br label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i.i.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i.i.i: ; preds = %.noexc99.i, %bb.er
  %i.abt = phi i64 [ %.pre.i.i97.i, %.noexc99.i ], [ %i.abr, %bb.er ] ; 2 uses
  %i.abu = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46705, !noalias !46706, !nonnull !28, !noundef !28 ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 %i.abp
  store i8 %i.dj, ptr %i.abv, align 1, !noalias !46709
  %i.abw = add nuw nsw i64 %i.abp, 1              ; 3 uses
  store i64 %i.abw, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46705, !noalias !46706
  call void @llvm.experimental.noalias.scope.decl(metadata !46710)
  call void @llvm.experimental.noalias.scope.decl(metadata !46711)
  %i.abx = icmp eq i64 %i.abt, %i.abw
  br i1 %i.abx, label %bb.et, label %bb.ex, !prof !38

bb.et:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.abt, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc100.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc100.i:                                      ; preds = %bb.et
  %.pre4.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46712, !noalias !46706
  br label %bb.ex

bb.eu:                                            ; preds = %.noexc98.i
  %.pre.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46713, !noalias !46706
  br label %bb.ev

bb.ev:                                            ; preds = %_RINvNtNtCseKXfNLkF2r6_6chrono6format10formatting14write_hundredsNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit37.i.i, %bb.eu
  %i.aby = phi i64 [ %i.ada, %_RINvNtNtCseKXfNLkF2r6_6chrono6format10formatting14write_hundredsNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit37.i.i ], [ %.pre.i.i, %bb.eu ] ; 19 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46714)
  call void @llvm.experimental.noalias.scope.decl(metadata !46715)
  %i.abz = icmp sgt i64 %i.aby, -1
  call void @llvm.assume(i1 %i.abz)
  %i.aca = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46716, !noalias !46706, !noundef !28
  %i.acb = icmp eq i64 %i.aca, %i.aby
  br i1 %i.acb, label %bb.ew, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i94.i, !prof !38

bb.ew:                                            ; preds = %bb.ev
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.aby, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i94.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i94.i: ; preds = %bb.ew, %bb.ev
  %i.acc = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46713, !noalias !46706, !nonnull !28, !noundef !28
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 %i.aby
  store i8 45, ptr %i.acd, align 1, !noalias !46717
  %i.ace = add nuw i64 %i.aby, 1                  ; 5 uses
  store i64 %i.ace, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46713, !noalias !46706
  br i1 %i.da, label %bb.fb, label %.invoke326.i

bb.ex:                                            ; preds = %.noexc100.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i.i.i
  %i.acf = phi ptr [ %.pre4.i.i.i, %.noexc100.i ], [ %i.abu, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i.i.i ]
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.abw
  store i8 %i.dl, ptr %i.acg, align 1, !noalias !46718
  %i.ach = add nuw i64 %i.abp, 2                  ; 5 uses
  store i64 %i.ach, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46712, !noalias !46706
  %i.aci = load i32, ptr %i.p, align 4, !noalias !46701, !noundef !28
  %i.acj = srem i32 %i.aci, 100                   ; 2 uses
  %i.ack = trunc nsw i32 %i.acj to i8             ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46719)
  %i.acl = icmp slt i32 %i.acj, 0
  br i1 %i.acl, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.thread.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.acm = udiv i8 %i.ack, 10
  %i.acn = urem i8 %i.ack, 10
  %i.aco = or disjoint i8 %i.acm, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !46720)
  call void @llvm.experimental.noalias.scope.decl(metadata !46721)
  %i.acp = icmp sgt i64 %i.ach, -1
  call void @llvm.assume(i1 %i.acp)
  %i.acq = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46722, !noalias !46706, !noundef !28 ; 2 uses
  %i.acr = icmp eq i64 %i.acq, %i.ach
  br i1 %i.acr, label %bb.ez, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i33.i.i, !prof !38

bb.ez:                                            ; preds = %bb.ey
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.ach, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc102.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc102.i:                                      ; preds = %bb.ez
  %.pre.i36.i.i = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46723, !noalias !46706
  br label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i33.i.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i33.i.i: ; preds = %.noexc102.i, %bb.ey
  %i.acs = phi i64 [ %.pre.i36.i.i, %.noexc102.i ], [ %i.acq, %bb.ey ] ; 2 uses
  %i.act = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46724, !noalias !46706, !nonnull !28, !noundef !28 ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 %i.ach
  store i8 %i.aco, ptr %i.acu, align 1, !noalias !46725
  %i.acv = add nuw i64 %i.abp, 3                  ; 3 uses
  store i64 %i.acv, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46724, !noalias !46706
  %i.acw = or disjoint i8 %i.acn, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !46726)
  call void @llvm.experimental.noalias.scope.decl(metadata !46727)
  %i.acx = icmp eq i64 %i.acs, %i.acv
  br i1 %i.acx, label %bb.fa, label %_RINvNtNtCseKXfNLkF2r6_6chrono6format10formatting14write_hundredsNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit37.i.i, !prof !38

bb.fa:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i33.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.acs, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc103.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc103.i:                                      ; preds = %bb.fa
  %.pre4.i35.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46728, !noalias !46706
  br label %_RINvNtNtCseKXfNLkF2r6_6chrono6format10formatting14write_hundredsNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit37.i.i

_RINvNtNtCseKXfNLkF2r6_6chrono6format10formatting14write_hundredsNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit37.i.i: ; preds = %.noexc103.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i33.i.i
  %i.acy = phi ptr [ %.pre4.i35.i.i, %.noexc103.i ], [ %i.act, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i33.i.i ]
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 %i.acv
  store i8 %i.acw, ptr %i.acz, align 1, !noalias !46729
  %i.ada = add nuw i64 %i.abp, 4                  ; 2 uses
  store i64 %i.ada, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46728, !noalias !46706
  br label %bb.ev

bb.fb:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i94.i
  %i.adb = load i8, ptr %i.db, align 1, !noalias !46701, !noundef !28 ; 2 uses
  %i.adc = zext i8 %i.adb to i32
  %i.add = add nuw nsw i32 %i.cy, %i.adc          ; 3 uses
  %i.ade = lshr i32 %i.add, 6
  %i.adf = trunc nuw nsw i32 %i.ade to i8         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46730)
  %.cmp.i.i = icmp samesign ugt i32 %i.add, 639
  %i.adg = zext i1 %.cmp.i.i to i8
  %i.adh = or disjoint i8 %i.adg, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !46731)
  call void @llvm.experimental.noalias.scope.decl(metadata !46732)
  %i.adi = icmp sgt i64 %i.ace, -1
  call void @llvm.assume(i1 %i.adi)
  %i.adj = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46733, !noalias !46706, !noundef !28 ; 2 uses
  %i.adk = icmp eq i64 %i.adj, %i.ace
  br i1 %i.adk, label %bb.fc, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i38.i.i, !prof !38

bb.fc:                                            ; preds = %bb.fb
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.ace, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc104.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc104.i:                                      ; preds = %bb.fc
  %.pre.i41.i.i = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46734, !noalias !46706
  br label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i38.i.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i38.i.i: ; preds = %.noexc104.i, %bb.fb
  %i.adl = phi i64 [ %.pre.i41.i.i, %.noexc104.i ], [ %i.adj, %bb.fb ] ; 2 uses
  %i.adm = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46735, !noalias !46706, !nonnull !28, !noundef !28 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 %i.ace
  store i8 %i.adh, ptr %i.adn, align 1, !noalias !46736
  %i.ado = add nuw i64 %i.aby, 2                  ; 3 uses
  store i64 %i.ado, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46735, !noalias !46706
  %.urem.i.i = add nsw i8 %i.adf, -10
  %.cmp91.i.i = icmp samesign ult i32 %i.add, 640
  %i.adp = select i1 %.cmp91.i.i, i8 %i.adf, i8 %.urem.i.i
  %i.adq = or disjoint i8 %i.adp, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !46737)
  call void @llvm.experimental.noalias.scope.decl(metadata !46738)
  %i.adr = icmp eq i64 %i.adl, %i.ado
  br i1 %i.adr, label %bb.fd, label %bb.fe, !prof !38

bb.fd:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i38.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.adl, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc105.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc105.i:                                      ; preds = %bb.fd
  %.pre4.i40.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46739, !noalias !46706
  br label %bb.fe

bb.fe:                                            ; preds = %.noexc105.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i38.i.i
  %i.ads = phi ptr [ %.pre4.i40.i.i, %.noexc105.i ], [ %i.adm, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i38.i.i ]
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 %i.ado
  store i8 %i.adq, ptr %i.adt, align 1, !noalias !46740
  %i.adu = add nuw nsw i64 %i.aby, 3              ; 4 uses
  store i64 %i.adu, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46739, !noalias !46706
  call void @llvm.experimental.noalias.scope.decl(metadata !46741)
  call void @llvm.experimental.noalias.scope.decl(metadata !46742)
  %i.adv = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46743, !noalias !46706, !noundef !28
  %i.adw = icmp eq i64 %i.adv, %i.adu
  br i1 %i.adw, label %bb.ff, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit44.i.i, !prof !38

bb.ff:                                            ; preds = %bb.fe
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.adu, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit44.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit44.i.i: ; preds = %bb.ff, %bb.fe
  %i.adx = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46744, !noalias !46706, !nonnull !28, !noundef !28
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 %i.adu
  store i8 45, ptr %i.ady, align 1, !noalias !46745
  %i.adz = add nuw nsw i64 %i.aby, 4              ; 4 uses
  store i64 %i.adz, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46744, !noalias !46706
  %5 = add i8 %i.adb, %2
  %6 = lshr i8 %5, 1
  %i.aea = and i8 %6, 31                          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46746)
  %i.aeb = udiv i8 %i.aea, 10
  %i.aec = urem i8 %i.aea, 10
  %i.aed = or disjoint i8 %i.aeb, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !46747)
  call void @llvm.experimental.noalias.scope.decl(metadata !46748)
  %i.aee = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46749, !noalias !46706, !noundef !28 ; 2 uses
  %i.aef = icmp eq i64 %i.aee, %i.adz
  br i1 %i.aef, label %bb.fg, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i45.i.i, !prof !38

bb.fg:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit44.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.adz, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc108.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc108.i:                                      ; preds = %bb.fg
  %.pre.i48.i.i = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46750, !noalias !46706
  br label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i45.i.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i45.i.i: ; preds = %.noexc108.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit44.i.i
  %i.aeg = phi i64 [ %.pre.i48.i.i, %.noexc108.i ], [ %i.aee, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit44.i.i ] ; 2 uses
  %i.aeh = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46751, !noalias !46706, !nonnull !28, !noundef !28 ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %i.adz
  store i8 %i.aed, ptr %i.aei, align 1, !noalias !46752
  %i.aej = add nuw i64 %i.aby, 5                  ; 3 uses
  store i64 %i.aej, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46751, !noalias !46706
  %i.aek = or disjoint i8 %i.aec, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !46753)
  call void @llvm.experimental.noalias.scope.decl(metadata !46754)
  %i.ael = icmp eq i64 %i.aeg, %i.aej
  br i1 %i.ael, label %bb.fh, label %bb.fi, !prof !38

bb.fh:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i45.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.aeg, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc109.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc109.i:                                      ; preds = %bb.fh
  %.pre4.i47.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46755, !noalias !46706
  br label %bb.fi

bb.fi:                                            ; preds = %.noexc109.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i45.i.i
  %i.aem = phi ptr [ %.pre4.i47.i.i, %.noexc109.i ], [ %i.aeh, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i45.i.i ]
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 %i.aej
  store i8 %i.aek, ptr %i.aen, align 1, !noalias !46756
  %i.aeo = add nuw nsw i64 %i.aby, 6              ; 4 uses
  store i64 %i.aeo, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46755, !noalias !46706
  call void @llvm.experimental.noalias.scope.decl(metadata !46757)
  call void @llvm.experimental.noalias.scope.decl(metadata !46758)
  %i.aep = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46759, !noalias !46706, !noundef !28
  %i.aeq = icmp eq i64 %i.aep, %i.aeo
  br i1 %i.aeq, label %bb.fj, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit51.i.i, !prof !38

bb.fj:                                            ; preds = %bb.fi
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.aeo, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit51.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit51.i.i: ; preds = %bb.fj, %bb.fi
  %i.aer = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46760, !noalias !46706, !nonnull !28, !noundef !28
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 %i.aeo
  store i8 84, ptr %i.aes, align 1, !noalias !46761
  %i.aet = add nuw i64 %i.aby, 7                  ; 5 uses
  store i64 %i.aet, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46760, !noalias !46706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !46701
  store i32 %storemerge.i.i, ptr %i.n, align 4, !noalias !46701
  call void @llvm.experimental.noalias.scope.decl(metadata !46762)
  br i1 %i.du, label %_RINvNtNtCseKXfNLkF2r6_6chrono6format10formatting14write_hundredsNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit56.thread.i.i, label %bb.fk

bb.fk:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit51.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !46763)
  call void @llvm.experimental.noalias.scope.decl(metadata !46764)
  %i.aeu = icmp sgt i64 %i.aet, -1
  call void @llvm.assume(i1 %i.aeu)
  %i.aev = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46765, !noalias !46706, !noundef !28 ; 2 uses
  %i.aew = icmp eq i64 %i.aev, %i.aet
  br i1 %i.aew, label %bb.fl, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i52.i.i, !prof !38

bb.fl:                                            ; preds = %bb.fk
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.aet, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc111.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc111.i:                                      ; preds = %bb.fl
  %.pre.i55.i.i = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46766, !noalias !46706
  br label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i52.i.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i52.i.i: ; preds = %.noexc111.i, %bb.fk
  %i.aex = phi i64 [ %.pre.i55.i.i, %.noexc111.i ], [ %i.aev, %bb.fk ] ; 2 uses
  %i.aey = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46767, !noalias !46706, !nonnull !28, !noundef !28 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 %i.aet
  store i8 %i.dw, ptr %i.aez, align 1, !noalias !46768
  %i.afa = add nuw i64 %i.aby, 8                  ; 3 uses
  store i64 %i.afa, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46767, !noalias !46706
  call void @llvm.experimental.noalias.scope.decl(metadata !46769)
  call void @llvm.experimental.noalias.scope.decl(metadata !46770)
  %i.afb = icmp eq i64 %i.aex, %i.afa
  br i1 %i.afb, label %bb.fm, label %bb.fn, !prof !38

bb.fm:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i52.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.aex, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc112.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc112.i:                                      ; preds = %bb.fm
  %.pre4.i54.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46771, !noalias !46706
  br label %bb.fn

bb.fn:                                            ; preds = %.noexc112.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i52.i.i
  %i.afc = phi ptr [ %.pre4.i54.i.i, %.noexc112.i ], [ %i.aey, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i52.i.i ]
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 %i.afa
  store i8 %i.dy, ptr %i.afd, align 1, !noalias !46772
  %i.afe = add nuw nsw i64 %i.aby, 9              ; 4 uses
  store i64 %i.afe, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46771, !noalias !46706
  call void @llvm.experimental.noalias.scope.decl(metadata !46773)
  call void @llvm.experimental.noalias.scope.decl(metadata !46774)
  %i.aff = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46775, !noalias !46706, !noundef !28
  %i.afg = icmp eq i64 %i.aff, %i.afe
  br i1 %i.afg, label %bb.fo, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit58.i.i, !prof !38

bb.fo:                                            ; preds = %bb.fn
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.afe, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit58.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit58.i.i: ; preds = %bb.fo, %bb.fn
  %i.afh = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46776, !noalias !46706, !nonnull !28, !noundef !28
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 %i.afe
  store i8 58, ptr %i.afi, align 1, !noalias !46777
  %i.afj = add nuw nsw i64 %i.aby, 10             ; 4 uses
  store i64 %i.afj, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46776, !noalias !46706
  call void @llvm.experimental.noalias.scope.decl(metadata !46778)
  call void @llvm.experimental.noalias.scope.decl(metadata !46779)
  call void @llvm.experimental.noalias.scope.decl(metadata !46780)
  %i.afk = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46781, !noalias !46706, !noundef !28 ; 2 uses
  %i.afl = icmp eq i64 %i.afk, %i.afj
  br i1 %i.afl, label %bb.fp, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i59.i.i, !prof !38

bb.fp:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit58.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.afj, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc114.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc114.i:                                      ; preds = %bb.fp
  %.pre.i62.i.i = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46782, !noalias !46706
  br label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i59.i.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i59.i.i: ; preds = %.noexc114.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit58.i.i
  %i.afm = phi i64 [ %.pre.i62.i.i, %.noexc114.i ], [ %i.afk, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit58.i.i ] ; 2 uses
  %i.afn = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46783, !noalias !46706, !nonnull !28, !noundef !28 ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 %i.afj
  store i8 %i.eb, ptr %i.afo, align 1, !noalias !46784
  %i.afp = add nuw i64 %i.aby, 11                 ; 3 uses
  store i64 %i.afp, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46783, !noalias !46706
  call void @llvm.experimental.noalias.scope.decl(metadata !46785)
  call void @llvm.experimental.noalias.scope.decl(metadata !46786)
  %i.afq = icmp eq i64 %i.afm, %i.afp
  br i1 %i.afq, label %bb.fq, label %bb.fr, !prof !38

bb.fq:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i59.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.afm, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc115.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc115.i:                                      ; preds = %bb.fq
  %.pre4.i61.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46787, !noalias !46706
  br label %bb.fr

bb.fr:                                            ; preds = %.noexc115.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i59.i.i
  %i.afr = phi ptr [ %.pre4.i61.i.i, %.noexc115.i ], [ %i.afn, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i59.i.i ]
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 %i.afp
  store i8 %i.ed, ptr %i.afs, align 1, !noalias !46788
  %i.aft = add nuw nsw i64 %i.aby, 12             ; 4 uses
  store i64 %i.aft, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46787, !noalias !46706
  call void @llvm.experimental.noalias.scope.decl(metadata !46789)
  call void @llvm.experimental.noalias.scope.decl(metadata !46790)
  %i.afu = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46791, !noalias !46706, !noundef !28
  %i.afv = icmp eq i64 %i.afu, %i.aft
  br i1 %i.afv, label %bb.fs, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit65.i.i, !prof !38

bb.fs:                                            ; preds = %bb.fr
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.aft, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit65.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit65.i.i: ; preds = %bb.fs, %bb.fr
  %i.afw = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46792, !noalias !46706, !nonnull !28, !noundef !28
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 %i.aft
  store i8 58, ptr %i.afx, align 1, !noalias !46793
  %i.afy = add nuw nsw i64 %i.aby, 13             ; 4 uses
  store i64 %i.afy, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46792, !noalias !46706
  call void @llvm.experimental.noalias.scope.decl(metadata !46794)
  call void @llvm.experimental.noalias.scope.decl(metadata !46795)
  call void @llvm.experimental.noalias.scope.decl(metadata !46796)
  %i.afz = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46797, !noalias !46706, !noundef !28 ; 2 uses
  %i.aga = icmp eq i64 %i.afz, %i.afy
  br i1 %i.aga, label %bb.ft, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i66.i.i, !prof !38

bb.ft:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit65.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.afy, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc117.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc117.i:                                      ; preds = %bb.ft
  %.pre.i69.i.i = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46798, !noalias !46706
  br label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i66.i.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i66.i.i: ; preds = %.noexc117.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit65.i.i
  %i.agb = phi i64 [ %.pre.i69.i.i, %.noexc117.i ], [ %i.afz, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit65.i.i ] ; 2 uses
  %i.agc = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46799, !noalias !46706, !nonnull !28, !noundef !28 ; 2 uses
end_hunk_3
