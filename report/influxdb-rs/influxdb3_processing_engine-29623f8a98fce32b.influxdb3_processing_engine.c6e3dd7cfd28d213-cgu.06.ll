Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_processing_engine-29623f8a98fce32b.influxdb3_processing_engine.c6e3dd7cfd28d213-cgu.06?download=true
inline.NumInlined: 594
inline.NumDeleted: 238
begin_hunk_0_@_RNvNtCsh4GC5dvIChH_27influxdb3_processing_engine10virtualenv15initialize_venv:bb.a
          cleanup
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !6, !noundef !6
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCs2AWtUsOyxgP_3std2fs8metadataRNtNtB4_4path4PathECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %i.al)
          to label %bb.g unwind label %bb.f

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsh4GC5dvIChH_27influxdb3_processing_engine.exit
  %i.am = load i64, ptr %i.c, align 8, !range !17, !noundef !6
  %.not.i = icmp eq i64 %i.am, 2
  br i1 %.not.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.an)
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.z, ptr %i.w, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXsG_NtCs2AWtUsOyxgP_3std4pathNtB5_7PathBufNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.425.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull @112, ptr noundef nonnull %i.w)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsh4GC5dvIChH_27influxdb3_processing_engine.exit unwind label %bb.f

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3newReECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) @113, i64 noundef 4)
          to label %bb.n unwind label %bb.f

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.cd, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsh4GC5dvIChH_27influxdb3_processing_engine.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsh4GC5dvIChH_27influxdb3_processing_engine.exit103 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.b, %.body, %bb.br, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.ft, %bb.br ], [ %i.ao, %bb.l ], [ %.pn94, %.body ], [ %i.ae, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.j
  %i.aq = invoke noundef nonnull align 8 ptr @_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 2)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.s, %bb.t, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsh4GC5dvIChH_27influxdb3_processing_engine.exit105, %bb.r, %bb.p, %bb.n
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std7process7CommandECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(200) %i.t) #30
          to label %.body unwind label %bb.bo

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.as = load ptr, ptr %i.ai, align 8, !nonnull !6, !noundef !6
  %i.at = load i64, ptr %i.ak, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef %i.at)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.au = load i64, ptr %i.b, align 8, !range !9, !noundef !6
  %i.av = trunc nuw i64 %i.au to i1
  br i1 %i.av, label %bb.r, label %bb.s, !prof !7

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #33
          to label %bb.ce unwind label %bb.o

bb.s:                                             ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !6, !noundef !6
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.ax, ptr %i.r, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.az, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.r, ptr %i.q, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsh4GC5dvIChH_27influxdb3_processing_engine, ptr %.sroa.431.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull @115, ptr noundef nonnull %i.q)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsh4GC5dvIChH_27influxdb3_processing_engine.exit105 unwind label %bb.o

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsh4GC5dvIChH_27influxdb3_processing_engine.exit105: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.bb = invoke noundef nonnull align 8 ptr @_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.aq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.t unwind label %bb.o

bb.t:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsh4GC5dvIChH_27influxdb3_processing_engine.exit105
  invoke void @_RNvMsk_NtCs2AWtUsOyxgP_3std7processNtB5_7Command6output(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(200) %i.bb)
          to label %bb.u unwind label %bb.o

bb.u:                                             ; preds = %bb.t
  %i.bc = load i64, ptr %i.u, align 8, !range !10, !noundef !6 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, -1
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  br i1 %i.bd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 -1, ptr %0, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %.sroa.438.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std7process7CommandECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(200) %i.t)
          to label %bb.cf unwind label %bb.f

bb.w:                                             ; preds = %bb.u
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.536.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 %i.bc, ptr %i.v, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.bf, ptr %.sroa.47.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std7process7CommandECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(200) %i.t)
          to label %bb.y unwind label %bb.x

