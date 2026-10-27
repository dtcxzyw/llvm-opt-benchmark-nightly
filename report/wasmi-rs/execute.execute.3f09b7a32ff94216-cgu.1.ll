Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/execute.execute.3f09b7a32ff94216-cgu.1?download=true
inline.NumInlined: 335
inline.NumDeleted: 168
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorECs5py4yDLWIja_7execute:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 64 ; 4 uses
  %i.ac = load i64, ptr %i.ab, align 8, !range !8, !alias.scope !165, !noalias !163, !noundef !5
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1VvpiNK3DOA_4wast5error5ErrorECs5py4yDLWIja_7execute.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs5py4yDLWIja_7execute.exit.i.i.i.i.i.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5py4yDLWIja_7execute.exit.i.i.i.i.i.i.i.i unwind label %bb.p, !noalias !163, !inline_history !41

bb.p:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.t unwind label %bb.q, !noalias !163, !inline_history !41

bb.q:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !163, !inline_history !41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5py4yDLWIja_7execute.exit.i.i.i.i.i.i.i.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1VvpiNK3DOA_4wast5error5ErrorECs5py4yDLWIja_7execute.exit.i.i.i.i unwind label %bb.s, !noalias !163, !inline_history !41

bb.r:                                             ; preds = %.body2.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !163, !inline_history !41
  unreachable

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5py4yDLWIja_7execute.exit.i.i.i.i.i.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p, %.body2.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.s ], [ %i.ae, %bb.p ], [ %.pn.i.i.i.i.i.i.i, %.body2.i.i.i.i.i.i.i ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef 96, i64 noundef 8) #21, !noalias !163, !inline_history !41
  br label %bb.ai

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1VvpiNK3DOA_4wast5error5ErrorECs5py4yDLWIja_7execute.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5py4yDLWIja_7execute.exit.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs5py4yDLWIja_7execute.exit.i.i.i.i.i.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef 96, i64 noundef 8) #21, !noalias !163, !inline_history !41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECs5py4yDLWIja_7execute.exit.i

bb.u:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i2, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166), !noalias !156
  %.val.i.i.i.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !167, !noalias !161, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  %i.aj = ptrtoint ptr %.val.i.i.i.i.i to i64     ; 2 uses
  %i.ak = and i64 %i.aj, 3
  switch i64 %i.ak, label %default.unreachable [
    i64 2, label %bb.y
    i64 3, label %bb.v
    i64 0, label %bb.y
    i64 1, label %bb.w
  ], !prof !9

default.unreachable:                              ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.al = icmp ult ptr %.val.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.am = and i64 %i.aj, 1095216660480
  %i.an = icmp ne i64 %i.am, 1095216660480
  tail call void @llvm.assume(i1 %i.al), !noalias !156
  tail call void @llvm.assume(i1 %i.an), !noalias !156
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.ao = getelementptr i8, ptr %.val.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ], !noalias !156
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !alias.scope !169, !noalias !168
  store i8 3, ptr %i.a, align 8, !alias.scope !169, !noalias !168
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %bb.y unwind label %bb.x, !noalias !163, !inline_history !41

bb.x:                                             ; preds = %bb.w
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i2, i64 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs5py4yDLWIja_7execute(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar) #22
          to label %bb.ai unwind label %bb.ac, !noalias !161, !inline_history !41

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i2, i64 8 ; 4 uses
  %i.at = load i64, ptr %i.as, align 8, !range !8, !alias.scope !170, !noalias !161, !noundef !5
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECs5py4yDLWIja_7execute.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs5py4yDLWIja_7execute.exit.i3.i.invoke.i.i.i unwind label %bb.aa, !noalias !161, !inline_history !41

bb.aa:                                            ; preds = %bb.z
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %bb.ai unwind label %bb.ab, !noalias !161, !inline_history !41

bb.ab:                                            ; preds = %bb.aa
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !161, !inline_history !41
  unreachable

bb.ac:                                            ; preds = %.body.i.i.i.i, %bb.x
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !161, !inline_history !41
  unreachable

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs5py4yDLWIja_7execute.exit.i.i.i.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ad, %bb.d
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ay, %bb.ad ], [ %i.l, %bb.d ]
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i2, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs5py4yDLWIja_7execute(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az) #22
          to label %bb.ai unwind label %bb.ac, !noalias !161, !inline_history !41

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5py4yDLWIja_7execute.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs5py4yDLWIja_7execute.exit.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i2, i64 24 ; 4 uses
  %i.bb = load i64, ptr %i.ba, align 8, !range !8, !alias.scope !171, !noalias !161, !noundef !5
  %i.bc = icmp eq i64 %i.bb, -1
  br i1 %i.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECs5py4yDLWIja_7execute.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5py4yDLWIja_7execute.exit.i.i.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs5py4yDLWIja_7execute.exit.i3.i.invoke.i.i.i unwind label %bb.af, !noalias !161, !inline_history !41

bb.af:                                            ; preds = %bb.ae
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %bb.ai unwind label %bb.ag, !noalias !161, !inline_history !41

bb.ag:                                            ; preds = %bb.af
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !161, !inline_history !41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs5py4yDLWIja_7execute.exit.i3.i.invoke.i.i.i: ; preds = %bb.ae, %bb.z
  %i.bf = phi ptr [ %i.as, %bb.z ], [ %i.ba, %bb.ae ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECs5py4yDLWIja_7execute.exit.i unwind label %bb.ah, !noalias !161, !inline_history !41

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs5py4yDLWIja_7execute.exit.i3.i.invoke.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af, %.body.i.i.i.i, %bb.aa, %bb.x, %bb.t
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bg, %bb.ah ], [ %eh.lpad-body.i.i.i.i.i.i, %bb.t ], [ %i.aq, %bb.x ], [ %i.av, %bb.aa ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.bd, %bb.af ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2, i64 noundef 48, i64 noundef 8) #21, !noalias !161, !inline_history !41
  br label %bb.cq

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECs5py4yDLWIja_7execute.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs5py4yDLWIja_7execute.exit.i3.i.invoke.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5py4yDLWIja_7execute.exit.i.i.i.i, %bb.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1VvpiNK3DOA_4wast5error5ErrorECs5py4yDLWIja_7execute.exit.i.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2, i64 noundef 48, i64 noundef 8) #21, !noalias !161, !inline_history !41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs5py4yDLWIja_7execute.exit

bb.aj:                                            ; preds = %bb.a
  %i.bh = getelementptr i8, ptr %i.b, i64 16
  %.val2.i = load i64, ptr %i.bh, align 8, !alias.scope !157, !noalias !156, !noundef !5 ; 2 uses
  %i.bi = icmp eq i64 %.val2.i, 0
  br i1 %i.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs5py4yDLWIja_7execute.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i1 = load ptr, ptr %i.bj, align 8, !alias.scope !157, !noalias !156, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1, i64 noundef range(i64 1, 0) %.val2.i, i64 noundef 1) #21, !noalias !161, !inline_history !41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs5py4yDLWIja_7execute.exit

bb.al:                                            ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val3.i = load ptr, ptr %i.bk, align 8, !alias.scope !157, !noalias !156 ; 5 uses
  %i.bl = getelementptr i8, ptr %i.b, i64 16
  %.val4.i = load ptr, ptr %i.bl, align 8, !alias.scope !157, !noalias !156, !nonnull !5, !align !10, !noundef !5 ; 5 uses
  %i.bm = load ptr, ptr %.val4.i, align 8, !invariant.load !5, !noalias !161 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i) ], !noalias !156
  invoke void %i.bm(ptr noundef nonnull %.val3.i)
          to label %bb.an unwind label %bb.ap, !noalias !161, !inline_history !41

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.bn = getelementptr inbounds nuw i8, ptr %.val4.i, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !range !6, !invariant.load !5, !noalias !161 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs5py4yDLWIja_7execute.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bq = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !range !7, !invariant.load !5, !noalias !161
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i) ], !noalias !156
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef range(i64 1, 0) %i.bo, i64 noundef range(i64 1, 536870913) %i.br) #21, !noalias !161, !inline_history !41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs5py4yDLWIja_7execute.exit

bb.ap:                                            ; preds = %bb.am
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val4.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !range !6, !invariant.load !5, !noalias !161 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.cq, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bw = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !range !7, !invariant.load !5, !noalias !161
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef range(i64 1, 0) %i.bu, i64 noundef range(i64 1, 536870913) %i.bx) #21, !noalias !161, !inline_history !41
  br label %bb.cq

bb.ar:                                            ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs5py4yDLWIja_7execute.exit unwind label %bb.cp, !inline_history !41

