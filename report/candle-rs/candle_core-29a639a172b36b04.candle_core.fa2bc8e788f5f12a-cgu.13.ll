Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.13?download=true
inline.NumInlined: 1673
inline.NumDeleted: 501
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized9tokenizer17pipeline_from_pre:bb.a
bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %.sroa.11.sroa.8, ptr noundef nonnull align 1 dereferenceable(37) %.sroa.6.sroa.8, i64 37, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.8)
  br label %bb.h

bb.s:                                             ; preds = %bb.k, %bb.q, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.8)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized9tokenizer18template_processor(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2, i32 noundef range(i32 0, 2) %3, i32 %4, i32 noundef range(i32 0, 2) %5, i32 %6, i1 noundef zeroext %7, i1 noundef zeroext %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [112 x i8], align 8               ; 18 uses
  %i.u = alloca [24 x i8], align 8                ; 9 uses
  %i.v = alloca [24 x i8], align 8                ; 10 uses
  %i.w = alloca [128 x i8], align 8               ; 9 uses
  %i.x = alloca [128 x i8], align 8               ; 8 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 9 uses
  %i.aa = alloca [24 x i8], align 8               ; 3 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 9 uses
  %i.ae = alloca [24 x i8], align 8               ; 3 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 9 uses
  %i.ah = alloca [24 x i8], align 8               ; 3 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 9 uses
  %i.al = alloca [24 x i8], align 8               ; 3 uses
  %i.am = alloca [24 x i8], align 8               ; 28 uses
  %i.an = alloca [24 x i8], align 8               ; 3 uses
  %i.ao = alloca [24 x i8], align 8               ; 7 uses
  %i.ap = alloca [24 x i8], align 8               ; 3 uses
  %i.aq = alloca [24 x i8], align 8               ; 23 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [32 x i8], align 8               ; 6 uses
  %i.at = alloca [24 x i8], align 8               ; 9 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [32 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 9 uses
  %i.ax = alloca [24 x i8], align 8               ; 15 uses
  %i.ay = alloca [24 x i8], align 8               ; 19 uses
  %i.az = alloca [24 x i8], align 8               ; 19 uses
  %brmerge = or i1 %7, %8
  %i.ba = icmp ne i64 %2, 0
  %or.cond.not = and i1 %i.ba, %brmerge
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.bb = trunc nuw i32 %3 to i1                  ; 2 uses
  br i1 %i.bb, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.gc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit253, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %i.bc = zext i32 %4 to i64                      ; 2 uses
  %i.bd = icmp samesign ugt i64 %2, %i.bc
  br i1 %i.bd, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  store i64 -1, ptr %i.az, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.bf = trunc nuw i32 %5 to i1                  ; 2 uses
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bg = zext i32 %6 to i64                      ; 2 uses
  %i.bh = icmp samesign ugt i64 %2, %i.bg
  br i1 %i.bh, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i64 -1, ptr %i.ay, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi)
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.n, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store i64 0, ptr %i.ax, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 6 uses
  store i64 0, ptr %i.bk, align 8
  br i1 %7, label %bb.p, label %bb.o

.body248:                                         ; preds = %bb.fu, %bb.m, %.body
  %.pn88.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn, %.body ], [ %i.bl, %bb.m ], [ %i.jc, %bb.fu ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az) #34
          to label %common.resume unwind label %bb.gd

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit.i247, %bb.gb, %bb.k
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body248

bb.n:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.l

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit, %bb.l
  br i1 %8, label %bb.ai, label %bb.ah

bb.p:                                             ; preds = %bb.l
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.bm = load i64, ptr %i.az, align 8, !range !21, !noundef !8
  %.not = icmp eq i64 %i.bm, -1
  br i1 %.not, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.p
  store i64 -1, ptr %0, align 8
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az)
          to label %bb.y unwind label %.body116

bb.t:                                             ; preds = %bb.q
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.u

.critedge:                                        ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.u

.critedge94:                                      ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.u

bb.u:                                             ; preds = %.critedge94, %.critedge, %bb.ak, %bb.am, %bb.r, %bb.t, %bb.fs, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsltEA4u8Pgfu_11candle_core.exit
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtB7_6string6StringmEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringmEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.body unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringmEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringmEEECsltEA4u8Pgfu_11candle_core.exit unwind label %bb.fw

bb.x:                                             ; preds = %bb.v
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

.body116.thread275:                               ; preds = %.body116.thread, %.thread291
  %.sroa.023.0 = phi i1 [ %.sroa.023.1271, %.body116.thread ], [ %.sroa.023.2288, %.thread291 ]
  %.pn88.pn = phi { ptr, i32 } [ %.pn88272, %.body116.thread ], [ %.pn290, %.thread291 ] ; 2 uses
  br i1 %.sroa.023.0, label %.thread, label %.body

bb.y:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body102

.body102:                                         ; preds = %bb.ac, %bb.z
  %eh.lpad-body103 = phi { ptr, i32 } [ %i.bp, %bb.z ], [ %i.bu, %bb.ac ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aw) #34
          to label %.thread unwind label %bb.gd

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i32 %4, ptr %i.bq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.br = load i64, ptr %i.bk, align 8, !alias.scope !2308, !noundef !8 ; 3 uses
  %i.bs = load i64, ptr %i.ax, align 8, !range !12, !alias.scope !2308, !noundef !8
  %i.bt = icmp eq i64 %i.br, %i.bs
  br i1 %i.bt, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringmEE8grow_oneCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.ae unwind label %bb.ac, !noalias !2309