.body110:                                         ; preds = %bb.ca, %bb.ap, %bb.x, %bb.bu, %bb.bp, %.body113, %.loopexit.split-lp
  %.pn92 = phi { ptr, i32 } [ %i.fz, %bb.bu ], [ %lpad.phi, %.loopexit.split-lp ], [ %.pn, %.body113 ], [ %.pn, %bb.bp ], [ %i.dz, %bb.ap ], [ %i.bg, %bb.x ], [ %i.gk, %bb.ca ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std7process6OutputECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(56) %i.v) #30
          to label %.body unwind label %bb.bo

bb.x:                                             ; preds = %.invoke, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i120, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsh4GC5dvIChH_27influxdb3_processing_engine.exit, %bb.aa, %bb.z, %bb.w
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body110

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.bi = load i32, ptr %i.bh, align 8, !noundef !6
  %.not87 = icmp eq i32 %i.bi, 0
  br i1 %.not87, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !6, !noundef !6
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !6
  invoke void @_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm)
          to label %bb.bt unwind label %bb.x

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.bn = load ptr, ptr %.sroa.47.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  %i.bo = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !6
  invoke void @_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bo)
          to label %.lr.ph.i unwind label %bb.x

.loopexit:                                        ; preds = %bb.ai
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.ac
  %lpad.loopexit130 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.an
  %lpad.loopexit.split-lp131 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit130, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp131, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(24) %i.o) #30
          to label %.body110 unwind label %bb.bo

.lr.ph.i:                                         ; preds = %bb.aa
  %i.bp = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !6 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bs = load i64, ptr %i.br, align 8            ; 7 uses
  br label %bb.ab