bb.as:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172), !noalias !156
  %i.bz = add nsw i8 %i.c, -4
  %i.ca = icmp samesign ugt i8 %i.c, 3
  %narrow.i.i = select i1 %i.ca, i8 %i.bz, i8 2
  switch i8 %narrow.i.i, label %bb.at [
    i8 0, label %bb.aw
    i8 1, label %bb.az
  ]

bb.at:                                            ; preds = %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173), !noalias !156
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.val5.i.i.i = load i64, ptr %i.cb, align 8, !alias.scope !174, !noalias !156, !noundef !5 ; 2 uses
  %i.cc = icmp eq i64 %.val5.i.i.i, 0
  br i1 %i.cc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs5py4yDLWIja_7execute.exit.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.val4.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !174, !noalias !156, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef range(i64 1, 0) %.val5.i.i.i, i64 noundef 1) #21, !noalias !175, !inline_history !41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs5py4yDLWIja_7execute.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs5py4yDLWIja_7execute.exit.i.i.i: ; preds = %bb.au, %bb.at
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.val1.i.i.i = load i64, ptr %i.ce, align 8, !alias.scope !174, !noalias !156, !noundef !5 ; 2 uses
  %i.cf = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.cf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs5py4yDLWIja_7execute.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs5py4yDLWIja_7execute.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.val.i.i.i = load ptr, ptr %i.cg, align 8, !alias.scope !174, !noalias !156, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #21, !noalias !175, !inline_history !41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs5py4yDLWIja_7execute.exit.i.i

bb.aw:                                            ; preds = %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176), !noalias !156
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val5.i3.i.i = load i64, ptr %i.ch, align 8, !alias.scope !177, !noalias !156, !noundef !5 ; 2 uses
  %i.ci = icmp eq i64 %.val5.i3.i.i, 0
  br i1 %i.ci, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs5py4yDLWIja_7execute.exit.i5.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val4.i4.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !177, !noalias !156, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i4.i.i, i64 noundef range(i64 1, 0) %.val5.i3.i.i, i64 noundef 1) #21, !noalias !178, !inline_history !41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs5py4yDLWIja_7execute.exit.i5.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs5py4yDLWIja_7execute.exit.i5.i.i: ; preds = %bb.ax, %bb.aw
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val1.i6.i.i = load i64, ptr %i.ck, align 8, !alias.scope !177, !noalias !156, !noundef !5 ; 2 uses
  %i.cl = icmp eq i64 %.val1.i6.i.i, 0
  br i1 %i.cl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs5py4yDLWIja_7execute.exit, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs5py4yDLWIja_7execute.exit.i5.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val.i7.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !177, !noalias !156, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i7.i.i, i64 noundef range(i64 1, 0) %.val1.i6.i.i, i64 noundef 1) #21, !noalias !178, !inline_history !41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs5py4yDLWIja_7execute.exit

bb.az:                                            ; preds = %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179), !noalias !156
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.val5.i9.i.i = load i64, ptr %i.cn, align 8, !alias.scope !180, !noalias !156, !noundef !5 ; 2 uses
  %i.co = icmp eq i64 %.val5.i9.i.i, 0
  br i1 %i.co, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs5py4yDLWIja_7execute.exit.i11.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.val4.i10.i.i = load ptr, ptr %i.cp, align 8, !alias.scope !180, !noalias !156, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i10.i.i, i64 noundef range(i64 1, 0) %.val5.i9.i.i, i64 noundef 1) #21, !noalias !181, !inline_history !41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs5py4yDLWIja_7execute.exit.i11.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs5py4yDLWIja_7execute.exit.i11.i.i: ; preds = %bb.ba, %bb.az
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.val1.i12.i.i = load i64, ptr %i.cq, align 8, !alias.scope !180, !noalias !156, !noundef !5 ; 2 uses
  %i.cr = icmp eq i64 %.val1.i12.i.i, 0
  br i1 %i.cr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs5py4yDLWIja_7execute.exit14.i.i, label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs5py4yDLWIja_7execute.exit.i11.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.val.i13.i.i = load ptr, ptr %i.cs, align 8, !alias.scope !180, !noalias !156, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i13.i.i, i64 noundef range(i64 1, 0) %.val1.i12.i.i, i64 noundef 1) #21, !noalias !181, !inline_history !41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs5py4yDLWIja_7execute.exit14.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs5py4yDLWIja_7execute.exit14.i.i: ; preds = %bb.bb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs5py4yDLWIja_7execute.exit.i11.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182), !noalias !156
  %i.cu = load i8, ptr %i.ct, align 8, !range !11, !alias.scope !183, !noalias !156, !noundef !5
  %i.cv = icmp eq i8 %i.cu, 3
  br i1 %i.cv, label %bb.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs5py4yDLWIja_7execute.exit

bb.bc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs5py4yDLWIja_7execute.exit14.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184), !noalias !156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185), !noalias !156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186), !noalias !156
  %i.cx = load i8, ptr %i.cw, align 8, !range !12, !alias.scope !187, !noalias !156, !noundef !5
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs5py4yDLWIja_7execute.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188), !noalias !156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189), !noalias !156
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !190, !noalias !156, !nonnull !5, !noundef !5
  %i.db = atomicrmw add ptr %i.da, i64 -1 release, align 8, !noalias !191
  %i.dc = icmp eq i64 %i.db, 1
  br i1 %i.dc, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs5py4yDLWIja_7execute.exit

bb.be:                                            ; preds = %bb.bi
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !156, !inline_history !41
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs5py4yDLWIja_7execute.exit.i.i: ; preds = %bb.av, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs5py4yDLWIja_7execute.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192), !noalias !156
  %i.de = icmp eq i8 %i.c, 3
  br i1 %i.de, label %bb.bf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECs5py4yDLWIja_7execute.exit15.i.i

bb.bf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs5py4yDLWIja_7execute.exit.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193), !noalias !156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194), !noalias !156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195), !noalias !156
  %i.dg = load i8, ptr %i.df, align 8, !range !12, !alias.scope !196, !noalias !156, !noundef !5
  %i.dh = icmp eq i8 %i.dg, 0
  br i1 %i.dh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECs5py4yDLWIja_7execute.exit15.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197), !noalias !156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198), !noalias !156
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !199, !noalias !156, !nonnull !5, !noundef !5
  %i.dk = atomicrmw add ptr %i.dj, i64 -1 release, align 8, !noalias !200
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.bh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECs5py4yDLWIja_7execute.exit15.i.i

bb.bh:                                            ; preds = %bb.bg
  fence acquire, !noalias !156
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.di) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECs5py4yDLWIja_7execute.exit15.i.i unwind label %bb.bi, !noalias !156, !inline_history !41

bb.bi:                                            ; preds = %bb.bh
  %i.dm = landingpad { ptr, i32 }
          cleanup
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECs5py4yDLWIja_7execute(ptr noalias nofree noundef align 8 dereferenceable(40) %i.dn) #22
          to label %bb.cq unwind label %bb.be, !noalias !156, !inline_history !41

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECs5py4yDLWIja_7execute.exit15.i.i: ; preds = %bb.bh, %bb.bg, %bb.bf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs5py4yDLWIja_7execute.exit.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201), !noalias !156
  %i.dp = load i8, ptr %i.do, align 8, !range !11, !alias.scope !202, !noalias !156, !noundef !5
  %i.dq = icmp eq i8 %i.dp, 3
  br i1 %i.dq, label %bb.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs5py4yDLWIja_7execute.exit

bb.bj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECs5py4yDLWIja_7execute.exit15.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203), !noalias !156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204), !noalias !156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205), !noalias !156
  %i.ds = load i8, ptr %i.dr, align 8, !range !12, !alias.scope !206, !noalias !156, !noundef !5
  %i.dt = icmp eq i8 %i.ds, 0
  br i1 %i.dt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs5py4yDLWIja_7execute.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207), !noalias !156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208), !noalias !156
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !209, !noalias !156, !nonnull !5, !noundef !5
  %i.dw = atomicrmw add ptr %i.dv, i64 -1 release, align 8, !noalias !210
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs5py4yDLWIja_7execute.exit

bb.bl:                                            ; preds = %bb.a
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi5store5inner10StoreInnerECs5py4yDLWIja_7execute:bb.a
  %.pn16 = phi { ptr, i32 } [ %i.bg, %bb.aa ], [ %.pn14, %bb.v ], [ %.pn14, %.body39 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !318, !noundef !5 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4fuel4FuelECs5py4yDLWIja_7execute.exit, label %bb.y

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5py4yDLWIja_7execute.exit
  %i.be = atomicrmw add ptr %i.bc, i64 -1 release, align 8, !noalias !319
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4fuel4FuelECs5py4yDLWIja_7execute.exit

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs5zeGauAcNNa_10wasmi_core4fuel9FuelCostsNtNtCskKLDkoKarTP_4core6marker4SendNtB1s_4SyncEL_E9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bb) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4fuel4FuelECs5py4yDLWIja_7execute.exit unwind label %bb.ad