bb.ac:                                            ; preds = %bb.ab
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.av) #34
          to label %.body102 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.ae:                                            ; preds = %bb.ab, %bb.aa
  %i.bw = load ptr, ptr %i.bj, align 8, !alias.scope !2308, !nonnull !8, !noundef !8
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 32, i1 false)
  %i.by = add i64 %i.br, 1
  store i64 %i.by, ptr %i.bk, align 8, !alias.scope !2308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %.thread unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit unwind label %.body116

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.o

bb.ah:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit113, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i64 0, ptr %i.aq, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 8 uses
  store i64 0, ptr %i.cc, align 8
  br i1 %7, label %bb.ax, label %bb.aw

bb.ai:                                            ; preds = %bb.o
  br i1 %i.bf, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.cd = load i64, ptr %i.ay, align 8, !range !21, !noundef !8
  %.not73 = icmp eq i64 %i.cd, -1
  br i1 %.not73, label %bb.am, label %bb.al

bb.ak:                                            ; preds = %bb.ai
  store i64 -1, ptr %0, align 8
  br label %bb.u

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %bb.an unwind label %.body116

bb.am:                                            ; preds = %bb.aj
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.u

bb.an:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body106

.body106:                                         ; preds = %bb.ar, %bb.ao
  %eh.lpad-body107 = phi { ptr, i32 } [ %i.ce, %bb.ao ], [ %i.cj, %bb.ar ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.at) #34
          to label %.thread unwind label %bb.gd

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i32 %6, ptr %i.cf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.cg = load i64, ptr %i.bk, align 8, !alias.scope !2310, !noundef !8 ; 3 uses
  %i.ch = load i64, ptr %i.ax, align 8, !range !12, !alias.scope !2310, !noundef !8
  %i.ci = icmp eq i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringmEE8grow_oneCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.at unwind label %bb.ar, !noalias !2311

bb.ar:                                            ; preds = %bb.aq
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.as) #34
          to label %.body106 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.at:                                            ; preds = %bb.aq, %bb.ap
  %i.cl = load ptr, ptr %i.bj, align 8, !alias.scope !2310, !nonnull !8, !noundef !8
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %i.cl, i64 %i.cg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false)
  %i.cn = add i64 %i.cg, 1
  store i64 %i.cn, ptr %i.bk, align 8, !alias.scope !2310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i110 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %.thread unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i110: ; preds = %bb.at
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit113 unwind label %.body116

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit113: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.ah

bb.aw:                                            ; preds = %bb.bh, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bi unwind label %.body116.thread279

bb.ax:                                            ; preds = %bb.ah
  %i.cq = load i64, ptr %i.az, align 8, !range !21, !noundef !8
  %.not74 = icmp eq i64 %i.cq, -1
  br i1 %.not74, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az)
          to label %bb.bd unwind label %.body116.thread279

bb.az:                                            ; preds = %bb.bq, %bb.ax
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.bb unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %.thread unwind label %bb.bc

bb.bb:                                            ; preds = %bb.az
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsltEA4u8Pgfu_11candle_core.exit unwind label %.body116

bb.bc:                                            ; preds = %bb.ba
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

.thread291.thread:                                ; preds = %bb.cf
  br i1 %.sroa.023.5.lpad-body, label %.thread, label %.body

.thread291:                                       ; preds = %.thread283
  br i1 %.sroa.022.2289, label %.body116.thread, label %.body116.thread275

.body116.thread279:                               ; preds = %bb.bj, %bb.cd, %bb.aw, %bb.br, %bb.ay
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body116.thread

.body116:                                         ; preds = %bb.s, %bb.al, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i110, %bb.bb, %bb.eh, %bb.fd
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.bd:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ct = load i64, ptr %i.cc, align 8, !alias.scope !2312, !noundef !8 ; 3 uses
  %i.cu = load i64, ptr %i.aq, align 8, !range !12, !alias.scope !2312, !noundef !8
  %i.cv = icmp eq i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs5Xr050g3D4S_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.bh unwind label %bb.bf, !noalias !2313

bb.bf:                                            ; preds = %bb.be
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap) #34
          to label %.body116.thread unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.bh:                                            ; preds = %bb.be, %bb.bd
  %i.cy = load ptr, ptr %i.cb, align 8, !alias.scope !2312, !nonnull !8, !noundef !8
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cy, i64 %i.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  %i.da = add i64 %i.ct, 1
  store i64 %i.da, ptr %i.cc, align 8, !alias.scope !2312
  br label %bb.aw

bb.bi:                                            ; preds = %bb.aw
  %i.db = load i64, ptr %i.n, align 8, !range !9, !noundef !8
  %i.dc = trunc nuw i64 %i.db to i1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !range !10, !noundef !8 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.dc, label %bb.bj, label %bb.bk, !prof !11

bb.bj:                                            ; preds = %bb.bi
  %i.dg = load i64, ptr %i.df, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.de, i64 %i.dg) #33
          to label %bb.ge unwind label %.body116.thread279

bb.bk:                                            ; preds = %bb.bi
  %i.dh = load ptr, ptr %i.df, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.di = icmp samesign ugt i64 %i.de, 1
  call void @llvm.assume(i1 %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i16 12324, ptr %i.dh, align 1
  store i64 %i.de, ptr %i.ao, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.dh, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 2, ptr %.sroa.6.0..sroa_idx, align 8
  %i.dj = load i64, ptr %i.cc, align 8, !alias.scope !2314, !noundef !8 ; 3 uses
  %i.dk = load i64, ptr %i.aq, align 8, !range !12, !alias.scope !2314, !noundef !8
  %i.dl = icmp eq i64 %i.dj, %i.dk
  br i1 %i.dl, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs5Xr050g3D4S_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.bo unwind label %bb.bm, !noalias !2315

bb.bm:                                            ; preds = %bb.bl
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao) #34
          to label %.body116.thread unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.bo:                                            ; preds = %bb.bl, %bb.bk
  %i.do = load ptr, ptr %i.cb, align 8, !alias.scope !2314, !nonnull !8, !noundef !8
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.do, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  %i.dq = add i64 %i.dj, 1
  store i64 %i.dq, ptr %i.cc, align 8, !alias.scope !2314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br i1 %8, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bw, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i64 0, ptr %i.am, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 8 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 14 uses
  store i64 0, ptr %i.ds, align 8
  br i1 %7, label %bb.by, label %bb.bx

