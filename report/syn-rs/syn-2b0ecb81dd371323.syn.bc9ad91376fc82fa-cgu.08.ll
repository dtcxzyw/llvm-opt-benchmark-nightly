Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.08?download=true
inline.NumInlined: 547
inline.NumDeleted: 142
begin_hunk_0_@_RNvNtNtCsgbWeKYPjk8w_3syn2ty7parsing8ambig_ty:bb.a
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.p) #20
          to label %bb.eo unwind label %bb.ea

bb.eh:                                            ; preds = %bb.ef
  %i.gw = load i64, ptr %i.m, align 8, !range !20, !noundef !5 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, -1
  %i.gy = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6463, ptr noundef nonnull align 8 dereferenceable(24) %i.gy, i64 24, i1 false)
  br i1 %i.gx, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gz, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6463, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.p)
          to label %bb.em unwind label %bb.el

bb.ej:                                            ; preds = %bb.eh
  %.sroa.5691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.6443.sroa.0.sroa.8.0..sroa.6443.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.6443.sroa.0.sroa.8.0..sroa.6443.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5691.0..sroa_idx, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.sroa.6443.sroa.0.sroa.7.0..sroa.6443.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6443.sroa.0.sroa.7.0..sroa.6443.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6463, i64 24, i1 false)
  %.sroa.6443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6443.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %.sroa.6443.sroa.7.0..sroa.6443.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6443.sroa.7.0..sroa.6443.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 2, ptr %0, align 8
  %.sroa.6443.sroa.0.sroa.6.0..sroa.6443.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.gw, ptr %.sroa.6443.sroa.0.sroa.6.0..sroa.6443.0..sroa_idx.sroa_idx, align 8
  %.sroa.6443.sroa.6.0..sroa.6443.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.gn, ptr %.sroa.6443.sroa.6.0..sroa.6443.0..sroa_idx.sroa_idx, align 8
  %.sroa.6443.sroa.8.0..sroa.6443.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 %.sroa.0679.0.copyload, ptr %.sroa.6443.sroa.8.0..sroa.6443.0..sroa_idx.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6463)
  br label %bb.dz

bb.ek:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %.invoke

bb.el:                                            ; preds = %bb.ei
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #20
          to label %.thread976 unwind label %bb.ea

bb.em:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q)
          to label %bb.en unwind label %.thread991

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6463)
  br label %bb.es

bb.eo:                                            ; preds = %bb.ep, %bb.eg
  %.pn730 = phi { ptr, i32 } [ %i.hb, %bb.ep ], [ %i.gv, %bb.eg ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #20
          to label %.thread976 unwind label %bb.ea

bb.ep:                                            ; preds = %bb.ee
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.eq:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q)
          to label %bb.er unwind label %.thread991

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.es

bb.es:                                            ; preds = %bb.en, %bb.er, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.u)
          to label %bb.eu unwind label %.thread971.loopexit.split-lp

bb.et:                                            ; preds = %bb.dq
  %lpad.thr_comm.split-lp990 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.s) #20
          to label %.thread976 unwind label %bb.ea

bb.eu:                                            ; preds = %bb.es, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.jd

.thread976:                                       ; preds = %.body789, %.body786, %bb.el, %bb.eo, %.thread991, %bb.et
  %.pn732.pn979 = phi { ptr, i32 } [ %.pn730, %bb.eo ], [ %lpad.thr_comm.split-lp990, %bb.et ], [ %lpad.thr_comm989, %.thread991 ], [ %i.gj, %.body789 ], [ %.pn, %.body786 ], [ %i.ha, %bb.el ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.u) #20
          to label %.thread966 unwind label %bb.ea

bb.ev:                                            ; preds = %bb.bn
  %.val795 = load ptr, ptr %1, align 8, !noundef !5
  %.val796 = load ptr, ptr %i.cp, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token3DynEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noundef nonnull align 8 %1)
          to label %bb.ew unwind label %.thread971.loopexit.split-lp

bb.ew:                                            ; preds = %bb.ev
  %i.hc = load i64, ptr %i.z, align 8, !range !9, !noundef !5 ; 2 uses
  %.not735 = icmp eq i64 %i.hc, -1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.he = load i32, ptr %i.hd, align 8            ; 2 uses
  br i1 %.not735, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %.sroa.5660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.sroa.5663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5663.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5660.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hc, ptr %i.hf, align 8
  %.sroa.4662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.he, ptr %.sroa.4662.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.jd

