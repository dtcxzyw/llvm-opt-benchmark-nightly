Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_c_api-15f02cf232a6f4a0.wasmi_c_api.bb97e6f20a774834-cgu.05?download=true
inline.NumInlined: 251
inline.NumDeleted: 145
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorECsg6ypMx2A1Am_11wasmi_c_api:bb.a
_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1VvpiNK3DOA_4wast5error4TextEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 64 ; 4 uses
  %i.ac = load i64, ptr %i.ab, align 8, !range !4, !alias.scope !145, !noalias !143, !noundef !5
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1VvpiNK3DOA_4wast5error5ErrorECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i.i.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i.i.i.i.i unwind label %bb.p, !noalias !143, !inline_history !23

bb.p:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.t unwind label %bb.q, !noalias !143, !inline_history !23

bb.q:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !143, !inline_history !23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i.i.i.i.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1VvpiNK3DOA_4wast5error5ErrorECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i unwind label %bb.s, !noalias !143, !inline_history !23

bb.r:                                             ; preds = %.body2.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !143, !inline_history !23
  unreachable

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i.i.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p, %.body2.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.s ], [ %i.ae, %bb.p ], [ %.pn.i.i.i.i.i.i.i, %.body2.i.i.i.i.i.i.i ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef 96, i64 noundef 8) #21, !noalias !143, !inline_history !23
  br label %bb.ai

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1VvpiNK3DOA_4wast5error5ErrorECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i.i.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef 96, i64 noundef 8) #21, !noalias !143, !inline_history !23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECsg6ypMx2A1Am_11wasmi_c_api.exit.i

bb.u:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i2, i64 32
  %.val2.i.i.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !139, !noalias !141, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !143
  %i.aj = ptrtoint ptr %.val2.i.i.i.i to i64      ; 2 uses
  %i.ak = and i64 %i.aj, 3
  switch i64 %i.ak, label %default.unreachable [
    i64 2, label %bb.y
    i64 3, label %bb.v
    i64 0, label %bb.y
    i64 1, label %bb.w
  ], !prof !146

default.unreachable:                              ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.al = icmp ult ptr %.val2.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.am = and i64 %i.aj, 1095216660480
  %i.an = icmp ne i64 %i.am, 1095216660480
  tail call void @llvm.assume(i1 %i.al), !noalias !136
  tail call void @llvm.assume(i1 %i.an), !noalias !136
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.ao = getelementptr i8, ptr %.val2.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ], !noalias !136
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !alias.scope !147, !noalias !143
  store i8 3, ptr %i.a, align 8, !alias.scope !147, !noalias !143
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %bb.y unwind label %bb.x, !noalias !143, !inline_history !23

bb.x:                                             ; preds = %bb.w
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i2, i64 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar) #20
          to label %bb.ai unwind label %bb.ac, !noalias !141, !inline_history !23

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !143
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i2, i64 8 ; 4 uses
  %i.at = load i64, ptr %i.as, align 8, !range !4, !alias.scope !148, !noalias !141, !noundef !5
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECsg6ypMx2A1Am_11wasmi_c_api.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsg6ypMx2A1Am_11wasmi_c_api.exit.i4.i.invoke.i.i.i unwind label %bb.aa, !noalias !141, !inline_history !23

bb.aa:                                            ; preds = %bb.z
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %bb.ai unwind label %bb.ab, !noalias !141, !inline_history !23

bb.ab:                                            ; preds = %bb.aa
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !141, !inline_history !23
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i.i, %bb.x
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !141, !inline_history !23
  unreachable

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ad, %bb.d
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ay, %bb.ad ], [ %i.l, %bb.d ]
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i2, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az) #20
          to label %bb.ai unwind label %bb.ac, !noalias !141, !inline_history !23

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i2, i64 24 ; 4 uses
  %i.bb = load i64, ptr %i.ba, align 8, !range !4, !alias.scope !149, !noalias !141, !noundef !5
  %i.bc = icmp eq i64 %i.bb, -1
  br i1 %i.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECsg6ypMx2A1Am_11wasmi_c_api.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsg6ypMx2A1Am_11wasmi_c_api.exit.i4.i.invoke.i.i.i unwind label %bb.af, !noalias !141, !inline_history !23

bb.af:                                            ; preds = %bb.ae
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %bb.ai unwind label %bb.ag, !noalias !141, !inline_history !23

bb.ag:                                            ; preds = %bb.af
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !141, !inline_history !23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsg6ypMx2A1Am_11wasmi_c_api.exit.i4.i.invoke.i.i.i: ; preds = %bb.ae, %bb.z
  %i.bf = phi ptr [ %i.as, %bb.z ], [ %i.ba, %bb.ae ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECsg6ypMx2A1Am_11wasmi_c_api.exit.i unwind label %bb.ah, !noalias !141, !inline_history !23

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsg6ypMx2A1Am_11wasmi_c_api.exit.i4.i.invoke.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af, %.body.i.i.i.i, %bb.aa, %bb.x, %bb.t
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bg, %bb.ah ], [ %eh.lpad-body.i.i.i.i.i.i, %bb.t ], [ %i.aq, %bb.x ], [ %i.av, %bb.aa ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.bd, %bb.af ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2, i64 noundef 48, i64 noundef 8) #21, !noalias !141, !inline_history !23
  br label %bb.cq

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECsg6ypMx2A1Am_11wasmi_c_api.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsg6ypMx2A1Am_11wasmi_c_api.exit.i4.i.invoke.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i, %bb.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1VvpiNK3DOA_4wast5error5ErrorECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2, i64 noundef 48, i64 noundef 8) #21, !noalias !141, !inline_history !23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.aj:                                            ; preds = %bb.a
  %i.bh = getelementptr i8, ptr %i.b, i64 16
  %.val2.i = load i64, ptr %i.bh, align 8, !alias.scope !137, !noalias !136, !noundef !5 ; 2 uses
  %i.bi = icmp eq i64 %.val2.i, 0
  br i1 %i.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i1 = load ptr, ptr %i.bj, align 8, !alias.scope !137, !noalias !136, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1, i64 noundef range(i64 1, 0) %.val2.i, i64 noundef 1) #21, !noalias !141, !inline_history !23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.al:                                            ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val3.i = load ptr, ptr %i.bk, align 8, !alias.scope !137, !noalias !136 ; 5 uses
  %i.bl = getelementptr i8, ptr %i.b, i64 16
  %.val4.i = load ptr, ptr %i.bl, align 8, !alias.scope !137, !noalias !136, !nonnull !5, !align !6, !noundef !5 ; 5 uses
  %i.bm = load ptr, ptr %.val4.i, align 8, !invariant.load !5, !noalias !141 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i) ], !noalias !136
  invoke void %i.bm(ptr noundef nonnull %.val3.i)
          to label %bb.an unwind label %bb.ap, !noalias !141, !inline_history !23

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.bn = getelementptr inbounds nuw i8, ptr %.val4.i, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !range !7, !invariant.load !5, !noalias !141 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i) ], !noalias !136
  %i.bq = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !range !150, !invariant.load !5, !noalias !141
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef range(i64 1, 0) %i.bo, i64 noundef range(i64 1, 536870913) %i.br) #21, !noalias !141, !inline_history !23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.ap:                                            ; preds = %bb.am
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val4.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !range !7, !invariant.load !5, !noalias !141 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.cq, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bw = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !range !150, !invariant.load !5, !noalias !141
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef range(i64 1, 0) %i.bu, i64 noundef range(i64 1, 536870913) %i.bx) #21, !noalias !141, !inline_history !23
  br label %bb.cq