bb.bq:                                            ; preds = %bb.bo
  %i.dt = load i64, ptr %i.ay, align 8, !range !21, !noundef !8
  %.not75 = icmp eq i64 %i.dt, -1
  br i1 %.not75, label %bb.az, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %bb.bs unwind label %.body116.thread279

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsltEA4u8Pgfu_11candle_core.exit: ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.u

bb.bs:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.du = load i64, ptr %i.cc, align 8, !alias.scope !2316, !noundef !8 ; 3 uses
  %i.dv = load i64, ptr %i.aq, align 8, !range !12, !alias.scope !2316, !noundef !8
  %i.dw = icmp eq i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs5Xr050g3D4S_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.bw unwind label %bb.bu, !noalias !2317

bb.bu:                                            ; preds = %bb.bt
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an) #34
          to label %.body116.thread unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.bw:                                            ; preds = %bb.bt, %bb.bs
  %i.dz = load ptr, ptr %i.cb, align 8, !alias.scope !2316, !nonnull !8, !noundef !8
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %i.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  %i.eb = add i64 %i.du, 1
  store i64 %i.eb, ptr %i.cc, align 8, !alias.scope !2316
  br label %bb.bp

bb.bx:                                            ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsltEA4u8Pgfu_11candle_core.exit141, %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef 4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.cn unwind label %.body133.thread303

bb.by:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.ec = load i64, ptr %i.az, align 8, !range !21, !noundef !8
  %.not76 = icmp eq i64 %i.ec, -1
  br i1 %.not76, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az)
          to label %bb.cg unwind label %.body133.thread303

bb.ca:                                            ; preds = %bb.by
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ef, %bb.di, %bb.cx, %bb.ca
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %bb.cd unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %.body116.thread unwind label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsltEA4u8Pgfu_11candle_core.exit130 unwind label %.body116.thread279

bb.ce:                                            ; preds = %bb.cc
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.cf:                                            ; preds = %.body184
  br i1 %.sroa.021.2.lpad-body, label %.thread283, label %.thread291.thread

.body133.thread303:                               ; preds = %.invoke, %bb.fa, %bb.cw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i194, %bb.ee, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i132, %bb.df, %bb.bx, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i165, %bb.dh, %bb.bz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i150
  %.sroa.022.3.ph = phi i1 [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i150 ], [ true, %bb.bz ], [ true, %bb.dh ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i165 ], [ true, %bb.bx ], [ true, %bb.df ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i132 ], [ true, %bb.ee ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i194 ], [ true, %bb.cw ], [ false, %bb.fa ], [ true, %.invoke ]
  %lpad.thr_comm301 = landingpad { ptr, i32 }
          cleanup
  br label %.thread283

.body133:                                         ; preds = %bb.fm
  %lpad.thr_comm.split-lp302 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not85323, label %.thread, label %.body

bb.cg:                                            ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %i.ak, ptr %i.aj, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.430.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noundef nonnull @60, ptr noundef nonnull %i.aj)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak) #34
          to label %.thread283 unwind label %bb.gd

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit: ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i132 unwind label %bb.ci

bb.ci:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.thread283 unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i132: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit135 unwind label %.body133.thread303

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit135: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.ei = load i64, ptr %i.ds, align 8, !alias.scope !2318, !noundef !8 ; 3 uses
  %i.ej = load i64, ptr %i.am, align 8, !range !12, !alias.scope !2318, !noundef !8
  %i.ek = icmp eq i64 %i.ei, %i.ej
  br i1 %i.ek, label %bb.ck, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsltEA4u8Pgfu_11candle_core.exit141

bb.ck:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit135
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs5Xr050g3D4S_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsltEA4u8Pgfu_11candle_core.exit141 unwind label %bb.cl, !noalias !2319

bb.cl:                                            ; preds = %bb.ck
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al) #34
          to label %.thread283 unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsltEA4u8Pgfu_11candle_core.exit141: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit135, %bb.ck
  %i.en = load ptr, ptr %i.dr, align 8, !alias.scope !2318, !nonnull !8, !noundef !8
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.en, i64 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  %i.ep = add i64 %i.ei, 1
  store i64 %i.ep, ptr %i.ds, align 8, !alias.scope !2318
  br label %bb.bx

bb.cn:                                            ; preds = %bb.bx
  %i.eq = load i64, ptr %i.k, align 8, !range !9, !noundef !8
  %i.er = trunc nuw i64 %i.eq to i1
  %i.es = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.et = load i64, ptr %i.es, align 8, !range !10, !noundef !8 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.er, label %bb.co, label %bb.cp, !prof !11

bb.co:                                            ; preds = %bb.cn
  %i.ev = load i64, ptr %i.eu, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.dr, %bb.co
  %i.ew = phi i64 [ %i.et, %bb.co ], [ %i.gj, %bb.dr ]
  %i.ex = phi i64 [ %i.ev, %bb.co ], [ %i.gl, %bb.dr ]
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ew, i64 %i.ex) #33
          to label %.cont unwind label %.body133.thread303

