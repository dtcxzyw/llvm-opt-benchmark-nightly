Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.08?download=true
inline.NumInlined: 547
inline.NumDeleted: 142
begin_hunk_0_@_RNvNtNtCsgbWeKYPjk8w_3syn2ty7parsing8ambig_ty:bb.a
  br i1 %i.ky, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit852, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %.val1.i.i.i.i848 = load ptr, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !2158, !nonnull !6, !noundef !6
  %i.kz = shl nuw i64 %.val.i.i.i.i847, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i848, i64 noundef %i.kz, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !2160
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit852

.thread1007:                                      ; preds = %bb.oy, %bb.om, %bb.mx, %bb.na, %bb.nb, %bb.ju, %bb.jr, %bb.jp
  %lpad.thr_comm1005 = landingpad { ptr, i32 }
          cleanup
  br label %.thread999

bb.jl:                                            ; preds = %bb.am
  %lpad.thr_comm.split-lp1006 = landingpad { ptr, i32 }
          cleanup
  br label %.thread966

bb.jm:                                            ; preds = %bb.am
  %i.la = load i64, ptr %i.bz, align 8, !range !16, !noundef !6
  %i.lb = trunc nuw i64 %i.la to i1
  %i.lc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  br i1 %i.lb, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ld, ptr noundef nonnull align 8 dereferenceable(24) %i.lc, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit

bb.jo:                                            ; preds = %bb.jm
  %i.le = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %i.le, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %i.lc, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  %.val822 = load ptr, ptr %i.ca, align 8, !noundef !6
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %.val823 = load ptr, ptr %i.lf, align 8, !noundef !6
  %i.lg = icmp eq ptr %.val822, %.val823
  br i1 %i.lg, label %bb.pf, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.lh = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekNvNtB8_8lifetime8LifetimeEB8_(ptr noundef nonnull align 8 %i.ca)
          to label %bb.jq unwind label %.thread1007

bb.jq:                                            ; preds = %bb.jp
  br i1 %i.lh, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.li = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token8QuestionNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %i.ca)
          to label %bb.jt unwind label %.thread1007

bb.js:                                            ; preds = %bb.jq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  store i64 0, ptr %i.by, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.lj, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 0, ptr %i.lk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.584)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_2ty15TypeTraitObjectEB8_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.bw, ptr noundef nonnull align 8 %i.ca)
          to label %bb.ox unwind label %bb.ow

bb.jt:                                            ; preds = %bb.jr
  br i1 %i.li, label %bb.nu, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6132)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_2ty4TypeEB8_(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.bn, ptr noundef nonnull align 8 %i.ca)
          to label %bb.jv unwind label %.thread1007

bb.jv:                                            ; preds = %bb.ju
  %i.ll = load i64, ptr %i.bn, align 8, !range !22, !noundef !6 ; 2 uses
  %i.lm = icmp eq i64 %i.ll, -1
  %i.ln = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6132, ptr noundef nonnull align 8 dereferenceable(24) %i.ln, i64 24, i1 false)
  br i1 %i.lm, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lo, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6132, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6132)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.nk

bb.jx:                                            ; preds = %bb.jv
  %.sroa.5544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %.sroa.5138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5138.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5544.0..sroa_idx, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %.sroa.4137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4137.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6132, i64 24, i1 false)
  store i64 %i.ll, ptr %i.bo, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6132)
  %i.lp = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5CommaNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %i.ca)
          to label %bb.jz unwind label %.thread1030 ; 2 uses

.thread1030:                                      ; preds = %bb.ke, %bb.jx
  %lpad.thr_comm1028 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1011

bb.jy:                                            ; preds = %bb.mt
  %lpad.thr_comm.split-lp1029 = landingpad { ptr, i32 }
          cleanup
  br label %.thread999

bb.jz:                                            ; preds = %bb.jx
  br i1 %i.lp, label %bb.mb, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  br i1 %2, label %bb.ke, label %bb.kb