bb.ey:                                            ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB8_5token4StarEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noundef nonnull align 8 %1)
          to label %bb.ez unwind label %.thread971.loopexit.split-lp

bb.ez:                                            ; preds = %bb.ey
  %i.hg = load i64, ptr %i.y, align 8, !range !9, !noundef !5 ; 2 uses
  %.not736 = icmp eq i64 %i.hg, -1
  %i.hh = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.0664.0.copyload = load i64, ptr %i.hh, align 8 ; 2 uses
  br i1 %.not736, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %.sroa.5670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.5670.0.copyload = load i64, ptr %.sroa.5670.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hg, ptr %i.hi, align 8
  %.sroa.4672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0664.0.copyload, ptr %.sroa.4672.0..sroa_idx, align 8
  %.sroa.5673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5670.0.copyload, ptr %.sroa.5673.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.jd

bb.fb:                                            ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6409)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvMsd_NtNtCsgbWeKYPjk8w_3syn2ty7parsingNtB7_15TypeTraitObject12parse_bounds(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.w, ptr noundef %.val795, ptr noundef %.val796, ptr noundef nonnull align 8 %1, i1 noundef zeroext %2)
          to label %bb.fc unwind label %.thread971.loopexit.split-lp

bb.fc:                                            ; preds = %bb.fb
  %i.hj = load i64, ptr %i.w, align 8, !range !9, !noundef !5 ; 3 uses
  %i.hk = icmp eq i64 %i.hj, -1
  %i.hl = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6409, ptr noundef nonnull align 8 dereferenceable(24) %i.hl, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br i1 %i.hk, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6409, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6409)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.jd

bb.fe:                                            ; preds = %bb.fc
  %.sroa.4412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4412.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6409, i64 24, i1 false)
  store i64 %i.hj, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6409)
  %i.hn = and i64 %.sroa.0664.0.copyload, 4294967295
  %i.ho = icmp eq i64 %i.hn, 1
  br i1 %i.ho, label %bb.fi, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  store i64 14, ptr %0, align 8
  %.sroa.7415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.7415.0..sroa_idx, align 8
  %.sroa.7415.sroa.0.sroa.7.0..sroa.7415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7415.sroa.0.sroa.7.0..sroa.7415.0..sroa_idx.sroa_idx, align 8
  %.sroa.7415.sroa.0.sroa.8.0..sroa.7415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.7415.sroa.0.sroa.8.0..sroa.7415.0..sroa_idx.sroa_idx, align 8
  %.sroa.7415.sroa.0.sroa.9.0..sroa.7415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.hj, ptr %.sroa.7415.sroa.0.sroa.9.0..sroa.7415.0..sroa_idx.sroa_idx, align 8
  %.sroa.7415.sroa.0.sroa.9.sroa.7.0..sroa.7415.sroa.0.sroa.9.0..sroa.7415.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7415.sroa.0.sroa.9.sroa.7.0..sroa.7415.sroa.0.sroa.9.0..sroa.7415.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4412.0..sroa_idx, i64 24, i1 false)
  %.sroa.7415.sroa.7.0..sroa.7415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %.sroa.7415.sroa.7.0..sroa.7415.0..sroa_idx.sroa_idx, align 8
  %.sroa.7415.sroa.8.0..sroa.7415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.he, ptr %.sroa.7415.sroa.8.0..sroa.7415.0..sroa_idx.sroa_idx, align 4
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fj, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %.invoke

bb.fh:                                            ; preds = %bb.fi
  %i.hp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.x) #20
          to label %.thread966 unwind label %bb.ea

bb.fi:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %.val793 = load ptr, ptr %1, align 8, !noundef !5
  %.val794 = load ptr, ptr %i.cp, align 8, !noundef !5
  invoke void @_RNvNtCsgbWeKYPjk8w_3syn8verbatim7between(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.v, ptr noundef %.val797, ptr noundef %.val798, ptr noundef %.val793, ptr noundef %.val794)
          to label %bb.fj unwind label %bb.fh