.cont:                                            ; preds = %.invoke
  unreachable

bb.cp:                                            ; preds = %bb.cn
  %i.ey = load ptr, ptr %i.eu, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ez = icmp samesign ugt i64 %i.et, 3
  call void @llvm.assume(i1 %i.ez)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i32 809124132, ptr %i.ey, align 1
  store i64 %i.et, ptr %i.ai, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ey, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 4, ptr %.sroa.634.0..sroa_idx, align 8
  %i.fa = load i64, ptr %i.ds, align 8, !alias.scope !2320, !noundef !8 ; 3 uses
  %i.fb = load i64, ptr %i.am, align 8, !range !12, !alias.scope !2320, !noundef !8
  %i.fc = icmp eq i64 %i.fa, %i.fb
  br i1 %i.fc, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs5Xr050g3D4S_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %bb.ct unwind label %bb.cr, !noalias !2321

bb.cr:                                            ; preds = %bb.cq
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai) #34
          to label %.thread283 unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.ct:                                            ; preds = %bb.cq, %bb.cp
  %i.ff = load ptr, ptr %i.dr, align 8, !alias.scope !2320, !nonnull !8, !noundef !8
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.ff, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %i.fh = add i64 %i.fa, 1
  store i64 %i.fh, ptr %i.ds, align 8, !alias.scope !2320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br i1 %8, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsltEA4u8Pgfu_11candle_core.exit162, %bb.ct
  br i1 %7, label %bb.dg, label %bb.df

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.fi = load i64, ptr %i.ay, align 8, !range !21, !noundef !8
  %.not77 = icmp eq i64 %i.fi, -1
  br i1 %.not77, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %bb.cy unwind label %.body133.thread303

bb.cx:                                            ; preds = %bb.cv
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.cb

bb.cy:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.ag, ptr %i.af, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.438.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noundef nonnull @60, ptr noundef nonnull %i.af)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit148 unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag) #34
          to label %.thread283 unwind label %bb.gd

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit148: ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i150 unwind label %bb.da

bb.da:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit148
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.thread283 unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i150: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit148
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit156 unwind label %.body133.thread303

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit156: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.fm = load i64, ptr %i.ds, align 8, !alias.scope !2322, !noundef !8 ; 3 uses
  %i.fn = load i64, ptr %i.am, align 8, !range !12, !alias.scope !2322, !noundef !8
  %i.fo = icmp eq i64 %i.fm, %i.fn
  br i1 %i.fo, label %bb.dc, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsltEA4u8Pgfu_11candle_core.exit162

bb.dc:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit156
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs5Xr050g3D4S_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsltEA4u8Pgfu_11candle_core.exit162 unwind label %bb.dd, !noalias !2323

bb.dd:                                            ; preds = %bb.dc
  %i.fp = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized9tokenizer18template_processor:bb.a
          to label %.thread283 unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.dw:                                            ; preds = %bb.dt, %bb.ds
  %i.gt = load ptr, ptr %i.dr, align 8, !alias.scope !2326, !nonnull !8, !noundef !8
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %i.go
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gu, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %i.gv = add i64 %i.go, 1
  store i64 %i.gv, ptr %i.ds, align 8, !alias.scope !2326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br i1 %8, label %bb.ed, label %bb.dx

bb.dx:                                            ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsltEA4u8Pgfu_11candle_core.exit207, %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 -1, ptr %i.t, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 -1, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store ptr null, ptr %i.gx, align 8
  %.sroa.0260.0.copyload = load i64, ptr %i.aq, align 8
  %.sroa.4261.0.copyload = load ptr, ptr %i.cb, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %.sroa.5.0.copyload = load i64, ptr %i.cc, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2328)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.gy = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2329
  %i.gz = icmp ult i64 %.sroa.5.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.gz)
  %i.ha = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4261.0.copyload, i64 %.sroa.5.0.copyload
  store ptr %.sroa.4261.0.copyload, ptr %i.e, align 8, !noalias !2329
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.4261.0.copyload, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2329
  %.sroa.52.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.0260.0.copyload, ptr %.sroa.52.0..sroa_idx.i.i.i, align 8, !noalias !2329
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.ha, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !2329
  invoke void @_RINvNtNtCsf3Ta7LF998c_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtB1d_6string6StringENCNvXs6_NtNtCshBhMCGs0DAb_10tokenizers10processors8templateNtB2p_8TemplateINtNtB6_7convert7TryFromINtB1b_3VecB1U_EE8try_from0ENtB2p_5PieceINtNtB6_6result6ResultzB1U_ENCINvXso_B4y_IB4w_IB3S_B4j_EB1U_EINtNtNtB4_6traits7collect12FromIteratorIB4w_B4j_B1U_EE9from_iterBQ_E0B5f_ECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.e)
          to label %.noexc unwind label %bb.eq

.noexc:                                           ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2329
  %i.hb = load i64, ptr %i.f, align 8, !range !9, !noalias !2330, !noundef !8
  %i.hc = trunc nuw i64 %i.hb to i1
  br i1 %i.hc, label %bb.er, label %bb.dy

bb.dy:                                            ; preds = %.noexc
  %i.hd = load i64, ptr %i.t, align 8, !range !21, !alias.scope !2331, !noundef !8
  %i.he = icmp eq i64 %i.hd, -1
  br i1 %i.he, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit.thread, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.t)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template8TemplateECsltEA4u8Pgfu_11candle_core.exit.i.i unwind label %bb.ea, !noalias !2332

bb.ea:                                            ; preds = %bb.dz
  %i.hf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.t)
          to label %.body.i unwind label %bb.eb, !noalias !2332

