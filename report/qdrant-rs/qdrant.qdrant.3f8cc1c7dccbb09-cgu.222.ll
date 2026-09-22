Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.222?download=true
inline.NumInlined: 686
inline.NumDeleted: 356
begin_hunk_0_@_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferred:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %.sroa.0750.0.copyload = load i64, ptr %i.ad, align 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4113.0..sroa_idx, align 8
  %.sroa.5752.0.copyload = load i64, ptr %.sroa.5114.0..sroa_idx, align 8
  %i.cu = trunc nuw i32 %i.au to i1
  br i1 %i.cu, label %switch.lookup, label %bb.x

switch.lookup:                                    ; preds = %bb.w
  %switch.i = icmp ult i32 %i.aw, 3
  %i.cv = add nsw i32 %i.aw, 1
  %switch.tableidx = select i1 %switch.i, i32 %i.cv, i32 0
  %i.cw = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferred, i64 %i.cw
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %bb.x

bb.x:                                             ; preds = %switch.lookup, %bb.w
  %.sroa.14.sroa.0.1 = phi i64 [ %switch.load, %switch.lookup ], [ -9223372036854775806, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.q

bb.y:                                             ; preds = %bb.ce, %bb.by, %bb.br, %bb.be, %bb.ap, %bb.al, %bb.ab, %bb.aa
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.z:                                             ; preds = %bb.s, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.cc

bb.aa:                                            ; preds = %bb.t
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11VectorInputEECsl8OoimOLbh_6qdrant.exit unwind label %bb.y

bb.ab:                                            ; preds = %bb.f
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11VectorInputEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11VectorInputEECsl8OoimOLbh_6qdrant.exit unwind label %bb.y

bb.ac:                                            ; preds = %bb.g
  %.sroa.4651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.4651.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.614.sroa.5.0..sroa.614.0..sroa_idx.sroa_idx, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.ak, ptr %i.c, align 8
  invoke void @_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc34convert_vector_input_with_inferred(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
          to label %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferreds2_0B9_.exit unwind label %bb.ap

bb.ad:                                            ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8209)
  %i.da = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newReECsl8OoimOLbh_6qdrant(i8 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 31)
          to label %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferreds3_0B9_.exit unwind label %bb.ap

_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferreds3_0B9_.exit: ; preds = %bb.ad, %bb.ah
  %.sroa.7206.0.copyload.sink = phi ptr [ %.sroa.7206.0.copyload, %bb.ah ], [ %i.da, %bb.ad ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7206.0.copyload.sink, ptr %i.db, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.dc = load i64, ptr %i.y, align 8, !range !16, !alias.scope !827, !noundef !6
  %i.dd = icmp eq i64 %i.dc, -1
  br i1 %i.dd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12ContextInputEECsl8OoimOLbh_6qdrant.exit, label %bb.ae

bb.ae:                                            ; preds = %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferreds3_0B9_.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16ContextInputPairENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12ContextInputECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16ContextInputPairENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11VectorInputEECsl8OoimOLbh_6qdrant.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12ContextInputECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.ae
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16ContextInputPairENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12ContextInputEECsl8OoimOLbh_6qdrant.exit

_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferreds2_0B9_.exit: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.0204.0.copyload = load i64, ptr %i.d, align 8 ; 2 uses
  %.sroa.7206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7206.0.copyload = load ptr, ptr %.sroa.7206.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8209, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8209.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dg = icmp eq i64 %.sroa.0204.0.copyload, -2
  br i1 %i.dg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferreds2_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7206.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8209)
  br label %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferreds3_0B9_.exit

bb.ai:                                            ; preds = %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferreds2_0B9_.exit
  %.sroa.5216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5216.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8209, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8209)
  store i64 %.sroa.0204.0.copyload, ptr %i.x, align 8
  %.sroa.4215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %.sroa.7206.0.copyload, ptr %.sroa.4215.0..sroa_idx, align 8
  %.sroa.0233.0.copyload = load i64, ptr %i.y, align 8 ; 3 uses
  %.not674 = icmp eq i64 %.sroa.0233.0.copyload, -1
  br i1 %.not674, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.sroa.6235.sroa.5.0..sroa.6235.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.6235.sroa.5.0.copyload = load i64, ptr %.sroa.6235.sroa.5.0..sroa.6235.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.6235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.6235.sroa.0.0.copyload = load ptr, ptr %.sroa.6235.0..sroa_idx, align 8, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.dh = icmp ult i64 %.sroa.6235.sroa.5.0.copyload, 33909456017848441
  tail call void @llvm.assume(i1 %i.dh)
  %i.di = getelementptr inbounds nuw [272 x i8], ptr %.sroa.6235.sroa.0.0.copyload, i64 %.sroa.6235.sroa.5.0.copyload
  %i.dj = icmp sgt i64 %.sroa.0233.0.copyload, -1
  tail call void @llvm.assume(i1 %i.dj)
  store ptr %.sroa.6235.sroa.0.0.copyload, ptr %i.v, align 8
  %.sroa.4246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.sroa.6235.sroa.0.0.copyload, ptr %.sroa.4246.0..sroa_idx, align 8
  %.sroa.5247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %.sroa.0233.0.copyload, ptr %.sroa.5247.0..sroa_idx, align 8
  %.sroa.6248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.di, ptr %.sroa.6248.0..sroa_idx, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %2, ptr %i.dk, align 8
  invoke void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16ContextInputPairENCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferreds5_0EINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEINtNtB6_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCINvXso_B7r_IB7p_INtB1b_3VecB4r_EB7L_EINtNtNtB4_6traits7collect12FromIteratorIB7p_B4r_B7L_EE9from_iterBQ_E0B8G_EB2X_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.v)
          to label %bb.am unwind label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.dl = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newReECsl8OoimOLbh_6qdrant(i8 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 32)
          to label %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferreds4_0B9_.exit unwind label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.x) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11VectorInputEECsl8OoimOLbh_6qdrant.exit unwind label %bb.y

