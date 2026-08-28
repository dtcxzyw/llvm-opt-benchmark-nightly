Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.019?download=true
inline.NumInlined: 5008
inline.NumDeleted: 2031
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvMNtNtNtCsl8OoimOLbh_6qdrant5tonic3api19points_internal_apiNtB4_21PointsInternalService23delete_payload_internal0Ba_:bb.a
  %i.nb = phi ptr [ %i.ln, %.body75.i ], [ %i.ln, %bb.fc ], [ %i.fy, %bb.eq ], [ %i.fy, %bb.eo ] ; 2 uses
  %.pn50.i = phi { ptr, i32 } [ %.pn48.i, %.body75.i ], [ %.pn48.i, %bb.fc ], [ %i.ng, %bb.eq ], [ %i.my, %bb.eo ] ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 4684
  store i8 0, ptr %i.nc, align 4, !noalias !5907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !5907
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 4690
  %i.ne = load i8, ptr %i.nd, align 2, !range !743, !noalias !5907, !noundef !6
  %i.nf = trunc nuw i8 %i.ne to i1
  br i1 %i.nf, label %bb.fd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit101.i

bb.eq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i93.i
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %.body94.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit101.i: ; preds = %bb.fd, %bb.er, %.body94.i
  %i.nh = phi ptr [ %i.fx, %bb.er ], [ %i.na, %.body94.i ], [ %i.na, %bb.fd ] ; 2 uses
  %i.ni = phi ptr [ %i.fy, %bb.er ], [ %i.nb, %.body94.i ], [ %i.nb, %bb.fd ] ; 2 uses
  %.pn52.i = phi { ptr, i32 } [ %i.nn, %bb.er ], [ %.pn50.i, %.body94.i ], [ %.pn50.i, %bb.fd ] ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 4690
  store i8 0, ptr %i.nj, align 2, !noalias !5907
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 4685
  %i.nl = load i8, ptr %i.nk, align 1, !range !743, !noalias !5907, !noundef !6
  %i.nm = trunc nuw i8 %i.nl to i1
  br i1 %i.nm, label %bb.fe, label %bb.et

bb.er:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit97.i
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit101.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit97.i
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 4690
  store i8 0, ptr %i.no, align 2, !noalias !5907
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 4685 ; 2 uses
  %i.nq = load i8, ptr %i.np, align 1, !range !743, !noalias !5907, !noundef !6
  %i.nr = trunc nuw i8 %i.nq to i1
  br i1 %i.nr, label %bb.es, label %.thread79

.thread79:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit.i, %bb.es
  store i8 0, ptr %i.np, align 1, !noalias !5907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !5907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 4686
  store i8 0, ptr %i.ns, align 2, !noalias !5907
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.966, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.12184.i, i64 264, i1 false), !noalias !5998
  store i8 1, ptr %i.fx, align 8, !noalias !5907
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12184.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3154.i)
  br label %bb.fi

bb.es:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(128) %i.ae)
          to label %.thread79 unwind label %bb.eu, !noalias !5911

bb.et:                                            ; preds = %bb.fe, %bb.eu, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit101.i
  %i.nt = phi ptr [ %i.fx, %bb.eu ], [ %i.nh, %bb.fe ], [ %i.nh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit101.i ]
  %i.nu = phi ptr [ %i.fy, %bb.eu ], [ %i.ni, %bb.fe ], [ %i.ni, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit101.i ]
  %.pn54.i = phi { ptr, i32 } [ %i.nx, %bb.eu ], [ %.pn52.i, %bb.fe ], [ %.pn52.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit101.i ]
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 4685
  store i8 0, ptr %i.nv, align 1, !noalias !5907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !5907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 4686
  store i8 0, ptr %i.nw, align 2, !noalias !5907
  store i8 2, ptr %i.nt, align 8, !noalias !5907
  br label %.body

bb.eu:                                            ; preds = %bb.es
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.ev:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations11payload_ops13DeletePayloadECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(200) %i.u) #20
          to label %bb.bk unwind label %bb.an, !noalias !5911

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECsl8OoimOLbh_6qdrant.exit99.i: ; preds = %bb.ew, %bb.bk
  store i8 0, ptr %i.fi, align 8, !noalias !5907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !5907
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 4689 ; 2 uses
  %i.nz = load i8, ptr %i.ny, align 1, !range !743, !noalias !5907, !noundef !6
  %i.oa = trunc nuw i8 %i.nz to i1
  br i1 %i.oa, label %bb.ey, label %bb.ex

bb.ew:                                            ; preds = %bb.bk
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types6FilterECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECsl8OoimOLbh_6qdrant.exit99.i unwind label %bb.an, !noalias !5911

bb.ex:                                            ; preds = %bb.ey, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECsl8OoimOLbh_6qdrant.exit99.i
  store i8 0, ptr %i.ny, align 1, !noalias !5907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !5907
  br label %bb.bn

bb.ey:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECsl8OoimOLbh_6qdrant.exit99.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #20
          to label %bb.ex unwind label %bb.an, !noalias !5911

bb.ez:                                            ; preds = %bb.bn
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment9json_path8JsonPathEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #20
          to label %.body79.i unwind label %bb.an, !noalias !5911

bb.fa:                                            ; preds = %.body79.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16ShardKeySelectorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ab) #20
          to label %bb.ec unwind label %bb.an, !noalias !5911

bb.fb:                                            ; preds = %bb.ec
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointsSelectorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(104) %i.ac) #20
          to label %.body87.i unwind label %bb.an, !noalias !5911

bb.fc:                                            ; preds = %.body75.i
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad) #20
          to label %.body94.i unwind label %bb.an, !noalias !5911