bb.ab:                                            ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map15filter_map_foldReTB1a_B1a_EuNCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine10virtualenv15initialize_venv0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1c_NCB1p_s_0E0E0B1t_.exit.i, %.lr.ph.i
  %i.bt = phi i64 [ 0, %.lr.ph.i ], [ %3, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map15filter_map_foldReTB1a_B1a_EuNCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine10virtualenv15initialize_venv0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1c_NCB1p_s_0E0E0B1t_.exit.i ] ; 3 uses
  %.lcssa1617.i = phi i64 [ 0, %.lr.ph.i ], [ %.lcssa15.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map15filter_map_foldReTB1a_B1a_EuNCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine10virtualenv15initialize_venv0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1c_NCB1p_s_0E0E0B1t_.exit.i ] ; 5 uses
  %i.bu = icmp ult i64 %i.bs, %i.bt
  br i1 %i.bu, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.ab, %bb.af
  %i.bv = phi i64 [ %i.ck, %bb.af ], [ %i.bt, %bb.ab ] ; 5 uses
  %i.bw = sub nuw i64 %i.bs, %i.bv                ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv ; 2 uses
  %i.by = icmp samesign ult i64 %i.bw, 16
  br i1 %i.by, label %.preheader.i.i.i.i.i.i.i, label %bb.ac

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.bz = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bx, i64 noundef range(i64 0, -9223372036854775808) %i.bw)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %i.bw, %bb.ad ], [ %.sroa.01.05.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ 0, %bb.ad ], [ 1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ca = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i, 0
  %i.cb = insertvalue { i64, i64 } %i.ca, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.ad
  %.sroa.01.05.i.i.i.i.i.i.i = phi i64 [ %i.cf, %bb.ad ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sroa.01.05.i.i.i.i.i.i.i
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !733, !noalias !734, !noundef !6
  %i.ce = icmp eq i8 %i.cd, 10
  br i1 %i.ce, label %._crit_edge.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cf = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.cf, %i.bw
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i: ; preds = %bb.ac, %._crit_edge.i.i.i.i.i.i.i
  %.merged.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.cb, %._crit_edge.i.i.i.i.i.i.i ], [ %i.bz, %bb.ac ] ; 2 uses
  %i.cg = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 0
  %i.ch = trunc nuw i64 %i.cg to i1
  br i1 %i.ch, label %bb.ae, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i.i

bb.ae:                                            ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  %i.ci = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.cj = add i64 %i.bv, 1
  %i.ck = add i64 %i.cj, %i.ci                    ; 6 uses
  %.not13.i.i.i.i.i.i = icmp ugt i64 %i.ck, %i.bs
  %i.cl = add i64 %i.bv, %i.ci
  %or.cond.i.i.i.i.i.i.not = icmp ult i64 %i.cl, %i.bs
  br i1 %or.cond.i.i.i.i.i.i.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ag, %bb.ae
  br i1 %.not13.i.i.i.i.i.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.cm = getelementptr i8, ptr %i.bq, i64 %i.bv
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.ci
  %lhsc = load i8, ptr %i.cn, align 1
  %i.co = icmp eq i8 %lhsc, 10
  br i1 %i.co, label %select.unfold.i.i.i, label %bb.af

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i.i: ; preds = %bb.af, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i, %bb.ab
  %i.cp = phi i64 [ %i.bt, %bb.ab ], [ %i.ck, %bb.af ], [ %i.bs, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i ]
  %.not.i3.i.i.i.i.i.not = icmp eq i64 %i.bs, %.lcssa1617.i
  br i1 %.not.i3.i.i.i.i.i.not, label %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4folduNCINvNtNtBN_8adapters10filter_map15filter_map_foldReTB2g_B2g_EuNCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine10virtualenv15initialize_venv0NCINvNvBH_8for_each4callB2i_NCB2v_s_0E0E0EB2z_.exit, label %select.unfold.i.i.i

select.unfold.i.i.i:                              ; preds = %bb.ag, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i.i
  %3 = phi i64 [ %i.cp, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i.i ], [ %i.ck, %bb.ag ]
  %.lcssa15.i = phi i64 [ %.lcssa1617.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i.i ], [ %i.ck, %bb.ag ]
  %4 = phi i1 [ true, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i.i ], [ false, %bb.ag ]
  %.pn.i = phi i64 [ %i.bs, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i.i ], [ %i.ck, %bb.ag ] ; 2 uses
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn.i, %.lcssa1617.i ; 3 uses
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.lcssa1617.i ; 4 uses
  %i.cq = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i.i.i.i.i, 0
  %i.cr = insertvalue { ptr, i64 } %i.cq, i64 %.sroa.4.1.i.i.i.i.i, 1 ; 3 uses
  %.not.i.i.i.i4.i.i.i = icmp eq i64 %.pn.i, %.lcssa1617.i
  %.pre.i.i.i5.i.i.i = add i64 %.sroa.4.1.i.i.i.i.i, -1 ; 3 uses
  br i1 %.not.i.i.i.i4.i.i.i, label %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i.i.i: ; preds = %select.unfold.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 %.pre.i.i.i5.i.i.i
  %rhsc.i.i.i.i.i = load i8, ptr %i.cs, align 1, !alias.scope !735, !noalias !736
  %rhsc.fr.i.i.i.i.i = freeze i8 %rhsc.i.i.i.i.i
  %i.ct = icmp eq i8 %rhsc.fr.i.i.i.i.i, 10
  br i1 %i.ct, label %bb.ah, label %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i

bb.ah:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i.i.i
  %i.cu = insertvalue { ptr, i64 } %i.cr, i64 %.pre.i.i.i5.i.i.i, 1
  %.not.i.i15.i.i.i.i.i = icmp eq i64 %.pre.i.i.i5.i.i.i, 0
  %.pre.i16.i.i.i.i.i = add i64 %.sroa.4.1.i.i.i.i.i, -2 ; 2 uses
  br i1 %.not.i.i15.i.i.i.i.i, label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i.i.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i17.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i17.i.i.i.i.i: ; preds = %bb.ah
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 %.pre.i16.i.i.i.i.i
  %rhsc4.i.i.i.i.i = load i8, ptr %i.cv, align 1, !alias.scope !735, !noalias !736
  %rhsc4.fr.i.i.i.i.i = freeze i8 %rhsc4.i.i.i.i.i
  %i.cw = icmp eq i8 %rhsc4.fr.i.i.i.i.i, 13
  %spec.select.i20.i.i.i.i.i = select i1 %i.cw, ptr %.sroa.0.1.i.i.i.i.i, ptr null
  br label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i.i.i.i.i

_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i.i.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i17.i.i.i.i.i, %bb.ah
  %i.cx = phi ptr [ %spec.select.i20.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i17.i.i.i.i.i ], [ null, %bb.ah ] ; 2 uses
  %i.cy = insertvalue { ptr, i64 } poison, ptr %i.cx, 0
  %i.cz = insertvalue { ptr, i64 } %i.cy, i64 %.pre.i16.i.i.i.i.i, 1
  %.not14.i.i.i.i.i = icmp eq ptr %i.cx, null
  %..i.i.i.i.i = select i1 %.not14.i.i.i.i.i, { ptr, i64 } %i.cu, { ptr, i64 } %i.cz
  br label %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i

_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i: ; preds = %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i.i.i, %select.unfold.i.i.i
  %.merged.i.i.i.i.i = phi { ptr, i64 } [ %..i.i.i.i.i, %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i.i.i.i.i ], [ %i.cr, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i.i.i ], [ %i.cr, %select.unfold.i.i.i ] ; 2 uses
  %i.da = extractvalue { ptr, i64 } %.merged.i.i.i.i.i, 0 ; 5 uses
  %i.db = extractvalue { ptr, i64 } %.merged.i.i.i.i.i, 1 ; 4 uses
  %.not.i106 = icmp eq ptr %i.da, null
  br i1 %.not.i106, label %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4folduNCINvNtNtBN_8adapters10filter_map15filter_map_foldReTB2g_B2g_EuNCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine10virtualenv15initialize_venv0NCINvNvBH_8for_each4callB2i_NCB2v_s_0E0E0EB2z_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i, %bb.al
  %i.dc = phi i64 [ %i.dr, %bb.al ], [ 0, %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i ] ; 4 uses
  %i.dd = sub nuw i64 %i.db, %i.dc                ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dc ; 2 uses
  %i.df = icmp samesign ult i64 %i.dd, 16
  br i1 %i.df, label %.preheader.i.i.i.i.i.i, label %bb.ai

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i
  %.not.i.i.i.i.i6.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i.i.i6.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i

bb.ai:                                            ; preds = %.preheader.i
  %i.dg = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 61, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.de, i64 noundef range(i64 0, -9223372036854775808) %i.dd)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i unwind label %.loopexit

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.aj, %.lr.ph.i.i.i.i.i7.i, %.preheader.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i7.i ], [ %i.dd, %bb.aj ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i7.i ], [ 0, %bb.aj ]
  %i.dh = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i, 0
  %i.di = insertvalue { i64, i64 } %i.dh, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i7.i:                              ; preds = %.preheader.i.i.i.i.i.i, %bb.aj
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.dm, %bb.aj ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !737, !noalias !738, !noundef !6
  %i.dl = icmp eq i8 %i.dk, 61
  br i1 %i.dl, label %._crit_edge.i.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i7.i
  %i.dm = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.dm, %i.dd
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i7.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i: ; preds = %bb.ai, %._crit_edge.i.i.i.i.i.i
  %.merged.i.i.i.i.i.i = phi { i64, i64 } [ %i.di, %._crit_edge.i.i.i.i.i.i ], [ %i.dg, %bb.ai ] ; 2 uses
  %i.dn = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 0
  %i.do = trunc nuw i64 %i.dn to i1
  br i1 %i.do, label %bb.ak, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map15filter_map_foldReTB1a_B1a_EuNCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine10virtualenv15initialize_venv0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1c_NCB1p_s_0E0E0B1t_.exit.i