_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferreds4_0B9_.exit: ; preds = %bb.ak, %bb.an
  %.sink = phi ptr [ %i.dr, %bb.an ], [ %i.dl, %bb.ak ]
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.dn, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12ContextInputEECsl8OoimOLbh_6qdrant.exit

bb.am:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.do = load i64, ptr %i.w, align 8, !range !16, !noundef !6 ; 2 uses
  %i.dp = icmp eq i64 %i.do, -1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8            ; 2 uses
  br i1 %i.dp, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferreds4_0B9_.exit

bb.ao:                                            ; preds = %bb.am
  %.sroa.5584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.5584.0.copyload = load i64, ptr %.sroa.5584.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.sroa.0510.sroa.0.0.copyload = load i64, ptr %i.x, align 8
  %.sroa.0510.sroa.4.0.copyload = load ptr, ptr %.sroa.4215.0..sroa_idx, align 8
  %.sroa.0510.sroa.5.0.copyload = load i64, ptr %.sroa.5216.0..sroa_idx, align 8
  %.sroa.0510.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.sroa.16.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0510.sroa.6.0..sroa_idx, i64 16, i1 false)
  %.sroa.4511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sroa.4511.0.copyload = load i32, ptr %.sroa.4511.0..sroa_idx, align 8
  %.sroa.5512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  %.sroa.5512.0.copyload = load i32, ptr %.sroa.5512.0..sroa_idx, align 4
  %.sroa.8256.sroa.5.0.insert.ext = zext i32 %.sroa.5512.0.copyload to i64
  %i.ds = inttoptr i64 %.sroa.8256.sroa.5.0.insert.ext to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12ContextInputEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12ContextInputECsl8OoimOLbh_6qdrant.exit.i, %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferreds3_0B9_.exit, %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferreds4_0B9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.cc

bb.ap:                                            ; preds = %bb.ac, %bb.ad
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12ContextInputEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11VectorInputEECsl8OoimOLbh_6qdrant.exit unwind label %bb.y

bb.aq:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !825
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %i.dt, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cc

bb.ar:                                            ; preds = %.noexc
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.517.0.copyload.i = load i64, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !825
  br label %bb.q

bb.as:                                            ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.du, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cc

bb.at:                                            ; preds = %bb.h
  %.sroa.5590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.5590.0.copyload = load ptr, ptr %.sroa.5590.0..sroa_idx, align 8
  %.sroa.6591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.6591.0.copyload = load i64, ptr %.sroa.6591.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.7.sroa.4.0.copyload = load ptr, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.7.sroa.5.0.copyload = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.8592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.sroa.16.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8592.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.dv = ptrtoint ptr %i.bn to i64
  br label %bb.q

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.br, ptr %i.dw, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cc