bb.kb:                                            ; preds = %bb.kh, %bb.kf, %bb.ka
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i64 0, ptr %i.av, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.lq, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 0, ptr %i.lr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.au, ptr noundef nonnull align 8 dereferenceable(248) %i.bo, i64 248, i1 false)
  %i.ls = invoke fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit()
          to label %bb.lw unwind label %bb.kc     ; 2 uses

bb.kc:                                            ; preds = %bb.kb
  %i.lt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %i.au) #20
          to label %.body783 unwind label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.lu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.ke:                                            ; preds = %bb.ka
  %i.lv = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token4PlusNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.kf unwind label %.thread1030

bb.kf:                                            ; preds = %bb.ke
  br i1 %i.lv, label %bb.kg, label %bb.kb

bb.kg:                                            ; preds = %bb.kf
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01095.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  %i.lw = load i64, ptr %i.bo, align 8, !range !14, !noundef !6 ; 3 uses
  %i.lx = icmp ne i64 %i.lw, 3
  call void @llvm.assume(i1 %i.lx)
  %i.ly = add nsw i64 %i.lw, -2
  %i.lz = icmp samesign ugt i64 %i.lw, 1
  %i.ma = select i1 %i.lz, i64 %i.ly, i64 1
  switch i64 %i.ma, label %bb.kh [
    i64 8, label %bb.ki
    i64 12, label %bb.kj
  ]

bb.kh:                                            ; preds = %bb.lt, %bb.kj, %bb.ki, %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01095.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %bb.kb

bb.ki:                                            ; preds = %bb.kg
  %i.mb = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %i.mc = load i32, ptr %i.mb, align 8, !range !15, !noundef !6
  %.not752 = icmp eq i32 %i.mc, 2
  br i1 %.not752, label %bb.kk, label %bb.kh

bb.kj:                                            ; preds = %bb.kg
  %i.md = getelementptr inbounds nuw i8, ptr %i.bo, i64 64 ; 3 uses
  %i.me = load i32, ptr %i.md, align 8, !range !2161, !noundef !6
  %i.mf = trunc nuw i32 %i.me to i1
  br i1 %i.mf, label %bb.kh, label %bb.km

bb.kk:                                            ; preds = %bb.ki
  %.sroa.01141.0.copyload = load i64, ptr %.sroa.5138.0..sroa_idx, align 8
  %.sroa.41142.0..sroa.5138.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01095.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.41142.0..sroa.5138.0..sroa_idx.sroa_idx, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false)
  br label %bb.kz

bb.kl:                                            ; preds = %bb.kw, %bb.kn
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %.thread1011

bb.km:                                            ; preds = %bb.kj
  %.sroa.61107.0..sroa.5138.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 48 ; 3 uses
  %.sroa.61107.0.copyload = load i64, ptr %.sroa.61107.0..sroa.5138.0..sroa_idx.sroa_idx, align 8 ; 6 uses
  %.sroa.71111.0..sroa.5138.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 56 ; 3 uses
  %.sroa.71111.0.copyload = load ptr, ptr %.sroa.71111.0..sroa.5138.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %i.mh = icmp ult i64 %.sroa.61107.0.copyload, 72057594037927936
  call void @llvm.assume(i1 %i.mh)
  %.not.i = icmp ne ptr %.sroa.71111.0.copyload, null
  %..i = zext i1 %.not.i to i64
  %i.mi = add nuw nsw i64 %.sroa.61107.0.copyload, %..i
  %4 = icmp samesign ugt i64 %i.mi, 1
  br i1 %4, label %bb.lu, label %5

5:                                                ; preds = %bb.km
  %.not.i861 = icmp eq ptr %.sroa.71111.0.copyload, null
  %6 = icmp ne i64 %.sroa.61107.0.copyload, 0
  %spec.select.i = and i1 %6, %.not.i861
  br i1 %spec.select.i, label %bb.lu, label %bb.kn