bb.aa:                                            ; preds = %bb.x
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5py4yDLWIja_7execute.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5py4yDLWIja_7execute.exit44: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg06799QCvd1_17wasmi_collections5arena5ArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1u_7reftype9ExternRefENtB27_15ExternRefEntityEECs5py4yDLWIja_7execute.exit, %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !323, !noundef !5 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4fuel4FuelECs5py4yDLWIja_7execute.exit46, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5py4yDLWIja_7execute.exit44
  %i.bk = atomicrmw add ptr %i.bi, i64 -1 release, align 8, !noalias !324
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4fuel4FuelECs5py4yDLWIja_7execute.exit46

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs5zeGauAcNNa_10wasmi_core4fuel9FuelCostsNtNtCskKLDkoKarTP_4core6marker4SendNtB1s_4SyncEL_E9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bh) #23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4fuel4FuelECs5py4yDLWIja_7execute.exit46

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4fuel4FuelECs5py4yDLWIja_7execute.exit46: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5py4yDLWIja_7execute.exit44, %bb.ab, %bb.ac
  ret void

bb.ad:                                            ; preds = %bb.z, %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1R_6memory4data11DataSegmentENtB2u_17DataSegmentEntityEECs5py4yDLWIja_7execute.exit, %.body30, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1R_5table5TableENtNtCs5zeGauAcNNa_10wasmi_core5table5TableEECs5py4yDLWIja_7execute.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1R_6memory6MemoryENtNtCs5zeGauAcNNa_10wasmi_core6memory6MemoryEECs5py4yDLWIja_7execute.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1R_4func4FuncENtB2u_10FuncEntityEECs5py4yDLWIja_7execute.exit, %.body, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1R_5table7element14ElementSegmentENtNtNtCs5zeGauAcNNa_10wasmi_core5table7element14ElementSegmentEECs5py4yDLWIja_7execute.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1R_6global6GlobalENtNtCs5zeGauAcNNa_10wasmi_core6global6GlobalEECs5py4yDLWIja_7execute.exit
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4fuel4FuelECs5py4yDLWIja_7execute.exit: ; preds = %bb.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECs5py4yDLWIja_7execute.exit, %bb.z
  resume { ptr, i32 } %.pn16
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6engine6config6ConfigECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !335, !noundef !5 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4fuel17FuelCostsProviderECs5py4yDLWIja_7execute.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !336
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4fuel17FuelCostsProviderECs5py4yDLWIja_7execute.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs5zeGauAcNNa_10wasmi_core4fuel9FuelCostsNtNtCskKLDkoKarTP_4core6marker4SendNtB1s_4SyncEL_E9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4fuel17FuelCostsProviderECs5py4yDLWIja_7execute.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val1 = load ptr, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.h = icmp eq ptr %.val1, null
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6engine5costs20OperatorCostStrategyECs5py4yDLWIja_7execute.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef 463, i64 noundef 1) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6engine5costs20OperatorCostStrategyECs5py4yDLWIja_7execute.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4fuel17FuelCostsProviderECs5py4yDLWIja_7execute.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val = load ptr, ptr %i.i, align 8, !noundef !5 ; 2 uses
  %i.j = icmp eq ptr %.val, null
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6engine5costs20OperatorCostStrategyECs5py4yDLWIja_7execute.exit2, label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4fuel17FuelCostsProviderECs5py4yDLWIja_7execute.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 463, i64 noundef 1) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6engine5costs20OperatorCostStrategyECs5py4yDLWIja_7execute.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6engine5costs20OperatorCostStrategyECs5py4yDLWIja_7execute.exit2: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4fuel17FuelCostsProviderECs5py4yDLWIja_7execute.exit, %bb.f
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6engine5costs20OperatorCostStrategyECs5py4yDLWIja_7execute.exit: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !11, !noundef !5
  %i.b = icmp eq i8 %i.a, 3
  br i1 %i.b, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5py4yDLWIja_7execute.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.d = load i8, ptr %i.c, align 8, !range !12, !alias.scope !350, !noundef !5
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5py4yDLWIja_7execute.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !353, !nonnull !5, !noundef !5
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !353
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5py4yDLWIja_7execute.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5py4yDLWIja_7execute.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5py4yDLWIja_7execute.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state9CallStackECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameEECs5py4yDLWIja_7execute.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameEECs5py4yDLWIja_7execute.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameEECs5py4yDLWIja_7execute.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameEECs5py4yDLWIja_7execute.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNCNvNvCs5py4yDLWIja_7execute1__19___libfuzzer_sys_run0B5_(ptr noalias nofree nonnull readnone captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @2, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNSNvYNCNvNvCs5py4yDLWIja_7execute1__19___libfuzzer_sys_run0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtNtCsefoF4u9kbII_5wasmi7limiter11StoreLimitsEE9call_once6vtableBa_(ptr nofree readnone captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @2, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE22can_create_more_tablesCs5py4yDLWIja_7execute(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1688) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !357, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE36store_inner_and_resource_limiter_refCs5py4yDLWIja_7execute.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !357, !nonnull !5, !noundef !5
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !357, !nonnull !5, !align !10, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !5, !noalias !358, !nonnull !5
  %i.i = tail call { ptr, ptr } %i.h(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e) #24, !noalias !358, !inline_history !13 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j), "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  %i.n = tail call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 %1)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !5, !nonnull !5
  %i.q = tail call noundef i64 %i.p(ptr noundef nonnull %i.j) #24
  %i.r = icmp ule i64 %i.n, %i.q
  br label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE36store_inner_and_resource_limiter_refCs5py4yDLWIja_7execute.exit.thread

_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE36store_inner_and_resource_limiter_refCs5py4yDLWIja_7execute.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.r, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE24can_create_more_memoriesCs5py4yDLWIja_7execute(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1688) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !362, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE36store_inner_and_resource_limiter_refCs5py4yDLWIja_7execute.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !362, !nonnull !5, !noundef !5
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !362, !nonnull !5, !align !10, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !5, !noalias !363, !nonnull !5
  %i.i = tail call { ptr, ptr } %i.h(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e) #24, !noalias !363, !inline_history !13 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j), "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  %i.n = tail call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 %1)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !5, !nonnull !5
  %i.q = tail call noundef i64 %i.p(ptr noundef nonnull %i.j) #24
  %i.r = icmp ule i64 %i.n, %i.q
  br label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE36store_inner_and_resource_limiter_refCs5py4yDLWIja_7execute.exit.thread

_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE36store_inner_and_resource_limiter_refCs5py4yDLWIja_7execute.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.r, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE25can_create_more_instancesCs5py4yDLWIja_7execute(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1688) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !367, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE36store_inner_and_resource_limiter_refCs5py4yDLWIja_7execute.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !367, !nonnull !5, !noundef !5
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !367, !nonnull !5, !align !10, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !5, !noalias !368, !nonnull !5
  %i.i = tail call { ptr, ptr } %i.h(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e) #24, !noalias !368, !inline_history !13 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j), "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = load i64, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %i.n = icmp ult i64 %i.m, 576460752303423488
  tail call void @llvm.assume(i1 %i.n)
  %i.o = tail call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 %1)
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !5, !nonnull !5
  %i.r = tail call noundef i64 %i.q(ptr noundef nonnull %i.j) #24
  %i.s = icmp ule i64 %i.o, %i.r
  br label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE36store_inner_and_resource_limiter_refCs5py4yDLWIja_7execute.exit.thread

_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE36store_inner_and_resource_limiter_refCs5py4yDLWIja_7execute.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.s, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE36store_inner_and_resource_limiter_refCs5py4yDLWIja_7execute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1616
  %i.b = load ptr, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1624
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !5, !align !10, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !5, !nonnull !5
  %i.i = tail call { ptr, ptr } %i.h(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e) #24 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j), "nonnull"(ptr %i.k) ]
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
define hidden { i64, i32 } @_RNvMs1_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE16alloc_trampolineCs5py4yDLWIja_7execute(ptr noalias nofree noundef align 8 dereferenceable(1688) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !395
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.d, align 8, !noalias !395
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !394, !noundef !5 ; 3 uses
  %i.g = icmp ult i64 %i.f, 576460752303423488
  tail call void @llvm.assume(i1 %i.g)
  %i.h = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.f, i64 noundef 1, i64 noundef 8, i64 noundef 16)
          to label %bb.b unwind label %bb.j, !noalias !396

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %.not.i = icmp eq i64 %i.i, -1
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = atomicrmw add ptr %1, i64 -1 release, align 8, !noalias !397
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_NtNtB1x_7limiter11StoreLimitsENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2J_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4F_4SyncEL_E9drop_slowCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #23, !noalias !396
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !395
  store ptr %1, ptr %i.a, align 8, !noalias !399
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.l, align 8, !noalias !399
  %i.m = load i64, ptr %i.e, align 8, !alias.scope !400, !noundef !5 ; 3 uses
  %i.n = load i64, ptr %i.c, align 8, !range !6, !alias.scope !400, !noundef !5
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityNtNtBR_7limiter11StoreLimitsEE8grow_oneCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.n unwind label %bb.g, !noalias !396

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = atomicrmw add ptr %1, i64 -1 release, align 8, !noalias !401
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_NtNtB1x_7limiter11StoreLimitsENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2J_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4F_4SyncEL_E9drop_slowCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #23
          to label %.body.i unwind label %bb.i, !noalias !396

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !396
  unreachable

.body.i:                                          ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %eh.lpad-body16.i = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.p, %bb.g ], [ %i.t, %bb.k ], [ %i.t, %bb.j ]
  resume { ptr, i32 } %eh.lpad-body16.i