bb.fd:                                            ; preds = %.body94.i
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 1104
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator16HwMeasurementAccECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ob)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit101.i unwind label %bb.an, !noalias !5911

bb.fe:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit101.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(128) %i.ae) #20
          to label %bb.et unwind label %bb.an, !noalias !5911

bb.ff:                                            ; preds = %bb.bq, %bb.bp
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.fg:                                            ; preds = %bb.dp
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 4684
  store i8 0, ptr %i.od, align 4, !noalias !5907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !5907
  store i8 0, ptr %i.ky, align 2, !noalias !5907
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 4685
  store i8 0, ptr %i.oe, align 1, !noalias !5907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !5907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 4686
  store i8 0, ptr %i.of, align 2, !noalias !5907
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.966, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.12184.i, i64 264, i1 false), !noalias !5998
  store i8 1, ptr %i.jd, align 8, !noalias !5907
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12184.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3154.i)
  %i.og = icmp eq i64 %.sroa.0179.0.copyload.i, -1
  br i1 %i.og, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %.thread, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.966)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %common.ret

bb.fi:                                            ; preds = %.thread79, %bb.fg
  %i.oh = phi ptr [ %i.fy, %.thread79 ], [ %i.je, %bb.fg ]
  %.sroa.7181.4.i83 = phi ptr [ %.sroa.7181.3.i, %.thread79 ], [ %.sroa.7181.0.copyload.i, %bb.fg ]
  %.sroa.0179.4.i82 = phi i64 [ 2, %.thread79 ], [ %.sroa.0179.0.copyload.i, %bb.fg ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.568, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.966, i64 264, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.966)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api13update_common14delete_payloadNtNtNtBM_6common11strict_mode20UncheckedTocProviderE0EBM_(ptr noundef nonnull align 8 %i.oh)
          to label %bb.fk unwind label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.fk:                                            ; preds = %bb.fi
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 4697
  store i8 0, ptr %i.oj, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 4698
  store i8 0, ptr %i.ok, align 2
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 4699
  store i8 0, ptr %i.ol, align 1
  br label %bb.p

bb.fl:                                            ; preds = %bb.k
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator16HwMeasurementAccECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ak)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit unwind label %bb.j

bb.fm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 416
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19DeletePayloadPointsECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(232) %i.om) #20
          to label %bb.q unwind label %bb.j

bb.fn:                                            ; preds = %bb.q
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(128) %i.al) #20
          to label %bb.m unwind label %bb.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtNtCsl8OoimOLbh_6qdrant5tonic3api19points_internal_apiNtB4_21PointsInternalService23delete_vectors_internal0Ba_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(280) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.4.i.i.i.i.i = alloca i64, align 8        ; 5 uses
  %.sroa.6.i.i.i.i.i = alloca i64, align 8        ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.4.i.i.i.i = alloca i64, align 8          ; 5 uses
  %.sroa.6.i.i.i.i = alloca i64, align 8          ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 13 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.19.i.i = alloca [24 x i8], align 8       ; 8 uses
  %.sroa.2.sroa.3203.sroa.7.i.i = alloca [24 x i8], align 8 ; 7 uses
  %i.g = alloca [64 x i8], align 8                ; 11 uses
  %.sroa.0181.i.i = alloca [536 x i8], align 8    ; 9 uses
  %.sroa.5169.sroa.7.i.i = alloca [24 x i8], align 8 ; 7 uses
  %i.h = alloca [256 x i8], align 8               ; 13 uses
  %.sroa.5165.i.i = alloca [64 x i8], align 8     ; 4 uses
  %.sroa.2.sroa.3.sroa.7.i.i = alloca [24 x i8], align 8 ; 7 uses
  %i.i = alloca [64 x i8], align 8                ; 11 uses
  %i.j = alloca [128 x i8], align 8               ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 5 uses
  %i.n = alloca [256 x i8], align 8               ; 6 uses
  %.sroa.0144.sroa.0.i.i = alloca [504 x i8], align 8 ; 9 uses
  %i.o = alloca [256 x i8], align 8               ; 12 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [104 x i8], align 8               ; 6 uses
  %i.r = alloca [64 x i8], align 8                ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %i.t = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.12186.i = alloca [264 x i8], align 8     ; 8 uses
  %i.u = alloca [280 x i8], align 8               ; 7 uses
  %i.v = alloca [40 x i8], align 8                ; 5 uses
  %i.w = alloca [64 x i8], align 8                ; 5 uses
  %i.x = alloca [176 x i8], align 8               ; 5 uses
  %i.y = alloca [56 x i8], align 8                ; 11 uses
  %.sroa.8166.i = alloca [24 x i8], align 8       ; 8 uses
  %.sroa.13155.i = alloca [24 x i8], align 8      ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 5 uses
  %i.aa = alloca [128 x i8], align 8              ; 6 uses
  %.sroa.3149.i = alloca [12 x i8], align 4       ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 8 uses
  %i.ac = alloca [224 x i8], align 8              ; 10 uses
  %i.ad = alloca [24 x i8], align 8               ; 12 uses
  %.sroa.0130.sroa.0.i = alloca [424 x i8], align 8 ; 10 uses
  %i.ae = alloca [48 x i8], align 8               ; 7 uses
  %i.af = alloca [48 x i8], align 8               ; 9 uses
  %.sroa.11124.i = alloca [32 x i8], align 8      ; 6 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [48 x i8], align 8               ; 10 uses
  %i.ai = alloca [104 x i8], align 8              ; 16 uses
  %i.aj = alloca [24 x i8], align 8               ; 13 uses
  %i.ak = alloca [224 x i8], align 8              ; 14 uses
  %i.al = alloca [128 x i8], align 8              ; 9 uses
  %i.am = alloca [104 x i8], align 8              ; 12 uses
  %i.an = alloca [24 x i8], align 8               ; 15 uses
  %i.ao = alloca [48 x i8], align 8               ; 10 uses
  %i.ap = alloca [104 x i8], align 8              ; 8 uses
  %i.aq = alloca [24 x i8], align 8               ; 12 uses
  %i.ar = alloca [128 x i8], align 8              ; 10 uses
  %i.as = alloca [48 x i8], align 8               ; 8 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.569 = alloca [264 x i8], align 8         ; 2 uses
  %.sroa.967 = alloca [264 x i8], align 8         ; 8 uses
  %.sroa.047.sroa.0 = alloca [360 x i8], align 8  ; 5 uses
  %i.aw = alloca [24 x i8], align 8               ; 5 uses
  %i.ax = alloca [40 x i8], align 8               ; 9 uses
  %i.ay = alloca [128 x i8], align 8              ; 9 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4984 ; 3 uses
  %i.ba = load i8, ptr %i.az, align 8, !range !20, !noundef !6
  switch i8 %i.ba, label %default.unreachable92 [
    i8 0, label %bb.b
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
  ]