bb.kn:                                            ; preds = %5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.61125.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.61125.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.71128.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5138.0..sroa_idx, i64 16, i1 false)
  %.sroa.61107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 %.sroa.61107.0.copyload, ptr %.sroa.61107.0..sroa_idx, align 8
  %.sroa.71111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %.sroa.71111.0.copyload, ptr %.sroa.71111.0..sroa_idx, align 8
  invoke void @_RNvXs4_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12IntoIterator9into_iterB7_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bc)
          to label %bb.ko unwind label %bb.kl

bb.ko:                                            ; preds = %bb.kn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  invoke void @_RNvXsj_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_8IntoIterNtNtB7_8generics14TypeParamBoundENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %bb.kq unwind label %bb.kp

bb.kp:                                            ; preds = %bb.ks, %bb.ko
  %i.mj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %.thread1011 unwind label %bb.ec

bb.kq:                                            ; preds = %bb.ko
  %i.mk = load i64, ptr %i.be, align 8, !range !2148, !noundef !6 ; 3 uses
  %.not749 = icmp eq i64 %i.mk, -1
  br i1 %.not749, label %bb.ks, label %bb.kr, !prof !26

bb.kr:                                            ; preds = %bb.kq
  %.sroa.61125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61125.sroa.0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61125.0..sroa_idx, i64 40, i1 false)
  %.sroa.61125.sroa.5.0..sroa.61125.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %.sroa.61125.sroa.5.0.copyload = load i64, ptr %.sroa.61125.sroa.5.0..sroa.61125.0..sroa_idx.sroa_idx, align 8
  %.sroa.61125.sroa.7.0..sroa.61125.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61125.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61125.sroa.7.0..sroa.61125.0..sroa_idx.sroa_idx, i64 40, i1 false)
  %.sroa.71128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %.sroa.71128.sroa.0.0.copyload = load i32, ptr %.sroa.71128.0..sroa_idx, align 8
  %.sroa.71128.sroa.4.0..sroa.71128.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.71128.sroa.4, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.71128.sroa.4.0..sroa.71128.0..sroa_idx.sroa_idx, i64 12, i1 false)
  %.sroa.71130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  %.sroa.71130.0.copyload = load i64, ptr %.sroa.71130.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.ml = icmp sgt i64 %i.mk, -1
  br i1 %i.ml, label %bb.ku, label %bb.kv

bb.ks:                                            ; preds = %bb.kq
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24
          to label %bb.kt unwind label %bb.kp

bb.kt:                                            ; preds = %bb.qd, %bb.ks
  unreachable

bb.ku:                                            ; preds = %bb.kr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61125.sroa.7, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01095.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61125.sroa.0, i64 40, i1 false)
  br label %bb.kw

bb.kv:                                            ; preds = %bb.kr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01095.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61125.sroa.0, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61125.sroa.7, i64 40, i1 false)
  br label %bb.kw

bb.kw:                                            ; preds = %bb.ku, %bb.kv
  %.sink1209 = phi ptr [ %i.b, %bb.ku ], [ %.sroa.71128.sroa.4, %bb.kv ]
  %.sroa.81100.0 = phi i32 [ 1, %bb.ku ], [ %.sroa.71128.sroa.0.0.copyload, %bb.kv ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(12) %.sink1209, i64 12, i1 false)
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864 unwind label %bb.kl

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864: ; preds = %bb.kw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61125.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61125.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.71128.sroa.4)
  br label %bb.kz

bb.kx:                                            ; preds = %bb.la, %bb.ky
  %.pn754 = phi { ptr, i32 } [ %i.mm, %bb.ky ], [ %lpad.phi1062, %bb.la ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb) #20
          to label %.thread1011 unwind label %bb.ec

bb.ky:                                            ; preds = %bb.ln
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.kx