bb.eb:                                            ; preds = %bb.ea
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36, !noalias !2332
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template8TemplateECsltEA4u8Pgfu_11candle_core.exit.i.i: ; preds = %bb.dz
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.t)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit.thread unwind label %bb.ec, !noalias !2332

bb.ec:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template8TemplateECsltEA4u8Pgfu_11candle_core.exit.i.i
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ec, %bb.ea
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.hh, %bb.ec ], [ %i.hf, %bb.ea ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.gy, i64 24, i1 false), !noalias !2332
  br label %.body184

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit.thread: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template8TemplateECsltEA4u8Pgfu_11candle_core.exit.i.i, %bb.dy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.gy, i64 24, i1 false), !noalias !2332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit

bb.ed:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.hi = load i64, ptr %i.ay, align 8, !range !21, !noundef !8
  %.not79 = icmp eq i64 %i.hi, -1
  br i1 %.not79, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %bb.ej unwind label %.body133.thread303

bb.ef:                                            ; preds = %bb.ed
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.cb

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsltEA4u8Pgfu_11candle_core.exit130: ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.eh unwind label %bb.eg

bb.eg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsltEA4u8Pgfu_11candle_core.exit130
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %.thread unwind label %bb.ei

bb.eh:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsltEA4u8Pgfu_11candle_core.exit130
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %.critedge unwind label %.body116

bb.ei:                                            ; preds = %bb.eg
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.ej:                                            ; preds = %bb.ee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.z, ptr %i.y, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.453.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noundef nonnull @61, ptr noundef nonnull %i.y)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit192 unwind label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.hl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z) #34
          to label %.thread283 unwind label %bb.gd

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit192: ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i194 unwind label %bb.el

bb.el:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit192
  %i.hm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.thread283 unwind label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.hn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i194: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit192
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit201 unwind label %.body133.thread303

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit201: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.ho = load i64, ptr %i.ds, align 8, !alias.scope !2333, !noundef !8 ; 3 uses
  %i.hp = load i64, ptr %i.am, align 8, !range !12, !alias.scope !2333, !noundef !8
  %i.hq = icmp eq i64 %i.ho, %i.hp
  br i1 %i.hq, label %bb.en, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsltEA4u8Pgfu_11candle_core.exit207

bb.en:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit201
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs5Xr050g3D4S_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsltEA4u8Pgfu_11candle_core.exit207 unwind label %bb.eo, !noalias !2334

bb.eo:                                            ; preds = %bb.en
  %i.hr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa) #34
          to label %.thread283 unwind label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsltEA4u8Pgfu_11candle_core.exit207: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit201, %bb.en
  %i.ht = load ptr, ptr %i.dr, align 8, !alias.scope !2333, !nonnull !8, !noundef !8
  %i.hu = getelementptr inbounds nuw [24 x i8], ptr %i.ht, i64 %i.ho
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hu, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  %i.hv = add i64 %i.ho, 1
  store i64 %i.hv, ptr %i.ds, align 8, !alias.scope !2333
  br label %bb.dx

bb.eq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit238, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit.i232, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit.i, %bb.dx, %bb.fp, %bb.fn
  %.sroa.023.5 = phi i1 [ false, %bb.fp ], [ false, %bb.fn ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit238 ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit.i232 ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit.i ], [ true, %bb.dx ]
  %.sroa.021.2 = phi i1 [ false, %bb.fp ], [ false, %bb.fn ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit238 ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit.i232 ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit.i ], [ true, %bb.dx ]
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %.body184

.body184:                                         ; preds = %bb.fh, %bb.et, %bb.fk, %bb.eq, %.body.i216, %.body.i
  %.sroa.023.5.lpad-body = phi i1 [ true, %.body.i ], [ false, %bb.fk ], [ true, %.body.i216 ], [ true, %bb.et ], [ %.sroa.023.5, %bb.eq ], [ true, %bb.fh ] ; 2 uses
  %.sroa.021.2.lpad-body = phi i1 [ true, %.body.i ], [ false, %bb.fk ], [ false, %.body.i216 ], [ true, %bb.et ], [ %.sroa.021.2, %bb.eq ], [ false, %bb.fh ]
  %eh.lpad-body185 = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.ix, %bb.fk ], [ %eh.lpad-body.i217, %.body.i216 ], [ %i.hz, %bb.et ], [ %i.hw, %bb.eq ], [ %i.iq, %bb.fh ] ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(112) %i.t) #34
          to label %bb.cf unwind label %bb.gd

bb.er:                                            ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.gy, i64 24, i1 false), !noalias !2335
  %.pr = load i64, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not80 = icmp eq i64 %.pr, -1
  %i.hx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !nonnull !8, !align !26
  br i1 %.not80, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit, label %bb.es

