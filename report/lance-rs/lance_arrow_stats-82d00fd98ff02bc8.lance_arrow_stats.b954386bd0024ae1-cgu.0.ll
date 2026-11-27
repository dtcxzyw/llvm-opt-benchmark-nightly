Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_arrow_stats-82d00fd98ff02bc8.lance_arrow_stats.b954386bd0024ae1-cgu.0?download=true
inline.NumInlined: 392
inline.NumDeleted: 293
begin_hunk_0_@_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone:bb.a
  br label %bb.au

bb.r:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.au

bb.s:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.au

bb.t:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.au

bb.u:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.au

bb.v:                                             ; preds = %bb.a
  store i8 20, ptr %0, align 8
  br label %bb.au

bb.w:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.au

bb.x:                                             ; preds = %bb.a
  store i8 22, ptr %0, align 8
  br label %bb.au

bb.y:                                             ; preds = %bb.a
  store i8 23, ptr %0, align 8
  br label %bb.au

bb.z:                                             ; preds = %bb.a
  store i8 24, ptr %0, align 8
  br label %bb.au

bb.aa:                                            ; preds = %bb.a
  store i8 25, ptr %0, align 8
  br label %bb.au

bb.ab:                                            ; preds = %bb.a
  store i8 26, ptr %0, align 8
  br label %bb.au

bb.ac:                                            ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.k = atomicrmw add ptr %i.j, i64 1 monotonic, align 8
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.az, label %bb.ay

bb.ad:                                            ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.bb, label %bb.ba

bb.ae:                                            ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.s = atomicrmw add ptr %i.r, i64 1 monotonic, align 8
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.bd, label %bb.bc

bb.af:                                            ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.w = atomicrmw add ptr %i.v, i64 1 monotonic, align 8
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.bf, label %bb.be

bb.ag:                                            ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.aa = atomicrmw add ptr %i.z, i64 1 monotonic, align 8
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.bh, label %bb.bg

bb.ah:                                            ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !7
  %i.ag = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %bb.bj, label %bb.bi

bb.ai:                                            ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !7
  %i.am = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.bl, label %bb.bk

bb.aj:                                            ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !1126
  %i.ap = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #18, !noalias !1126 ; 5 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.ak, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE13new_uninit_inCsfUv75jb5FCv_17lance_arrow_stats.exit, !prof !10

bb.ak:                                            ; preds = %bb.aj
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #20, !noalias !1126
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE13new_uninit_inCsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.aj
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !1126, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1127
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as)
          to label %_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfUv75jb5FCv_17lance_arrow_stats.exit unwind label %bb.al, !noalias !1126, !inline_history !1120

common.resume:                                    ; preds = %.body, %bb.al
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.al ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.al:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE13new_uninit_inCsfUv75jb5FCv_17lance_arrow_stats.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ap, i64 noundef 24, i64 noundef 8) #18, !noalias !1126
  br label %common.resume

_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE13new_uninit_inCsfUv75jb5FCv_17lance_arrow_stats.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1127
  store ptr %i.ap, ptr %i.c, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !1128
  %i.au = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #18, !noalias !1128 ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.am, label %.noexc, !prof !10

bb.am:                                            ; preds = %_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfUv75jb5FCv_17lance_arrow_stats.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #20
          to label %.noexc18 unwind label %bb.bm, !noalias !1128

.noexc18:                                         ; preds = %bb.am
  unreachable

.noexc:                                           ; preds = %_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfUv75jb5FCv_17lance_arrow_stats.exit
  %i.aw = load ptr, ptr %i.ao, align 8, !alias.scope !1128, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1129
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
          to label %bb.bn unwind label %bb.an, !noalias !1128, !inline_history !1120

bb.an:                                            ; preds = %.noexc
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef 24, i64 noundef 8) #18, !noalias !1128
  br label %.body

bb.ao:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.au

bb.ap:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.au

bb.aq:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.au

bb.ar:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.au

bb.as:                                            ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ba = atomicrmw add ptr %i.az, i64 1 monotonic, align 8
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.bq, label %bb.bp

bb.at:                                            ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.be = atomicrmw add ptr %i.bd, i64 1 monotonic, align 8
  %i.bf = icmp slt i64 %i.be, 0
  br i1 %i.bf, label %bb.bs, label %bb.br

bb.au:                                            ; preds = %bb.bt, %bb.bp, %bb.bn, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void

