Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.08?download=true
inline.NumInlined: 1233
inline.NumDeleted: 664
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs5_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB5_12SpecialToken3new:bb.a
bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @111, ptr %i.z, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %.body9 unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body9

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.l
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %.body12 unwind label %bb.q

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.t unwind label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body12

bb.s:                                             ; preds = %.thread, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  ret void

bb.t:                                             ; preds = %bb.p
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %.body12, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.u ], [ %.pn.pn, %.body12 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.t
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.s

bb.w:                                             ; preds = %bb.e
  unreachable

bb.x:                                             ; preds = %.body12, %.body9, %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

.body9:                                           ; preds = %bb.n, %bb.k, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ac, %bb.n ], [ %i.aa, %bb.k ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %2) #27
          to label %.body12 unwind label %bb.x

.body12:                                          ; preds = %bb.r, %bb.o, %.body9
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body9 ], [ %i.af, %bb.r ], [ %i.ad, %bb.o ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #27
          to label %common.resume unwind label %bb.x
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMsN_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB5_25TemplateProcessingBuilder4pair(ptr noalias noundef returned align 8 dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !range !322, !alias.scope !1507, !noundef !4
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template8TemplateEEB13_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template8TemplateEBH_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template8TemplateEBH_.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template8TemplateEEB13_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template8TemplateEBH_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template8TemplateEEB13_.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template8TemplateEBH_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsN_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB5_25TemplateProcessingBuilder5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 14 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [72 x i8], align 8                ; 14 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [64 x i8], align 8                ; 5 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %i.l = alloca [64 x i8], align 8                ; 6 uses
  %i.m = alloca [40 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [40 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [64 x i8], align 8                ; 10 uses
  %i.t = alloca [8 x i8], align 8                 ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [64 x i8], align 8                ; 5 uses
  %i.y = alloca [64 x i8], align 8                ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.448 = alloca [24 x i8], align 8          ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.4 = alloca [24 x i8], align 8            ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.0 = alloca [112 x i8], align 8           ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %1, ptr %i.u, align 8, !noalias !1513
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !range !322, !alias.scope !1510, !noalias !1515, !noundef !4
  %.not.i = icmp eq i64 %i.ae, -1                 ; 4 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i22.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !1510, !noalias !1515 ; 5 uses
  %.phi.trans.insert33.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val5.i23.pre.i = load i64, ptr %.phi.trans.insert33.i, align 8, !alias.scope !1510, !noalias !1515 ; 4 uses
  br i1 %.not.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template8TemplateE6map_orINtNtNtB5_5slice4iter4IterNtBL_5PieceENCNvMsf_BL_NtBL_25TemplateProcessingBuilder8validates0_0EBP_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = icmp eq i64 %.val5.i23.pre.i, 0
  br i1 %i.af, label %_RNCNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB7_25TemplateProcessingBuilder8validate0Bb_.exit.thread.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.ag = add i64 %.val5.i23.pre.i, 576460752303423487 ; 2 uses
  %i.ah = and i64 %i.ag, 576460752303423487       ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %i.aj = icmp eq i64 %i.ah, 0
  br i1 %i.aj, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.ai, 1152921504606846974
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i.preheader.new
  %.sroa.0.03.i.i = phi i1 [ false, %.lr.ph.i.i.preheader.new ], [ %.sroa.0.1.i.i.1, %bb.d ] ; 2 uses
  %.sroa.01.02.i.i = phi i1 [ false, %.lr.ph.i.i.preheader.new ], [ %.sroa.01.1.i.i.1, %bb.d ] ; 2 uses
  %.sroa.02.01.i.i = phi ptr [ %.val.i22.pre.i, %.lr.ph.i.i.preheader.new ], [ %i.am, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i, i64 32
  %i.al = load i64, ptr %.sroa.02.01.i.i, align 8, !range !322, !noalias !1515, !noundef !4
  %.not.i.i = icmp eq i64 %i.al, -1
  br i1 %.not.i.i, label %bb.e, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.01.1.i.i = phi i1 [ %.sroa.01.02.i.i, %.lr.ph.i.i ], [ %spec.select4.i.i, %bb.e ] ; 2 uses
  %.sroa.0.1.i.i = phi i1 [ %.sroa.0.03.i.i, %.lr.ph.i.i ], [ %spec.select5.i.i, %bb.e ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i, i64 64 ; 2 uses
  %i.an = load i64, ptr %i.ak, align 8, !range !322, !noalias !1515, !noundef !4
  %.not.i.i.1 = icmp eq i64 %i.an, -1
  br i1 %.not.i.i.1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.1
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i, i64 44
  %i.ap = load i8, ptr %i.ao, align 4, !range !291, !noalias !1515, !noundef !4
  %i.aq = trunc nuw i8 %i.ap to i1                ; 2 uses
  %not..i.i.1 = xor i1 %i.aq, true
  %spec.select4.i.i.1 = select i1 %not..i.i.1, i1 true, i1 %.sroa.01.1.i.i
  %spec.select5.i.i.1 = select i1 %i.aq, i1 true, i1 %.sroa.0.1.i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i.1
  %.sroa.01.1.i.i.1 = phi i1 [ %.sroa.01.1.i.i, %.lr.ph.i.i.1 ], [ %spec.select4.i.i.1, %bb.c ] ; 3 uses
  %.sroa.0.1.i.i.1 = phi i1 [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %spec.select5.i.i.1, %bb.c ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNCNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB7_25TemplateProcessingBuilder8validate0Bb_.exit.i.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i, i64 12
  %i.as = load i8, ptr %i.ar, align 4, !range !291, !noalias !1515, !noundef !4
  %i.at = trunc nuw i8 %i.as to i1                ; 2 uses
  %not..i.i = xor i1 %i.at, true
  %spec.select4.i.i = select i1 %not..i.i, i1 true, i1 %.sroa.01.02.i.i
  %spec.select5.i.i = select i1 %i.at, i1 true, i1 %.sroa.0.03.i.i
  br label %.lr.ph.i.i.1

_RNCNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB7_25TemplateProcessingBuilder8validate0Bb_.exit.i.unr-lcssa: ; preds = %bb.d
  %2 = and i64 %i.ag, 1
  %lcmp.mod.not.not = icmp eq i64 %2, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.epil.preheader, label %_RNCNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB7_25TemplateProcessingBuilder8validate0Bb_.exit.i

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNCNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB7_25TemplateProcessingBuilder8validate0Bb_.exit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.0.03.i.i.epil.init = phi i1 [ false, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.1, %_RNCNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB7_25TemplateProcessingBuilder8validate0Bb_.exit.i.unr-lcssa ] ; 2 uses
  %.sroa.01.02.i.i.epil.init = phi i1 [ false, %.lr.ph.i.i.preheader ], [ %.sroa.01.1.i.i.1, %_RNCNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB7_25TemplateProcessingBuilder8validate0Bb_.exit.i.unr-lcssa ] ; 2 uses
  %.sroa.02.01.i.i.epil.init = phi ptr [ %.val.i22.pre.i, %.lr.ph.i.i.preheader ], [ %i.am, %_RNCNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB7_25TemplateProcessingBuilder8validate0Bb_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod80 = trunc i64 %i.ai to i1
  tail call void @llvm.assume(i1 %lcmp.mod80)
  %i.au = load i64, ptr %.sroa.02.01.i.i.epil.init, align 8, !range !322, !noalias !1515, !noundef !4
  %.not.i.i.epil = icmp eq i64 %i.au, -1
  br i1 %.not.i.i.epil, label %bb.f, label %_RNCNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB7_25TemplateProcessingBuilder8validate0Bb_.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i.epil.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.epil.init, i64 12
  %i.aw = load i8, ptr %i.av, align 4, !range !291, !noalias !1515, !noundef !4
  %i.ax = trunc nuw i8 %i.aw to i1                ; 2 uses
  %not..i.i.epil = xor i1 %i.ax, true
  %spec.select4.i.i.epil = select i1 %not..i.i.epil, i1 true, i1 %.sroa.01.02.i.i.epil.init
  %spec.select5.i.i.epil = select i1 %i.ax, i1 true, i1 %.sroa.0.03.i.i.epil.init
  br label %_RNCNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB7_25TemplateProcessingBuilder8validate0Bb_.exit.i

_RNCNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB7_25TemplateProcessingBuilder8validate0Bb_.exit.i: ; preds = %.lr.ph.i.i.epil.preheader, %bb.f, %_RNCNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB7_25TemplateProcessingBuilder8validate0Bb_.exit.i.unr-lcssa
  %.sroa.01.1.i.i.lcssa = phi i1 [ %.sroa.01.1.i.i.1, %_RNCNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB7_25TemplateProcessingBuilder8validate0Bb_.exit.i.unr-lcssa ], [ %.sroa.01.02.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %spec.select4.i.i.epil, %bb.f ]
  %.sroa.0.1.i.i.lcssa = phi i1 [ %.sroa.0.1.i.i.1, %_RNCNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB7_25TemplateProcessingBuilder8validate0Bb_.exit.i.unr-lcssa ], [ %.sroa.0.03.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %spec.select5.i.i.epil, %bb.f ]
  %i.ay = select i1 %.sroa.01.1.i.i.lcssa, i1 %.sroa.0.1.i.i.lcssa, i1 false
  br i1 %i.ay, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template8TemplateE6map_orINtNtNtB5_5slice4iter4IterNtBL_5PieceENCNvMsf_BL_NtBL_25TemplateProcessingBuilder8validates0_0EBP_.exit.i, label %_RNCNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB7_25TemplateProcessingBuilder8validate0Bb_.exit.thread.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template8TemplateE6map_orINtNtNtB5_5slice4iter4IterNtBL_5PieceENCNvMsf_BL_NtBL_25TemplateProcessingBuilder8validates0_0EBP_.exit.i: ; preds = %_RNCNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB7_25TemplateProcessingBuilder8validate0Bb_.exit.i, %bb.a
  %.val.pn.i24.i = phi ptr [ %.val.i22.pre.i, %_RNCNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB7_25TemplateProcessingBuilder8validate0Bb_.exit.i ], [ %i.a, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1513
  store ptr %i.u, ptr %i.t, align 8, !noalias !1513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1513
  %i.az = load i64, ptr %1, align 8, !range !322, !alias.scope !1510, !noalias !1515, !noundef !4
  %.not15.i = icmp eq i64 %i.az, -1               ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !1510, !noalias !1515, !nonnull !4 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5.i.i = load i64, ptr %i.bb, align 8, !alias.scope !1510, !noalias !1515 ; 2 uses
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i, i64 %.val5.i.i
  %.val.pn.i.i = select i1 %.not15.i, ptr %i.a, ptr %.val.i.i
  %.pn6.i.i = select i1 %.not15.i, ptr %i.a, ptr %i.bc
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %.val.i22.pre.i, i64 %.val5.i23.pre.i
  %.pn6.i25.i = select i1 %.not.i, ptr %i.a, ptr %i.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1516
  %i.be = call noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE), !noalias !1520 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !1520, !nonnull !4, !noundef !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !1520, !nonnull !4, !align !337, !noundef !4
  %i.bi = call noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS), !noalias !1520 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !invariant.load !4, !noalias !1520, !nonnull !4
  %i.bm = call noundef i64 %i.bl(ptr noundef nonnull %i.bf), !noalias !1520, !inline_history !1523
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj, i64 noundef %i.bm), !noalias !1524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) @61, i64 32, i1 false), !noalias !1516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false), !noalias !1516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1516
  store ptr %i.t, ptr %i.k, align 8, !noalias !1525
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.val.pn.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1525
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %.pn6.i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !1525
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %.val.pn.i24.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !1525
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %.pn6.i25.i, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !1525
  invoke void @_RINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6_7HashSetReNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB1N_8adapters10filter_map9FilterMapINtNtB2P_5chain5ChainINtNtNtB1P_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceEB3L_ENCNvMsf_B4e_NtB4e_25TemplateProcessingBuilder8validates2_0EEB4i_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.k)
          to label %_RINvXsc_NtCsiTTz6JxaXqu_5ahash8hash_setINtB6_8AHashSetReEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB10_8adapters10filter_map9FilterMapINtNtB2c_5chain5ChainINtNtNtB12_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceEB38_ENCNvMsf_B3B_NtB3B_25TemplateProcessingBuilder8validates2_0EEB3F_.exit.i unwind label %bb.g, !noalias !1524

bb.g:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template8TemplateE6map_orINtNtNtB5_5slice4iter4IterNtBL_5PieceENCNvMsf_BL_NtBL_25TemplateProcessingBuilder8validates0_0EBP_.exit.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTReuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %common.resume unwind label %bb.h, !noalias !1524

bb.h:                                             ; preds = %bb.g
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1524
  unreachable

common.resume:                                    ; preds = %.body, %bb.w, %bb.g, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.cw, %bb.w ], [ %.pn.i, %.body.i ], [ %i.bo, %bb.g ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvXsc_NtCsiTTz6JxaXqu_5ahash8hash_setINtB6_8AHashSetReEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB10_8adapters10filter_map9FilterMapINtNtB2c_5chain5ChainINtNtNtB12_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceEB38_ENCNvMsf_B3B_NtB3B_25TemplateProcessingBuilder8validates2_0EEB3F_.exit.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template8TemplateE6map_orINtNtNtB5_5slice4iter4IterNtBL_5PieceENCNvMsf_BL_NtBL_25TemplateProcessingBuilder8validates0_0EBP_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false), !noalias !1526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1513
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !noalias !1513, !noundef !4
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB5_25TemplateProcessingBuilder8validate.exit.thread73, label %bb.j

_RNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB5_25TemplateProcessingBuilder8validate.exit.thread73: ; preds = %_RINvXsc_NtCsiTTz6JxaXqu_5ahash8hash_setINtB6_8AHashSetReEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB10_8adapters10filter_map9FilterMapINtNtB2c_5chain5ChainINtNtNtB12_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceEB38_ENCNvMsf_B3B_NtB3B_25TemplateProcessingBuilder8validates2_0EEB3F_.exit.i
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTReuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s), !noalias !1515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.s

_RNCNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB7_25TemplateProcessingBuilder8validate0Bb_.exit.thread.i: ; preds = %_RNCNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB7_25TemplateProcessingBuilder8validate0Bb_.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1513
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef 43, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1515
  %i.bt = load i64, ptr %i.n, align 8, !range !155, !noalias !1513, !noundef !4
  %i.bu = trunc nuw i64 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !range !156, !noalias !1513, !noundef !4 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.bu, label %bb.i, label %_RNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB5_25TemplateProcessingBuilder8validate.exit.thread, !prof !23

bb.i:                                             ; preds = %_RNCNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB7_25TemplateProcessingBuilder8validate0Bb_.exit.thread.i
  %i.by = load i64, ptr %i.bx, align 8, !noalias !1513
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bw, i64 %i.by) #24, !noalias !1515
  unreachable

_RNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB5_25TemplateProcessingBuilder8validate.exit.thread: ; preds = %_RNCNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB7_25TemplateProcessingBuilder8validate0Bb_.exit.thread.i
  %i.bz = load ptr, ptr %i.bx, align 8, !noalias !1513, !nonnull !4, !noundef !4 ; 2 uses
  %i.ca = icmp samesign ugt i64 %i.bw, 42
  tail call void @llvm.assume(i1 %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1513
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %i.bz, ptr noundef nonnull align 1 dereferenceable(43) @121, i64 43, i1 false), !noalias !1515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.r