bb.es:                                            ; preds = %bb.er
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit.i unwind label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.hz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body184 unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit.i: ; preds = %bb.es
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.fa unwind label %bb.eq

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit: ; preds = %bb.er, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit.thread
  %.sroa.019.0311314 = phi ptr [ %i.t, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit.thread ], [ %i.hy, %bb.er ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.sroa.0262.0.copyload = load i64, ptr %i.am, align 8
  %.sroa.4263.0.copyload = load ptr, ptr %i.dr, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %.sroa.5264.0.copyload = load i64, ptr %i.ds, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2336)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2337
  %i.ic = icmp ult i64 %.sroa.5264.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.ic)
  %i.id = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4263.0.copyload, i64 %.sroa.5264.0.copyload
  store ptr %.sroa.4263.0.copyload, ptr %i.c, align 8, !noalias !2337
  %.sroa.4.0..sroa_idx.i.i.i213 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.4263.0.copyload, ptr %.sroa.4.0..sroa_idx.i.i.i213, align 8, !noalias !2337
  %.sroa.52.0..sroa_idx.i.i.i214 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.0262.0.copyload, ptr %.sroa.52.0..sroa_idx.i.i.i214, align 8, !noalias !2337
  %.sroa.6.0..sroa_idx.i.i.i215 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.id, ptr %.sroa.6.0..sroa_idx.i.i.i215, align 8, !noalias !2337
  invoke void @_RINvNtNtCsf3Ta7LF998c_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtB1d_6string6StringENCNvXs6_NtNtCshBhMCGs0DAb_10tokenizers10processors8templateNtB2p_8TemplateINtNtB6_7convert7TryFromINtB1b_3VecB1U_EE8try_from0ENtB2p_5PieceINtNtB6_6result6ResultzB1U_ENCINvXso_B4y_IB4w_IB3S_B4j_EB1U_EINtNtNtB4_6traits7collect12FromIteratorIB4w_B4j_B1U_EE9from_iterBQ_E0B5f_ECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c)
          to label %.noexc220 unwind label %bb.eq

.noexc220:                                        ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2337
  %i.ie = load i64, ptr %i.d, align 8, !range !9, !noalias !2338, !noundef !8
  %i.if = trunc nuw i64 %i.ie to i1
  br i1 %i.if, label %bb.ff, label %bb.ev

bb.ev:                                            ; preds = %.noexc220
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.019.0311314, i64 24 ; 6 uses
  %i.ih = load i64, ptr %i.ig, align 8, !range !21, !alias.scope !2339, !noundef !8
  %i.ii = icmp eq i64 %i.ih, -1
  br i1 %i.ii, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit238.thread, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ig)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template8TemplateECsltEA4u8Pgfu_11candle_core.exit.i.i218 unwind label %bb.ex, !noalias !2340

bb.ex:                                            ; preds = %bb.ew
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ig)
          to label %.body.i216 unwind label %bb.ey, !noalias !2340

bb.ey:                                            ; preds = %bb.ex
  %i.ik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36, !noalias !2340
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template8TemplateECsltEA4u8Pgfu_11candle_core.exit.i.i218: ; preds = %bb.ew
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ig)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit238.thread unwind label %bb.ez, !noalias !2340

bb.ez:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template8TemplateECsltEA4u8Pgfu_11candle_core.exit.i.i218
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body.i216

.body.i216:                                       ; preds = %bb.ez, %bb.ex
  %eh.lpad-body.i217 = phi { ptr, i32 } [ %i.il, %bb.ez ], [ %i.ij, %bb.ex ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ig, ptr noundef nonnull align 8 dereferenceable(24) %i.ib, i64 24, i1 false), !noalias !2340
  br label %.body184

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit238.thread: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template8TemplateECsltEA4u8Pgfu_11candle_core.exit.i.i218, %bb.ev
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ig, ptr noundef nonnull align 8 dereferenceable(24) %i.ib, i64 24, i1 false), !noalias !2340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit238

bb.fa:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(112) %i.t)
          to label %bb.fb unwind label %.body133.thread303

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %bb.fd unwind label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.im = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %.thread unwind label %bb.fe

bb.fd:                                            ; preds = %bb.fb
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %.critedge94 unwind label %.body116

bb.fe:                                            ; preds = %bb.fc
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.ff:                                            ; preds = %.noexc220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.ib, i64 24, i1 false), !noalias !2341
  %.pr315 = load i64, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not83 = icmp eq i64 %.pr315, -1
  %i.io = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !nonnull !8, !align !26
  br i1 %.not83, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit238, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit.i232 unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.iq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body184 unwind label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ir = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit.i232: ; preds = %bb.fg
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.fl unwind label %bb.eq

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit238: ; preds = %bb.ff, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit238.thread
  %.sroa.016.0319322 = phi ptr [ %.sroa.019.0311314, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit238.thread ], [ %i.ip, %bb.ff ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.sroa.0265.0.copyload = load i64, ptr %i.ax, align 8
  %.sroa.4266.0.copyload = load ptr, ptr %i.bj, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %.sroa.5267.0.copyload = load i64, ptr %i.bk, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2342)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2344
  %i.is = icmp ult i64 %.sroa.5267.0.copyload, 288230376151711744
  call void @llvm.assume(i1 %i.is)
  %i.it = getelementptr inbounds nuw [32 x i8], ptr %.sroa.4266.0.copyload, i64 %.sroa.5267.0.copyload
  store ptr %.sroa.4266.0.copyload, ptr %i.a, align 8, !noalias !2344
  %.sroa.4.0..sroa_idx.i.i.i239 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.4266.0.copyload, ptr %.sroa.4.0..sroa_idx.i.i.i239, align 8, !noalias !2344
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.0265.0.copyload, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !2344
  %.sroa.6.0..sroa_idx.i.i.i240 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.it, ptr %.sroa.6.0..sroa_idx.i.i.i240, align 8, !noalias !2344
  invoke void @_RINvXsb_NtCsgdREh4IfnNf_5ahash8hash_mapINtB6_8AHashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template12SpecialTokenEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTBQ_B1s_EE9from_iterINtNtNtB2F_8adapters3map3MapINtNtNtBU_3vec9into_iter8IntoIterTBQ_mEENCNvXs9_B1u_NtB1u_6TokensINtNtB2H_7convert4FromINtB4p_3VecB4R_EE4from0EECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc241 unwind label %bb.eq

.noexc241:                                        ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2344
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.016.0319322, i64 48 ; 4 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !alias.scope !2345, !noundef !8
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %bb.fn, label %bb.fj