bb.fj:                                            ; preds = %bb.fi
  %.sroa.7415.sroa.0.sroa.0.0.copyload428 = load i64, ptr %i.v, align 8
  %.sroa.7415.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.7415.sroa.0.sroa.7.0.copyload430 = load ptr, ptr %.sroa.7415.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.7415.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.7415.0..sroa_idx416 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.7415.sroa.0.sroa.7.0..sroa.7415.0..sroa_idx416.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.7415.sroa.0.sroa.8.0..sroa.7415.0..sroa_idx416.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hq = load <2 x i64>, ptr %.sroa.7415.sroa.0.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 16, ptr %0, align 8
  store i64 %.sroa.7415.sroa.0.sroa.0.0.copyload428, ptr %.sroa.7415.0..sroa_idx416, align 8
  store ptr %.sroa.7415.sroa.0.sroa.7.0.copyload430, ptr %.sroa.7415.sroa.0.sroa.7.0..sroa.7415.0..sroa_idx416.sroa_idx, align 8
  store <2 x i64> %i.hq, ptr %.sroa.7415.sroa.0.sroa.8.0..sroa.7415.0..sroa_idx416.sroa_idx, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.x)
          to label %bb.fg unwind label %.thread971.loopexit.split-lp

bb.fk:                                            ; preds = %bb.bc
  %i.hr = load i64, ptr %i.ah, align 8, !range !9, !noundef !5 ; 2 uses
  %i.hs = icmp eq i64 %i.hr, -1
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6307, ptr noundef nonnull align 8 dereferenceable(24) %i.ht, i64 24, i1 false)
  br i1 %i.hs, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hu, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6307, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6307)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.jd

bb.fm:                                            ; preds = %bb.fk
  %.sroa.5628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.5313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5313.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5628.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %.sroa.4312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4312.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6307, i64 24, i1 false)
  store i64 %i.hr, ptr %i.ai, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6307)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ai, i64 72 ; 4 uses
  %i.hw = load i32, ptr %i.hv, align 8, !range !14, !noundef !5
  %.not737 = icmp eq i32 %i.hw, 2
  br i1 %.not737, label %bb.fn, label %.thread994

bb.fn:                                            ; preds = %bb.fm
  %i.hx = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token3NotNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.fq unwind label %bb.fp

.thread994:                                       ; preds = %bb.fm
  %.sroa.4315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4315.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.ai, i64 104, i1 false)
  store i64 10, ptr %0, align 8
  br label %bb.hq

bb.fo:                                            ; preds = %.loopexit.split-lp1067.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fp
  %.sroa.0484.0 = phi i1 [ %.sroa.0484.1, %bb.fp ], [ false, %.loopexit.split-lp1067.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn741 = phi { ptr, i32 } [ %i.hy, %bb.fp ], [ %lpad.loopexit.split-lp1261, %.loopexit.split-lp1067.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai) #20
          to label %bb.hn unwind label %bb.ea

bb.fp:                                            ; preds = %bb.hg, %bb.gg, %bb.fz, %bb.fw, %bb.fu, %bb.fs, %bb.fn
  %.sroa.0484.1 = phi i1 [ false, %bb.hg ], [ true, %bb.fn ], [ true, %bb.gg ], [ true, %bb.fz ], [ true, %bb.fw ], [ true, %bb.fu ], [ true, %bb.fs ]
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fq:                                            ; preds = %bb.fn
  br i1 %i.hx, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fv, %bb.ft, %bb.fq
  %i.hz = load i64, ptr %i.cf, align 8, !range !9, !noundef !5
  %.not739 = icmp eq i64 %i.hz, -1
  br i1 %.not739, label %bb.ge, label %bb.gi

bb.fs:                                            ; preds = %bb.fq
  %i.ia = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token2NeNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.ft unwind label %bb.fp

bb.ft:                                            ; preds = %bb.fs
  br i1 %i.ia, label %bb.fr, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %i.ic = invoke noundef zeroext i1 @_RNvMs5_NtNtCsgbWeKYPjk8w_3syn4path7parsingNtB7_4Path12is_mod_style(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ib)
          to label %bb.fv unwind label %bb.fp

bb.fv:                                            ; preds = %bb.fu
  br i1 %i.ic, label %bb.fw, label %bb.fr

bb.fw:                                            ; preds = %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token3NotEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noundef nonnull align 8 %1)
          to label %bb.fx unwind label %bb.fp