bb.j:                                             ; preds = %_RINvXsc_NtCsiTTz6JxaXqu_5ahash8hash_setINtB6_8AHashSetReEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB10_8adapters10filter_map9FilterMapINtNtB2c_5chain5ChainINtNtNtB12_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceEB38_ENCNvMsf_B3B_NtB3B_25TemplateProcessingBuilder8validates2_0EEB3F_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1513
  call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  %i.cb = load ptr, ptr %i.s, align 8, !alias.scope !1530, !noalias !1532, !nonnull !4, !noundef !4 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !1530, !noalias !1532, !noundef !4
  %i.ce = add i64 %i.cd, 1
  invoke void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTReuEE3newCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.m, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cb, i64 noundef %i.ce)
          to label %bb.l unwind label %bb.k, !noalias !1515

.body.i:                                          ; preds = %bb.o, %bb.n, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.ch, %bb.n ], [ %i.cf, %bb.k ], [ %i.ci, %bb.o ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTReuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %common.resume unwind label %bb.q, !noalias !1515

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.l, %bb.j
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.l:                                             ; preds = %bb.j
  %i.cg = load i64, ptr %i.bq, align 8, !alias.scope !1530, !noalias !1532, !noundef !4
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %i.cg, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !1527, !noalias !1533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false), !noalias !1513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1513
  invoke void @_RNvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterReENtCshiFeWPMd8WI_9itertools9Itertools4joinCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 2)
          to label %bb.m unwind label %bb.k, !noalias !1515

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1513
  store ptr %i.q, ptr %i.o, align 8, !noalias !1513
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1513
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull @123, ptr noundef nonnull %i.o)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.n, !noalias !1515

bb.n:                                             ; preds = %bb.m
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q) #27
          to label %.body.i unwind label %bb.q, !noalias !1515

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1513
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.o, !noalias !1515

bb.o:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body.i unwind label %bb.p, !noalias !1515

bb.p:                                             ; preds = %bb.o
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1515
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2JiOgHzbbc7_10tokenizers.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RNvMsf_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB5_25TemplateProcessingBuilder8validate.exit unwind label %bb.k, !noalias !1515

bb.q:                                             ; preds = %bb.n, %.body.i
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1515
end_hunk_0