bb.ar:                                            ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.cp, !inline_history !23

bb.as:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151), !noalias !136
  %i.bz = add nsw i8 %i.c, -4
  %i.ca = icmp samesign ugt i8 %i.c, 3
  %narrow.i.i = select i1 %i.ca, i8 %i.bz, i8 2
  switch i8 %narrow.i.i, label %bb.at [
    i8 0, label %bb.aw
    i8 1, label %bb.az
  ]

bb.at:                                            ; preds = %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152), !noalias !136
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.val5.i.i.i = load i64, ptr %i.cb, align 8, !alias.scope !153, !noalias !136, !noundef !5 ; 2 uses
  %i.cc = icmp eq i64 %.val5.i.i.i, 0
  br i1 %i.cc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.val4.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !153, !noalias !136, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef range(i64 1, 0) %.val5.i.i.i, i64 noundef 1) #21, !noalias !154, !inline_history !23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i: ; preds = %bb.au, %bb.at
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.val1.i.i.i = load i64, ptr %i.ce, align 8, !alias.scope !153, !noalias !136, !noundef !5 ; 2 uses
  %i.cf = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.cf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.val.i.i.i = load ptr, ptr %i.cg, align 8, !alias.scope !153, !noalias !136, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #21, !noalias !154, !inline_history !23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i

bb.aw:                                            ; preds = %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155), !noalias !136
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val5.i3.i.i = load i64, ptr %i.ch, align 8, !alias.scope !156, !noalias !136, !noundef !5 ; 2 uses
  %i.ci = icmp eq i64 %.val5.i3.i.i, 0
  br i1 %i.ci, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i5.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val4.i4.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !156, !noalias !136, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i4.i.i, i64 noundef range(i64 1, 0) %.val5.i3.i.i, i64 noundef 1) #21, !noalias !157, !inline_history !23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i5.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i5.i.i: ; preds = %bb.ax, %bb.aw
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val1.i6.i.i = load i64, ptr %i.ck, align 8, !alias.scope !156, !noalias !136, !noundef !5 ; 2 uses
  %i.cl = icmp eq i64 %.val1.i6.i.i, 0
  br i1 %i.cl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i5.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val.i7.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !156, !noalias !136, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i7.i.i, i64 noundef range(i64 1, 0) %.val1.i6.i.i, i64 noundef 1) #21, !noalias !157, !inline_history !23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.az:                                            ; preds = %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158), !noalias !136
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.val5.i9.i.i = load i64, ptr %i.cn, align 8, !alias.scope !159, !noalias !136, !noundef !5 ; 2 uses
  %i.co = icmp eq i64 %.val5.i9.i.i, 0
  br i1 %i.co, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i11.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.val4.i10.i.i = load ptr, ptr %i.cp, align 8, !alias.scope !159, !noalias !136, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i10.i.i, i64 noundef range(i64 1, 0) %.val5.i9.i.i, i64 noundef 1) #21, !noalias !160, !inline_history !23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i11.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i11.i.i: ; preds = %bb.ba, %bb.az
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.val1.i12.i.i = load i64, ptr %i.cq, align 8, !alias.scope !159, !noalias !136, !noundef !5 ; 2 uses
  %i.cr = icmp eq i64 %.val1.i12.i.i, 0
  br i1 %i.cr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit14.i.i, label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i11.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.val.i13.i.i = load ptr, ptr %i.cs, align 8, !alias.scope !159, !noalias !136, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i13.i.i, i64 noundef range(i64 1, 0) %.val1.i12.i.i, i64 noundef 1) #21, !noalias !160, !inline_history !23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit14.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit14.i.i: ; preds = %bb.bb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i11.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161), !noalias !136
  %i.cu = load i8, ptr %i.ct, align 8, !range !8, !alias.scope !162, !noalias !136, !noundef !5
  %i.cv = icmp eq i8 %i.cu, 3
  br i1 %i.cv, label %bb.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.bc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit14.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163), !noalias !136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164), !noalias !136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165), !noalias !136
  %i.cx = load i8, ptr %i.cw, align 8, !range !9, !alias.scope !166, !noalias !136, !noundef !5
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167), !noalias !136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168), !noalias !136
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !169, !noalias !136, !nonnull !5, !noundef !5
  %i.db = atomicrmw add ptr %i.da, i64 -1 release, align 8, !noalias !170
  %i.dc = icmp eq i64 %i.db, 1
  br i1 %i.dc, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.be:                                            ; preds = %bb.bi
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !136, !inline_history !23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i: ; preds = %bb.av, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171), !noalias !136
  %i.de = icmp eq i8 %i.c, 3
  br i1 %i.de, label %bb.bf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECsg6ypMx2A1Am_11wasmi_c_api.exit15.i.i

bb.bf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172), !noalias !136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173), !noalias !136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174), !noalias !136
  %i.dg = load i8, ptr %i.df, align 8, !range !9, !alias.scope !175, !noalias !136, !noundef !5
  %i.dh = icmp eq i8 %i.dg, 0
  br i1 %i.dh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECsg6ypMx2A1Am_11wasmi_c_api.exit15.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176), !noalias !136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177), !noalias !136
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !178, !noalias !136, !nonnull !5, !noundef !5
  %i.dk = atomicrmw add ptr %i.dj, i64 -1 release, align 8, !noalias !179
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.bh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECsg6ypMx2A1Am_11wasmi_c_api.exit15.i.i

bb.bh:                                            ; preds = %bb.bg
  fence acquire, !noalias !136
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.di) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECsg6ypMx2A1Am_11wasmi_c_api.exit15.i.i unwind label %bb.bi, !noalias !136, !inline_history !23