bb.kz:                                            ; preds = %bb.kk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864
  %.sroa.12.1 = phi i64 [ 0, %bb.kk ], [ %.sroa.71130.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864 ]
  %.sroa.81100.1 = phi i32 [ 1, %bb.kk ], [ %.sroa.81100.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864 ]
  %.sroa.7.1 = phi i64 [ -1, %bb.kk ], [ %.sroa.61125.sroa.5.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864 ]
  %.sroa.01095.sroa.0.1 = phi i64 [ %.sroa.01141.0.copyload, %bb.kk ], [ %i.mk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864 ]
  %.sroa.0506.2 = phi i1 [ false, %bb.kk ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864 ] ; 2 uses
  %.sroa.0507.2 = phi i1 [ true, %bb.kk ], [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i64 0, ptr %i.bb, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.mn, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 0, ptr %i.mo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i64 0, ptr %i.ba, align 8, !alias.scope !2162
  %.sroa.4.0..sroa_idx.i859 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i859, align 8, !alias.scope !2162
  %.sroa.5.0..sroa_idx.i860 = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i860, i8 0, i64 16, i1 false), !alias.scope !2162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i64 %.sroa.01095.sroa.0.1, ptr %i.az, align 8
  %.sroa.01095.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01095.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01095.sroa.7, i64 40, i1 false)
  %.sroa.7.0..sroa_idx1096 = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  store i64 %.sroa.7.1, ptr %.sroa.7.0..sroa_idx1096, align 8
  %.sroa.8.0..sroa_idx1099 = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx1099, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  %.sroa.81100.0..sroa_idx1101 = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  store i32 %.sroa.81100.1, ptr %.sroa.81100.0..sroa_idx1101, align 8
  %.sroa.10.0..sroa_idx1103 = getelementptr inbounds nuw i8, ptr %i.az, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.0..sroa_idx1103, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10, i64 12, i1 false)
  %.sroa.12.0..sroa_idx1104 = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  store i64 %.sroa.12.1, ptr %.sroa.12.0..sroa_idx1104, align 8
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE10push_valueB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(120) %i.az)
          to label %bb.lb unwind label %.loopexit.split-lp1059

.loopexit1058:                                    ; preds = %bb.lc, %bb.lg, %bb.li, %bb.ll
  %lpad.loopexit1060 = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

.loopexit.split-lp1059:                           ; preds = %bb.kz
  %lpad.loopexit.split-lp1061 = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

bb.la:                                            ; preds = %.loopexit.split-lp1059, %.loopexit1058
  %lpad.phi1062 = phi { ptr, i32 } [ %lpad.loopexit1060, %.loopexit1058 ], [ %lpad.loopexit.split-lp1061, %.loopexit.split-lp1059 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ba) #20
          to label %bb.kx unwind label %bb.ec

bb.lb:                                            ; preds = %bb.kz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.4579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.5580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %.sroa.6228.0..sroa_idx229 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.8230.0..sroa_idx231 = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lm, %bb.lb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB8_5token4PlusEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ay, ptr noundef nonnull align 8 %1)
          to label %bb.ld unwind label %.loopexit1058

bb.ld:                                            ; preds = %bb.lc
  %i.mq = load i64, ptr %i.ay, align 8, !range !10, !noundef !6 ; 2 uses
  %.not753 = icmp eq i64 %i.mq, -1
  %.sroa.0568.0.copyload = load i64, ptr %i.mp, align 8 ; 3 uses
  br i1 %.not753, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %.sroa.5574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.5574.0.copyload = load i64, ptr %.sroa.5574.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.mq, ptr %i.mr, align 8
  %.sroa.4576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0568.0.copyload, ptr %.sroa.4576.0..sroa_idx, align 8
  %.sroa.5577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5574.0.copyload, ptr %.sroa.5577.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ln