bb.ak:                                            ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i
  %i.dp = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 1 ; 2 uses
  %i.dq = add i64 %i.dc, 1
  %i.dr = add i64 %i.dq, %i.dp                    ; 4 uses
  %.not13.i.i.i.i.i = icmp ugt i64 %i.dr, %i.db
  %i.ds = add i64 %i.dp, %i.dc                    ; 3 uses
  %or.cond.i.not.i.i.i.i = icmp ult i64 %i.ds, %i.db
  br i1 %or.cond.i.not.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  br i1 %.not13.i.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map15filter_map_foldReTB1a_B1a_EuNCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine10virtualenv15initialize_venv0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1c_NCB1p_s_0E0E0B1t_.exit.i, label %.preheader.i

bb.am:                                            ; preds = %bb.ak
  %i.dt = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ds
  %lhsc.i.i.i.i = load i8, ptr %i.dt, align 1, !alias.scope !739, !noalias !740
  %i.du = icmp eq i8 %lhsc.i.i.i.i, 61
  br i1 %i.du, label %bb.an, label %bb.al

bb.an:                                            ; preds = %bb.am
  %i.dv = sub nuw i64 %i.db, %i.dr
  %i.dw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dr
  invoke void @_RINvNtCs2AWtUsOyxgP_3std3env7set_varReBy_ECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.da, i64 noundef %i.ds, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dw, i64 noundef %i.dv)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map15filter_map_foldReTB1a_B1a_EuNCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine10virtualenv15initialize_venv0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1c_NCB1p_s_0E0E0B1t_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map15filter_map_foldReTB1a_B1a_EuNCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine10virtualenv15initialize_venv0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1c_NCB1p_s_0E0E0B1t_.exit.i: ; preds = %bb.al, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i, %bb.an
  br i1 %4, label %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4folduNCINvNtNtBN_8adapters10filter_map15filter_map_foldReTB2g_B2g_EuNCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine10virtualenv15initialize_venv0NCINvNvBH_8for_each4callB2i_NCB2v_s_0E0E0EB2z_.exit, label %bb.ab