bb.bi:                                            ; preds = %bb.bh
  %i.dm = landingpad { ptr, i32 }
          cleanup
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(40) %i.dn) #20
          to label %bb.cq unwind label %bb.be, !noalias !136, !inline_history !23

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECsg6ypMx2A1Am_11wasmi_c_api.exit15.i.i: ; preds = %bb.bh, %bb.bg, %bb.bf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180), !noalias !136
  %i.dp = load i8, ptr %i.do, align 8, !range !8, !alias.scope !181, !noalias !136, !noundef !5
  %i.dq = icmp eq i8 %i.dp, 3
  br i1 %i.dq, label %bb.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.bj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECsg6ypMx2A1Am_11wasmi_c_api.exit15.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182), !noalias !136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183), !noalias !136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184), !noalias !136
  %i.ds = load i8, ptr %i.dr, align 8, !range !9, !alias.scope !185, !noalias !136, !noundef !5
  %i.dt = icmp eq i8 %i.ds, 0
  br i1 %i.dt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186), !noalias !136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187), !noalias !136
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !188, !noalias !136, !nonnull !5, !noundef !5
  %i.dw = atomicrmw add ptr %i.dv, i64 -1 release, align 8, !noalias !189
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.bl:                                            ; preds = %bb.a
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi5store5inner10StoreInnerECsg6ypMx2A1Am_11wasmi_c_api:bb.a
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4fuel4FuelECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.y

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECsg6ypMx2A1Am_11wasmi_c_api.exit
  %i.be = atomicrmw add ptr %i.bc, i64 -1 release, align 8, !noalias !295
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4fuel4FuelECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs5zeGauAcNNa_10wasmi_core4fuel9FuelCostsNtNtCskKLDkoKarTP_4core6marker4SendNtB1s_4SyncEL_E9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bb) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4fuel4FuelECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.ad

bb.aa:                                            ; preds = %bb.x
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECsg6ypMx2A1Am_11wasmi_c_api.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECsg6ypMx2A1Am_11wasmi_c_api.exit44: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg06799QCvd1_17wasmi_collections5arena5ArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1u_7reftype9ExternRefENtB27_15ExternRefEntityEECsg6ypMx2A1Am_11wasmi_c_api.exit, %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !299, !noundef !5 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4fuel4FuelECsg6ypMx2A1Am_11wasmi_c_api.exit46, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECsg6ypMx2A1Am_11wasmi_c_api.exit44
  %i.bk = atomicrmw add ptr %i.bi, i64 -1 release, align 8, !noalias !300
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4fuel4FuelECsg6ypMx2A1Am_11wasmi_c_api.exit46

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs5zeGauAcNNa_10wasmi_core4fuel9FuelCostsNtNtCskKLDkoKarTP_4core6marker4SendNtB1s_4SyncEL_E9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bh) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4fuel4FuelECsg6ypMx2A1Am_11wasmi_c_api.exit46

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4fuel4FuelECsg6ypMx2A1Am_11wasmi_c_api.exit46: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECsg6ypMx2A1Am_11wasmi_c_api.exit44, %bb.ab, %bb.ac
  ret void

bb.ad:                                            ; preds = %bb.z, %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1R_6memory4data11DataSegmentENtB2u_17DataSegmentEntityEECsg6ypMx2A1Am_11wasmi_c_api.exit, %.body30, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1R_5table5TableENtNtCs5zeGauAcNNa_10wasmi_core5table5TableEECsg6ypMx2A1Am_11wasmi_c_api.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1R_6memory6MemoryENtNtCs5zeGauAcNNa_10wasmi_core6memory6MemoryEECsg6ypMx2A1Am_11wasmi_c_api.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1R_4func4FuncENtB2u_10FuncEntityEECsg6ypMx2A1Am_11wasmi_c_api.exit, %.body, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1R_5table7element14ElementSegmentENtNtNtCs5zeGauAcNNa_10wasmi_core5table7element14ElementSegmentEECsg6ypMx2A1Am_11wasmi_c_api.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1R_6global6GlobalENtNtCs5zeGauAcNNa_10wasmi_core6global6GlobalEECsg6ypMx2A1Am_11wasmi_c_api.exit
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4fuel4FuelECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECsg6ypMx2A1Am_11wasmi_c_api.exit, %bb.z
  resume { ptr, i32 } %.pn16
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !8, !noundef !5
  %i.b = icmp eq i8 %i.a, 3
  br i1 %i.b, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.d = load i8, ptr %i.c, align 8, !range !9, !alias.scope !314, !noundef !5
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !317, !nonnull !5, !noundef !5
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !317
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state9CallStackECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameEECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameEECsg6ypMx2A1Am_11wasmi_c_api.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameEECsg6ypMx2A1Am_11wasmi_c_api.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameEECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef range(i8 -1, 1) i8 @_RINvXsc_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellQNtNtCs5zeGauAcNNa_10wasmi_core5value4V128NtB6_13LiftFromCells15lift_from_cellsNtNtNtBe_5store2id7StoreIdRSNtB6_4CellECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef writeonly captures(none) dereferenceable(16) %0, i32 noundef %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !333, !noundef !5 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !alias.scope !333, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = add i64 %i.b, -1                         ; 2 uses
  store ptr %i.d, ptr %2, align 8, !alias.scope !333, !captures !334
  store i64 %i.e, ptr %i.a, align 8, !alias.scope !333
  %i.f = load i64, ptr %i.c, align 8, !noalias !335, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %.not.i8.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i8.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = add i64 %i.b, -2
  store ptr %i.g, ptr %2, align 8, !alias.scope !337, !captures !334
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !337
  %i.i = load i64, ptr %i.d, align 8, !noalias !338, !noundef !5
  %i.j = zext i64 %i.i to i128
  %i.k = shl nuw i128 %i.j, 64
  %i.l = zext i64 %i.f to i128
  %i.m = or disjoint i128 %i.k, %i.l
  %.sroa.5.1.extract.trunc7 = trunc i64 %i.f to i8
  %.sroa.5.2.extract.shift = lshr i128 %i.m, 8
  %.sroa.5.2.extract.trunc = trunc nuw i128 %.sroa.5.2.extract.shift to i120
  store i8 %.sroa.5.1.extract.trunc7, ptr %0, align 1
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i120 %.sroa.5.2.extract.trunc, ptr %.sroa.2.0..sroa_idx, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi i8 [ -1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef range(i8 -1, 3) i8 @_RINvXsc_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellQNtNtCs5zeGauAcNNa_10wasmi_core5value4V128NtB6_13LiftFromCells15lift_from_cellsRINtNtBe_5store5StoreuENtNtB8_5state2SpECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef writeonly captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1688) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.a = load ptr, ptr %2, align 8, !alias.scope !354, !noundef !5 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noalias !355, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.d = load i64, ptr %i.c, align 8, !noalias !357, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %2, align 8, !alias.scope !358
  %i.f = zext i64 %i.d to i128
  %i.g = shl nuw i128 %i.f, 64
  %i.h = zext i64 %i.b to i128
  %i.i = or disjoint i128 %i.g, %i.h
  %.sroa.5.1.extract.trunc7 = trunc i64 %i.b to i8
  %.sroa.5.2.extract.shift = lshr i128 %i.i, 8
  %.sroa.5.2.extract.trunc = trunc nuw i128 %.sroa.5.2.extract.shift to i120
  store i8 %.sroa.5.1.extract.trunc7, ptr %0, align 1
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i120 %.sroa.5.2.extract.trunc, ptr %.sroa.2.0..sroa_idx, align 1
  ret i8 -1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE22can_create_more_tablesCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1688) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !362, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCsg6ypMx2A1Am_11wasmi_c_api.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !362, !nonnull !5, !noundef !5
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !362, !nonnull !5, !align !6, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !5, !noalias !363, !nonnull !5
  %i.i = tail call { ptr, ptr } %i.h(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull %i.e) #23, !noalias !363, !inline_history !10 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  %i.n = tail call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 %1)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !5, !nonnull !5
  %i.q = tail call noundef i64 %i.p(ptr noundef nonnull %i.j) #23
  %i.r = icmp ule i64 %i.n, %i.q
  br label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCsg6ypMx2A1Am_11wasmi_c_api.exit.thread