bb.lf:                                            ; preds = %bb.ld
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %i.ms = trunc i64 %.sroa.0568.0.copyload to i1
  br i1 %i.ms, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  %.sroa.2224.0.extract.shift = lshr i64 %.sroa.0568.0.copyload, 32
  %.sroa.2224.0.extract.trunc = trunc nuw i64 %.sroa.2224.0.extract.shift to i32
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE10push_punctB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ba, i32 noundef %.sroa.2224.0.extract.trunc)
          to label %bb.li unwind label %.loopexit1058

bb.lh:                                            ; preds = %bb.lf
  %.sroa.0208.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0208, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0208.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0208, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  store i64 14, ptr %0, align 8
  %.sroa.5206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5206.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0208, i64 56, i1 false)
  %.sroa.5206.sroa.5.0..sroa.5206.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %.sroa.5206.sroa.5.0..sroa.5206.0..sroa_idx.sroa_idx, align 8
  br label %bb.lo

bb.li:                                            ; preds = %bb.lg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6228)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  invoke void @_RNvMs5_NtNtCsgbWeKYPjk8w_3syn8generics7parsingNtB7_14TypeParamBound12parse_single(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.ax, ptr noundef nonnull align 8 %1, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.lj unwind label %.loopexit1058

bb.lj:                                            ; preds = %bb.li
  %i.mt = load i64, ptr %i.ax, align 8, !range !2148, !noundef !6 ; 2 uses
  %i.mu = icmp eq i64 %i.mt, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6228, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4579.0..sroa_idx, i64 24, i1 false)
  br i1 %i.mu, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %bb.lj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6228, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6228)
  br label %bb.ln

bb.ll:                                            ; preds = %bb.lj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8230.0..sroa_idx231, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5580.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  store i64 %i.mt, ptr %i.aw, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6228.0..sroa_idx229, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6228, i64 24, i1 false)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE10push_valueB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(120) %i.aw)
          to label %bb.lm unwind label %.loopexit1058

bb.lm:                                            ; preds = %bb.ll
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6228)
  br label %bb.lc

bb.ln:                                            ; preds = %bb.lk, %bb.le
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ba)
          to label %bb.lp unwind label %bb.ky

bb.lo:                                            ; preds = %bb.lr, %bb.lh
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01095.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %bb.ls

bb.lp:                                            ; preds = %bb.ln
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb)
          to label %bb.lr unwind label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %.thread1011

bb.lr:                                            ; preds = %bb.lp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.lo

bb.ls:                                            ; preds = %._crit_edge, %bb.mu, %bb.lo
  br i1 %i.lp, label %bb.mv, label %bb.mw

bb.lt:                                            ; preds = %bb.lu
  store i64 14, ptr %i.bo, align 8
  store i64 0, ptr %.sroa.4137.0..sroa_idx, align 8
  %.sroa.5184.sroa.0.sroa.5.0..sroa.5184.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5184.sroa.0.sroa.5.0..sroa.5184.0..sroa_idx.sroa_idx, align 8
  %.sroa.5184.sroa.0.sroa.6.0..sroa.5184.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i64 0, ptr %.sroa.5184.sroa.0.sroa.6.0..sroa.5184.0..sroa_idx.sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5138.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5184.sroa.0.sroa.7.sroa.0, i64 16, i1 false)
  store i64 %.sroa.61107.0.copyload, ptr %.sroa.61107.0..sroa.5138.0..sroa_idx.sroa_idx, align 8
  store ptr %.sroa.71111.0.copyload, ptr %.sroa.71111.0..sroa.5138.0..sroa_idx.sroa_idx, align 8
  store i32 0, ptr %i.md, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5184.sroa.0.sroa.7.sroa.0)
  br label %bb.kh