default.unreachable92:                            ; preds = %bb.bu, %bb.t, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4987 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4986 ; 4 uses
  store i8 0, ptr %i.bc, align 2
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 4985 ; 2 uses
  store i8 0, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !6, !align !56, !noundef !6 ; 2 uses
  %.sroa.0.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.0.sroa.8.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.bg = load <2 x i32>, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 244
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 4 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bh = load <2 x i64>, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.12.sroa.9.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.sroa.12.sroa.9.0.copyload = load i64, ptr %.sroa.12.sroa.9.0..sroa.12.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.sroa.10.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.sroa.12.sroa.10.0.copyload = load i32, ptr %.sroa.12.sroa.10.0..sroa.12.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.sroa.11.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 276
  %.sroa.12.sroa.11.0.copyload = load i8, ptr %.sroa.12.sroa.11.0..sroa.12.0..sroa_idx.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store i8 1, ptr %i.bb, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ay, ptr noundef nonnull align 8 dereferenceable(128) %i.bi, i64 128, i1 false)
  %.not.i = icmp eq i64 %.sroa.0.sroa.0.0.copyload, 2
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !5999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5999
  store ptr @46, ptr %i.au, align 8, !noalias !5999, !captures !3663
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 37, ptr %i.bj, align 8, !noalias !5999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !5999
  store ptr %i.au, ptr %i.at, align 8, !noalias !5999
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsl8OoimOLbh_6qdrant, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !5999
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.av, ptr noundef nonnull @41, ptr noundef nonnull %i.at)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5999
  %i.bk = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(i8 noundef 3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.av)
          to label %bb.l unwind label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.c
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.e:                                             ; preds = %bb.b
  %.sroa.0.sroa.8.sroa.8.0..sroa.0.sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.0.sroa.8.sroa.8.0..sroa.0.sroa.8.0..sroa_idx.sroa_idx, i64 216, i1 false)
  store i8 1, ptr %i.bc, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  store i64 %.sroa.0.sroa.0.0.copyload, ptr %i.bm, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 424
  store ptr %.sroa.0.sroa.8.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.5.0..sroa_idx)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bo = getelementptr i8, ptr %i.bf, i64 218
  %.val = load i8, ptr %i.bo, align 2             ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bf, i64 224    ; 2 uses
  %.val18 = load ptr, ptr %i.bp, align 8, !nonnull !6, !noundef !6
  %i.bq = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.br = invoke noundef nonnull ptr @_RNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counterNtB4_14TableOfContent25get_collection_hw_metrics(ptr noundef nonnull align 8 %i.bq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aw)
          to label %.noexc21 unwind label %bb.i

.noexc21:                                         ; preds = %bb.g
  invoke void @_RNvMs0_NtNtCslmvYCXbQjWR_6common7counter20hardware_accumulatorNtB5_16HwMeasurementAcc22new_with_metrics_drain(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.ax, ptr noundef nonnull %i.br)
          to label %.thread93 unwind label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.i ], [ %i.bn, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit

bb.i:                                             ; preds = %.noexc21, %bb.g
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.thread93:                                        ; preds = %.noexc21
  %.not.i20 = icmp eq i8 %.val, 2
  %..i = select i1 %.not.i20, i8 0, i8 %.val
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store i8 %..i, ptr %i.bt, align 8, !alias.scope !6003, !noalias !6006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.047.sroa.0)
  store i8 0, ptr %i.bc, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.047.sroa.0, ptr noundef nonnull align 8 dereferenceable(232) %i.bm, i64 232, i1 false)
  %i.bu = trunc nuw i32 %.sroa.10.0.copyload to i1
  %i.bv = icmp ult i32 %.sroa.11.0.copyload, 3
  %or.cond.i = select i1 %i.bu, i1 %i.bv, i1 false
  %switch.idx.cast.i = trunc i32 %.sroa.11.0.copyload to i8
  %.sroa.06.0.i = select i1 %or.cond.i, i8 %switch.idx.cast.i, i8 -1
  store i8 0, ptr %i.bb, align 1
  %.sroa.047.sroa.0.232..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.047.sroa.0, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.047.sroa.0.232..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %i.ay, i64 128, i1 false)
  store i8 0, ptr %i.bd, align 1
  %.sroa.052.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.052.sroa.17.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i64 40, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.bw, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.047.sroa.0, i64 360, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.047.sroa.0)
  %.sroa.052.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1008
  store <2 x i32> %i.bg, ptr %.sroa.052.sroa.7.0..sroa_idx, align 8
  %.sroa.052.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1016