bb.fx:                                            ; preds = %bb.fw
  %i.id = load i64, ptr %i.ag, align 8, !range !9, !noundef !5 ; 2 uses
  %.not738 = icmp eq i64 %i.id, -1
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.0629.0.copyload = load i32, ptr %i.ie, align 8 ; 2 uses
  br i1 %.not738, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %.sroa.5635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %.sroa.5638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5638.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5635.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.id, ptr %i.if, align 8
  %.sroa.4637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0629.0.copyload, ptr %.sroa.4637.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.gd

bb.fz:                                            ; preds = %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7331)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RNvNtCsgbWeKYPjk8w_3syn3mac15parse_delimiter(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.af, ptr noundef nonnull align 8 %1)
          to label %bb.ga unwind label %bb.fp

bb.ga:                                            ; preds = %bb.fz
  %i.ig = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ih = load i64, ptr %i.ig, align 8, !range !2138, !noundef !5 ; 2 uses
  %i.ii = icmp eq i64 %i.ih, -2
  br i1 %i.ii, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.ij = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7331, ptr noundef nonnull align 8 dereferenceable(24) %i.ij, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ik, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7331, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7331)
  br label %bb.gd

bb.gc:                                            ; preds = %bb.ga
  %.sroa.4333.sroa.6.sroa.0.sroa.6.0..sroa.4333.sroa.6.0..sroa.4333.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4333.sroa.6.sroa.0.sroa.6.0..sroa.4333.sroa.6.0..sroa.4333.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false)
  %.sroa.5641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7331, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5641.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %.sroa.4333.sroa.6.sroa.0.sroa.5.0..sroa.4333.sroa.6.0..sroa.4333.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4333.sroa.6.sroa.0.sroa.5.0..sroa.4333.sroa.6.0..sroa.4333.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7331, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7331)
  %.sroa.4333.sroa.6.0..sroa.4333.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4333.sroa.6.0..sroa.4333.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.ib, i64 48, i1 false)
  store i64 7, ptr %0, align 8
  %.sroa.4333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4333.0..sroa_idx, align 8
  %.sroa.4333.sroa.4.0..sroa.4333.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4333.sroa.4.0..sroa.4333.0..sroa_idx.sroa_idx, align 8
  %.sroa.4333.sroa.5.0..sroa.4333.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.4333.sroa.5.0..sroa.4333.0..sroa_idx.sroa_idx, align 8
  %.sroa.4333.sroa.6.sroa.0.sroa.4.0..sroa.4333.sroa.6.0..sroa.4333.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ih, ptr %.sroa.4333.sroa.6.sroa.0.sroa.4.0..sroa.4333.sroa.6.0..sroa.4333.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4333.sroa.6.sroa.4.0..sroa.4333.sroa.6.0..sroa.4333.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %.sroa.0629.0.copyload, ptr %.sroa.4333.sroa.6.sroa.4.0..sroa.4333.sroa.6.0..sroa.4333.0..sroa_idx.sroa_idx.sroa_idx, align 8
  br label %bb.gd

bb.gd:                                            ; preds = %bb.fy, %bb.gb, %bb.gc, %bb.hb
  %.sroa.0480.7 = phi i8 [ 0, %bb.hb ], [ 1, %bb.fy ], [ 1, %bb.gb ], [ 1, %bb.gc ] ; 5 uses
  %.sroa.0484.2 = phi i1 [ false, %bb.hb ], [ true, %bb.fy ], [ true, %bb.gb ], [ false, %bb.gc ] ; 2 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai)
          to label %bb.hi unwind label %bb.hh

bb.ge:                                            ; preds = %bb.fr
  br i1 %2, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.gh, %bb.ge
  %.sroa.4381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4381.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.ai, i64 104, i1 false)
  store i64 10, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %.invoke

bb.gg:                                            ; preds = %bb.ge
  %i.il = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token4PlusNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
end_hunk_0
begin_hunk_1_@_RNvNtNtCsgbWeKYPjk8w_3syn2ty7parsing8ambig_ty:bb.a

bb.qi:                                            ; preds = %bb.qh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.449.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  store i64 -1, ptr %0, align 8
  br label %bb.ql