bb.j:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = atomicrmw add ptr %1, i64 -1 release, align 8, !noalias !402
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.k, label %.body.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_NtNtB1x_7limiter11StoreLimitsENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2J_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4F_4SyncEL_E9drop_slowCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #23
          to label %.body.i unwind label %bb.l, !noalias !396

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !396
  unreachable

bb.m:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvNtCsefoF4u9kbII_5wasmi5store16handle_arena_err(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 26) #25
  unreachable

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !400, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.m ; 2 uses
  store ptr %1, ptr %i.z, align 8, !noalias !396
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %2, ptr %i.aa, align 8, !noalias !396
  %i.ab = add i64 %i.m, 1
  store i64 %i.ab, ptr %i.e, align 8, !alias.scope !400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.ad = load i32, ptr %i.ac, align 8, !noundef !5
  %i.ae = insertvalue { i64, i32 } poison, i64 %i.f, 0
  %i.af = insertvalue { i64, i32 } %i.ae, i32 %i.ad, 1
  ret { i64, i32 } %i.af
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs1_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE21invoke_call_hook_implCs5py4yDLWIja_7execute(ptr noalias nofree noundef align 8 dereferenceable(64) %0, i8 noundef range(i8 0, 4) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !10, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call noundef align 8 ptr %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, i8 noundef %1) #24
  ret ptr %i.f
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RNvNvCs5py4yDLWIja_7execute1__19___libfuzzer_sys_run(ptr noalias nofree noundef nonnull readonly align 16 captures(none) dead_on_return dereferenceable(1072) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [1584 x i8], align 8              ; 34 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [72 x i8], align 8                ; 4 uses
  %i.k = alloca [72 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
  %i.n = alloca [24 x i8], align 8                ; 10 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 11 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [1688 x i8], align 8              ; 21 uses
  %i.u = alloca [88 x i8], align 8                ; 16 uses
  %i.v = alloca [8 x i8], align 8                 ; 14 uses
  %i.w = alloca [160 x i8], align 8               ; 5 uses
  %i.x = alloca [160 x i8], align 8               ; 12 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [1040 x i8], align 16            ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %.sroa.0.0.copyload = load i16, ptr %i.ab, align 16 ; 2 uses
  %i.ac = zext i16 %.sroa.0.0.copyload to i24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1058
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1040) %i.aa, ptr noundef nonnull align 16 dereferenceable(1040) %i.ad, i64 1040, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.ae = load ptr, ptr %0, align 16, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noundef !5
  store ptr %i.ae, ptr %i.z, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.ag, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke void @_RNvMNtCscoiT177WhKJ_10wasmi_fuzz6moduleNtB2_10FuzzModule4wasm(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1040) %i.aa)
          to label %bb.c unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs5py4yDLWIja_7execute.exit: ; preds = %bb.e, %.body103, %bb.b
  %.pn56 = phi { ptr, i32 } [ %i.ai, %bb.b ], [ %.pn54, %.body103 ], [ %.pn54, %bb.e ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscoiT177WhKJ_10wasmi_fuzz6module10FuzzModuleECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 16 dereferenceable(1040) %i.aa) #22
          to label %bb.cr unwind label %bb.cc

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs5py4yDLWIja_7execute.exit

bb.c:                                             ; preds = %bb.a
  %i.aj = invoke { ptr, i64 } @_RNvMs0_NtCscoiT177WhKJ_10wasmi_fuzz6moduleNtB5_10WasmSource10into_bytes(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.y)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.d:                                             ; preds = %bb.c
end_hunk_1
begin_hunk_2_@_RNvNvCs5py4yDLWIja_7execute1__19___libfuzzer_sys_run:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.435.0..sroa_idx.i.i, i8 0, i64 216, i1 false), !alias.scope !519, !noalias !518
  %.sroa.439.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 688
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.439.0..sroa_idx.i.i, i8 0, i64 216, i1 false), !alias.scope !519, !noalias !518
  %.sroa.443.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 912
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.443.0..sroa_idx.i.i, i8 0, i64 216, i1 false), !alias.scope !519, !noalias !518
  %.sroa.453.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.453.0..sroa_idx.i.i, i8 0, i64 216, i1 false), !alias.scope !519, !noalias !518
  %.sroa.457.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.457.0..sroa_idx.i.i, i8 0, i64 216, i1 false), !alias.scope !519, !noalias !518
  store i64 0, ptr %i.d, align 8, !alias.scope !519, !noalias !518
  %.sroa.07.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.07.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !519, !noalias !518
  %.sroa.07.sroa.0.sroa.5.sroa.4.0..sroa.07.sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.07.sroa.0.sroa.5.sroa.4.0..sroa.07.sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !519, !noalias !518
  %.sroa.07.sroa.0.sroa.5.sroa.5.0..sroa.07.sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.07.sroa.0.sroa.7.sroa.4.0..sroa.07.sroa.0.sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.sroa.0.sroa.5.sroa.5.0..sroa.07.sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i, i8 0, i64 24, i1 false), !alias.scope !519, !noalias !518
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.07.sroa.0.sroa.7.sroa.4.0..sroa.07.sroa.0.sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !519, !noalias !518
  %.sroa.07.sroa.0.sroa.7.sroa.5.0..sroa.07.sroa.0.sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.812.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.07.sroa.0.sroa.7.sroa.5.0..sroa.07.sroa.0.sroa.7.0..sroa_idx.sroa_idx.i.i, i8 0, i64 44, i1 false), !alias.scope !519, !noalias !518
  store i64 -1, ptr %.sroa.812.0..sroa_idx.i.i, align 8, !alias.scope !519, !noalias !518
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 1576
  store i32 %i.bh, ptr %i.bi, align 8, !alias.scope !519, !noalias !518
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  store i64 0, ptr %i.bj, align 8, !alias.scope !519, !noalias !518
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 456
  store i64 0, ptr %i.bk, align 8, !alias.scope !519, !noalias !518
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 680
  store i64 0, ptr %i.bl, align 8, !alias.scope !519, !noalias !518
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 904
  store i64 0, ptr %i.bm, align 8, !alias.scope !519, !noalias !518
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store i64 0, ptr %i.bn, align 8, !alias.scope !519, !noalias !518
  %.sroa.448.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.448.0..sroa_idx.i.i, align 8, !alias.scope !519, !noalias !518
  %.sroa.549.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 1128
  store i64 0, ptr %i.bo, align 8, !alias.scope !519, !noalias !518
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 1352
  store i64 0, ptr %i.bp, align 8, !alias.scope !519, !noalias !518
  %.sroa.462.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.549.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !519, !noalias !518
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.462.0..sroa_idx.i.i, align 8, !alias.scope !519, !noalias !518
  %.sroa.563.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store i64 0, ptr %.sroa.563.0..sroa_idx.i.i, align 8, !alias.scope !519, !noalias !518
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  store ptr %i.at, ptr %i.bq, align 8, !alias.scope !519, !noalias !518
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  store i64 0, ptr %i.br, align 8, !alias.scope !519, !noalias !518
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  store <2 x ptr> %i.bb, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !519, !noalias !518
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  store i8 %i.aw, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !519, !noalias !518
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 1580
  store i32 %i.bd, ptr %i.bs, align 4, !alias.scope !519, !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !521
  store i64 0, ptr %i.c, align 8, !noalias !521
  %.sroa.4.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !noalias !521
  %.sroa.5.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !noalias !521
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !521
  %i.bt = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 65) 64, i64 noundef range(i64 1, 9) 8) #21, !noalias !521 ; 9 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.p, label %bb.v, !prof !522

bb.p:                                             ; preds = %_RNvMs3_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner3new.exit.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #25
          to label %.noexc.i.i unwind label %bb.q, !noalias !521