end_hunk_0
begin_hunk_1_@_RNCNvMNtNtNtCsl8OoimOLbh_6qdrant5tonic3api19points_internal_apiNtB4_21PointsInternalService23delete_vectors_internal0Ba_:bb.a
bb.bz:                                            ; preds = %bb.bu
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2440
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !515, !noalias !6096
  %i.ib = trunc i8 %.pre.i.i to i1
  br i1 %i.ib, label %bb.ca, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.bz
  %.phi.trans.insert240.i = getelementptr inbounds nuw i8, ptr %1, i64 2400
  %.pre241.i = load ptr, ptr %.phi.trans.insert240.i, align 8, !noalias !6096
  %.pre242.i = load ptr, ptr %.pre241.i, align 8, !noalias !6099
  br label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #23
          to label %.noexc.i.i unwind label %bb.cb, !noalias !6100

.noexc.i.i:                                       ; preds = %bb.ca
  unreachable

bb.cb:                                            ; preds = %bb.ca
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.cc:                                            ; preds = %._crit_edge.i, %.thread.i.i
  %i.id = phi ptr [ %i.cp, %._crit_edge.i ], [ %i.hc, %.thread.i.i ] ; 5 uses
  %i.ie = phi ptr [ %i.co, %._crit_edge.i ], [ %i.hd, %.thread.i.i ] ; 5 uses
  %i.if = phi ptr [ %.phi.trans.insert.i, %._crit_edge.i ], [ %i.hf, %.thread.i.i ] ; 5 uses
  %i.ig = phi ptr [ %i.hb, %._crit_edge.i ], [ %i.hg, %.thread.i.i ] ; 5 uses
  %i.ih = phi ptr [ %.pre242.i, %._crit_edge.i ], [ %i.he, %.thread.i.i ]
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 2384
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 2440
  store i8 1, ptr %i.ij, align 8, !noalias !6096
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 2160 ; 2 uses
  store ptr %i.ih, ptr %i.ik, align 8, !noalias !6092, !captures !3663
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 2377
  store i8 0, ptr %i.il, align 1, !noalias !6092
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 1704
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 1880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.in, i64 48, i1 false), !noalias !6092
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 2380 ; 2 uses
  store i8 1, ptr %i.io, align 4, !noalias !6092
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 2168 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 1776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ip, ptr noundef nonnull align 8 dereferenceable(104) %i.iq, i64 104, i1 false), !noalias !6092
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 2373
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 2272
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 1752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.is, ptr noundef nonnull align 8 dereferenceable(24) %i.it, i64 24, i1 false), !noalias !6092
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.ir, align 1, !noalias !6092
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 2370
  store i8 1, ptr %i.iu, align 2, !noalias !6092
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 2296 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iv, ptr noundef nonnull align 8 dereferenceable(48) %i.im, i64 48, i1 false), !noalias !6092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !6092
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.ce unwind label %bb.cd, !noalias !6100

bb.cd:                                            ; preds = %bb.ce, %bb.cc
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6092
  br label %.body80.i.i

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6101
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 2344 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.r, i64 64, i1 false), !alias.scope !6112, !noalias !6116
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoIterBU_EE9from_iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ix, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.e)
          to label %bb.cf unwind label %bb.cd, !noalias !6100

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6105
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 2369
  store i8 1, ptr %i.iy, align 1, !noalias !6092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6092
  %i.iz = load i64, ptr %i.ip, align 8, !range !77, !noalias !6092, !noundef !6
  %.not13.i.i = icmp eq i64 %i.iz, -2
  br i1 %.not13.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i8 0, ptr %i.io, align 4, !noalias !6092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.q, ptr noundef nonnull align 8 dereferenceable(104) %i.ip, i64 104, i1 false), !noalias !6092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6092
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ix)
          to label %bb.cj unwind label %bb.ci, !noalias !6100

bb.ch:                                            ; preds = %bb.ec, %bb.cf
  %i.ja = phi ptr [ %i.id, %bb.cf ], [ %i.na, %bb.ec ] ; 2 uses
  %i.jb = phi ptr [ %i.ie, %bb.cf ], [ %i.nb, %bb.ec ] ; 2 uses
  %i.jc = phi ptr [ %i.if, %bb.cf ], [ %i.nc, %bb.ec ] ; 2 uses
  %i.jd = phi ptr [ %i.ig, %bb.cf ], [ %i.nd, %bb.ec ] ; 2 uses
  %.sroa.5169.sroa.0.0.i.i = phi i64 [ undef, %bb.cf ], [ %.sroa.2.sroa.3.sroa.0.0.copyload.i.i, %bb.ec ]
  %.sroa.5169.sroa.3.0.i.i = phi ptr [ undef, %bb.cf ], [ %.sroa.2.sroa.3.sroa.3.0.copyload.i.i, %bb.ec ]
  %.sroa.5169.sroa.5.0.i.i = phi i64 [ undef, %bb.cf ], [ %.sroa.2.sroa.3.sroa.5.0.copyload.i.i, %bb.ec ]
  %.sroa.0166.0.i.i = phi i64 [ 2, %bb.cf ], [ %.sroa.2.sroa.0.0.copyload.i.i, %bb.ec ]
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 2272 ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !range !76, !noalias !6092, !noundef !6
  %.not22.i.i = icmp eq i64 %i.jf, -1
  br i1 %.not22.i.i, label %bb.ed, label %bb.eh

bb.ci:                                            ; preds = %bb.cg
  %i.jg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6092
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types6FilterECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(104) %i.q) #20
          to label %bb.dt unwind label %bb.dp, !noalias !6100