bb.qj:                                            ; preds = %bb.qh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.449.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.ci, i64 104, i1 false)
  store i64 10, ptr %0, align 8
  br label %bb.qk

bb.qk:                                            ; preds = %bb.ql, %bb.qj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  br label %bb.qm

bb.ql:                                            ; preds = %bb.qi, %bb.qd
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty8TypePathEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.ci)
          to label %bb.qk unwind label %bb.pf

bb.qm:                                            ; preds = %bb.qy, %bb.qk
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %bb.qp unwind label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %i.rl = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %i.co, align 8, !alias.scope !2179 ; 2 uses
  %i.rm = icmp eq i64 %.val2.i, 0
  br i1 %i.rm, label %bb.rs, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  %.val3.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2180, !nonnull !5, !noundef !5
  %i.rn = mul nuw i64 %.val2.i, 248
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.rn, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !2181
  br label %bb.rs

bb.qp:                                            ; preds = %bb.qm
  %.val.i = load i64, ptr %i.co, align 8, !alias.scope !2179 ; 2 uses
  %i.ro = icmp eq i64 %.val.i, 0
  br i1 %i.ro, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  %.val1.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2180, !nonnull !5, !noundef !5
  %i.rp = mul nuw i64 %.val.i, 248
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.rp, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !2182
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit

bb.qr:                                            ; preds = %bb.pu, %bb.qf
  %.pn773.ph = phi { ptr, i32 } [ %i.rj, %bb.qf ], [ %i.qy, %bb.pu ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty8TypePathEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.ci) #20
          to label %bb.pe unwind label %bb.ea

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit889: ; preds = %bb.ro, %bb.rn, %bb.qz, %bb.pp, %bb.pc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %bb.lt

bb.qs:                                            ; preds = %bb.pk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.cm, ptr noundef nonnull align 8 dereferenceable(104) %i.rq, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  %i.rr = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  invoke void @_RNvMs5_NtNtCsgbWeKYPjk8w_3syn4path7parsingNtB7_4Path10parse_rest(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cl, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.rr, i1 noundef zeroext false)
          to label %bb.qv unwind label %bb.qu

bb.qt:                                            ; preds = %bb.pk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  store i64 0, ptr %i.ck, align 8
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.rs, align 8
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store i64 0, ptr %i.rt, align 8
  %i.ru = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !5
  %i.rv = invoke noundef i32 @_RINvNtCsgbWeKYPjk8w_3syn5token2LtNtCs6et67aoV1xO_11proc_macro24SpanEB4_(i32 noundef %i.ru)
          to label %bb.re unwind label %bb.rd

bb.qu:                                            ; preds = %bb.qs
  %i.rw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty8TypePathEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.cm) #20
          to label %bb.pe unwind label %bb.ea

bb.qv:                                            ; preds = %bb.qs
  %i.rx = load i64, ptr %i.cl, align 8, !range !9, !noundef !5
  %.not778 = icmp eq i64 %i.rx, -1
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not778, label %bb.qx, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty8TypePathEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.cm)
          to label %bb.qy unwind label %bb.pf

bb.qx:                                            ; preds = %bb.qv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.cm, i64 104, i1 false)
  store i64 10, ptr %0, align 8
  br label %bb.qy

bb.qy:                                            ; preds = %bb.qx, %bb.qw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.qm

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit: ; preds = %bb.qq, %bb.qp
  %i.ry = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 3 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.sa = load i64, ptr %i.rz, align 8, !range !13, !noundef !5 ; 2 uses
  %i.sb = icmp ne i64 %i.sa, 3
  call void @llvm.assume(i1 %i.sb)
  %i.sc = icmp eq i64 %i.sa, 10
  br i1 %i.sc, label %bb.qz, label %bb.ra

bb.qz:                                            ; preds = %._crit_edge1167, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit
  %i.sd = phi ptr [ %.pre1168, %._crit_edge1167 ], [ %i.rz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sd, i64 noundef 248, i64 noundef 8) #19
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit889

bb.ra:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.rz)
          to label %._crit_edge1167 unwind label %bb.rb

._crit_edge1167:                                  ; preds = %bb.ra
  %.pre1168 = load ptr, ptr %i.ry, align 8
  br label %bb.qz

