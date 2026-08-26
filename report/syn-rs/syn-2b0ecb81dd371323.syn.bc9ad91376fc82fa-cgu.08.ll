Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.08?download=true
inline.NumInlined: 547
inline.NumDeleted: 142
begin_hunk_0_@_RNvNtNtCsgbWeKYPjk8w_3syn2ty7parsing8ambig_ty:bb.a
  %lpad.thr_comm1028 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1011

bb.jy:                                            ; preds = %bb.mu
  %lpad.thr_comm.split-lp1029 = landingpad { ptr, i32 }
          cleanup
  br label %.thread999

bb.jz:                                            ; preds = %bb.jx
  br i1 %i.lp, label %bb.mc, label %bb.ka

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
          to label %bb.lx unwind label %bb.kc     ; 2 uses

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
  %i.lw = load i64, ptr %i.bo, align 8, !range !685, !noundef !5 ; 3 uses
  %i.lx = icmp ne i64 %i.lw, 3
  call void @llvm.assume(i1 %i.lx)
  %i.ly = add nsw i64 %i.lw, -2
  %i.lz = icmp samesign ugt i64 %i.lw, 1
  %i.ma = select i1 %i.lz, i64 %i.ly, i64 1
  switch i64 %i.ma, label %bb.kh [
    i64 8, label %bb.ki
    i64 12, label %bb.kj
  ]

bb.kh:                                            ; preds = %bb.lu, %bb.kj, %bb.ki, %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01095.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %bb.kb

bb.ki:                                            ; preds = %bb.kg
  %i.mb = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %i.mc = load i32, ptr %i.mb, align 8, !range !805, !noundef !5
  %.not752 = icmp eq i32 %i.mc, 2
  br i1 %.not752, label %bb.kk, label %bb.kh

bb.kj:                                            ; preds = %bb.kg
  %i.md = getelementptr inbounds nuw i8, ptr %i.bo, i64 64 ; 3 uses
  %i.me = load i32, ptr %i.md, align 8, !range !2099, !noundef !5
  %i.mf = trunc nuw i32 %i.me to i1
  br i1 %i.mf, label %bb.kh, label %bb.km

bb.kk:                                            ; preds = %bb.ki
  %.sroa.01141.0.copyload = load i64, ptr %.sroa.5138.0..sroa_idx, align 8
  %.sroa.41142.0..sroa.5138.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01095.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.41142.0..sroa.5138.0..sroa_idx.sroa_idx, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false)
  br label %bb.la

bb.kl:                                            ; preds = %bb.kx, %bb.ko
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
  %i.mj = icmp samesign ugt i64 %i.mi, 1
  br i1 %i.mj, label %bb.lv, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %.not.i861 = icmp eq ptr %.sroa.71111.0.copyload, null
  %i.mk = icmp ne i64 %.sroa.61107.0.copyload, 0
  %spec.select.i = and i1 %i.mk, %.not.i861
  br i1 %spec.select.i, label %bb.lv, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
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
          to label %bb.kp unwind label %bb.kl

bb.kp:                                            ; preds = %bb.ko
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  invoke void @_RNvXsj_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_8IntoIterNtNtB7_8generics14TypeParamBoundENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %bb.kr unwind label %bb.kq

bb.kq:                                            ; preds = %bb.kt, %bb.kp
  %i.ml = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %.thread1011 unwind label %bb.ec

bb.kr:                                            ; preds = %bb.kp
  %i.mm = load i64, ptr %i.be, align 8, !range !2047, !noundef !5 ; 3 uses
  %.not749 = icmp eq i64 %i.mm, -1
  br i1 %.not749, label %bb.kt, label %bb.ks, !prof !1901

bb.ks:                                            ; preds = %bb.kr
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
  %i.mn = icmp sgt i64 %i.mm, -1
  br i1 %i.mn, label %bb.kv, label %bb.kw

bb.kt:                                            ; preds = %bb.kr
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24
          to label %bb.ku unwind label %bb.kq

bb.ku:                                            ; preds = %bb.qe, %bb.kt
  unreachable