bb.av:                                            ; preds = %bb.i
  %.sroa.5595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5595.0.copyload = load ptr, ptr %.sroa.5595.0..sroa_idx, align 8
  %.sroa.6596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.6596.0.copyload = load i64, ptr %.sroa.6596.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.dx = ptrtoint ptr %i.br to i64
  br label %bb.q

bb.aw:                                            ; preds = %bb.j
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bs, ptr %i.dy, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cc

bb.ax:                                            ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bw, ptr %i.dz, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cc

bb.ay:                                            ; preds = %bb.k
  %.sroa.5603.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5603.0.copyload = load i64, ptr %.sroa.5603.0..sroa_idx, align 8
  %.sroa.6604.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.6604.0.copyload = load ptr, ptr %.sroa.6604.0..sroa_idx, align 8
  %.sroa.7605.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.7605.0.copyload = load i64, ptr %.sroa.7605.0..sroa_idx, align 8
  %.sroa.8606.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.sroa.8606.sroa.0.0.copyload = load i64, ptr %.sroa.8606.0..sroa_idx, align 8
  %.sroa.8606.sroa.4.0..sroa.8606.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.sroa.8606.sroa.4.0.copyload = load ptr, ptr %.sroa.8606.sroa.4.0..sroa.8606.0..sroa_idx.sroa_idx, align 8
  %.sroa.8606.sroa.5.0..sroa.8606.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.sroa.8606.sroa.5.0.copyload = load i64, ptr %.sroa.8606.sroa.5.0..sroa.8606.0..sroa_idx.sroa_idx, align 8
  %.sroa.9607.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.sroa.16.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9607.0..sroa_idx, i64 16, i1 false)
  %.sroa.10608.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %.sroa.10608.0.copyload = load i32, ptr %.sroa.10608.0..sroa_idx, align 8
  %.sroa.11609.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 84
  %.sroa.11609.0.copyload = load ptr, ptr %.sroa.11609.0..sroa_idx, align 4
  %.sroa.12610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 92
  %.sroa.12610.0.copyload = load i32, ptr %.sroa.12610.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ea = ptrtoint ptr %i.bw to i64
  br label %bb.q

bb.az:                                            ; preds = %bb.l
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6343.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.8354.0..sroa_idx355 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.8354.0..sroa_idx355, ptr noundef nonnull align 8 dereferenceable(120) %i.eb, i64 120, i1 false)
  store i64 %i.ak, ptr %i.p, align 8
  %.sroa.6351.0..sroa_idx352 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.6343.sroa.0.0.copyload, ptr %.sroa.6351.0..sroa_idx352, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc34convert_vector_input_with_inferred(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  %i.ec = load i64, ptr %i.n, align 8, !range !15, !noundef !6 ; 3 uses
  %i.ed = icmp eq i64 %i.ec, -2
  %i.ee = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8            ; 3 uses
  br i1 %i.ed, label %bb.ba, label %bb.bb

_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferreds6_0B9_.exit: ; preds = %bb.l
  %i.eg = tail call noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newReECsl8OoimOLbh_6qdrant(i8 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 25)
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eg, ptr %i.eh, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cc

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ef, ptr %i.ei, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bf

bb.bb:                                            ; preds = %bb.az
  %.sroa.5616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5372.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5616.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 %i.ec, ptr %i.o, align 8
  %.sroa.4371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.ef, ptr %.sroa.4371.0..sroa_idx, align 8
  %i.ej = and i64 %.sroa.0345.0.copyload, 4294967295
  %.not671 = icmp eq i64 %i.ej, 2
  br i1 %.not671, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ek = ptrtoint ptr %.sroa.6347.sroa.5.0.copyload to i64 ; 2 uses
  %.sroa.7375.12.extract.shift = lshr i64 %i.ek, 32
  %i.el = inttoptr i64 %.sroa.7375.12.extract.shift to ptr
  %.sroa.0388.0 = and i64 %i.ek, 1
  %.sroa.0507.sroa.5.0.copyload = load i64, ptr %.sroa.5372.0..sroa_idx, align 8
  %.sroa.0507.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.sroa.16.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0507.sroa.6.0..sroa_idx, i64 16, i1 false)
  %.sroa.4508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.4508.0.copyload = load i32, ptr %.sroa.4508.0..sroa_idx, align 8
  %.sroa.5509.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %.sroa.5509.0.copyload = load i32, ptr %.sroa.5509.0..sroa_idx, align 4
  %.sroa.9395.sroa.5.0.insert.ext = zext i32 %.sroa.5509.0.copyload to i64
  %i.em = inttoptr i64 %.sroa.9395.sroa.5.0.insert.ext to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.q