bb.rb:                                            ; preds = %bb.ra
  %i.se = landingpad { ptr, i32 }
          cleanup
  %.val801 = load ptr, ptr %i.ry, align 8, !nonnull !5, !noundef !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val801, i64 noundef 248, i64 noundef 8) #19
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit879

bb.rc:                                            ; preds = %bb.rg, %bb.rd
  %.sroa.0508.3 = phi i8 [ 0, %bb.rg ], [ 1, %bb.rd ] ; 2 uses
  %.pn776 = phi { ptr, i32 } [ %i.sj, %bb.rg ], [ %i.sf, %bb.rd ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ck) #20
          to label %bb.pe unwind label %bb.ea

bb.rd:                                            ; preds = %bb.re, %bb.qt
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %bb.rc

bb.re:                                            ; preds = %bb.qt
  %i.sg = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !5
  %i.sh = invoke noundef i32 @_RINvNtCsgbWeKYPjk8w_3syn5token2GtNtCs6et67aoV1xO_11proc_macro24SpanEB4_(i32 noundef %i.sg)
          to label %bb.rf unwind label %bb.rd

bb.rf:                                            ; preds = %bb.re
  %i.si = load ptr, ptr %i.qh, align 8, !nonnull !5, !align !4, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.522)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  invoke void @_RNvMs5_NtNtCsgbWeKYPjk8w_3syn4path7parsingNtB7_4Path12parse_helper(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.cj, ptr noundef nonnull align 8 %1, i1 noundef zeroext false)
          to label %bb.rh unwind label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.sj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_(i32 0, ptr nonnull %i.si) #20
          to label %bb.rc unwind label %bb.ea

bb.rh:                                            ; preds = %bb.rf
  %i.sk = load i64, ptr %i.cj, align 8, !range !9, !noundef !5 ; 2 uses
  %i.sl = icmp eq i64 %i.sk, -1
  %i.sm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.522, ptr noundef nonnull align 8 dereferenceable(24) %i.sm, i64 24, i1 false)
  br i1 %i.sl, label %bb.ri, label %bb.rj

bb.ri:                                            ; preds = %bb.rh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sn, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.522, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_(i32 0, ptr nonnull %i.si)
          to label %bb.rq unwind label %bb.rp

bb.rj:                                            ; preds = %bb.rh
  %.sroa.5514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %.sroa.511.sroa.7.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.511.sroa.7.0..sroa.511.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5514.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.522, i64 24, i1 false)
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.511.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  store i64 10, ptr %0, align 8
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.sk, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  %.sroa.511.sroa.8.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %.sroa.511.sroa.8.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  %.sroa.511.sroa.8.sroa.6.0..sroa.511.sroa.8.0..sroa.511.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.si, ptr %.sroa.511.sroa.8.sroa.6.0..sroa.511.sroa.8.0..sroa.511.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.511.sroa.8.sroa.7.0..sroa.511.sroa.8.0..sroa.511.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %.sroa.511.sroa.8.sroa.7.0..sroa.511.sroa.8.0..sroa.511.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.511.sroa.8.sroa.8.0..sroa.511.sroa.8.0..sroa.511.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.rv, ptr %.sroa.511.sroa.8.sroa.8.0..sroa.511.sroa.8.0..sroa.511.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.511.sroa.8.sroa.9.0..sroa.511.sroa.8.0..sroa.511.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.sh, ptr %.sroa.511.sroa.8.sroa.9.0..sroa.511.sroa.8.0..sroa.511.0..sroa_idx.sroa_idx.sroa_idx, align 4
  br label %bb.rk

bb.rk:                                            ; preds = %bb.rr, %bb.rj
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.522)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %bb.rn unwind label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  %i.so = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i882 = load i64, ptr %i.co, align 8, !alias.scope !2183 ; 2 uses
  %i.sp = icmp eq i64 %.val2.i882, 0
  br i1 %i.sp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit879, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  %.val3.i883 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2184, !nonnull !5, !noundef !5
  %i.sq = mul nuw i64 %.val2.i882, 248
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i883, i64 noundef %i.sq, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !2185
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit879