.noexc.i.i:                                       ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg06799QCvd1_17wasmi_collections5arena5ArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1u_4func10TrampolineEINtB27_16TrampolineEntityNtNtB1u_7limiter11StoreLimitsEEECs5py4yDLWIja_7execute(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #22
          to label %.body.i unwind label %bb.r, !noalias !521

bb.r:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !521
  unreachable

.body.i:                                          ; preds = %bb.q
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi5store5inner10StoreInnerECs5py4yDLWIja_7execute(ptr noalias nofree noundef align 8 dereferenceable(1584) %i.d) #22
          to label %.body64 unwind label %bb.s, !noalias !518

bb.s:                                             ; preds = %.body.i
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !518
  unreachable

bb.t:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

.body64:                                          ; preds = %bb.cf, %bb.bc, %.body.i, %bb.u, %.body
  %.pn48 = phi { ptr, i32 } [ %.pn46, %.body ], [ %i.bv, %.body.i ], [ %i.dv, %bb.bc ], [ %i.by, %bb.u ], [ %i.ga, %bb.cf ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi6linker6LinkerNtNtBG_7limiter11StoreLimitsEECs5py4yDLWIja_7execute(ptr noalias nofree noundef align 8 dereferenceable(88) %i.u) #22
          to label %.body96 unwind label %bb.cc

bb.u:                                             ; preds = %bb.cg, %bb.bd
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body64

.body:                                            ; preds = %.body87, %bb.ak, %bb.ag, %.body67
  %.pn46 = phi { ptr, i32 } [ %i.ck, %bb.ag ], [ %i.bz, %.body67 ], [ %.pn44, %bb.ak ], [ %.pn44, %.body87 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi5store5StoreNtNtBG_7limiter11StoreLimitsEECs5py4yDLWIja_7execute(ptr noalias nofree noundef align 8 dereferenceable(1688) %i.t) #22
          to label %.body64 unwind label %bb.cc

.body67:                                          ; preds = %bb.v, %bb.z, %bb.ac, %bb.ad, %bb.x, %bb.ab, %bb.bb, %bb.cd
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %_RNvMs3_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner3new.exit.i
  store i64 1, ptr %i.bt, align 8, !noalias !523
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 65536000, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !523
  %.sroa.4.0..sroa_idx142 = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx142, align 8, !noalias !523
  %.sroa.5145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  store i64 10000, ptr %.sroa.5145.0..sroa_idx, align 8, !noalias !523
  %.sroa.6.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  store i64 10000, ptr %.sroa.6.0..sroa_idx146, align 8, !noalias !523
  %.sroa.7148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  store i64 10000, ptr %.sroa.7148.0..sroa_idx, align 8, !noalias !523
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !523
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 1584 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !521
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1688) %i.t, ptr noundef nonnull align 8 dereferenceable(1584) %i.d, i64 1584, i1 false), !noalias !524
  %.sroa.4.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1608
  store ptr %i.bt, ptr %.sroa.4.0..sroa_idx1.i, align 8, !alias.scope !517
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1616
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1632
  store ptr null, ptr %.sroa.63.0..sroa_idx.i, align 8, !alias.scope !517
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 1672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) @9, i64 16, i1 false), !noalias !524
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 1648
  store ptr @_RNvYNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB8_17PrunedStoreVTable3newNtNtBc_7limiter11StoreLimitsE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtB8_11PrunedStoreNtNtBc_4func10TrampolineINtNtB1M_6option6OptionNtNtNtNtNtBc_6engine8executor7handler5state4InstENtNtB3A_5inout11InOutParamsNtBa_9CallHooksEE9call_onceCs5py4yDLWIja_7execute, ptr %i.cc, align 8, !alias.scope !517
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1656
  store ptr @_RNvYNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB8_17PrunedStoreVTable3newNtNtBc_7limiter11StoreLimitsEs_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtB8_11PrunedStoreRNtNtBc_6memory6MemoryyEE9call_onceCs5py4yDLWIja_7execute, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !517
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1664
  store ptr @_RNvYNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB8_17PrunedStoreVTable3newNtNtBc_7limiter11StoreLimitsEs0_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtB8_11PrunedStoreRNtNtBc_5table5TableyNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefEE9call_onceCs5py4yDLWIja_7execute, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !518
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 1624
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx2.i, align 8, !alias.scope !525
  store ptr @0, ptr %i.cd, align 8, !alias.scope !525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ce = invoke noundef align 8 ptr @_RNvMs3_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner8set_fuel(ptr noalias nofree noundef nonnull align 8 dereferenceable(1584) %i.t, i64 noundef 1000)
          to label %bb.w unwind label %.body67    ; 2 uses

bb.w:                                             ; preds = %bb.v
  store ptr %i.ce, ptr %i.s, align 8
  %.not = icmp eq ptr %i.ce, null
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsefoF4u9kbII_5wasmi5error5ErrorEECs5py4yDLWIja_7execute.exit unwind label %.body67

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.cf = and i16 %.sroa.0.0.copyload, 256
  %.not157 = icmp eq i16 %i.cf, 0
  br i1 %.not157, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.cg = invoke noundef align 8 ptr @_RNvMs0_NtCsefoF4u9kbII_5wasmi6moduleNtB5_6Module8validate(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.al)
          to label %bb.aa unwind label %.body67   ; 2 uses

bb.aa:                                            ; preds = %bb.z
  store ptr %i.cg, ptr %i.r, align 8
  %.not37 = icmp eq ptr %i.cg, null
  br i1 %.not37, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsefoF4u9kbII_5wasmi5error5ErrorEECs5py4yDLWIja_7execute.exit74 unwind label %.body67

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ch = invoke { i64, ptr } @_RNvMs0_NtCsefoF4u9kbII_5wasmi6moduleNtB5_6Module13new_unchecked(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.al)
          to label %bb.ae unwind label %.body67

bb.ad:                                            ; preds = %bb.y
  %i.ci = invoke { i64, ptr } @_RINvMs0_NtCsefoF4u9kbII_5wasmi6moduleNtB6_6Module3newRShECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.al)
          to label %bb.ae unwind label %.body67

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.pn = phi { i64, ptr } [ %i.ci, %bb.ad ], [ %i.ch, %bb.ac ] ; 2 uses
  %.sroa.06.0 = extractvalue { i64, ptr } %.pn, 0
  %.sroa.3.0 = extractvalue { i64, ptr } %.pn, 1  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.cj = trunc nuw i64 %.sroa.06.0 to i1
  br i1 %i.cj, label %bb.af, label %bb.aj, !prof !14

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0) ]
  store ptr %.sroa.3.0, ptr %i.e, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #25
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #22
          to label %.body unwind label %bb.ai

bb.ah:                                            ; preds = %bb.af
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0) ]
  store ptr %.sroa.3.0, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RINvMs7_NtCsefoF4u9kbII_5wasmi6linkerINtB6_6LinkerNtNtB8_7limiter11StoreLimitsE21instantiate_and_startQINtNtB8_5store5StoreBM_EECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %bb.am unwind label %bb.al

.body87:                                          ; preds = %bb.ay, %bb.al, %.body83
  %.pn44 = phi { ptr, i32 } [ %.pn40.pn.pn, %.body83 ], [ %i.cp, %bb.al ], [ %i.dq, %bb.ay ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !526)
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %i.cm = load ptr, ptr %i.q, align 8, !alias.scope !529, !nonnull !5, !noundef !5
  %i.cn = atomicrmw add ptr %i.cm, i64 -1 release, align 8, !noalias !529
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.ak, label %.body

bb.ak:                                            ; preds = %.body87
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6module11ModuleInnerE9drop_slowCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #23
          to label %.body unwind label %bb.cc

bb.al:                                            ; preds = %bb.az, %bb.an, %bb.aj
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body87