bb.bd:                                            ; preds = %bb.bb
  %i.en = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newReECsl8OoimOLbh_6qdrant(i8 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 14)
          to label %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferreds7_0B9_.exit unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.o) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11VectorInputEECsl8OoimOLbh_6qdrant.exit unwind label %bb.y

_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferreds7_0B9_.exit: ; preds = %bb.bd
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.en, ptr %i.ep, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.o)
  br label %bb.bf

bb.bf:                                            ; preds = %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferreds7_0B9_.exit, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.cc

bb.bg:                                            ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cb, ptr %i.eq, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cc

bb.bh:                                            ; preds = %bb.m
  %.sroa.5599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5599.0.copyload = load ptr, ptr %.sroa.5599.0..sroa_idx, align 8
  %.sroa.6600.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.6600.0.copyload = load i64, ptr %.sroa.6600.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.er = ptrtoint ptr %i.cb to i64
  br label %bb.q

bb.bi:                                            ; preds = %bb.n
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.8408.0..sroa_idx409 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.8408.0..sroa_idx409, ptr noundef nonnull align 8 dereferenceable(120) %i.es, i64 120, i1 false)
  store i64 %i.ak, ptr %i.l, align 8
  %.sroa.6405.0..sroa_idx406 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.6653.0.copyload, ptr %.sroa.6405.0..sroa_idx406, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc34convert_vector_input_with_inferred(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
          to label %bb.bo unwind label %bb.ce

end_hunk_0
begin_hunk_1_@_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferred:bb.a
  %i.fa = load ptr, ptr %i.ez, align 8            ; 2 uses
  br i1 %i.ey, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fa, ptr %i.fb, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bk

bb.bq:                                            ; preds = %bb.bo
  %.sroa.5628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5426.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5628.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %i.ex, ptr %i.k, align 8
  %.sroa.4425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.fa, ptr %.sroa.4425.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.sroa.0439.0.copyload = load i64, ptr %i.m, align 8 ; 2 uses
  %.sroa.4440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4440.0.copyload = load ptr, ptr %.sroa.4440.0..sroa_idx, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.sroa.5441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5441.0.copyload = load i64, ptr %.sroa.5441.0..sroa_idx, align 8 ; 2 uses
  %i.fc = icmp ult i64 %.sroa.5441.0.copyload, 64051194700380388
  tail call void @llvm.assume(i1 %i.fc)
  %i.fd = getelementptr inbounds nuw [144 x i8], ptr %.sroa.4440.0.copyload, i64 %.sroa.5441.0.copyload
  %i.fe = icmp sgt i64 %.sroa.0439.0.copyload, -1
  tail call void @llvm.assume(i1 %i.fe)
  store ptr %.sroa.4440.0.copyload, ptr %i.g, align 8
  %.sroa.4436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.4440.0.copyload, ptr %.sroa.4436.0..sroa_idx, align 8
  %.sroa.5437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.0439.0.copyload, ptr %.sroa.5437.0..sroa_idx, align 8
  %.sroa.6438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.fd, ptr %.sroa.6438.0..sroa_idx, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %2, ptr %i.ff, align 8
  invoke void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12FeedbackItemENCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferredsa_0EINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEINtNtB6_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCINvXso_B7p_IB7n_INtB1b_3VecB4n_EB7J_EINtNtNtB4_6traits7collect12FromIteratorIB7n_B4n_B7J_EE9from_iterBQ_E0B8E_EB2T_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.g)
          to label %bb.bt unwind label %bb.bs