bb.lu:                                            ; preds = %bb.km, %5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5184.sroa.0.sroa.7.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5184.sroa.0.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5138.0..sroa_idx, i64 16, i1 false)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.4137.0..sroa_idx)
          to label %bb.lt unwind label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.mx = landingpad { ptr, i32 }
          cleanup
  store i64 14, ptr %i.bo, align 8
  store i64 0, ptr %.sroa.4137.0..sroa_idx, align 8
  %.sroa.5184.sroa.0.sroa.5.0..sroa.5184.0..sroa_idx185.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5184.sroa.0.sroa.5.0..sroa.5184.0..sroa_idx185.sroa_idx, align 8
  %.sroa.5184.sroa.0.sroa.6.0..sroa.5184.0..sroa_idx185.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i64 0, ptr %.sroa.5184.sroa.0.sroa.6.0..sroa.5184.0..sroa_idx185.sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5138.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5184.sroa.0.sroa.7.sroa.0, i64 16, i1 false)
  store i64 %.sroa.61107.0.copyload, ptr %.sroa.61107.0..sroa.5138.0..sroa_idx.sroa_idx, align 8
  store ptr %.sroa.71111.0.copyload, ptr %.sroa.71111.0..sroa.5138.0..sroa_idx.sroa_idx, align 8
  store i32 0, ptr %i.md, align 8
  br label %.thread1011

.body783:                                         ; preds = %bb.kc
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.av) #20
          to label %.thread999 unwind label %bb.ec

bb.lw:                                            ; preds = %bb.kb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.ls, ptr noundef nonnull align 8 dereferenceable(248) %i.au, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %.sroa.4233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4233.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  %.sroa.4233.sroa.5.0..sroa.4233.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.4233.sroa.5.0..sroa.4233.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  store i64 9, ptr %0, align 8
  %.sroa.4233.sroa.4.0..sroa.4233.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ls, ptr %.sroa.4233.sroa.4.0..sroa.4233.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ca)
          to label %bb.lx unwind label %.thread971.loopexit.split-lp

bb.lx:                                            ; preds = %bb.lw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %.invoke

bb.ly:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit877, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit889, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit843
  ret void

bb.lz:                                            ; preds = %bb.mc, %bb.ma
  %.pn760 = phi { ptr, i32 } [ %i.my, %bb.ma ], [ %lpad.phi1057, %bb.mc ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bl) #20
          to label %.thread999 unwind label %bb.ec

bb.ma:                                            ; preds = %bb.ms
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.lz

bb.mb:                                            ; preds = %bb.jz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  store i64 0, ptr %i.bl, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.mz, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 0, ptr %i.na, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  store i64 0, ptr %i.bk, align 8, !alias.scope !2163
  %.sroa.4.0..sroa_idx.i857 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i857, align 8, !alias.scope !2163
  %.sroa.5.0..sroa_idx.i858 = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i858, i8 0, i64 16, i1 false), !alias.scope !2163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.bj, ptr noundef nonnull align 8 dereferenceable(248) %i.bo, i64 248, i1 false)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_2ty4TypeNtNtB4_5token5CommaE10push_valueB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(248) %i.bj)
          to label %bb.md unwind label %.loopexit.split-lp1054

.loopexit1053:                                    ; preds = %bb.mi, %bb.ml, %bb.mn, %bb.mq
  %lpad.loopexit1055 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mc

.loopexit.split-lp1054:                           ; preds = %bb.mb, %bb.md, %bb.mg
  %lpad.loopexit.split-lp1056 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mc

bb.mc:                                            ; preds = %.loopexit.split-lp1054, %.loopexit1053
  %lpad.phi1057 = phi { ptr, i32 } [ %lpad.loopexit1055, %.loopexit1053 ], [ %lpad.loopexit.split-lp1056, %.loopexit.split-lp1054 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_2ty4TypeNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bk) #20
          to label %bb.lz unwind label %bb.ec

bb.md:                                            ; preds = %bb.mb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5CommaEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bi, ptr noundef nonnull align 8 %i.ca)
          to label %bb.me unwind label %.loopexit.split-lp1054