bb.cj:                                            ; preds = %bb.cg
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(104) %i.q, i64 104, i1 false), !noalias !6092
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !6092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6092
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 2379 ; 2 uses
  store i8 1, ptr %i.jh, align 1, !noalias !6092
  %i.ji = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 2, ptr %i.ji, align 8, !noalias !6092
  store i64 6, ptr %i.o, align 8, !noalias !6092
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0144.sroa.0.i.i)
  %i.jj = load ptr, ptr %i.ik, align 8, !noalias !6092, !nonnull !6, !align !56, !noundef !6
  %.val66.i.i = load ptr, ptr %i.jj, align 8, !noalias !6100, !nonnull !6, !noundef !6
  %i.jk = getelementptr inbounds nuw i8, ptr %.val66.i.i, i64 16
  %i.jl = getelementptr i8, ptr %1, i64 1688
  %.val59.i.i = load ptr, ptr %i.jl, align 8, !noalias !6092, !nonnull !6, !noundef !6
  %i.jm = getelementptr i8, ptr %1, i64 1696
  %.val60.i.i = load i64, ptr %i.jm, align 8, !noalias !6092, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6092
  store i8 0, ptr %i.jh, align 1, !noalias !6092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.n, ptr noundef nonnull align 8 dereferenceable(256) %i.o, i64 256, i1 false), !noalias !6092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 1928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.jn, i64 48, i1 false), !noalias !6092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 1976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.jo, i64 24, i1 false), !noalias !6092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6092
  call void @llvm.experimental.noalias.scope.decl(metadata !6117)
  call void @llvm.experimental.noalias.scope.decl(metadata !6120)
  %i.jp = load i64, ptr %i.iv, align 8, !range !109, !alias.scope !6120, !noalias !6122, !noundef !6 ; 4 uses
  %.not.i70.i.i = icmp eq i64 %i.jp, -1
  br i1 %.not.i70.i.i, label %bb.df, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6123
  call void @llvm.experimental.noalias.scope.decl(metadata !6124)
  call void @llvm.experimental.noalias.scope.decl(metadata !6127)
  %i.jq = add nsw i64 %i.jp, -2
  %.inv.i.i.i.i = icmp samesign ult i64 %i.jp, 2
  %i.jr = select i1 %.inv.i.i.i.i, i64 2, i64 %i.jq
  switch i64 %i.jr, label %bb.cl [
    i64 0, label %bb.cm
    i64 1, label %bb.cr
    i64 2, label %bb.cs
  ]

bb.cl:                                            ; preds = %bb.ck
  unreachable

bb.cm:                                            ; preds = %bb.ck
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 2304
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !6129)
  call void @llvm.experimental.noalias.scope.decl(metadata !6132)
  %i.jt = load i64, ptr %i.js, align 8, !range !25, !alias.scope !6134, !noalias !6135, !noundef !6
  %i.ju = trunc nuw i64 %i.jt to i1
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 2312 ; 2 uses
  br i1 %i.ju, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.jw = load i64, ptr %i.jv, align 8, !alias.scope !6134, !noalias !6135, !noundef !6
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.co:                                            ; preds = %bb.cm
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 2327
  %i.jy = load i8, ptr %i.jx, align 1, !alias.scope !6134, !noalias !6135, !noundef !6
  %.not.i.i.i.i.i = icmp sgt i8 %i.jy, -1
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 2320
  %.val.i.i.i.i.i = load ptr, ptr %i.jv, align 8, !alias.scope !6134, !noalias !6135 ; 5 uses
  %.val21.i.i.i.i.i = load i64, ptr %i.jz, align 8, !alias.scope !6134, !noalias !6135 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.cp, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i

bb.cp:                                            ; preds = %bb.co
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ka = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 -16
  %i.kb = atomicrmw add ptr %i.ka, i64 1 monotonic, align 8, !noalias !6136
  %i.kc = icmp slt i64 %i.kb, 0
  br i1 %i.kc, label %.invoke.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, !prof !13

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.co, %bb.cq, %bb.cp
  %.sroa.06.0.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i, %bb.cq ], [ inttoptr (i64 16 to ptr), %bb.cp ], [ %.val.i.i.i.i.i, %bb.co ]
  %3 = ptrtoint ptr %.sroa.06.0.i.i.i.i.i to i64
  store i64 %3, ptr %.sroa.4.i.i.i.i, align 8, !alias.scope !6129, !noalias !6137
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %bb.cn
  %.sink.i.sroa.phi.i.i.i.i = phi ptr [ %.sroa.6.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ %.sroa.4.i.i.i.i, %bb.cn ]
  %.sroa.58.0.sink.i.i.i.i.i = phi i64 [ %.val21.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ %i.jw, %bb.cn ]
  %storemerge.i.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ 1, %bb.cn ]
  store i64 %.sroa.58.0.sink.i.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i.i, align 8, !alias.scope !6129, !noalias !6137
  %i.kd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %storemerge.i.i.i.i.i, ptr %i.kd, align 8, !alias.scope !6124, !noalias !6138
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.i.i.i.i, align 8, !noalias !6139
  store i64 %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6124, !noalias !6138
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.i.i.i.i, align 8, !noalias !6139
  store i64 %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6124, !noalias !6138
  store i64 2, ptr %i.d, align 8, !alias.scope !6124, !noalias !6138
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.cr:                                            ; preds = %bb.ck
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 2304
  %i.kf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.kf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ke)
          to label %.noexc72.i.i unwind label %bb.dg, !noalias !6100