_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCsg6ypMx2A1Am_11wasmi_c_api.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.r, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE24can_create_more_memoriesCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1688) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !367, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCsg6ypMx2A1Am_11wasmi_c_api.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !367, !nonnull !5, !noundef !5
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !367, !nonnull !5, !align !6, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !5, !noalias !368, !nonnull !5
  %i.i = tail call { ptr, ptr } %i.h(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull %i.e) #23, !noalias !368, !inline_history !10 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  %i.n = tail call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 %1)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !5, !nonnull !5
  %i.q = tail call noundef i64 %i.p(ptr noundef nonnull %i.j) #23
  %i.r = icmp ule i64 %i.n, %i.q
  br label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCsg6ypMx2A1Am_11wasmi_c_api.exit.thread

_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCsg6ypMx2A1Am_11wasmi_c_api.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.r, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE25can_create_more_instancesCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1688) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !372, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCsg6ypMx2A1Am_11wasmi_c_api.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !372, !nonnull !5, !noundef !5
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !372, !nonnull !5, !align !6, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !5, !noalias !373, !nonnull !5
  %i.i = tail call { ptr, ptr } %i.h(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull %i.e) #23, !noalias !373, !inline_history !10 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = load i64, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %i.n = icmp ult i64 %i.m, 576460752303423488
  tail call void @llvm.assume(i1 %i.n)
  %i.o = tail call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 %1)
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !5, !nonnull !5
  %i.r = tail call noundef i64 %i.q(ptr noundef nonnull %i.j) #23
  %i.s = icmp ule i64 %i.o, %i.r
  br label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCsg6ypMx2A1Am_11wasmi_c_api.exit.thread

_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCsg6ypMx2A1Am_11wasmi_c_api.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.s, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCsg6ypMx2A1Am_11wasmi_c_api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1616
  %i.b = load ptr, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1624
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !5, !align !6, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !5, !nonnull !5
  %i.i = tail call { ptr, ptr } %i.h(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull %i.e) #23 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.k, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  store ptr %1, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i32 } @_RNvMs1_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE16alloc_trampolineCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(1688) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !400
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.d, align 8, !noalias !400
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !399, !noundef !5 ; 3 uses
  %i.g = icmp ult i64 %i.f, 576460752303423488
  tail call void @llvm.assume(i1 %i.g)
  %i.h = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.f, i64 noundef 1, i64 noundef 8, i64 noundef 16)
          to label %bb.b unwind label %bb.j, !noalias !401

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %.not.i = icmp eq i64 %i.i, -1
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = atomicrmw add ptr %1, i64 -1 release, align 8, !noalias !402
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #22, !noalias !401
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !400
  store ptr %1, ptr %i.a, align 8, !noalias !404
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.l, align 8, !noalias !404
  %i.m = load i64, ptr %i.e, align 8, !alias.scope !405, !noundef !5 ; 3 uses
  %i.n = load i64, ptr %i.c, align 8, !range !7, !alias.scope !405, !noundef !5
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEE8grow_oneCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.n unwind label %bb.g, !noalias !401

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = atomicrmw add ptr %1, i64 -1 release, align 8, !noalias !406
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #22
          to label %.body.i unwind label %bb.i, !noalias !401

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !401
  unreachable

.body.i:                                          ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %eh.lpad-body16.i = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.p, %bb.g ], [ %i.t, %bb.k ], [ %i.t, %bb.j ]
  resume { ptr, i32 } %eh.lpad-body16.i

bb.j:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = atomicrmw add ptr %1, i64 -1 release, align 8, !noalias !407
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.k, label %.body.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #22
          to label %.body.i unwind label %bb.l, !noalias !401

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !401
  unreachable

bb.m:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvNtCsefoF4u9kbII_5wasmi5store16handle_arena_err(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 26) #24
  unreachable

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !405, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.m ; 2 uses
  store ptr %1, ptr %i.z, align 8, !noalias !401
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %2, ptr %i.aa, align 8, !noalias !401
  %i.ab = add i64 %i.m, 1
  store i64 %i.ab, ptr %i.e, align 8, !alias.scope !405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.ad = load i32, ptr %i.ac, align 8, !noundef !5
  %i.ae = insertvalue { i64, i32 } poison, i64 %i.f, 0
  %i.af = insertvalue { i64, i32 } %i.ae, i32 %i.ad, 1
  ret { i64, i32 } %i.af
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs1_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE21invoke_call_hook_implCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull %0, i8 noundef range(i8 0, 4) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call noundef align 8 ptr %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull %0, i8 noundef %1) #23
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsefoF4u9kbII_5wasmi5storeINtB4_5StoreNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataE3newBM_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1688 x i8]) align 8 captures(none) dereferenceable(1688) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [1584 x i8], align 8              ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 172
  %i.e = load i8, ptr %i.d, align 4, !range !9, !noalias !412, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !412, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !412
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.a
  %i.j = phi <2 x ptr> [ %i.o, %bb.d ], [ <ptr null, ptr undef>, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 168
  %i.l = load i32, ptr %i.k, align 8, !noalias !412, !noundef !5
  %i.m = atomicrmw add ptr %.val, i64 1 monotonic, align 8, !noalias !412
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.o = load <2 x ptr>, ptr %i.f, align 8, !noalias !412
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.p = atomicrmw add ptr @_RNvNvMNtNtCsefoF4u9kbII_5wasmi5store2idNtB4_7StoreId3new8STORE_ID, i32 1 acq_rel, align 4, !noalias !412
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.431.0..sroa_idx.i, i8 0, i64 216, i1 false), !alias.scope !412
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.435.0..sroa_idx.i, i8 0, i64 216, i1 false), !alias.scope !412
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 688
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.439.0..sroa_idx.i, i8 0, i64 216, i1 false), !alias.scope !412
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 912
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.443.0..sroa_idx.i, i8 0, i64 216, i1 false), !alias.scope !412
  %.sroa.453.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.453.0..sroa_idx.i, i8 0, i64 216, i1 false), !alias.scope !412
  %.sroa.457.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.457.0..sroa_idx.i, i8 0, i64 216, i1 false), !alias.scope !412
  store i64 0, ptr %i.c, align 8, !alias.scope !412
  %.sroa.07.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.07.sroa.0.sroa.5.0..sroa_idx.i, align 8, !alias.scope !412
  %.sroa.07.sroa.0.sroa.5.sroa.4.0..sroa.07.sroa.0.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.07.sroa.0.sroa.5.sroa.4.0..sroa.07.sroa.0.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !412
  %.sroa.07.sroa.0.sroa.5.sroa.5.0..sroa.07.sroa.0.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.07.sroa.0.sroa.7.sroa.4.0..sroa.07.sroa.0.sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.sroa.0.sroa.5.sroa.5.0..sroa.07.sroa.0.sroa.5.0..sroa_idx.sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !412
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.07.sroa.0.sroa.7.sroa.4.0..sroa.07.sroa.0.sroa.7.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !412
end_hunk_1
begin_hunk_2_@_RNvYNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB8_17PrunedStoreVTable3newNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtB8_11PrunedStoreNtNtBc_4func10TrampolineINtNtB2b_6option6OptionNtNtNtNtNtBc_6engine8executor7handler5state4InstENtNtB3Z_5inout11InOutParamsNtBa_9CallHooksEE9call_onceB1f_:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.i = zext i1 %7 to i8
  store i8 %i.i, ptr %i.h, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1672
  %.sroa.0.0.copyload.i.i = load i128, ptr %i.j, align 8, !alias.scope !447
  %.not.i.i = icmp eq i128 %.sroa.0.0.copyload.i.i, -25427725580164480197428315584081668784
  br i1 %.not.i.i, label %bb.b, label %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEB1b_.exit.i, !prof !12