bb.kv:                                            ; preds = %bb.ks
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61125.sroa.7, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01095.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61125.sroa.0, i64 40, i1 false)
  br label %bb.kx

bb.kw:                                            ; preds = %bb.ks
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01095.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61125.sroa.0, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61125.sroa.7, i64 40, i1 false)
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kv, %bb.kw
  %.sink1209 = phi ptr [ %i.b, %bb.kv ], [ %.sroa.71128.sroa.4, %bb.kw ]
  %.sroa.81100.0 = phi i32 [ 1, %bb.kv ], [ %.sroa.71128.sroa.0.0.copyload, %bb.kw ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(12) %.sink1209, i64 12, i1 false)
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864 unwind label %bb.kl

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864: ; preds = %bb.kx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61125.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61125.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.71128.sroa.4)
  br label %bb.la

bb.ky:                                            ; preds = %bb.lb, %bb.kz
  %.pn754 = phi { ptr, i32 } [ %i.mo, %bb.kz ], [ %lpad.phi1062, %bb.lb ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb) #20
          to label %.thread1011 unwind label %bb.ec

bb.kz:                                            ; preds = %bb.lo
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ky

bb.la:                                            ; preds = %bb.kk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864
  %.sroa.12.1.a = phi i64 [ -1, %bb.kk ], [ %.sroa.61125.sroa.5.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864 ]
  %.sroa.81100.1 = phi i32 [ 1, %bb.kk ], [ %.sroa.81100.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864 ]
  %.sroa.7.1 = phi i64 [ 0, %bb.kk ], [ %.sroa.71130.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864 ]
  %.sroa.01095.sroa.0.1 = phi i64 [ %.sroa.01141.0.copyload, %bb.kk ], [ %i.mm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864 ]
  %.sroa.0506.2 = phi i1 [ false, %bb.kk ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864 ] ; 2 uses
  %.sroa.0507.2 = phi i1 [ true, %bb.kk ], [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i64 0, ptr %i.bb, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.mp, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 0, ptr %i.mq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i64 0, ptr %i.ba, align 8, !alias.scope !2100
  %.sroa.4.0..sroa_idx.i859 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i859, align 8, !alias.scope !2100
  %.sroa.5.0..sroa_idx.i860 = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i860, i8 0, i64 16, i1 false), !alias.scope !2100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i64 %.sroa.01095.sroa.0.1, ptr %i.az, align 8
  %.sroa.01095.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01095.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01095.sroa.7, i64 40, i1 false)
  %.sroa.7.0..sroa_idx1096 = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  store i64 %.sroa.12.1.a, ptr %.sroa.7.0..sroa_idx1096, align 8
  %.sroa.8.0..sroa_idx1099 = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx1099, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  %.sroa.81100.0..sroa_idx1101 = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  store i32 %.sroa.81100.1, ptr %.sroa.81100.0..sroa_idx1101, align 8
  %.sroa.10.0..sroa_idx1103 = getelementptr inbounds nuw i8, ptr %i.az, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.0..sroa_idx1103, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10, i64 12, i1 false)
  %.sroa.12.0..sroa_idx1104 = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  store i64 %.sroa.7.1, ptr %.sroa.12.0..sroa_idx1104, align 8
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE10push_valueB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(120) %i.az)
          to label %bb.lc unwind label %.loopexit.split-lp1059

.loopexit1058:                                    ; preds = %bb.ld, %bb.lh, %bb.lj, %bb.lm
  %lpad.loopexit1060 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

.loopexit.split-lp1059:                           ; preds = %bb.la
  %lpad.loopexit.split-lp1061 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

bb.lb:                                            ; preds = %.loopexit.split-lp1059, %.loopexit1058
  %lpad.phi1062 = phi { ptr, i32 } [ %lpad.loopexit1060, %.loopexit1058 ], [ %lpad.loopexit.split-lp1061, %.loopexit.split-lp1059 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ba) #20
          to label %bb.ky unwind label %bb.ec

bb.lc:                                            ; preds = %bb.la
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.4579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.5580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %.sroa.6228.0..sroa_idx229 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.8230.0..sroa_idx231 = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  br label %bb.ld