.noexc72.i.i:                                     ; preds = %bb.cr
  store i64 3, ptr %i.d, align 8, !alias.scope !6124, !noalias !6138
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.cs:                                            ; preds = %bb.ck
  call void @llvm.experimental.noalias.scope.decl(metadata !6140)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6143
  call void @llvm.experimental.noalias.scope.decl(metadata !6145)
  call void @llvm.experimental.noalias.scope.decl(metadata !6148)
  %i.kg = trunc nuw i64 %i.jp to i1               ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 2304 ; 2 uses
  %.sink.i.sroa.gep.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink.i.sroa.gep16.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  br i1 %i.kg, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.ki = load i64, ptr %i.kh, align 8, !alias.scope !6150, !noalias !6151, !noundef !6
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.cu:                                            ; preds = %bb.cs
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 2319
  %i.kk = load i8, ptr %i.kj, align 1, !alias.scope !6150, !noalias !6151, !noundef !6
  %.not.i.i.i.i.i.i = icmp sgt i8 %i.kk, -1
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 2312
  %.val.i.i.i.i.i.i = load ptr, ptr %i.kh, align 8, !alias.scope !6150, !noalias !6151 ; 5 uses
  %.val21.i.i.i.i.i.i = load i64, ptr %i.kl, align 8, !alias.scope !6150, !noalias !6151 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.cv, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i

bb.cv:                                            ; preds = %bb.cu
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.km = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i, i64 -16
  %i.kn = atomicrmw add ptr %i.km, i64 1 monotonic, align 8, !noalias !6152
  %i.ko = icmp slt i64 %i.kn, 0
  br i1 %i.ko, label %.invoke.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, !prof !13

.invoke.i.i:                                      ; preds = %bb.cw, %bb.cq
  %i.kp = phi ptr [ %.val.i.i.i.i.i, %bb.cq ], [ %.val.i.i.i.i.i.i, %bb.cw ]
  %i.kq = phi i64 [ %.val21.i.i.i.i.i, %bb.cq ], [ %.val21.i.i.i.i.i.i, %bb.cw ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.kp, i64 noundef %i.kq) #19
          to label %.cont.i.i unwind label %bb.dg, !noalias !6100

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i: ; preds = %bb.cu, %bb.cw, %bb.cv
  %.sroa.06.0.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i, %bb.cw ], [ inttoptr (i64 16 to ptr), %bb.cv ], [ %.val.i.i.i.i.i.i, %bb.cu ]
  store ptr %.sroa.06.0.i.i.i.i.i.i, ptr %.sink.i.sroa.gep16.i.i.i.i.i, align 8, !alias.scope !6145, !noalias !6153
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, %bb.ct
  %.sink.i.sroa.phi.i.i.i.i.i = phi ptr [ %.sink.i.sroa.gep.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ], [ %.sink.i.sroa.gep16.i.i.i.i.i, %bb.ct ]
  %.sroa.58.0.sink.i.i.i.i.i.i = phi i64 [ %.val21.i.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ], [ %i.ki, %bb.ct ]
  %i.kr = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ], [ 1, %bb.ct ]
  store i64 %.sroa.58.0.sink.i.i.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i.i.i, align 8, !alias.scope !6145, !noalias !6153
  store i64 %i.kr, ptr %i.c, align 8, !alias.scope !6145, !noalias !6153
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 2320
  call void @llvm.experimental.noalias.scope.decl(metadata !6154)
  call void @llvm.experimental.noalias.scope.decl(metadata !6157)
  %i.kt = load i64, ptr %i.ks, align 8, !range !25, !alias.scope !6159, !noalias !6160, !noundef !6
  %i.ku = trunc nuw i64 %i.kt to i1
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 2328 ; 2 uses
  br i1 %i.ku, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i
  %i.kw = load i64, ptr %i.kv, align 8, !alias.scope !6159, !noalias !6160, !noundef !6
  br label %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.cy:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 2343
  %i.ky = load i8, ptr %i.kx, align 1, !alias.scope !6159, !noalias !6160, !noundef !6
  %.not.i1.i.i.i.i.i = icmp sgt i8 %i.ky, -1
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 2336
  %.val.i11.i.i.i.i.i = load ptr, ptr %i.kv, align 8, !alias.scope !6159, !noalias !6160 ; 5 uses
  %.val21.i12.i.i.i.i.i = load i64, ptr %i.kz, align 8, !alias.scope !6159, !noalias !6160 ; 2 uses
  br i1 %.not.i1.i.i.i.i.i, label %bb.cz, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i

bb.cz:                                            ; preds = %bb.cy
  %.not.i.i.i13.i.i.i.i.i = icmp eq ptr %.val.i11.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.la = getelementptr inbounds i8, ptr %.val.i11.i.i.i.i.i, i64 -16
  %i.lb = atomicrmw add ptr %i.la, i64 1 monotonic, align 8, !noalias !6161
  %i.lc = icmp slt i64 %i.lb, 0
  br i1 %i.lc, label %bb.db, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i, !prof !13

bb.db:                                            ; preds = %bb.da
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i.i.i.i.i, i64 noundef %.val21.i12.i.i.i.i.i) #19
          to label %.noexc.i.i.i.i.i unwind label %bb.dc, !noalias !6162