bb.rn:                                            ; preds = %bb.rk
  %.val.i885 = load i64, ptr %i.co, align 8, !alias.scope !2183 ; 2 uses
  %i.sr = icmp eq i64 %.val.i885, 0
  br i1 %i.sr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit889, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  %.val1.i886 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2184, !nonnull !5, !noundef !5
  %i.ss = mul nuw i64 %.val.i885, 248
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i886, i64 noundef %i.ss, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !2186
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit889

bb.rp:                                            ; preds = %bb.ri
  %i.st = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ck) #20
          to label %bb.pe unwind label %bb.ea

bb.rq:                                            ; preds = %bb.ri
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ck)
          to label %bb.rr unwind label %bb.pf

bb.rr:                                            ; preds = %bb.rq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  br label %bb.rk

bb.rs:                                            ; preds = %bb.qn, %bb.qo
  %i.su = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 2 uses
  %i.sv = load ptr, ptr %i.su, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.sw = load i64, ptr %i.sv, align 8, !range !13, !noundef !5 ; 2 uses
  %i.sx = icmp ne i64 %i.sw, 3
  call void @llvm.assume(i1 %i.sx)
  %i.sy = icmp eq i64 %i.sw, 10
  br i1 %i.sy, label %bb.rt, label %bb.ru

bb.rt:                                            ; preds = %._crit_edge1165, %bb.rs
  %.val800 = phi ptr [ %.val800.pre, %._crit_edge1165 ], [ %i.sv, %bb.rs ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val800, i64 noundef 248, i64 noundef 8) #19
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit879

bb.ru:                                            ; preds = %bb.rs
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.sv) #20
          to label %._crit_edge1165 unwind label %bb.ea

._crit_edge1165:                                  ; preds = %bb.ru
  %.val800.pre = load ptr, ptr %i.su, align 8
  br label %bb.rt

bb.rv:                                            ; preds = %bb.pe
  %i.sz = trunc nuw i8 %.sroa.0500.0 to i1
  br i1 %i.sz, label %bb.rw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit879

bb.rw:                                            ; preds = %bb.rv
  %i.ta = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 2 uses
  %i.tb = load ptr, ptr %i.ta, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.tc = load i64, ptr %i.tb, align 8, !range !13, !noundef !5 ; 2 uses
  %i.td = icmp ne i64 %i.tc, 3
  call void @llvm.assume(i1 %i.td)
  %i.te = icmp eq i64 %i.tc, 10
  br i1 %i.te, label %bb.ry, label %bb.rz

bb.rx:                                            ; preds = %bb.sa, %bb.rz, %bb.ry
  %.val799 = load ptr, ptr %i.ta, align 8, !nonnull !5, !noundef !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val799, i64 noundef 248, i64 noundef 8) #19
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit879

bb.ry:                                            ; preds = %bb.rw
  %i.tf = trunc nuw i8 %.sroa.0508.0 to i1
  br i1 %i.tf, label %bb.sa, label %bb.rx

bb.rz:                                            ; preds = %bb.rw
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.tb) #20
          to label %bb.rx unwind label %bb.ea

bb.sa:                                            ; preds = %bb.ry
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty8TypePathEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.tg) #20
          to label %bb.rx unwind label %bb.ea
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBP_6client11TokenStreamNtB1A_4SpanNtNtBP_6symbol6SymbolEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsgbWeKYPjk8w_3syn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val, 20
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #19
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsgbWeKYPjk8w_3syn.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsgbWeKYPjk8w_3syn.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCs3b5wA5ywLsd_10proc_macro9TokenTreeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsgbWeKYPjk8w_3syn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val, 20
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #19
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsgbWeKYPjk8w_3syn.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsgbWeKYPjk8w_3syn.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsgbWeKYPjk8w_3syn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #19
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsgbWeKYPjk8w_3syn.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsgbWeKYPjk8w_3syn.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsgbWeKYPjk8w_3syn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val, 248
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #19
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsgbWeKYPjk8w_3syn.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsgbWeKYPjk8w_3syn.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4data5FieldENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsgbWeKYPjk8w_3syn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = shl nuw i64 %.val, 9
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #19
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsgbWeKYPjk8w_3syn.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsgbWeKYPjk8w_3syn.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsgbWeKYPjk8w_3syn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val, 40
end_hunk_1