bb.ld:                                            ; preds = %bb.ln, %bb.lc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB8_5token4PlusEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ay, ptr noundef nonnull align 8 %1)
          to label %bb.le unwind label %.loopexit1058

bb.le:                                            ; preds = %bb.ld
  %i.ms = load i64, ptr %i.ay, align 8, !range !60, !noundef !5 ; 2 uses
  %.not753 = icmp eq i64 %i.ms, -1
  %.sroa.0568.0.copyload = load i64, ptr %i.mr, align 8 ; 3 uses
  br i1 %.not753, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %.sroa.5574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.5574.0.copyload = load i64, ptr %.sroa.5574.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ms, ptr %i.mt, align 8
  %.sroa.4576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0568.0.copyload, ptr %.sroa.4576.0..sroa_idx, align 8
  %.sroa.5577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5574.0.copyload, ptr %.sroa.5577.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.lo

bb.lg:                                            ; preds = %bb.le
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %i.mu = trunc i64 %.sroa.0568.0.copyload to i1
  br i1 %i.mu, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %bb.lg
  %.sroa.2224.0.extract.shift = lshr i64 %.sroa.0568.0.copyload, 32
  %.sroa.2224.0.extract.trunc = trunc nuw i64 %.sroa.2224.0.extract.shift to i32
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE10push_punctB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ba, i32 noundef %.sroa.2224.0.extract.trunc)
          to label %bb.lj unwind label %.loopexit1058

bb.li:                                            ; preds = %bb.lg
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
  br label %bb.lp

bb.lj:                                            ; preds = %bb.lh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6228)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  invoke void @_RNvMs5_NtNtCsgbWeKYPjk8w_3syn8generics7parsingNtB7_14TypeParamBound12parse_single(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.ax, ptr noundef nonnull align 8 %1, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.lk unwind label %.loopexit1058

bb.lk:                                            ; preds = %bb.lj
  %i.mv = load i64, ptr %i.ax, align 8, !range !2047, !noundef !5 ; 2 uses
  %i.mw = icmp eq i64 %i.mv, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6228, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4579.0..sroa_idx, i64 24, i1 false)
  br i1 %i.mw, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6228, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6228)
  br label %bb.lo

bb.lm:                                            ; preds = %bb.lk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8230.0..sroa_idx231, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5580.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  store i64 %i.mv, ptr %i.aw, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6228.0..sroa_idx229, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6228, i64 24, i1 false)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE10push_valueB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(120) %i.aw)
          to label %bb.ln unwind label %.loopexit1058

bb.ln:                                            ; preds = %bb.lm
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6228)
  br label %bb.ld

bb.lo:                                            ; preds = %bb.ll, %bb.lf
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ba)
          to label %bb.lq unwind label %bb.kz

bb.lp:                                            ; preds = %bb.ls, %bb.li
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01095.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %bb.lt

bb.lq:                                            ; preds = %bb.lo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb)
          to label %bb.ls unwind label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %.thread1011

bb.ls:                                            ; preds = %bb.lq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.lp

bb.lt:                                            ; preds = %._crit_edge, %bb.mv, %bb.lp
  br i1 %i.lp, label %bb.mw, label %bb.mx

bb.lu:                                            ; preds = %bb.lv
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

bb.lv:                                            ; preds = %bb.km, %bb.kn
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5184.sroa.0.sroa.7.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5184.sroa.0.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5138.0..sroa_idx, i64 16, i1 false)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.4137.0..sroa_idx)
          to label %bb.lu unwind label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.mz = landingpad { ptr, i32 }
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

bb.lx:                                            ; preds = %bb.kb
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
          to label %bb.ly unwind label %.thread971.loopexit.split-lp

bb.ly:                                            ; preds = %bb.lx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %.invoke

bb.lz:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit877, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit889, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit843
  ret void

bb.ma:                                            ; preds = %bb.md, %bb.mb
  %.pn760 = phi { ptr, i32 } [ %i.na, %bb.mb ], [ %lpad.phi1057, %bb.md ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bl) #20
          to label %.thread999 unwind label %bb.ec

end_hunk_0