.noexc.i.i.i.i.i:                                 ; preds = %bb.db
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i: ; preds = %bb.cy, %bb.da, %bb.cz
  %.sroa.06.0.i6.i.i.i.i.i = phi ptr [ %.val.i11.i.i.i.i.i, %bb.da ], [ inttoptr (i64 16 to ptr), %bb.cz ], [ %.val.i11.i.i.i.i.i, %bb.cy ]
  %4 = ptrtoint ptr %.sroa.06.0.i6.i.i.i.i.i to i64
  store i64 %4, ptr %.sroa.4.i.i.i.i.i, align 8, !alias.scope !6154, !noalias !6163
  br label %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.dc:                                            ; preds = %bb.db
  %i.ld = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  %i.lf = load i8, ptr %i.le, align 1, !alias.scope !6164, !noalias !6143
  %.not.i.i.i.i.i.i.i.i.i = icmp slt i8 %i.lf, 0
  %or.cond.i.not.i.i.i.i.i = select i1 %i.kg, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.not.i.i.i.i.i, label %bb.dr, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i.i.i.i.i)
          to label %bb.dr unwind label %bb.de, !noalias !6162

bb.de:                                            ; preds = %bb.dd
  %i.lg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !6162
  unreachable

_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i, %bb.cx
  %.sink.i7.sroa.phi.i.i.i.i.i = phi ptr [ %.sroa.6.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i ], [ %.sroa.4.i.i.i.i.i, %bb.cx ]
  %.sroa.58.0.sink.i8.i.i.i.i.i = phi i64 [ %.val21.i12.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i ], [ %i.kw, %bb.cx ]
  %storemerge.i9.i.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i ], [ 1, %bb.cx ]
  store i64 %.sroa.58.0.sink.i8.i.i.i.i.i, ptr %.sink.i7.sroa.phi.i.i.i.i.i, align 8, !alias.scope !6154, !noalias !6163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !6138
  %.sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.i.i.i.i.i, align 8, !noalias !6143
  %.sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.i.i.i.i.i, align 8, !noalias !6143
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6143
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %storemerge.i9.i.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6124, !noalias !6138
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6124, !noalias !6138
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6124, !noalias !6138
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %.noexc72.i.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !6167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6123
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

bb.df:                                            ; preds = %bb.cj
  store i64 -1, ptr %i.k, align 8, !alias.scope !6117, !noalias !6167
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

bb.dg:                                            ; preds = %.invoke.i.i, %bb.cr
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.df, %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6092
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 2000
  invoke fastcc void @_RNvXs_NtNtCsgGgPqgSfnMH_7storage4rbac4authNtB4_4AuthNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.li)
          to label %bb.di unwind label %bb.dh, !noalias !6100

bb.dh:                                            ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i
  %i.lj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6092
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k) #20
          to label %bb.dr unwind label %bb.dp, !noalias !6100

bb.di:                                            ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 2128
  call void @llvm.experimental.noalias.scope.decl(metadata !6168)
  %i.ll = load ptr, ptr %i.lk, align 8, !alias.scope !6168, !noalias !6171, !nonnull !6, !noundef !6 ; 2 uses
  %i.lm = atomicrmw add ptr %i.ll, i64 1 monotonic, align 8, !noalias !6173
  %i.ln = icmp slt i64 %i.lm, 0
  br i1 %i.ln, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 2136
  %i.lp = load ptr, ptr %i.lo, align 8, !alias.scope !6168, !noalias !6171, !nonnull !6, !noundef !6 ; 2 uses
  %i.lq = atomicrmw add ptr %i.lp, i64 1 monotonic, align 8, !noalias !6173
  %i.lr = icmp slt i64 %i.lq, 0
  br i1 %i.lr, label %bb.dm, label %bb.dl

bb.dk:                                            ; preds = %bb.di
  call void @llvm.trap()
  unreachable

bb.dl:                                            ; preds = %bb.dj
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 2152
  %i.lt = load i8, ptr %i.ls, align 8, !range !743, !alias.scope !6168, !noalias !6171, !noundef !6
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 2144
  %i.lv = load ptr, ptr %i.lu, align 8, !alias.scope !6168, !noalias !6171, !nonnull !6, !noundef !6 ; 2 uses
  %i.lw = atomicrmw add ptr %i.lv, i64 1 monotonic, align 8, !noalias !6173
  %i.lx = icmp slt i64 %i.lw, 0
  br i1 %i.lx, label %bb.dn, label %bb.do

bb.dm:                                            ; preds = %bb.dj
  call void @llvm.trap()
  unreachable

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.trap()
  unreachable

bb.do:                                            ; preds = %bb.dl
  call void @llvm.experimental.noalias.scope.decl(metadata !6174)
  call void @llvm.experimental.noalias.scope.decl(metadata !6177)
  call void @llvm.experimental.noalias.scope.decl(metadata !6179)
  call void @llvm.experimental.noalias.scope.decl(metadata !6181)
  call void @llvm.experimental.noalias.scope.decl(metadata !6183)
  %.sroa.0144.sroa.0.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0144.sroa.0.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.0144.sroa.0.48..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(256) %i.n, i64 256, i1 false), !alias.scope !6185, !noalias !6187
  %.sroa.0144.sroa.0.432..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0144.sroa.0.i.i, i64 432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0144.sroa.0.432..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !alias.scope !6190, !noalias !6191
  %.sroa.0144.sroa.0.480..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0144.sroa.0.i.i, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0144.sroa.0.480..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !alias.scope !6192, !noalias !6193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0144.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false), !alias.scope !6194, !noalias !6195
  %.sroa.0144.sroa.0.304..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0144.sroa.0.i.i, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0144.sroa.0.304..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false), !alias.scope !6196, !noalias !6197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.ii, ptr noundef nonnull align 8 dereferenceable(504) %.sroa.0144.sroa.0.i.i, i64 504, i1 false), !noalias !6092
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0144.sroa.0.i.i)
  %.sroa.0151.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2888
  store ptr %i.ll, ptr %.sroa.0151.sroa.8.0..sroa_idx.i.i, align 8, !noalias !6092
  %.sroa.0151.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2896
  store ptr %i.lp, ptr %.sroa.0151.sroa.9.0..sroa_idx.i.i, align 8, !noalias !6092
  %.sroa.0151.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2904
  store ptr %i.lv, ptr %.sroa.0151.sroa.10.0..sroa_idx.i.i, align 8, !noalias !6092
  %.sroa.0151.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2912
  store i8 %i.lt, ptr %.sroa.0151.sroa.11.0..sroa_idx.i.i, align 8, !noalias !6092
  %.sroa.8152.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2920
  store ptr %i.jk, ptr %.sroa.8152.0..sroa_idx.i.i, align 8, !noalias !6092
  %.sroa.9153.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2928
  store ptr %.val59.i.i, ptr %.sroa.9153.0..sroa_idx.i.i, align 8, !noalias !6092
  %.sroa.10154.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2936
  store i64 %.val60.i.i, ptr %.sroa.10154.0..sroa_idx.i.i, align 8, !noalias !6092
  %.sroa.12156.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4960
  store i8 0, ptr %.sroa.12156.0..sroa_idx.i.i, align 8, !noalias !6092
  br label %bb.dv