bb.me:                                            ; preds = %bb.md
  %i.nb = load i64, ptr %i.bi, align 8, !range !10, !noundef !6 ; 2 uses
  %.not758 = icmp eq i64 %i.nb, -1
  %i.nc = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.0545.0.copyload = load i32, ptr %i.nc, align 8 ; 2 uses
  br i1 %.not758, label %bb.mg, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %.sroa.5551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %.sroa.5554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5554.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5551.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.nb, ptr %i.nd, align 8
  %.sroa.4553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0545.0.copyload, ptr %.sroa.4553.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ms

bb.mg:                                            ; preds = %bb.me
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_2ty4TypeNtNtB4_5token5CommaE10push_punctB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bk, i32 noundef %.sroa.0545.0.copyload)
          to label %bb.mh unwind label %.loopexit.split-lp1054

bb.mh:                                            ; preds = %bb.mg
  %.val8201081 = load ptr, ptr %i.ca, align 8, !noundef !6
  %.val8211082 = load ptr, ptr %i.lf, align 8, !noundef !6
  %i.ne = icmp eq ptr %.val8201081, %.val8211082
  br i1 %i.ne, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.mh
  %.sroa.4556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.5557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %.sroa.6156.0..sroa_idx157 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.8158.0..sroa_idx159 = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.nf = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  br label %bb.mi

bb.mi:                                            ; preds = %.lr.ph, %bb.mr
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6156)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_2ty4TypeEB8_(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.bh, ptr noundef nonnull align 8 %i.ca)
          to label %bb.mj unwind label %.loopexit1053

bb.mj:                                            ; preds = %bb.mi
  %i.ng = load i64, ptr %i.bh, align 8, !range !22, !noundef !6 ; 2 uses
  %i.nh = icmp eq i64 %i.ng, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6156, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4556.0..sroa_idx, i64 24, i1 false)
  br i1 %i.nh, label %bb.mk, label %bb.ml

bb.mk:                                            ; preds = %bb.mj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ni, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6156, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6156)
  br label %bb.ms

bb.ml:                                            ; preds = %bb.mj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.8158.0..sroa_idx159, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5557.0..sroa_idx, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  store i64 %i.ng, ptr %i.bg, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6156.0..sroa_idx157, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6156, i64 24, i1 false)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_2ty4TypeNtNtB4_5token5CommaE10push_valueB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(248) %i.bg)
          to label %bb.mm unwind label %.loopexit1053

bb.mm:                                            ; preds = %bb.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6156)
  %.val818 = load ptr, ptr %i.ca, align 8, !noundef !6
  %.val819 = load ptr, ptr %i.lf, align 8, !noundef !6
  %i.nj = icmp eq ptr %.val818, %.val819
  br i1 %i.nj, label %._crit_edge, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5CommaEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bf, ptr noundef nonnull align 8 %i.ca)
          to label %bb.mo unwind label %.loopexit1053

bb.mo:                                            ; preds = %bb.mn
  %i.nk = load i64, ptr %i.bf, align 8, !range !10, !noundef !6 ; 2 uses
  %.not759 = icmp eq i64 %i.nk, -1
  %.sroa.0558.0.copyload = load i32, ptr %i.nf, align 8 ; 2 uses
  br i1 %.not759, label %bb.mq, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %.sroa.5564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %.sroa.5567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5567.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5564.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.nk, ptr %i.nl, align 8
  %.sroa.4566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0558.0.copyload, ptr %.sroa.4566.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ms

bb.mq:                                            ; preds = %bb.mo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_2ty4TypeNtNtB4_5token5CommaE10push_punctB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bk, i32 noundef %.sroa.0558.0.copyload)
          to label %bb.mr unwind label %.loopexit1053

bb.mr:                                            ; preds = %bb.mq
  %.val820 = load ptr, ptr %i.ca, align 8, !noundef !6
  %.val821 = load ptr, ptr %i.lf, align 8, !noundef !6
  %i.nm = icmp eq ptr %.val820, %.val821
end_hunk_0