bb.br:                                            ; preds = %bb.by, %bb.bs
  %.pn = phi { ptr, i32 } [ %i.fg, %bb.bs ], [ %i.fn, %bb.by ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11VectorInputEECsl8OoimOLbh_6qdrant.exit unwind label %bb.y

bb.bs:                                            ; preds = %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferredsb_0B9_.exit, %bb.bq
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bt:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fh = load i64, ptr %i.h, align 8, !range !16, !noundef !6 ; 2 uses
  %i.fi = icmp eq i64 %i.fh, -1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8            ; 2 uses
  br i1 %i.fi, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fk, ptr %i.fl, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cd

bb.bv:                                            ; preds = %bb.bt
  %.sroa.5631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5631.0.copyload = load i64, ptr %.sroa.5631.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 %i.fh, ptr %i.i, align 8
  %.sroa.4443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.fk, ptr %.sroa.4443.0..sroa_idx, align 8
  %.sroa.5444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 %.sroa.5631.0.copyload, ptr %.sroa.5444.0..sroa_idx, align 8
  %.not666 = icmp eq i32 %.sroa.0655.0.copyload, 2
  br i1 %.not666, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store <2 x i32> %i.ce, ptr %i.f, align 8
  %.sroa.6450.0..sroa_idx451 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.7657.0.copyload, ptr %.sroa.6450.0..sroa_idx451, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXs14_NtNtCsPYQCUnoTxQ_10collection10operations11conversionsNtNtNtB8_15universal_query16collection_query16FeedbackStrategyINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16FeedbackStrategyE8try_from(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.f)
          to label %bb.bz unwind label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.fm = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newReECsl8OoimOLbh_6qdrant(i8 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 19)
          to label %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferredsb_0B9_.exit unwind label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #17
          to label %bb.br unwind label %bb.y

_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferredsb_0B9_.exit: ; preds = %bb.bx, %bb.ca
  %.sink954 = phi ptr [ %i.fs, %bb.ca ], [ %i.fm, %bb.bx ]
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink954, ptr %i.fo, align 8
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i)
          to label %bb.cd unwind label %bb.bs

bb.bz:                                            ; preds = %bb.bw
  %i.fp = load i32, ptr %i.e, align 8, !range !21, !noundef !6
  %i.fq = trunc nuw i32 %i.fp to i1
  br i1 %i.fq, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.fr = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !nonnull !6, !align !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferredsb_0B9_.exit

bb.cb:                                            ; preds = %bb.bz
  %i.ft = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.0638.0.copyload = load i32, ptr %i.ft, align 4
  %.sroa.4639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4639.0.copyload = load ptr, ptr %.sroa.4639.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.0513.0.copyload = load i64, ptr %i.k, align 8
  %.sroa.4514.sroa.0.0.copyload = load i64, ptr %.sroa.4425.0..sroa_idx, align 8
  %.sroa.4514.sroa.4.0..sroa.4425.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4514.sroa.4.0.copyload = load ptr, ptr %.sroa.4514.sroa.4.0..sroa.4425.0..sroa_idx.sroa_idx, align 8
  %.sroa.4514.sroa.5.0..sroa.4425.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.4514.sroa.5.0.copyload = load i64, ptr %.sroa.4514.sroa.5.0..sroa.4425.0..sroa_idx.sroa_idx, align 8
  %.sroa.5515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.sroa.16.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5515.0..sroa_idx, i64 16, i1 false)
  %.sroa.0516.0.copyload = load i64, ptr %i.i, align 8
  %.sroa.4517.0.copyload = load i64, ptr %.sroa.4443.0..sroa_idx, align 8
  %.sroa.5518.0.copyload = load ptr, ptr %.sroa.5444.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.q

bb.cc:                                            ; preds = %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferreds6_0B9_.exit, %bb.bf, %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12FeedbackItemEECsl8OoimOLbh_6qdrant.exit, %bb.bg, %bb.ax, %bb.aw, %bb.au, %bb.as, %bb.aq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12ContextInputEECsl8OoimOLbh_6qdrant.exit, %bb.z, %bb.o, %bb.q
  ret void

bb.cd:                                            ; preds = %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferredsb_0B9_.exit, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12FeedbackItemEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12FeedbackItemEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.bm, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.cc