bb.dp:                                            ; preds = %bb.hs, %bb.hr, %bb.hq, %bb.ho, %bb.hm, %bb.hl, %bb.hk, %bb.hh, %bb.hf, %bb.he, %bb.hd, %bb.hb, %bb.ha, %bb.gz, %bb.gw, %bb.ep, %bb.em, %bb.dw, %bb.dr, %bb.dh, %bb.ci
  %i.ly = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !6100
  unreachable

bb.dq:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6092
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0144.sroa.0.i.i)
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dh, %bb.dg, %bb.dd, %bb.dc
  %.pn14.pn.pn.ph.i.i = phi { ptr, i32 } [ %i.ld, %bb.dc ], [ %i.ld, %bb.dd ], [ %i.lh, %bb.dg ], [ %i.lj, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(256) %i.n) #20
          to label %bb.dq unwind label %bb.dp, !noalias !6100

bb.ds:                                            ; preds = %bb.ea, %bb.dw, %bb.dq
  %i.lz = phi ptr [ %i.id, %bb.dq ], [ %i.na, %bb.ea ], [ %i.na, %bb.dw ]
  %i.ma = phi ptr [ %i.ie, %bb.dq ], [ %i.nb, %bb.ea ], [ %i.nb, %bb.dw ]
  %i.mb = phi ptr [ %i.if, %bb.dq ], [ %i.nc, %bb.ea ], [ %i.nc, %bb.dw ]
  %i.mc = phi ptr [ %i.ig, %bb.dq ], [ %i.nd, %bb.ea ], [ %i.nd, %bb.dw ]
  %.pn30.i.i = phi { ptr, i32 } [ %.pn14.pn.pn.ph.i.i, %bb.dq ], [ %i.ni, %bb.ea ], [ %i.nf, %bb.dw ]
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 2379 ; 2 uses
  %i.me = load i8, ptr %i.md, align 1, !range !743, !noalias !6092, !noundef !6
  %i.mf = trunc nuw i8 %i.me to i1
  br i1 %i.mf, label %bb.em, label %bb.el

bb.dt:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6092
  br label %bb.en

.body80.i.i:                                      ; preds = %bb.he, %bb.ft, %bb.fb, %bb.ey, %bb.en, %bb.cd
  %i.mg = phi ptr [ %i.id, %bb.cd ], [ %i.pa, %bb.he ], [ %i.pa, %bb.en ], [ %i.nl, %bb.ey ], [ %i.qc, %bb.fb ], [ %i.ot, %bb.ft ] ; 2 uses
  %i.mh = phi ptr [ %i.ie, %bb.cd ], [ %i.pb, %bb.he ], [ %i.pb, %bb.en ], [ %i.nm, %bb.ey ], [ %i.qd, %bb.fb ], [ %i.ou, %bb.ft ] ; 2 uses
  %i.mi = phi ptr [ %i.if, %bb.cd ], [ %i.pc, %bb.he ], [ %i.pc, %bb.en ], [ %i.nn, %bb.ey ], [ %i.qe, %bb.fb ], [ %i.ov, %bb.ft ] ; 2 uses
  %i.mj = phi ptr [ %i.ig, %bb.cd ], [ %i.pd, %bb.he ], [ %i.pd, %bb.en ], [ %i.no, %bb.ey ], [ %i.qf, %bb.fb ], [ %i.ow, %bb.ft ] ; 2 uses
  %.pn34.i.i = phi { ptr, i32 } [ %i.iw, %bb.cd ], [ %.pn30.pn.pn.i.i, %bb.he ], [ %.pn30.pn.pn.i.i, %bb.en ], [ %i.qa, %bb.ey ], [ %i.qg, %bb.fb ], [ %i.sr, %bb.ft ] ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 2369
  store i8 0, ptr %i.mk, align 1, !noalias !6092
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 2370
  %i.mm = load i8, ptr %i.ml, align 2, !range !743, !noalias !6092, !noundef !6
  %i.mn = trunc nuw i8 %i.mm to i1
  br i1 %i.mn, label %bb.hf, label %bb.fe

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant.exit.i72.i: ; preds = %bb.gb, %bb.fy, %bb.fw
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 2373
  store i8 0, ptr %i.mo, align 1, !noalias !6092
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 2380
  store i8 0, ptr %i.mp, align 4, !noalias !6092
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 2371 ; 2 uses
  %i.mr = load i8, ptr %i.mq, align 1, !range !743, !noalias !6092, !noundef !6
  %i.ms = trunc nuw i8 %i.mr to i1
  br i1 %i.ms, label %bb.gf, label %bb.ge

end_hunk_1