_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4folduNCINvNtNtBN_8adapters10filter_map15filter_map_foldReTB2g_B2g_EuNCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine10virtualenv15initialize_venv0NCINvNvBH_8for_each4callB2i_NCB2v_s_0E0E0EB2z_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map15filter_map_foldReTB1a_B1a_EuNCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine10virtualenv15initialize_venv0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1c_NCB1p_s_0E0E0B1t_.exit.i, %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i.i
  %i.dx = load i64, ptr %i.o, align 8, !range !10, !alias.scope !741, !noundef !6
  %i.dy = icmp eq i64 %i.dx, -1
  br i1 %i.dy, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsh4GC5dvIChH_27influxdb3_processing_engine.exit, label %bb.ao

bb.ao:                                            ; preds = %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4folduNCINvNtNtBN_8adapters10filter_map15filter_map_foldReTB2g_B2g_EuNCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine10virtualenv15initialize_venv0NCINvNvBH_8for_each4callB2i_NCB2v_s_0E0E0EB2z_.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body110 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i: ; preds = %bb.ao
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsh4GC5dvIChH_27influxdb3_processing_engine.exit unwind label %bb.x

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4folduNCINvNtNtBN_8adapters10filter_map15filter_map_foldReTB2g_B2g_EuNCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine10virtualenv15initialize_venv0NCINvNvBH_8for_each4callB2i_NCB2v_s_0E0E0EB2z_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RINvNtCs2AWtUsOyxgP_3std3env3varReECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 11)
          to label %bb.ar unwind label %bb.x

bb.ar:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsh4GC5dvIChH_27influxdb3_processing_engine.exit
  %i.eb = load i64, ptr %i.n, align 8, !range !9, !noundef !6
  %i.ec = trunc nuw i64 %i.eb to i1
  br i1 %i.ec, label %.invoke, label %bb.at

bb.as:                                            ; preds = %bb.az, %bb.bj, %bb.bh, %bb.bg, %bb.aw, %bb.av
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m) #30
          to label %.body113 unwind label %bb.bo

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.ee, i64 24, i1 false)
  %i.ef = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.eg = icmp ult i64 %i.ef, 2
  br i1 %i.eg, label %bb.au, label %bb.be

bb.au:                                            ; preds = %bb.at
  %i.eh = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsh4GC5dvIChH_27influxdb3_processing_engine10virtualenv15initialize_venv10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.eh, label %bb.av [
    i8 0, label %bb.be
    i8 1, label %bb.aw
    i8 2, label %bb.aw
  ], !prof !25

bb.av:                                            ; preds = %bb.au
  %i.ei = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtCsh4GC5dvIChH_27influxdb3_processing_engine10virtualenv15initialize_venv10___CALLSITE)
          to label %bb.ax unwind label %bb.as     ; 2 uses