bb.fj:                                            ; preds = %.noexc241
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template12SpecialTokenEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.iu)
          to label %bb.fn unwind label %bb.fk, !noalias !2346

bb.fk:                                            ; preds = %bb.fj
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.iu, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !2346
  br label %.body184

bb.fl:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit.i232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fr, %bb.fl
  %.not85323 = phi i1 [ false, %bb.fr ], [ true, %bb.fl ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(112) %i.t)
          to label %bb.fs unwind label %.body133

bb.fn:                                            ; preds = %bb.fj, %.noexc241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.iu, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !2346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2343
  invoke void @_RNvMsN_NtNtCshBhMCGs0DAb_10tokenizers10processors8templateNtB5_25TemplateProcessingBuilder5build(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.sroa.016.0319322)
          to label %bb.fo unwind label %bb.eq

bb.fo:                                            ; preds = %bb.fn
  %i.iy = load i64, ptr %i.w, align 8, !range !21, !noundef !8 ; 2 uses
  %i.iz = icmp eq i64 %i.iy, -1
  br i1 %i.iz, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template18TemplateProcessingNtBZ_30TemplateProcessingBuilderErrorEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(128) %i.w)
          to label %bb.fr unwind label %bb.eq

bb.fq:                                            ; preds = %bb.fo
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.469.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.463.0..sroa_idx, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 %i.iy, ptr %i.x, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template25TemplateProcessingBuilderECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(112) %i.t)
          to label %bb.gb unwind label %bb.ga

bb.fr:                                            ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 -1, ptr %0, align 8
  br label %bb.fm

bb.fs:                                            ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br i1 %.not85323, label %bb.u, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringmEEECsltEA4u8Pgfu_11candle_core.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringmEEECsltEA4u8Pgfu_11candle_core.exit: ; preds = %bb.w, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.ja = load i64, ptr %i.ay, align 8, !range !21, !alias.scope !2347, !noundef !8
  %i.jb = icmp eq i64 %i.ja, -1
  br i1 %i.jb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit, label %bb.ft

bb.ft:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringmEEECsltEA4u8Pgfu_11candle_core.exit
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit.i247 unwind label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.jc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %.body248 unwind label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit.i247: ; preds = %bb.ft
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit unwind label %bb.m

.body:                                            ; preds = %bb.ga, %.body133, %.thread291.thread, %bb.fw, %bb.v, %.thread, %.body116.thread275
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn270, %.thread ], [ %.pn88.pn, %.body116.thread275 ], [ %i.je, %bb.fw ], [ %i.bn, %bb.v ], [ %eh.lpad-body185, %.thread291.thread ], [ %lpad.thr_comm.split-lp302, %.body133 ], [ %i.jj, %bb.ga ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ay) #34
          to label %.body248 unwind label %bb.gd

bb.fw:                                            ; preds = %bb.w
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringmEEECsltEA4u8Pgfu_11candle_core.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit.i247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %i.jf = load i64, ptr %i.az, align 8, !range !21, !alias.scope !2348, !noundef !8
  %i.jg = icmp eq i64 %i.jf, -1
  br i1 %i.jg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit253, label %bb.fx

bb.fx:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit.i252 unwind label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.jh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %common.resume unwind label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ji = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

common.resume:                                    ; preds = %.body248, %bb.fy
  %common.resume.op = phi { ptr, i32 } [ %i.jh, %bb.fy ], [ %.pn88.pn.pn.pn, %.body248 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit.i252: ; preds = %bb.fx
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit253

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit253: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.d

bb.ga:                                            ; preds = %bb.fq
  %i.jj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template18TemplateProcessingECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(128) %i.x) #34
          to label %.body unwind label %bb.gd

bb.gb:                                            ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.x, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ay)
          to label %bb.gc unwind label %bb.m

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.d

bb.gd:                                            ; preds = %.thread, %.body116.thread, %.thread283, %bb.ga, %.body, %.body184, %bb.ek, %bb.dk, %bb.cz, %bb.ch, %.body106, %.body102, %.body248
  %i.jk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.ge:                                            ; preds = %bb.bj
  unreachable

.thread283:                                       ; preds = %bb.eo, %bb.el, %bb.du, %bb.do, %bb.dl, %bb.dd, %bb.da, %bb.cr, %bb.cl, %bb.ci, %bb.ch, %bb.cz, %bb.dk, %bb.ek, %.body133.thread303, %bb.cf
  %.pn290 = phi { ptr, i32 } [ %i.hl, %bb.ek ], [ %eh.lpad-body185, %bb.cf ], [ %lpad.thr_comm301, %.body133.thread303 ], [ %i.ef, %bb.ch ], [ %i.fj, %bb.cz ], [ %i.fv, %bb.dk ], [ %i.hm, %bb.el ], [ %i.gr, %bb.du ], [ %i.gb, %bb.do ], [ %i.fw, %bb.dl ], [ %i.fp, %bb.dd ], [ %i.fk, %bb.da ], [ %i.fd, %bb.cr ], [ %i.el, %bb.cl ], [ %i.eg, %bb.ci ], [ %i.hr, %bb.eo ] ; 2 uses
  %.sroa.022.2289 = phi i1 [ true, %bb.ek ], [ false, %bb.cf ], [ %.sroa.022.3.ph, %.body133.thread303 ], [ true, %bb.ch ], [ true, %bb.cz ], [ true, %bb.dk ], [ true, %bb.el ], [ true, %bb.du ], [ true, %bb.do ], [ true, %bb.dl ], [ true, %bb.dd ], [ true, %bb.da ], [ true, %bb.cr ], [ true, %bb.cl ], [ true, %bb.ci ], [ true, %bb.eo ]
  %.sroa.023.2288 = phi i1 [ true, %bb.ek ], [ %.sroa.023.5.lpad-body, %bb.cf ], [ true, %.body133.thread303 ], [ true, %bb.ch ], [ true, %bb.cz ], [ true, %bb.dk ], [ true, %bb.el ], [ true, %bb.du ], [ true, %bb.do ], [ true, %bb.dl ], [ true, %bb.dd ], [ true, %bb.da ], [ true, %bb.cr ], [ true, %bb.cl ], [ true, %bb.ci ], [ true, %bb.eo ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am) #34
          to label %.thread291 unwind label %bb.gd