bb.am:                                            ; preds = %bb.aj
  %i.cq = load i32, ptr %i.o, align 8, !range !15, !noundef !5
  %i.cr = trunc nuw i32 %i.cq to i1
  br i1 %i.cr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.cs = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.cs)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsefoF4u9kbII_5wasmi8instance8InstanceNtNtB11_5error5ErrorEECs5py4yDLWIja_7execute.exit unwind label %bb.al

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.cu = load <2 x i32>, ptr %i.ct, align 4
  store <2 x i32> %i.cu, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store i64 0, ptr %i.cw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 0, ptr %i.m, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 0, ptr %i.cy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvMNtCsefoF4u9kbII_5wasmi8instanceNtB3_8Instance7exportsNtNtB5_7limiter11StoreLimitsRINtNtB5_5store5StoreBU_EECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1688) %i.t)
          to label %bb.aq unwind label %bb.ap

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsefoF4u9kbII_5wasmi4func4FuncEECs5py4yDLWIja_7execute.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5py4yDLWIja_7execute.exit, %bb.ap
  %.pn40.pn = phi { ptr, i32 } [ %i.cz, %bb.ap ], [ %.pn40, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5py4yDLWIja_7execute.exit ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsefoF4u9kbII_5wasmi5value3ValEECs5py4yDLWIja_7execute(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #22
          to label %.body83 unwind label %bb.cc

bb.ap:                                            ; preds = %._crit_edge, %bb.aq, %bb.ao
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsefoF4u9kbII_5wasmi4func4FuncEECs5py4yDLWIja_7execute.exit

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsefoF4u9kbII_5wasmi4func4FuncEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapNtNtNtB15_8instance7exports11ExportsIterNvMs8_B38_NtB38_6Export9into_funcEE9from_iterCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.k)
          to label %bb.ar unwind label %bb.ap

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.da = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.dc = load i64, ptr %i.l, align 8, !range !6, !noundef !5
  %i.dd = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !noundef !5 ; 3 uses
  %i.df = icmp ult i64 %i.de, 1152921504606846976
  call void @llvm.assume(i1 %i.df)
  %.idx = shl nuw nsw i64 %i.de, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.db, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.db, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.dc, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store ptr %i.dg, ptr %.sroa.69.0..sroa_idx, align 8
  %i.dh = icmp eq i64 %i.de, 0
  br i1 %i.dh, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ar
  %.sroa.4.0..sroa_idx.i107 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i108 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  br label %bb.at

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5py4yDLWIja_7execute.exit: ; preds = %bb.bs, %bb.br, %bb.bt, %bb.as
  %.pn40 = phi { ptr, i32 } [ %i.dj, %bb.as ], [ %i.ev, %bb.bt ], [ %i.ev, %bb.br ], [ %i.ev, %bb.bs ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsefoF4u9kbII_5wasmi4func4FuncENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsefoF4u9kbII_5wasmi4func4FuncEECs5py4yDLWIja_7execute.exit unwind label %bb.cc

bb.as:                                            ; preds = %bb.cb, %bb.at
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5py4yDLWIja_7execute.exit

bb.at:                                            ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5py4yDLWIja_7execute.exit117
  %i.dk = phi ptr [ %i.db, %.lr.ph ], [ %i.fu, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5py4yDLWIja_7execute.exit117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.dl, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !530
  %i.dm = load <2 x i32>, ptr %i.dk, align 4, !noalias !530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store <2 x i32> %i.dm, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RINvMs9_NtCsefoF4u9kbII_5wasmi4funcNtB6_4Func2tyRINtNtB8_5store5StoreNtNtB8_7limiter11StoreLimitsEECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1688) %i.t)
          to label %bb.bq unwind label %bb.as

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5py4yDLWIja_7execute.exit117, %bb.ar
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsefoF4u9kbII_5wasmi4func4FuncENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsefoF4u9kbII_5wasmi4func4FuncEECs5py4yDLWIja_7execute.exit81 unwind label %bb.ap

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsefoF4u9kbII_5wasmi4func4FuncEECs5py4yDLWIja_7execute.exit81: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.av unwind label %bb.au

bb.au:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsefoF4u9kbII_5wasmi4func4FuncEECs5py4yDLWIja_7execute.exit81
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsefoF4u9kbII_5wasmi5value3ValENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body83 unwind label %bb.aw

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsefoF4u9kbII_5wasmi4func4FuncEECs5py4yDLWIja_7execute.exit81
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsefoF4u9kbII_5wasmi5value3ValENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsefoF4u9kbII_5wasmi5value3ValEECs5py4yDLWIja_7execute.exit unwind label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

.body83:                                          ; preds = %bb.ax, %bb.au, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsefoF4u9kbII_5wasmi4func4FuncEECs5py4yDLWIja_7execute.exit
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsefoF4u9kbII_5wasmi4func4FuncEECs5py4yDLWIja_7execute.exit ], [ %i.dp, %bb.ax ], [ %i.dn, %bb.au ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsefoF4u9kbII_5wasmi5value3ValEECs5py4yDLWIja_7execute(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #22
          to label %.body87 unwind label %bb.cc

bb.ax:                                            ; preds = %bb.av
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body83

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsefoF4u9kbII_5wasmi5value3ValEECs5py4yDLWIja_7execute.exit: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.az unwind label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsefoF4u9kbII_5wasmi5value3ValEECs5py4yDLWIja_7execute.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsefoF4u9kbII_5wasmi5value3ValENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body87 unwind label %bb.ba

bb.az:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsefoF4u9kbII_5wasmi5value3ValEECs5py4yDLWIja_7execute.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsefoF4u9kbII_5wasmi5value3ValENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsefoF4u9kbII_5wasmi5value3ValEECs5py4yDLWIja_7execute.exit89 unwind label %bb.al

bb.ba:                                            ; preds = %bb.ay
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsefoF4u9kbII_5wasmi5value3ValEECs5py4yDLWIja_7execute.exit89: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %i.ds = load ptr, ptr %i.q, align 8, !alias.scope !534, !nonnull !5, !noundef !5
  %i.dt = atomicrmw add ptr %i.ds, i64 -1 release, align 8, !noalias !534
  %i.du = icmp eq i64 %i.dt, 1
  br i1 %i.du, label %bb.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6module6ModuleECs5py4yDLWIja_7execute.exit91

bb.bb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsefoF4u9kbII_5wasmi5value3ValEECs5py4yDLWIja_7execute.exit89
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6module11ModuleInnerE9drop_slowCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6module6ModuleECs5py4yDLWIja_7execute.exit91 unwind label %.body67

end_hunk_2
begin_hunk_3_@_RNvYNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB8_17PrunedStoreVTable3newNtNtBc_7limiter11StoreLimitsE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtB8_11PrunedStoreNtNtBc_4func10TrampolineINtNtB1M_6option6OptionNtNtNtNtNtBc_6engine8executor7handler5state4InstENtNtB3A_5inout11InOutParamsNtBa_9CallHooksEE9call_onceCs5py4yDLWIja_7execute:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.i = zext i1 %7 to i8
  store i8 %i.i, ptr %i.h, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1672
  %.sroa.0.0.copyload.i.i = load i128, ptr %i.j, align 8, !alias.scope !617
  %.not.i.i = icmp eq i128 %.sroa.0.0.copyload.i.i, -109817089432116333997171879301238253059
  br i1 %.not.i.i, label %bb.b, label %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreNtNtBa_7limiter11StoreLimitsECs5py4yDLWIja_7execute.exit.i, !prof !17

_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreNtNtBa_7limiter11StoreLimitsECs5py4yDLWIja_7execute.exit.i: ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !615
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_RINvNtCskKLDkoKarTP_4core3any9type_nameNtNtCsefoF4u9kbII_5wasmi7limiter11StoreLimitsECs5py4yDLWIja_7execute, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !615
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtB9_7limiter11StoreLimitsE0Cs5py4yDLWIja_7execute.exit

bb.b:                                             ; preds = %bb.a
  br i1 %7, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.q, %bb.p, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !619
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %i.l = load i32, ptr %i.k, align 8, !alias.scope !620, !noundef !5
  %.not.i.i.i = icmp eq i32 %3, %i.l
  br i1 %.not.i.i.i, label %bb.d, label %bb.s, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1600
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !620, !noundef !5
  %i.o = icmp ult i64 %2, %i.n
  br i1 %i.o, label %bb.e, label %bb.s, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1592
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !620, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %2 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !noalias !619, !nonnull !5, !noundef !5
  %i.t = atomicrmw add ptr %i.s, i64 1 monotonic, align 8, !noalias !619
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load <2 x ptr>, ptr %i.r, align 8, !noalias !619
  %i.w = load ptr, ptr %i.r, align 8, !noalias !619, !nonnull !5, !noundef !5 ; 2 uses
  store <2 x ptr> %i.v, ptr %i.a, align 16, !noalias !619
  %i.x = invoke noundef align 8 ptr @_RINvMs7_NtCsefoF4u9kbII_5wasmi4funcINtB6_16TrampolineEntityNtNtB8_7limiter11StoreLimitsE4callQINtNtB8_5store5StoreBV_EECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, i64 noundef range(i64 0, 2) %4, double %5, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
          to label %bb.j unwind label %bb.h, !noalias !621 ; 3 uses

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !622
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityNtNtBG_7limiter11StoreLimitsEECs5py4yDLWIja_7execute.exit.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_NtNtB1x_7limiter11StoreLimitsENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2J_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4F_4SyncEL_E9drop_slowCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityNtNtBG_7limiter11StoreLimitsEECs5py4yDLWIja_7execute.exit.i.i unwind label %bb.o, !noalias !623

bb.j:                                             ; preds = %bb.f
  %.not21.i.i = icmp eq ptr %i.x, null
  %i.ab = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !623
  %i.ac = icmp eq i64 %i.ab, 1                    ; 2 uses
  br i1 %.not21.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.ac, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_NtNtB1x_7limiter11StoreLimitsENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2J_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4F_4SyncEL_E9drop_slowCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #23, !noalias !623
  br label %bb.s

bb.m:                                             ; preds = %bb.j
  br i1 %i.ac, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_NtNtB1x_7limiter11StoreLimitsENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2J_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4F_4SyncEL_E9drop_slowCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #23, !noalias !623
  br label %bb.t

bb.o:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !623
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityNtNtBG_7limiter11StoreLimitsEECs5py4yDLWIja_7execute.exit.i.i: ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.y

bb.p:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !616, !noundef !5 ; 2 uses
  %.not34.i = icmp eq ptr %i.af, null
  br i1 %.not34.i, label %bb.c, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !616, !nonnull !5, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1640
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !625, !nonnull !5, !align !10, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !invariant.load !5, !noalias !626, !nonnull !5
  %i.am = tail call noundef align 8 ptr %i.al(ptr noundef nonnull %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ah, i8 noundef 2) #24, !noalias !627, !inline_history !611 ; 2 uses
  %.not35.i = icmp eq ptr %i.am, null
  br i1 %.not35.i, label %bb.c, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 -1, ptr %0, align 8, !alias.scope !615
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !615
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtB9_7limiter11StoreLimitsE0Cs5py4yDLWIja_7execute.exit

bb.s:                                             ; preds = %bb.l, %bb.k, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ undef, %bb.c ], [ undef, %bb.d ], [ %i.x, %bb.k ], [ %i.x, %bb.l ]
  %.sroa.02.0.ph.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ -1, %bb.k ], [ -1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !619
  store i64 %.sroa.02.0.ph.i, ptr %0, align 8, !alias.scope !615
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.412.0..sroa_idx.i, align 8, !alias.scope !615
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtB9_7limiter11StoreLimitsE0Cs5py4yDLWIja_7execute.exit

bb.t:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !619
  br i1 %7, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.w, %bb.v, %bb.t
  store i64 -2, ptr %0, align 8, !alias.scope !615
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtB9_7limiter11StoreLimitsE0Cs5py4yDLWIja_7execute.exit

bb.v:                                             ; preds = %bb.t
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !616, !noundef !5 ; 2 uses
  %.not37.i = icmp eq ptr %i.ao, null
  br i1 %.not37.i, label %bb.u, label %bb.w, !prof !17

bb.w:                                             ; preds = %bb.v
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !616, !nonnull !5, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 1640
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !629, !nonnull !5, !align !10, !noundef !5
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !5, !noalias !630, !nonnull !5
  %i.av = call noundef align 8 ptr %i.au(ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.aq, i8 noundef 3) #24, !noalias !631, !inline_history !611 ; 2 uses
  %.not38.i = icmp eq ptr %i.av, null
  br i1 %.not38.i, label %bb.u, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 -1, ptr %0, align 8, !alias.scope !615
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %.sroa.433.0..sroa_idx.i, align 8, !alias.scope !615
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtB9_7limiter11StoreLimitsE0Cs5py4yDLWIja_7execute.exit

_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtB9_7limiter11StoreLimitsE0Cs5py4yDLWIja_7execute.exit: ; preds = %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreNtNtBa_7limiter11StoreLimitsECs5py4yDLWIja_7execute.exit.i, %bb.r, %bb.s, %bb.u, %bb.x
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB8_17PrunedStoreVTable3newNtNtBc_7limiter11StoreLimitsEs0_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtB8_11PrunedStoreRNtNtBc_5table5TableyNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefEE9call_onceCs5py4yDLWIja_7execute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %2, i64 noundef %3, i32 noundef %4) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1672
  %.sroa.0.0.copyload.i.i = load i128, ptr %i.d, align 8, !alias.scope !644
  %.not.i.i = icmp eq i128 %.sroa.0.0.copyload.i.i, -109817089432116333997171879301238253059
  br i1 %.not.i.i, label %bb.b, label %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreNtNtBa_7limiter11StoreLimitsECs5py4yDLWIja_7execute.exit.i, !prof !17