bb.av:                                            ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !7
  %i.bi = atomicrmw add ptr %i.h, i64 1 monotonic, align 8
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.o
  %.sroa.5.0 = phi i64 [ undef, %bb.o ], [ %i.bh, %bb.av ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.f, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.bl, align 8
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0, ptr %2, align 8
  store i8 13, ptr %0, align 8
  br label %bb.au

bb.ax:                                            ; preds = %bb.av
  tail call void @llvm.trap()
  unreachable

bb.ay:                                            ; preds = %bb.ac
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.bm, align 8
  store i8 27, ptr %0, align 8
  br label %bb.au

bb.az:                                            ; preds = %bb.ac
  tail call void @llvm.trap()
  unreachable

bb.ba:                                            ; preds = %bb.ad
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.bn, align 8
  store i8 28, ptr %0, align 8
  br label %bb.au

bb.bb:                                            ; preds = %bb.ad
  tail call void @llvm.trap()
  unreachable

bb.bc:                                            ; preds = %bb.ae
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !noundef !7
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bp, ptr %i.br, align 4
  store i8 29, ptr %0, align 8
  br label %bb.au

bb.bd:                                            ; preds = %bb.ae
  tail call void @llvm.trap()
  unreachable

bb.be:                                            ; preds = %bb.af
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.bs, align 8
  store i8 30, ptr %0, align 8
  br label %bb.au

bb.bf:                                            ; preds = %bb.af
  tail call void @llvm.trap()
  unreachable

bb.bg:                                            ; preds = %bb.ag
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.bt, align 8
  store i8 31, ptr %0, align 8
  br label %bb.au

bb.bh:                                            ; preds = %bb.ag
  tail call void @llvm.trap()
  unreachable

bb.bi:                                            ; preds = %bb.ah
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %i.bv, align 8
  store i8 32, ptr %0, align 8
  br label %bb.au

bb.bj:                                            ; preds = %bb.ah
  tail call void @llvm.trap()
  unreachable

bb.bk:                                            ; preds = %bb.ai
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !range !17, !noundef !7
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %i.bz, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.bx, ptr %3, align 1
  store i8 33, ptr %0, align 8
  br label %bb.au

bb.bl:                                            ; preds = %bb.ai
  tail call void @llvm.trap()
  unreachable

bb.bm:                                            ; preds = %bb.am
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.an, %bb.bm
  %eh.lpad-body = phi { ptr, i32 } [ %i.ca, %bb.bm ], [ %i.ax, %bb.an ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #17
          to label %common.resume unwind label %bb.bo

bb.bn:                                            ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1129
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.au, ptr %i.cc, align 8
  store i8 34, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.au

bb.bo:                                            ; preds = %.body
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.bp:                                            ; preds = %bb.as
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !range !17, !noundef !7
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.cg, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.cf, ptr %4, align 1
  store i8 39, ptr %0, align 8
  br label %bb.au

bb.bq:                                            ; preds = %bb.as
  tail call void @llvm.trap()
  unreachable

bb.br:                                            ; preds = %bb.at
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.cj = atomicrmw add ptr %i.ci, i64 1 monotonic, align 8
  %i.ck = icmp slt i64 %i.cj, 0
  br i1 %i.ck, label %bb.bu, label %bb.bt

bb.bs:                                            ; preds = %bb.at
  tail call void @llvm.trap()
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ci, ptr %i.cm, align 8
  store i8 40, ptr %0, align 8
  br label %bb.au

bb.bu:                                            ; preds = %bb.br
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !1130 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = load i8, ptr %0, align 8, !range !8, !noundef !7
  switch i8 %i.u, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %bb.y
    i8 24, label %bb.z
    i8 25, label %bb.aa
    i8 26, label %bb.ab
    i8 27, label %bb.ac
    i8 28, label %bb.ad
    i8 29, label %bb.ae
    i8 30, label %bb.af
    i8 31, label %bb.ag
    i8 32, label %bb.ah
    i8 33, label %bb.ai
    i8 34, label %bb.aj
    i8 35, label %bb.ak
    i8 36, label %bb.al
    i8 37, label %bb.am
    i8 38, label %bb.an
    i8 39, label %bb.ao
    i8 40, label %bb.ap
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 4)
  br label %bb.aq

bb.c:                                             ; preds = %bb.a
  %i.w = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 7)
  br label %bb.aq

bb.d:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 4)
  br label %bb.aq

bb.e:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5)
  br label %bb.aq

bb.f:                                             ; preds = %bb.a
  %i.z = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 5)
  br label %bb.aq

bb.g:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 5)
  br label %bb.aq

bb.h:                                             ; preds = %bb.a
  %i.ab = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 5)
  br label %bb.aq

bb.i:                                             ; preds = %bb.a
  %i.ac = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 6)
  br label %bb.aq

bb.j:                                             ; preds = %bb.a
  %i.ad = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 6)
  br label %bb.aq

bb.k:                                             ; preds = %bb.a
  %i.ae = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 6)
  br label %bb.aq

bb.l:                                             ; preds = %bb.a
  %i.af = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 7)
  br label %bb.aq

bb.m:                                             ; preds = %bb.a
  %i.ag = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 7)
  br label %bb.aq

bb.n:                                             ; preds = %bb.a
  %i.ah = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 7)
  br label %bb.aq

bb.o:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.t, align 8
  %i.ak = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 9, ptr noundef nonnull %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38, ptr noundef nonnull %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.aq

bb.p:                                             ; preds = %bb.a
  %i.al = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 6)
  br label %bb.aq

bb.q:                                             ; preds = %bb.a
  %i.am = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 6)
  br label %bb.aq

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.an, ptr %i.s, align 8
  %i.ao = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 6, ptr noundef nonnull %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.aq

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.ap, ptr %i.r, align 8
  %i.aq = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 6, ptr noundef nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.aq

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.ar, ptr %i.q, align 8
  %i.as = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 8, ptr noundef nonnull %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.aq

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.at, ptr %i.p, align 8
  %i.au = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 8, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
end_hunk_0