.body116.thread:                                  ; preds = %bb.cc, %bb.bu, %bb.bm, %bb.bf, %.body116.thread279, %.thread291
  %.pn88272 = phi { ptr, i32 } [ %lpad.thr_comm, %.body116.thread279 ], [ %.pn290, %.thread291 ], [ %i.dx, %bb.bu ], [ %i.dm, %bb.bm ], [ %i.cw, %bb.bf ], [ %i.ed, %bb.cc ]
  %.sroa.023.1271 = phi i1 [ true, %.body116.thread279 ], [ %.sroa.023.2288, %.thread291 ], [ true, %bb.bu ], [ true, %bb.bm ], [ true, %bb.bf ], [ true, %bb.cc ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aq) #34
          to label %.body116.thread275 unwind label %bb.gd

.thread:                                          ; preds = %.body133, %.thread291.thread, %bb.fc, %.body116, %bb.eg, %bb.ba, %bb.au, %bb.af, %.body102, %.body106, %.body116.thread275
  %.pn88.pn270 = phi { ptr, i32 } [ %.pn88.pn, %.body116.thread275 ], [ %eh.lpad-body103, %.body102 ], [ %eh.lpad-body107, %.body106 ], [ %i.cr, %bb.ba ], [ %i.bz, %bb.af ], [ %i.co, %bb.au ], [ %lpad.thr_comm.split-lp302, %.body133 ], [ %i.hj, %bb.eg ], [ %i.im, %bb.fc ], [ %lpad.thr_comm.split-lp, %.body116 ], [ %eh.lpad-body185, %.thread291.thread ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringmEEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ax) #34
          to label %.body unwind label %bb.gd
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized9tokenizer21value_to_string_array(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 21, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs1_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_5Value6to_vec(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  call void @_RINvXs0_NtCsltEA4u8Pgfu_11candle_core5errorINtNtCsf3Ta7LF998c_4core6result6ResultRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB8_9quantized9gguf_file5ValueENtB6_5ErrorEINtB6_7ContextB1h_B2p_E12with_contextNtNtB1n_6string6StringNCNvNtB1T_9tokenizer21value_to_string_array0EB8_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.b, ptr noundef nonnull align 8 %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = load i64, ptr %i.c, align 8, !range !34, !noundef !8 ; 2 uses
  %.not = icmp eq i64 %i.f, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.511.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.f, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.413.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !8
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.l
  store ptr %i.j, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.o, align 8
  call void @_RINvNtNtCsf3Ta7LF998c_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCNvNtB1A_9tokenizer21value_to_string_arrays_0ENtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB6_6result6ResultzNtNtB1C_5error5ErrorENCINvXso_B3U_IB3S_INtNtB3j_3vec3VecB3f_EB4e_EINtNtNtB4_6traits7collect12FromIteratorIB3S_B3f_B4e_EE9from_iterBQ_E0B4R_EB1C_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized9tokenizer22pre_tokenizer_sequence(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 139, 145) %2, i24 range(i24 0, 257) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = alloca [80 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.j = load i64, ptr %i.e, align 8, !range !9, !noundef !8
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !10, !noundef !8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.q = icmp samesign ule i64 %2, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %2, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.m, ptr %i.r, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.p, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %2, ptr %.sroa.531.0..sroa_idx, align 8
  store i64 1, ptr %i.f, align 8
  call void @_RINvMs3_NtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers5splitNtB6_5Split3newNtB6_12SplitPatternECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f, i8 noundef 1, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.s = load i64, ptr %i.g, align 8, !range !23, !noundef !8
  %i.t = icmp eq i64 %i.s, 2
  br i1 %i.t, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !8, !align !26, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.v, ptr %i.a, align 8, !noalias !2351
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.x, ptr %i.y, align 8, !noalias !2351
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32
  %i.z = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 97) 16, i64 noundef 8) #32 ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.e, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxIBv_DNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtBN_6marker4SendNtB1k_4SyncEL_EE3newCsltEA4u8Pgfu_11candle_core.exit, !prof !11

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #33
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #34
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #36
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.ai, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxIBv_DNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtBN_6marker4SendNtB1k_4SyncEL_EE3newCsltEA4u8Pgfu_11candle_core.exit: ; preds = %bb.d
  store ptr %i.v, ptr %i.z, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.x, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.z, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @62, ptr %i.af, align 8
  store i64 -9223372036854775771, ptr %i.d, align 8
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.06.0.copyload = load i64, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.439.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  store i64 %.sroa.06.0.copyload, ptr %0, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.540.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32
  %i.ag = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 97) 96, i64 noundef 8) #32 ; 5 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit45, !prof !11

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #33
          to label %.noexc44 unwind label %bb.j

.noexc44:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers5split5SplitECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i) #34
          to label %common.resume unwind label %bb.l

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit45: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store i64 3, ptr %i.aj, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  store i24 %3, ptr %.sroa.424.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.ak, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 2, ptr %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
end_hunk_1