_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEB1b_.exit.i: ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !445
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_RINvNtCskKLDkoKarTP_4core3any9type_nameNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEBF_, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !445
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataE0B1c_.exit

bb.b:                                             ; preds = %bb.a
  br i1 %7, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.q, %bb.p, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !449
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %i.l = load i32, ptr %i.k, align 8, !alias.scope !450, !noundef !5
  %.not.i.i.i = icmp eq i32 %3, %i.l
  br i1 %.not.i.i.i, label %bb.d, label %bb.s, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1600
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !450, !noundef !5
  %i.o = icmp ult i64 %2, %i.n
  br i1 %i.o, label %bb.e, label %bb.s, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1592
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !450, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %2 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !noalias !449, !nonnull !5, !noundef !5
  %i.t = atomicrmw add ptr %i.s, i64 1 monotonic, align 8, !noalias !449
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load <2 x ptr>, ptr %i.r, align 8, !noalias !449
  %i.w = load ptr, ptr %i.r, align 8, !noalias !449, !nonnull !5, !noundef !5 ; 2 uses
  store <2 x ptr> %i.v, ptr %i.a, align 16, !noalias !449
  %i.x = invoke noundef align 8 ptr @_RINvMs7_NtCsefoF4u9kbII_5wasmi4funcINtB6_16TrampolineEntityNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataE4callQINtNtB8_5store5StoreBV_EEBZ_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, i64 noundef range(i64 0, 2) %4, double %5, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
          to label %bb.j unwind label %bb.h, !noalias !451 ; 3 uses

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !452
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEEB1r_.exit.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_NtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB37_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB53_4SyncEL_E9drop_slowB2h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEEB1r_.exit.i.i unwind label %bb.o, !noalias !453

bb.j:                                             ; preds = %bb.f
  %.not21.i.i = icmp eq ptr %i.x, null
  %i.ab = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !453
  %i.ac = icmp eq i64 %i.ab, 1                    ; 2 uses
  br i1 %.not21.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.ac, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_NtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB37_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB53_4SyncEL_E9drop_slowB2h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #22, !noalias !453
  br label %bb.s

bb.m:                                             ; preds = %bb.j
  br i1 %i.ac, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_NtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB37_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB53_4SyncEL_E9drop_slowB2h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #22, !noalias !453
  br label %bb.t

bb.o:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !453
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEEB1r_.exit.i.i: ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.y

bb.p:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !446, !noundef !5 ; 2 uses
  %.not34.i = icmp eq ptr %i.af, null
  br i1 %.not34.i, label %bb.c, label %bb.q, !prof !12

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !446, !nonnull !5, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1640
  %.val41.i = load ptr, ptr %i.ai, align 8, !alias.scope !446, !nonnull !5, !align !6, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %.val41.i, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !5, !noalias !454, !nonnull !5
  %i.al = tail call noundef align 8 ptr %i.ak(ptr noundef nonnull %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ah, i8 noundef 2) #23, !noalias !455, !inline_history !442 ; 2 uses
  %.not35.i = icmp eq ptr %i.al, null
  br i1 %.not35.i, label %bb.c, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 -1, ptr %0, align 8, !alias.scope !445
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !445
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataE0B1c_.exit