bb.aw:                                            ; preds = %bb.au, %bb.au, %bb.ax
  %.sroa.018.0 = phi i8 [ %i.ei, %bb.ax ], [ %i.eh, %bb.au ], [ %i.eh, %bb.au ]
  %i.ej = load ptr, ptr @_RNvNvNtCsh4GC5dvIChH_27influxdb3_processing_engine10virtualenv15initialize_venv10___CALLSITE, align 8, !nonnull !6, !align !11, !noundef !6
  %i.ek = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ej, i8 noundef %.sroa.018.0)
          to label %bb.ay unwind label %bb.as

bb.ax:                                            ; preds = %bb.av
  %i.el = icmp eq i8 %i.ei, 0
  br i1 %i.el, label %bb.be, label %bb.aw

bb.ay:                                            ; preds = %bb.aw
  br i1 %i.ek, label %bb.az, label %bb.be

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.em = load ptr, ptr @_RNvNvNtCsh4GC5dvIChH_27influxdb3_processing_engine10virtualenv15initialize_venv10___CALLSITE, align 8, !nonnull !6, !align !11, !noundef !6
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.m, ptr %i.i, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.472.0..sroa_idx, align 8
  store ptr @116, ptr %i.j, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.eo, align 8
  store ptr %i.j, ptr %i.k, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @71, ptr %i.ep, align 8
  store i64 1, ptr %i.l, align 8
  %.sroa.020.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %.sroa.020.sroa.4.0..sroa_idx, align 8
  %.sroa.020.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 1, ptr %.sroa.020.sroa.5.0..sroa_idx, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.en, ptr %.sroa.421.0..sroa_idx, align 8
  invoke fastcc void @_RNCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine10virtualenv15initialize_venvs0_0B5_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.l)
          to label %bb.ba unwind label %bb.as

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bk, %bb.bf, %bb.be, %bb.ba
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body113 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i: ; preds = %bb.bb
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit unwind label %bb.bm

bb.be:                                            ; preds = %bb.ax, %bb.au, %bb.at, %bb.ay
  %i.es = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.et = icmp eq i8 %i.es, 0
  br i1 %i.et, label %bb.bf, label %bb.bb

bb.bf:                                            ; preds = %bb.be
  %i.eu = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ev = icmp ult i64 %i.eu, 6
  call void @llvm.assume(i1 %i.ev)
  %i.ew = icmp samesign ugt i64 %i.eu, 3
  br i1 %i.ew, label %bb.bg, label %bb.bb

bb.bg:                                            ; preds = %bb.bf
  %i.ex = load ptr, ptr @_RNvNvNtCsh4GC5dvIChH_27influxdb3_processing_engine10virtualenv15initialize_venv10___CALLSITE, align 8, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8, !nonnull !6, !noundef !6
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %i.fb = load i64, ptr %i.fa, align 8, !noundef !6
  store i64 4, ptr %i.h, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ez, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.fb, ptr %.sroa.577.0..sroa_idx, align 8
  %i.fc = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.bh unwind label %bb.as     ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  %i.fd = extractvalue { ptr, ptr } %i.fc, 0      ; 2 uses
  %i.fe = extractvalue { ptr, ptr } %i.fc, 1      ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !invariant.load !6, !nonnull !6
  %i.fh = invoke noundef zeroext i1 %i.fg(ptr noundef %i.fd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.bi unwind label %bb.as

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.fh, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.fi = load ptr, ptr @_RNvNvNtCsh4GC5dvIChH_27influxdb3_processing_engine10virtualenv15initialize_venv10___CALLSITE, align 8, !nonnull !6, !align !11, !noundef !6
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.m, ptr %i.d, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.481.0..sroa_idx, align 8
  store ptr @116, ptr %i.e, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %i.fk, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @71, ptr %i.fl, align 8
  store i64 1, ptr %i.g, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %.sroa.483.0..sroa_idx, align 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 1, ptr %.sroa.584.0..sroa_idx, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.fj, ptr %i.fm, align 8
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ex, ptr noundef nonnull %i.fd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fe, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.bl unwind label %bb.as

bb.bk:                                            ; preds = %bb.bi, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.bb

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
end_hunk_0