bb.ce:                                            ; preds = %bb.bi, %bb.bj
  %lpad.thr_comm732 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12FeedbackItemEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11VectorInputEECsl8OoimOLbh_6qdrant.exit unwind label %bb.y

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11VectorInputEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.be, %bb.br, %bb.bl, %bb.ce, %bb.al, %bb.af, %bb.ap, %bb.aa, %bb.ab
  %.pn682802 = phi { ptr, i32 } [ %i.de, %bb.af ], [ %i.ev, %bb.bl ], [ %i.dm, %bb.al ], [ %.pn, %bb.br ], [ %lpad.thr_comm732, %bb.ce ], [ %i.cz, %bb.ab ], [ %lpad.thr_comm, %bb.ap ], [ %i.cy, %bb.aa ], [ %i.eo, %bb.be ]
  resume { ptr, i32 } %.pn682802
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc30convert_prefetch_with_inferred(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([552 x i8]) align 8 captures(none) dereferenceable(552) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(912) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.9137 = alloca [80 x i8], align 8         ; 2 uses
  %i.b = alloca [96 x i8], align 8                ; 6 uses
  %i.c = alloca [96 x i8], align 8                ; 5 uses
  %i.d = alloca [176 x i8], align 8               ; 6 uses
  %i.e = alloca [176 x i8], align 8               ; 5 uses
  %i.f = alloca [104 x i8], align 8               ; 6 uses
  %i.g = alloca [104 x i8], align 8               ; 5 uses
  %i.h = alloca [464 x i8], align 8               ; 5 uses
  %i.i = alloca [112 x i8], align 8               ; 6 uses
  %.sroa.7145 = alloca [80 x i8], align 8         ; 5 uses
  %.sroa.7113 = alloca [160 x i8], align 8        ; 5 uses
  %.sroa.9105 = alloca [160 x i8], align 8        ; 5 uses
  %i.j = alloca [176 x i8], align 8               ; 12 uses
  %.sroa.776 = alloca [88 x i8], align 8          ; 5 uses
  %.sroa.968 = alloca [88 x i8], align 8          ; 5 uses
  %i.k = alloca [104 x i8], align 8               ; 19 uses
  %i.l = alloca [24 x i8], align 8                ; 24 uses
  %i.m = alloca [112 x i8], align 8               ; 16 uses
  %i.n = alloca [24 x i8], align 8                ; 19 uses
  %.sroa.741 = alloca [96 x i8], align 8          ; 5 uses
  %.sroa.9 = alloca [96 x i8], align 8            ; 5 uses
  %i.o = alloca [40 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 13 uses
  %i.r = alloca [96 x i8], align 8                ; 11 uses
  %i.s = alloca [176 x i8], align 8               ; 11 uses
  %i.t = alloca [104 x i8], align 8               ; 11 uses
  %i.u = alloca [24 x i8], align 8                ; 11 uses
  %i.v = alloca [464 x i8], align 8               ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 656
  %.sroa.0.0.copyload = load i64, ptr %i.w, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 664
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 672
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %i.v, ptr noundef nonnull align 8 dereferenceable(464) %i.x, i64 464, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.t, ptr noundef nonnull align 8 dereferenceable(104) %i.z, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.s, ptr noundef nonnull align 8 dereferenceable(176) %i.aa, i64 176, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 904
  %i.ac = load i32, ptr %i.ab, align 8, !range !21, !noundef !6 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 908
  %i.ae = load float, ptr %i.ad, align 4
  %i.af = load i64, ptr %1, align 8, !range !19, !noundef !6
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.r, ptr noundef nonnull align 8 dereferenceable(96) %i.ai, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.aj = icmp ult i64 %.sroa.6.0.copyload, 10113346531639009
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw [912 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.6.0.copyload
  %i.al = icmp sgt i64 %.sroa.0.0.copyload, -1
  tail call void @llvm.assume(i1 %i.al)
  store ptr %.sroa.5.0.copyload, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.515.0..sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.ak, ptr %.sroa.616.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %2, ptr %i.am, align 8
  invoke void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13PrefetchQueryENCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc30convert_prefetch_with_inferred0ENtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchINtNtB6_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCINvXso_B63_IB61_INtB1b_3VecB4o_EB6n_EINtNtNtB4_6traits7collect12FromIteratorIB61_B4o_B6n_EE9from_iterBQ_E0B7i_EB2U_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.o)
          to label %bb.c unwind label %bb.b

.thread329:                                       ; preds = %bb.bl
  br i1 %.sroa.0155.5, label %.thread, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5QueryEECsl8OoimOLbh_6qdrant.exit311

bb.b:                                             ; preds = %bb.j, %bb.a
  %.sroa.0162.1 = phi i8 [ 0, %bb.j ], [ 1, %bb.a ]
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ao = load i64, ptr %i.p, align 8, !range !16, !noundef !6 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14LookupLocationEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(96) %i.r)
          to label %bb.ce unwind label %bb.bz

bb.e:                                             ; preds = %bb.c
  %.sroa.5166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5166.0.copyload = load i64, ptr %.sroa.5166.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 %i.ao, ptr %i.q, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ar, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.5166.0.copyload, ptr %.sroa.519.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.741)
  %.sroa.043.0.copyload = load i64, ptr %i.v, align 8 ; 2 uses
  %.not = icmp eq i64 %.sroa.043.0.copyload, -5
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.4168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(456) %.sroa.4168.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(456) %.sroa.645.0..sroa_idx, i64 456, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.sroa.043.0.copyload, ptr %i.h, align 8
  invoke void @_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc27convert_query_with_inferred(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(464) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
          to label %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc30convert_prefetch_with_inferreds_0B9_.exit unwind label %bb.cd

bb.g:                                             ; preds = %bb.e, %bb.l
  %.sroa.7.0 = phi ptr [ %.sroa.638.0.copyload, %bb.l ], [ undef, %bb.e ]
  %.sroa.027.0 = phi i64 [ %.sroa.036.0.copyload, %bb.l ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.741)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.9, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  store i64 %.sroa.027.0, ptr %i.m, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %.sroa.049.0.copyload = load i64, ptr %i.u, align 8 ; 2 uses
  %.not218 = icmp eq i64 %.sroa.049.0.copyload, -1
  br i1 %.not218, label %bb.n, label %bb.m

.thread345.thread:                                ; preds = %bb.bp, %bb.bw
  %.sroa.0156.2.ph.ph = phi i8 [ 1, %bb.bw ], [ 0, %bb.bp ]
  %lpad.thr_comm389 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc30convert_prefetch_with_inferreds_0B9_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.036.0.copyload = load i64, ptr %i.i, align 8 ; 2 uses
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.638.0.copyload = load ptr, ptr %.sroa.638.0..sroa_idx, align 8 ; 3 uses
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.741, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.741.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.at = icmp eq i64 %.sroa.036.0.copyload, -1
  br i1 %i.at, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc30convert_prefetch_with_inferreds_0B9_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.638.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.741)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.638.0.copyload, ptr %i.au, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.thread unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchEECsl8OoimOLbh_6qdrant.exit unwind label %bb.b