bb.s:                                             ; preds = %bb.l, %bb.k, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ undef, %bb.c ], [ undef, %bb.d ], [ %i.x, %bb.k ], [ %i.x, %bb.l ]
  %.sroa.02.0.ph.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ -1, %bb.k ], [ -1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !449
  store i64 %.sroa.02.0.ph.i, ptr %0, align 8, !alias.scope !445
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.412.0..sroa_idx.i, align 8, !alias.scope !445
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataE0B1c_.exit

bb.t:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !449
  br i1 %7, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.w, %bb.v, %bb.t
  store i64 -2, ptr %0, align 8, !alias.scope !445
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataE0B1c_.exit

bb.v:                                             ; preds = %bb.t
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !446, !noundef !5 ; 2 uses
  %.not37.i = icmp eq ptr %i.an, null
  br i1 %.not37.i, label %bb.u, label %bb.w, !prof !12

bb.w:                                             ; preds = %bb.v
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !446, !nonnull !5, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1640
  %.val39.i = load ptr, ptr %i.aq, align 8, !alias.scope !446, !nonnull !5, !align !6, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %.val39.i, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !5, !noalias !456, !nonnull !5
  %i.at = call noundef align 8 ptr %i.as(ptr noundef nonnull %i.an, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ap, i8 noundef 3) #23, !noalias !457, !inline_history !442 ; 2 uses
  %.not38.i = icmp eq ptr %i.at, null
  br i1 %.not38.i, label %bb.u, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 -1, ptr %0, align 8, !alias.scope !445
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %.sroa.433.0..sroa_idx.i, align 8, !alias.scope !445
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataE0B1c_.exit

_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataE0B1c_.exit: ; preds = %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEB1b_.exit.i, %bb.r, %bb.s, %bb.u, %bb.x
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB8_17PrunedStoreVTable3newNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEs0_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtB8_11PrunedStoreRNtNtBc_5table5TableyNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefEE9call_onceB1f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %2, i64 noundef %3, i32 noundef %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1672
  %.sroa.0.0.copyload.i.i = load i128, ptr %i.d, align 8, !alias.scope !470
  %.not.i.i = icmp eq i128 %.sroa.0.0.copyload.i.i, -25427725580164480197428315584081668784
  br i1 %.not.i.i, label %bb.b, label %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEB1b_.exit.i, !prof !12

_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEB1b_.exit.i: ; preds = %bb.a
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !468
  store ptr @_RINvNtCskKLDkoKarTP_4core3any9type_nameNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEBF_, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !468
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEs0_0B1c_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1616
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !472, !noundef !5 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.f, null
  br i1 %.not.i13.i, label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataE36store_inner_and_resource_limiter_refBN_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1624
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !472, !nonnull !5, !noundef !5
  %i.j = load ptr, ptr %i.g, align 8, !alias.scope !472, !nonnull !5, !align !6, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !5, !noalias !473, !nonnull !5
  %i.m = tail call { ptr, ptr } %i.l(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #23, !noalias !473, !inline_history !467 ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  br label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataE36store_inner_and_resource_limiter_refBN_.exit.i

_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataE36store_inner_and_resource_limiter_refBN_.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.3.0.i.i = phi ptr [ %i.o, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.i = phi ptr [ %i.n, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !474
  store ptr %.sroa.0.0.i.i, ptr %i.c, align 8, !noalias !474
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.3.0.i.i, ptr %i.p, align 8, !noalias !474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !474
  call void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner30try_resolve_table_and_fuel_mut(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %2), !noalias !468
  %i.q = load i64, ptr %i.b, align 8, !range !13, !noalias !474, !noundef !5
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !474 ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataE36store_inner_and_resource_limiter_refBN_.exit.i
  %i.v = load i64, ptr %i.s, align 8, !range !14, !noalias !474, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !474
  store i64 0, ptr %0, align 8, !alias.scope !468
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !468
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !474
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEs0_0B1c_.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataE36store_inner_and_resource_limiter_refBN_.exit.i
  %i.w = load ptr, ptr %i.s, align 8, !noalias !474, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !474
  call void @_RNvMNtCs5zeGauAcNNa_10wasmi_core5tableNtB2_5Table8grow_raw(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.w, i64 noundef %3, i32 noundef %4, ptr noalias nofree noundef nonnull align 8 dereferenceable_or_null(32) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !noalias !468
  %i.x = load i64, ptr %i.a, align 8, !range !15, !noalias !474, !noundef !5 ; 2 uses
  %.not12.i = icmp eq i64 %i.x, -1
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noalias !474 ; 2 uses
  br i1 %.not12.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !468
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink7.i = phi i64 [ %i.x, %bb.f ], [ %i.z, %bb.e ]
  %.sink.i = phi i64 [ 1, %bb.f ], [ 2, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink7.i, ptr %i.aa, align 8, !alias.scope !468
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !474
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEs0_0B1c_.exit

_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEs0_0B1c_.exit: ; preds = %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEB1b_.exit.i, %bb.d, %bb.g
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB8_17PrunedStoreVTable3newNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEs_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtB8_11PrunedStoreRNtNtBc_6memory6MemoryyEE9call_onceB1f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %2, i64 noundef %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1672
  %.sroa.0.0.copyload.i.i = load i128, ptr %i.d, align 8, !alias.scope !487
  %.not.i.i = icmp eq i128 %.sroa.0.0.copyload.i.i, -25427725580164480197428315584081668784
  br i1 %.not.i.i, label %bb.b, label %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEB1b_.exit.i, !prof !12

_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEB1b_.exit.i: ; preds = %bb.a
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !485
  store ptr @_RINvNtCskKLDkoKarTP_4core3any9type_nameNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEBF_, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !485
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEs_0B1c_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1616
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !489, !noundef !5 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.f, null
  br i1 %.not.i13.i, label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataE36store_inner_and_resource_limiter_refBN_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1624
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !489, !nonnull !5, !noundef !5
  %i.j = load ptr, ptr %i.g, align 8, !alias.scope !489, !nonnull !5, !align !6, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !5, !noalias !490, !nonnull !5
  %i.m = tail call { ptr, ptr } %i.l(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #23, !noalias !490, !inline_history !484 ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  br label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataE36store_inner_and_resource_limiter_refBN_.exit.i

_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataE36store_inner_and_resource_limiter_refBN_.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.3.0.i.i = phi ptr [ %i.o, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.i = phi ptr [ %i.n, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !491
  store ptr %.sroa.0.0.i.i, ptr %i.c, align 8, !noalias !491
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.3.0.i.i, ptr %i.p, align 8, !noalias !491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !491
  call void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner31try_resolve_memory_and_fuel_mut(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %2), !noalias !485
  %i.q = load i64, ptr %i.b, align 8, !range !13, !noalias !491, !noundef !5
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !491 ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataE36store_inner_and_resource_limiter_refBN_.exit.i
  %i.v = load i64, ptr %i.s, align 8, !range !14, !noalias !491, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !491
  store i64 0, ptr %0, align 8, !alias.scope !485
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !485
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !491
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEs_0B1c_.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataE36store_inner_and_resource_limiter_refBN_.exit.i
  %i.w = load ptr, ptr %i.s, align 8, !noalias !491, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !491
  call void @_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory4grow(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.w, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 dereferenceable_or_null(32) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !noalias !485
  %i.x = load i64, ptr %i.a, align 8, !range !16, !noalias !491, !noundef !5 ; 2 uses
  %.not12.i = icmp eq i64 %i.x, -1
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noalias !491 ; 2 uses
  br i1 %.not12.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !485
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink7.i = phi i64 [ %i.x, %bb.f ], [ %i.z, %bb.e ]
  %.sink.i = phi i64 [ 1, %bb.f ], [ 2, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink7.i, ptr %i.aa, align 8, !alias.scope !485
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !491
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEs_0B1c_.exit

_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEs_0B1c_.exit: ; preds = %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEB1b_.exit.i, %bb.d, %bb.g
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB8_17PrunedStoreVTable3newuE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtB8_11PrunedStoreNtNtBc_4func10TrampolineINtNtB1l_6option6OptionNtNtNtNtNtBc_6engine8executor7handler5state4InstENtNtB39_5inout11InOutParamsNtBa_9CallHooksEE9call_onceCsg6ypMx2A1Am_11wasmi_c_api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, i64 noundef %2, i32 noundef %3, i64 noundef range(i64 0, 2) %4, double %5, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %6, i1 noundef zeroext %7) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 %3, ptr %i.e, align 8
  store i64 %4, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %5, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.i = zext i1 %7 to i8
  store i8 %i.i, ptr %i.h, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1672
  %.sroa.0.0.copyload.i.i = load i128, ptr %i.j, align 8, !alias.scope !519
  %.not.i.i = icmp eq i128 %.sroa.0.0.copyload.i.i, 7954624184318742432034558525444319996
  br i1 %.not.i.i, label %bb.b, label %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreuECsg6ypMx2A1Am_11wasmi_c_api.exit.i, !prof !12

_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreuECsg6ypMx2A1Am_11wasmi_c_api.exit.i: ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !517
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_RINvNtCskKLDkoKarTP_4core3any9type_nameuECsg6ypMx2A1Am_11wasmi_c_api, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !517
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuE0Csg6ypMx2A1Am_11wasmi_c_api.exit

bb.b:                                             ; preds = %bb.a
  br i1 %7, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.q, %bb.p, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !521
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %i.l = load i32, ptr %i.k, align 8, !alias.scope !522, !noundef !5
  %.not.i.i.i = icmp eq i32 %3, %i.l
  br i1 %.not.i.i.i, label %bb.d, label %bb.s, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1600
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !522, !noundef !5
  %i.o = icmp ult i64 %2, %i.n
  br i1 %i.o, label %bb.e, label %bb.s, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1592
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !522, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %2 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !noalias !521, !nonnull !5, !noundef !5
  %i.t = atomicrmw add ptr %i.s, i64 1 monotonic, align 8, !noalias !521
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load <2 x ptr>, ptr %i.r, align 8, !noalias !521
  %i.w = load ptr, ptr %i.r, align 8, !noalias !521, !nonnull !5, !noundef !5 ; 2 uses
  store <2 x ptr> %i.v, ptr %i.a, align 16, !noalias !521
  %i.x = invoke noundef align 8 ptr @_RINvMs7_NtCsefoF4u9kbII_5wasmi4funcINtB6_16TrampolineEntityuE4callQINtNtB8_5store5StoreuEECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, i64 noundef range(i64 0, 2) %4, double %5, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
          to label %bb.j unwind label %bb.h, !noalias !523 ; 3 uses

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !524
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i unwind label %bb.o, !noalias !525

bb.j:                                             ; preds = %bb.f
  %.not21.i.i = icmp eq ptr %i.x, null
  %i.ab = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !525
  %i.ac = icmp eq i64 %i.ab, 1                    ; 2 uses
  br i1 %.not21.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.ac, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #22, !noalias !525
  br label %bb.s

bb.m:                                             ; preds = %bb.j
  br i1 %i.ac, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #22, !noalias !525
  br label %bb.t

bb.o:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !525
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i: ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.y

bb.p:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !518, !noundef !5 ; 2 uses
  %.not34.i = icmp eq ptr %i.af, null
  br i1 %.not34.i, label %bb.c, label %bb.q, !prof !12

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !518, !nonnull !5, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1640
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !527, !nonnull !5, !align !6, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !invariant.load !5, !noalias !528, !nonnull !5
  %i.am = tail call noundef align 8 ptr %i.al(ptr noundef nonnull %i.af, ptr noalias nofree noundef nonnull %i.ah, i8 noundef 2) #23, !noalias !529, !inline_history !513 ; 2 uses
  %.not35.i = icmp eq ptr %i.am, null
  br i1 %.not35.i, label %bb.c, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 -1, ptr %0, align 8, !alias.scope !517
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !517
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuE0Csg6ypMx2A1Am_11wasmi_c_api.exit

bb.s:                                             ; preds = %bb.l, %bb.k, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ undef, %bb.c ], [ undef, %bb.d ], [ %i.x, %bb.k ], [ %i.x, %bb.l ]
  %.sroa.02.0.ph.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ -1, %bb.k ], [ -1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !521
  store i64 %.sroa.02.0.ph.i, ptr %0, align 8, !alias.scope !517
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.412.0..sroa_idx.i, align 8, !alias.scope !517
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuE0Csg6ypMx2A1Am_11wasmi_c_api.exit

bb.t:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !521
  br i1 %7, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.w, %bb.v, %bb.t
  store i64 -2, ptr %0, align 8, !alias.scope !517
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuE0Csg6ypMx2A1Am_11wasmi_c_api.exit

bb.v:                                             ; preds = %bb.t
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !518, !noundef !5 ; 2 uses
  %.not37.i = icmp eq ptr %i.ao, null
  br i1 %.not37.i, label %bb.u, label %bb.w, !prof !12

bb.w:                                             ; preds = %bb.v
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !518, !nonnull !5, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 1640
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !531, !nonnull !5, !align !6, !noundef !5
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !5, !noalias !532, !nonnull !5
  %i.av = call noundef align 8 ptr %i.au(ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull %i.aq, i8 noundef 3) #23, !noalias !533, !inline_history !513 ; 2 uses
  %.not38.i = icmp eq ptr %i.av, null
  br i1 %.not38.i, label %bb.u, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 -1, ptr %0, align 8, !alias.scope !517
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %.sroa.433.0..sroa_idx.i, align 8, !alias.scope !517
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuE0Csg6ypMx2A1Am_11wasmi_c_api.exit

_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuE0Csg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreuECsg6ypMx2A1Am_11wasmi_c_api.exit.i, %bb.r, %bb.s, %bb.u, %bb.x
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB8_17PrunedStoreVTable3newuEs0_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtB8_11PrunedStoreRNtNtBc_5table5TableyNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefEE9call_onceCsg6ypMx2A1Am_11wasmi_c_api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %2, i64 noundef %3, i32 noundef %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1672
  %.sroa.0.0.copyload.i.i = load i128, ptr %i.d, align 8, !alias.scope !546
  %.not.i.i = icmp eq i128 %.sroa.0.0.copyload.i.i, 7954624184318742432034558525444319996
  br i1 %.not.i.i, label %bb.b, label %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreuECsg6ypMx2A1Am_11wasmi_c_api.exit.i, !prof !12

_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreuECsg6ypMx2A1Am_11wasmi_c_api.exit.i: ; preds = %bb.a
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !544
  store ptr @_RINvNtCskKLDkoKarTP_4core3any9type_nameuECsg6ypMx2A1Am_11wasmi_c_api, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !544
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuEs0_0Csg6ypMx2A1Am_11wasmi_c_api.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1616
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !548, !noundef !5 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.f, null
  br i1 %.not.i13.i, label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCsg6ypMx2A1Am_11wasmi_c_api.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1624
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !548, !nonnull !5, !noundef !5
  %i.j = load ptr, ptr %i.g, align 8, !alias.scope !548, !nonnull !5, !align !6, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !5, !noalias !549, !nonnull !5
  %i.m = tail call { ptr, ptr } %i.l(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull %i.i) #23, !noalias !549, !inline_history !543 ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  br label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCsg6ypMx2A1Am_11wasmi_c_api.exit.i

_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCsg6ypMx2A1Am_11wasmi_c_api.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.3.0.i.i = phi ptr [ %i.o, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.i = phi ptr [ %i.n, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !550
  store ptr %.sroa.0.0.i.i, ptr %i.c, align 8, !noalias !550
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.3.0.i.i, ptr %i.p, align 8, !noalias !550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !550
  call void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner30try_resolve_table_and_fuel_mut(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %2), !noalias !544
  %i.q = load i64, ptr %i.b, align 8, !range !13, !noalias !550, !noundef !5
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !550 ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCsg6ypMx2A1Am_11wasmi_c_api.exit.i
  %i.v = load i64, ptr %i.s, align 8, !range !14, !noalias !550, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !550
  store i64 0, ptr %0, align 8, !alias.scope !544
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !544
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !550
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuEs0_0Csg6ypMx2A1Am_11wasmi_c_api.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCsg6ypMx2A1Am_11wasmi_c_api.exit.i
  %i.w = load ptr, ptr %i.s, align 8, !noalias !550, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !550
  call void @_RNvMNtCs5zeGauAcNNa_10wasmi_core5tableNtB2_5Table8grow_raw(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.w, i64 noundef %3, i32 noundef %4, ptr noalias nofree noundef nonnull align 8 dereferenceable_or_null(32) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !noalias !544
  %i.x = load i64, ptr %i.a, align 8, !range !15, !noalias !550, !noundef !5 ; 2 uses
  %.not12.i = icmp eq i64 %i.x, -1
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noalias !550 ; 2 uses
  br i1 %.not12.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !544
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink7.i = phi i64 [ %i.x, %bb.f ], [ %i.z, %bb.e ]
  %.sink.i = phi i64 [ 1, %bb.f ], [ 2, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink7.i, ptr %i.aa, align 8, !alias.scope !544
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !550
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuEs0_0Csg6ypMx2A1Am_11wasmi_c_api.exit

_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuEs0_0Csg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreuECsg6ypMx2A1Am_11wasmi_c_api.exit.i, %bb.d, %bb.g
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB8_17PrunedStoreVTable3newuEs_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtB8_11PrunedStoreRNtNtBc_6memory6MemoryyEE9call_onceCsg6ypMx2A1Am_11wasmi_c_api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %2, i64 noundef %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1672
  %.sroa.0.0.copyload.i.i = load i128, ptr %i.d, align 8, !alias.scope !563
  %.not.i.i = icmp eq i128 %.sroa.0.0.copyload.i.i, 7954624184318742432034558525444319996
  br i1 %.not.i.i, label %bb.b, label %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreuECsg6ypMx2A1Am_11wasmi_c_api.exit.i, !prof !12

_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreuECsg6ypMx2A1Am_11wasmi_c_api.exit.i: ; preds = %bb.a
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !561
  store ptr @_RINvNtCskKLDkoKarTP_4core3any9type_nameuECsg6ypMx2A1Am_11wasmi_c_api, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !561
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuEs_0Csg6ypMx2A1Am_11wasmi_c_api.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1616
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !565, !noundef !5 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.f, null
  br i1 %.not.i13.i, label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCsg6ypMx2A1Am_11wasmi_c_api.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1624
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !565, !nonnull !5, !noundef !5
  %i.j = load ptr, ptr %i.g, align 8, !alias.scope !565, !nonnull !5, !align !6, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !5, !noalias !566, !nonnull !5
  %i.m = tail call { ptr, ptr } %i.l(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull %i.i) #23, !noalias !566, !inline_history !560 ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  br label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCsg6ypMx2A1Am_11wasmi_c_api.exit.i

_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCsg6ypMx2A1Am_11wasmi_c_api.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.3.0.i.i = phi ptr [ %i.o, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.i = phi ptr [ %i.n, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !567
  store ptr %.sroa.0.0.i.i, ptr %i.c, align 8, !noalias !567
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.3.0.i.i, ptr %i.p, align 8, !noalias !567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !567
  call void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner31try_resolve_memory_and_fuel_mut(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %2), !noalias !561
  %i.q = load i64, ptr %i.b, align 8, !range !13, !noalias !567, !noundef !5
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !567 ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCsg6ypMx2A1Am_11wasmi_c_api.exit.i
  %i.v = load i64, ptr %i.s, align 8, !range !14, !noalias !567, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !567
  store i64 0, ptr %0, align 8, !alias.scope !561
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !561
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !567
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuEs_0Csg6ypMx2A1Am_11wasmi_c_api.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCsg6ypMx2A1Am_11wasmi_c_api.exit.i
  %i.w = load ptr, ptr %i.s, align 8, !noalias !567, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !567
  call void @_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory4grow(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.w, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 dereferenceable_or_null(32) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !noalias !561
  %i.x = load i64, ptr %i.a, align 8, !range !16, !noalias !567, !noundef !5 ; 2 uses
  %.not12.i = icmp eq i64 %i.x, -1
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noalias !567 ; 2 uses
  br i1 %.not12.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !561
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink7.i = phi i64 [ %i.x, %bb.f ], [ %i.z, %bb.e ]
  %.sink.i = phi i64 [ 1, %bb.f ], [ 2, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink7.i, ptr %i.aa, align 8, !alias.scope !561
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !567
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuEs_0Csg6ypMx2A1Am_11wasmi_c_api.exit

_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuEs_0Csg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreuECsg6ypMx2A1Am_11wasmi_c_api.exit.i, %bb.d, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxNtNtNtCsefoF4u9kbII_5wasmi8instance6entity14InstanceEntityEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsefoF4u9kbII_5wasmi7reftype15ExternRefEntityENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cell4CellENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtCsefoF4u9kbII_5wasmi8instance6entity14InstanceEntityEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1C_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsefoF4u9kbII_5wasmi7reftype15ExternRefEntityENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cell4CellENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsg06799QCvd1_17wasmi_collections5arena10stable_vecINtB5_9StableVecNtNtCs5zeGauAcNNa_10wasmi_core5table5TableENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(224)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsg06799QCvd1_17wasmi_collections5arena10stable_vecINtB5_9StableVecNtNtCs5zeGauAcNNa_10wasmi_core6global6GlobalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(224)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsg06799QCvd1_17wasmi_collections5arena10stable_vecINtB5_9StableVecNtNtCs5zeGauAcNNa_10wasmi_core6memory6MemoryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(224)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsg06799QCvd1_17wasmi_collections5arena10stable_vecINtB5_9StableVecNtNtCsefoF4u9kbII_5wasmi4func10FuncEntityENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(224)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsg06799QCvd1_17wasmi_collections5arena10stable_vecINtB5_9StableVecNtNtNtCs5zeGauAcNNa_10wasmi_core5table7element14ElementSegmentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(224)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsg06799QCvd1_17wasmi_collections5arena10stable_vecINtB5_9StableVecNtNtNtCsefoF4u9kbII_5wasmi6memory4data17DataSegmentEntityENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(224)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsg6ypMx2A1Am_11wasmi_c_api5utilsNtB5_11ForeignDataNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner30try_resolve_table_and_fuel_mut(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(1584), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs5zeGauAcNNa_10wasmi_core5tableNtB2_5Table8grow_raw(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), i64 noundef, i32 noundef, ptr noalias nofree noundef align 8 dereferenceable_or_null(32), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner31try_resolve_memory_and_fuel_mut(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(1584), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory4grow(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(64), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable_or_null(32), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMs7_NtCsefoF4u9kbII_5wasmi4funcINtB6_16TrampolineEntityNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataE4callQINtNtB8_5store5StoreBV_EEBZ_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(1688), i64 noundef range(i64 0, 2), double, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMs7_NtCsefoF4u9kbII_5wasmi4funcINtB6_16TrampolineEntityuE4callQINtNtB8_5store5StoreuEECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(1688), i64 noundef range(i64 0, 2), double, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #11

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #4

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCsefoF4u9kbII_5wasmi5store16handle_arena_err(i8 noundef range(i8 0, 4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEE8grow_oneCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #15

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRAhj10_NtB6_5Debug3fmtCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_NtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB37_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB53_4SyncEL_E9drop_slowB2h_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs5zeGauAcNNa_10wasmi_core4fuel9FuelCostsNtNtCskKLDkoKarTP_4core6marker4SendNtB1s_4SyncEL_E9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

end_hunk_2