_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreNtNtBa_7limiter11StoreLimitsECs5py4yDLWIja_7execute.exit.i: ; preds = %bb.a
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !642
  store ptr @_RINvNtCskKLDkoKarTP_4core3any9type_nameNtNtCsefoF4u9kbII_5wasmi7limiter11StoreLimitsECs5py4yDLWIja_7execute, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !642
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtB9_7limiter11StoreLimitsEs0_0Cs5py4yDLWIja_7execute.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1616
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !646, !noundef !5 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.f, null
  br i1 %.not.i13.i, label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE36store_inner_and_resource_limiter_refCs5py4yDLWIja_7execute.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1624
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !646, !nonnull !5, !noundef !5
  %i.j = load ptr, ptr %i.g, align 8, !alias.scope !646, !nonnull !5, !align !10, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !5, !noalias !647, !nonnull !5
  %i.m = tail call { ptr, ptr } %i.l(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.i) #24, !noalias !647, !inline_history !641 ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n), "nonnull"(ptr %i.o) ]
  br label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE36store_inner_and_resource_limiter_refCs5py4yDLWIja_7execute.exit.i

_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE36store_inner_and_resource_limiter_refCs5py4yDLWIja_7execute.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.3.0.i.i = phi ptr [ %i.o, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.i = phi ptr [ %i.n, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !648
  store ptr %.sroa.0.0.i.i, ptr %i.c, align 8, !noalias !648
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.3.0.i.i, ptr %i.p, align 8, !noalias !648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !648
  call void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner30try_resolve_table_and_fuel_mut(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %2), !noalias !642
  %i.q = load i64, ptr %i.b, align 8, !range !16, !noalias !648, !noundef !5
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !648 ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE36store_inner_and_resource_limiter_refCs5py4yDLWIja_7execute.exit.i
  %i.v = load i64, ptr %i.s, align 8, !range !18, !noalias !648, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !648
  store i64 0, ptr %0, align 8, !alias.scope !642
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !642
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !648
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtB9_7limiter11StoreLimitsEs0_0Cs5py4yDLWIja_7execute.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE36store_inner_and_resource_limiter_refCs5py4yDLWIja_7execute.exit.i
  %i.w = load ptr, ptr %i.s, align 8, !noalias !648, !nonnull !5, !align !10, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !648
  call void @_RNvMNtCs5zeGauAcNNa_10wasmi_core5tableNtB2_5Table8grow_raw(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.w, i64 noundef %3, i32 noundef %4, ptr noalias nofree noundef nonnull align 8 dereferenceable_or_null(32) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !noalias !642
  %i.x = load i64, ptr %i.a, align 8, !range !649, !noalias !648, !noundef !5 ; 2 uses
  %.not12.i = icmp eq i64 %i.x, -1
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noalias !648 ; 2 uses
  br i1 %.not12.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !642
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink7.i = phi i64 [ %i.x, %bb.f ], [ %i.z, %bb.e ]
  %.sink.i = phi i64 [ 1, %bb.f ], [ 2, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink7.i, ptr %i.aa, align 8, !alias.scope !642
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !648
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtB9_7limiter11StoreLimitsEs0_0Cs5py4yDLWIja_7execute.exit

_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtB9_7limiter11StoreLimitsEs0_0Cs5py4yDLWIja_7execute.exit: ; preds = %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreNtNtBa_7limiter11StoreLimitsECs5py4yDLWIja_7execute.exit.i, %bb.d, %bb.g
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB8_17PrunedStoreVTable3newNtNtBc_7limiter11StoreLimitsEs_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtB8_11PrunedStoreRNtNtBc_6memory6MemoryyEE9call_onceCs5py4yDLWIja_7execute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %2, i64 noundef %3) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1672
  %.sroa.0.0.copyload.i.i = load i128, ptr %i.d, align 8, !alias.scope !662
  %.not.i.i = icmp eq i128 %.sroa.0.0.copyload.i.i, -109817089432116333997171879301238253059
  br i1 %.not.i.i, label %bb.b, label %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreNtNtBa_7limiter11StoreLimitsECs5py4yDLWIja_7execute.exit.i, !prof !17

_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreNtNtBa_7limiter11StoreLimitsECs5py4yDLWIja_7execute.exit.i: ; preds = %bb.a
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !660
  store ptr @_RINvNtCskKLDkoKarTP_4core3any9type_nameNtNtCsefoF4u9kbII_5wasmi7limiter11StoreLimitsECs5py4yDLWIja_7execute, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !660
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtB9_7limiter11StoreLimitsEs_0Cs5py4yDLWIja_7execute.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1616
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !664, !noundef !5 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.f, null
  br i1 %.not.i13.i, label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE36store_inner_and_resource_limiter_refCs5py4yDLWIja_7execute.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1624
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !664, !nonnull !5, !noundef !5
  %i.j = load ptr, ptr %i.g, align 8, !alias.scope !664, !nonnull !5, !align !10, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !5, !noalias !665, !nonnull !5
  %i.m = tail call { ptr, ptr } %i.l(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.i) #24, !noalias !665, !inline_history !659 ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n), "nonnull"(ptr %i.o) ]
  br label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE36store_inner_and_resource_limiter_refCs5py4yDLWIja_7execute.exit.i

_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE36store_inner_and_resource_limiter_refCs5py4yDLWIja_7execute.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.3.0.i.i = phi ptr [ %i.o, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.i = phi ptr [ %i.n, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !666
  store ptr %.sroa.0.0.i.i, ptr %i.c, align 8, !noalias !666
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.3.0.i.i, ptr %i.p, align 8, !noalias !666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !666
  call void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner31try_resolve_memory_and_fuel_mut(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %2), !noalias !660
  %i.q = load i64, ptr %i.b, align 8, !range !16, !noalias !666, !noundef !5
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !666 ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE36store_inner_and_resource_limiter_refCs5py4yDLWIja_7execute.exit.i
  %i.v = load i64, ptr %i.s, align 8, !range !18, !noalias !666, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !666
  store i64 0, ptr %0, align 8, !alias.scope !660
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !660
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !666
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtB9_7limiter11StoreLimitsEs_0Cs5py4yDLWIja_7execute.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreNtNtB7_7limiter11StoreLimitsE36store_inner_and_resource_limiter_refCs5py4yDLWIja_7execute.exit.i
  %i.w = load ptr, ptr %i.s, align 8, !noalias !666, !nonnull !5, !align !10, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !666
  call void @_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory4grow(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.w, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 dereferenceable_or_null(32) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !noalias !660
  %i.x = load i64, ptr %i.a, align 8, !range !667, !noalias !666, !noundef !5 ; 2 uses
  %.not12.i = icmp eq i64 %i.x, -1
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noalias !666 ; 2 uses
  br i1 %.not12.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !660
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink7.i = phi i64 [ %i.x, %bb.f ], [ %i.z, %bb.e ]
  %.sink.i = phi i64 [ 1, %bb.f ], [ 2, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink7.i, ptr %i.aa, align 8, !alias.scope !660
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !666
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtB9_7limiter11StoreLimitsEs_0Cs5py4yDLWIja_7execute.exit

_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newNtNtB9_7limiter11StoreLimitsEs_0Cs5py4yDLWIja_7execute.exit: ; preds = %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreNtNtBa_7limiter11StoreLimitsECs5py4yDLWIja_7execute.exit.i, %bb.d, %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define dso_local noundef range(i32 -1, 1) i32 @rust_fuzzer_test_input({ i64, i64 } %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [352 x i8], align 16              ; 4 uses
  %i.d = alloca [1040 x i8], align 16             ; 8 uses
  %i.e = alloca [352 x i8], align 16              ; 8 uses
  %i.f = alloca [352 x i8], align 16              ; 11 uses
  %i.g = alloca [16 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [1072 x i8], align 16             ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [4 x i8], align 4                 ; 7 uses
  %i.n = alloca [1072 x i8], align 16             ; 18 uses
  %.fca.0.extract = extractvalue { i64, i64 } %0, 0 ; 2 uses
  %i.o = icmp ne i64 %.fca.0.extract, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = inttoptr i64 %.fca.0.extract to ptr
  %.fca.1.extract = extractvalue { i64, i64 } %0, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.p, ptr %i.g, align 8, !noalias !677
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store i64 %.fca.1.extract, ptr %i.q, align 8, !noalias !677
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %i.r = invoke i24 @_RNvXs_NtCscoiT177WhKJ_10wasmi_fuzz6configNtB4_15FuzzWasmiConfigNtCshzEO1ckREsP_9arbitrary9Arbitrary9arbitrary(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.noexc unwind label %bb.l     ; 3 uses

.noexc:                                           ; preds = %bb.a
  %.sroa.056.0.extract.trunc.i.i = trunc i24 %i.r to i8 ; 2 uses
  %.sroa.056.1.extract.shift.i.i = lshr i24 %i.r, 8
  %.sroa.056.1.extract.trunc.i.i = trunc i24 %.sroa.056.1.extract.shift.i.i to i8 ; 3 uses
  %.sroa.056.2.extract.shift.i.i = lshr i24 %i.r, 16
  %.sroa.056.2.extract.trunc.i.i = trunc nuw i24 %.sroa.056.2.extract.shift.i.i to i8
  %i.s = icmp eq i8 %.sroa.056.0.extract.trunc.i.i, 2
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  store i8 %.sroa.056.1.extract.trunc.i.i, ptr %i.n, align 16, !alias.scope !679
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 1016
  store i64 -1, ptr %i.t, align 8, !alias.scope !679
  br label %bb.m

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !680
  invoke void @_RNvXs0_NtCscoiT177WhKJ_10wasmi_fuzz6configNtB5_15FuzzSmithConfigNtCshzEO1ckREsP_9arbitrary9Arbitrary9arbitrary(ptr noalias nofree noundef nonnull sret([352 x i8]) align 16 captures(none) dereferenceable(352) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.noexc18 unwind label %bb.l

.noexc18:                                         ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = load i64, ptr %i.u, align 16, !range !681, !noalias !680, !noundef !5 ; 2 uses
  %i.w = icmp eq i64 %i.v, -2
  %i.x = load i8, ptr %i.e, align 16, !noalias !680 ; 2 uses
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !680
  br label %bb.h

bb.e:                                             ; preds = %.noexc18
  %.sroa.449.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.449.0..sroa_idx.i.i, i64 15, i1 false), !noalias !680
  %.sroa.651.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.624.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.624.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.651.0..sroa_idx.i.i, i64 328, i1 false), !noalias !680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !680
  store i8 %i.x, ptr %i.f, align 16, !noalias !680
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.v, ptr %.sroa.5.0..sroa_idx.i.i, align 16, !noalias !680
  invoke void @_RNvMs1_NtCscoiT177WhKJ_10wasmi_fuzz6configNtB5_15FuzzSmithConfig15allow_execution(ptr noalias nofree noundef nonnull align 16 dereferenceable(352) %i.f)
          to label %bb.f unwind label %bb.i, !noalias !679

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 328
  store i8 1, ptr %i.y, align 8, !noalias !680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %i.c, ptr noundef nonnull align 16 dereferenceable(352) %i.f, i64 352, i1 false), !noalias !680
  invoke void @_RINvMNtCscoiT177WhKJ_10wasmi_fuzz6moduleNtB3_10FuzzModule3newNtNtB5_6config15FuzzSmithConfigECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull sret([1040 x i8]) align 16 captures(none) dereferenceable(1040) %i.d, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(352) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.noexc19 unwind label %bb.l

.noexc19:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !680
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 1000
  %i.aa = load i64, ptr %i.z, align 8, !range !8, !noalias !680, !noundef !5 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, -1
  %i.ac = load i8, ptr %i.d, align 16, !noalias !680 ; 2 uses
  br i1 %i.ab, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !680
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.sink.i = phi i8 [ %i.ac, %bb.g ], [ %i.x, %bb.d ] ; 2 uses
  store i8 %.sink.i, ptr %i.n, align 16, !alias.scope !679
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 1016
  store i64 -1, ptr %i.ad, align 8, !alias.scope !679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !680
  br label %bb.m

bb.i:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7wImhEnBy0k_10wasm_smith6config6ConfigECs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull align 16 dereferenceable(352) %i.f)
          to label %.body unwind label %bb.j, !noalias !679

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !679
  unreachable

bb.k:                                             ; preds = %.noexc19
  %.sroa.453.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.641.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(999) %.sroa.641.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(999) %.sroa.453.0..sroa_idx.i.i, i64 999, i1 false), !noalias !682
  %.sroa.655.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1008
  %.sroa.843.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.843.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.655.0..sroa_idx.i.i, i64 32, i1 false), !noalias !682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !680
  %.sroa.540.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i8 %i.ac, ptr %.sroa.540.0..sroa_idx.i.i, align 16, !alias.scope !679
  %.sroa.742.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1016
  store i64 %i.aa, ptr %.sroa.742.0..sroa_idx.i.i, align 8, !alias.scope !679
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1056
  store i8 %.sroa.056.0.extract.trunc.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 16, !alias.scope !679
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1057
  store i8 %.sroa.056.1.extract.trunc.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 1, !alias.scope !679
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1058
  store i8 %.sroa.056.2.extract.trunc.i.i, ptr %.sroa.11.0..sroa_idx.i.i, align 2, !alias.scope !679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !680
  %i.ag = load i64, ptr %i.q, align 8, !noalias !677, !noundef !5
  %i.ah = load ptr, ptr %i.g, align 8, !noalias !677, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
end_hunk_3