bb.k:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.l:                                             ; preds = %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc30convert_prefetch_with_inferreds_0B9_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.741, i64 96, i1 false)
  br label %bb.g

bb.m:                                             ; preds = %bb.g
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.sroa.049.0.copyload, ptr %i.l, align 8
  %.sroa.551.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.551.0..sroa_idx52, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.551.0..sroa_idx, i64 16, i1 false)
  br label %bb.r

bb.n:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !868)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !868
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.n
  %i.ax = load i64, ptr %i.a, align 8, !range !19, !noalias !868, !noundef !6
  %i.ay = trunc nuw i64 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !869, !noalias !868, !noundef !6 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ay, label %bb.o, label %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc30convert_prefetch_with_inferreds0_0B9_.exit, !prof !7

bb.o:                                             ; preds = %.noexc
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !868
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ba, i64 %i.bc) #19
          to label %.noexc251 unwind label %bb.q

.noexc251:                                        ; preds = %bb.o
  unreachable

_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc30convert_prefetch_with_inferreds0_0B9_.exit: ; preds = %.noexc
  %i.bd = load ptr, ptr %i.bb, align 8, !noalias !868, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !868
  store i64 %i.ba, ptr %i.l, align 8, !alias.scope !868
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.bd, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !868
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !868
  br label %bb.r

bb.p:                                             ; preds = %bb.u, %bb.q
  %.sroa.0158.3 = phi i8 [ 0, %bb.u ], [ 1, %bb.q ]
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.u ], [ %i.be, %bb.q ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query5QueryEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(112) %i.m) #17
          to label %bb.by unwind label %bb.bf

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_grpc30convert_prefetch_with_inferreds0_0B9_.exit, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.968)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.776)
  %.sroa.078.0.copyload = load i64, ptr %i.t, align 8 ; 2 uses
  %.not219 = icmp eq i64 %.sroa.078.0.copyload, -1
  br i1 %.not219, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.sroa.078.0.copyload, ptr %i.g, align 8
  %.sroa.680.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.680.0..sroa_idx81, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.680.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvXs1c_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtCs607s0NAIaWN_7segment5types6FilterINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB8_6qdrant6FilterE8try_from(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %i.g)
          to label %bb.v unwind label %bb.u
end_hunk_1
