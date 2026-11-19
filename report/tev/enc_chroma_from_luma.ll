Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_chroma_from_luma?download=true
inline.NumInlined: 2420
inline.NumDeleted: 920
loop-unroll.NumCompletelyUnrolled: 476
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 578
begin_hunk_0_@_ZN3jxl6N_SSE413InitDCStorageEP22JxlMemoryManagerStructmPNS_5PlaneIfEE:bb.a
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef %i.d, i32 noundef 4, i64 noundef 4) #43, !noalias !113
  %i.e = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %0, i64 noundef 0) #43, !noalias !113 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  br i1 %i.f, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.e, ptr %i.g, align 8, !tbaa !42, !alias.scope !113
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

.critedge.i:                                      ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !42, !alias.scope !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i) #43
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !48, !noalias !113
  store i64 %i.l, ptr %i.j, align 8, !tbaa !48, !alias.scope !113
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit: ; preds = %bb.c, %.critedge.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42, !noalias !113
  %.pre = load i32, ptr %i.g, align 8, !tbaa !42  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.o = icmp eq i32 %.pre, 0
  br i1 %i.o, label %bb.d, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

bb.d:                                             ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #42
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(60) %4, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q) #43
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !48, !noalias !114
  store i64 %i.t, ptr %i.r, align 8, !tbaa !48, !alias.scope !114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.p) #43 ; 0 uses
  %i.w = load i64, ptr %i.r, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.w, ptr %i.x, align 8, !tbaa !48
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
  %i.y = load i32, ptr %2, align 8, !tbaa !49     ; 3 uses
  %i.z = zext i32 %i.y to i64
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %.loopexit.split, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.aa = icmp ugt i32 %i.y, 3
  br i1 %i.aa, label %.preheader.split, label %.loopexit.split

.preheader.split:                                 ; preds = %.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !50 ; 5 uses
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !51 ; 3 uses
  %i.af = shl nuw nsw i64 %i.z, 2
  %i.ag = add nsw i64 %i.af, -16                  ; 4 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.ag
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ad, i64 64) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %scevgep, i8 0, i64 16, i1 false), !tbaa !53
  %i.ah = getelementptr i8, ptr %i.ad, i64 %i.ag
  %scevgep.1 = getelementptr i8, ptr %i.ah, i64 %i.ae
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %scevgep.1, i8 0, i64 16, i1 false), !tbaa !53
  %i.ai = shl i64 %i.ae, 1
  %i.aj = getelementptr i8, ptr %i.ad, i64 %i.ag
  %scevgep.2 = getelementptr i8, ptr %i.aj, i64 %i.ai
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %scevgep.2, i8 0, i64 16, i1 false), !tbaa !53
  %i.ak = mul i64 %i.ae, 3
  %i.al = getelementptr i8, ptr %i.ad, i64 %i.ag
  %scevgep.3 = getelementptr i8, ptr %i.al, i64 %i.ak
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %scevgep.3, i8 0, i64 16, i1 false), !tbaa !53
  br label %.loopexit.split

.loopexit.split:                                  ; preds = %.preheader.split, %.preheader, %bb.d
  %.sroa.015.0.ph = phi i32 [ 1, %bb.d ], [ 0, %.preheader ], [ 0, %.preheader.split ] ; 2 uses
  %.pr = load i32, ptr %i.n, align 8, !tbaa !42
  %i.am = icmp eq i32 %.pr, 0
  br i1 %i.am, label %bb.e, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

bb.e:                                             ; preds = %.loopexit.split
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.q) #43
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit:         ; preds = %bb.a, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit, %.loopexit.split, %bb.e
  %.sroa.015.020 = phi i32 [ %.sroa.015.0.ph, %bb.e ], [ %.sroa.015.0.ph, %.loopexit.split ], [ %.pre, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  ret i32 %.sroa.015.020
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl6N_SSE411ComputeTileERKNS_6Image3IfEERKNS_5RectTImEERKNS_15DequantMatricesEPKNS_15AcStrategyImageEPKNS_5PlaneIiEEPKNS_9QuantizerES8_bbPNSF_IaEESN_PNSF_IfEENS_4SpanIfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(744) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %6, i1 noundef zeroext %7, i1 noundef zeroext %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef readonly captures(none) %11, ptr nofree noundef readonly byval(%"class.jxl::Span") align 8 captures(none) %12) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !55
  %i.c = lshr i64 %i.b, 3                         ; 4 uses
  %i.d = tail call noundef i64 @_ZN3jxl13MaxVectorSizeEv() #43
  %i.e = lshr i64 %i.d, 2
  %i.f = mul i64 %i.e, 768
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !56   ; 6 uses
  %i.i = load i64, ptr %6, align 8, !tbaa !57     ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !55
  %i.l = add i64 %i.k, %i.i                       ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !58
  %i.o = add i64 %i.n, %i.h                       ; 3 uses
  %i.p = shl i64 %i.h, 29
  %i.q = ashr i64 %i.p, 32                        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !51
  %i.v = mul i64 %i.u, %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.w, i64 64) ]
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !51
  %i.ab = mul i64 %i.aa, %i.q
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 64) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ae, i64 64) ]
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !51 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ah, i64 64) ]
  %i.ai = shl i64 %i.ag, 1                        ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ai ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aj, i64 64) ]
  %i.ak = mul i64 %i.ag, 3                        ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ak ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.al, i64 64) ]
  %i.am = load ptr, ptr %12, align 8, !tbaa !61   ; 19 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 262144 ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 524288 ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !62 ; 4 uses
  %.not.i = icmp ult i64 %i.aq, 196608
  br i1 %.not.i, label %_ZN3jxl4SpanIfE13remove_prefixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 786432 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 802816 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 819200 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 835584 ; 5 uses
  %i.av = and i64 %i.aq, -16384
  %.not.i230 = icmp eq i64 %i.av, 196608
  br i1 %.not.i230, label %_ZN3jxl4SpanIfE13remove_prefixEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr i8, ptr %i.am, i64 851968 ; 7 uses
  %i.ax = add i64 %i.aq, -212992
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 856064 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 860160 ; 3 uses
  %.not.i233 = icmp ult i64 %i.ax, 3072
  br i1 %.not.i233, label %_ZN3jxl4SpanIfE13remove_prefixEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 864256 ; 6 uses
  %i.bb = add i64 %i.f, 347136
  %i.bc = icmp eq i64 %i.aq, %i.bb
  br i1 %i.bc, label %.preheader315, label %_ZN3jxl4SpanIfE13remove_prefixEm.exit

.preheader315:                                    ; preds = %bb.d
  %i.bd = icmp ult i64 %i.h, %i.o
  br i1 %i.bd, label %.lr.ph348, label %_ZN3jxl6N_SSE418FindBestMultiplierEPKfS2_mffb.exit.thread

.lr.ph348:                                        ; preds = %.preheader315
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bj = icmp ult i64 %i.i, %i.l
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.br = icmp eq ptr %4, null
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 16
  br i1 %i.bj, label %.lr.ph344.us.preheader, label %_ZN3jxl6N_SSE418FindBestMultiplierEPKfS2_mffb.exit.thread

.lr.ph344.us.preheader:                           ; preds = %.lr.ph348
  %i.bu = mul i64 %i.h, %i.c
  %i.bv = add i64 %i.i, %i.bu
  %i.bw = shl i64 %i.bv, 2                        ; 4 uses
  %i.bx = shl nuw nsw i64 %i.c, 2
  %i.by = shl nuw nsw i64 %i.c, 2
  %scevgep467 = getelementptr i8, ptr %i.am, i64 860160
  %i.bz = getelementptr i8, ptr %i.ae, i64 %i.bw
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.ak
  %i.cb = getelementptr i8, ptr %i.ae, i64 %i.bw
  %i.cc = getelementptr i8, ptr %i.cb, i64 %i.ai
  %i.cd = getelementptr i8, ptr %i.ae, i64 %i.ag
  %i.ce = getelementptr i8, ptr %i.cd, i64 %i.bw
  %i.cf = getelementptr i8, ptr %i.ae, i64 %i.bw
  br label %.lr.ph344.us

.lr.ph344.us:                                     ; preds = %.lr.ph344.us.preheader, %._crit_edge345.us
  %indvar = phi i64 [ 0, %.lr.ph344.us.preheader ], [ %indvar.next, %._crit_edge345.us ] ; 2 uses
  %.0222347.us = phi i64 [ %i.h, %.lr.ph344.us.preheader ], [ %i.jh, %._crit_edge345.us ] ; 5 uses
  %.0223346.us = phi i64 [ 0, %.lr.ph344.us.preheader ], [ %.4.us, %._crit_edge345.us ]
  %i.cg = mul i64 %i.bx, %indvar                  ; 4 uses
  %i.ch = shl i64 %.0222347.us, 3
  %i.ci = load i64, ptr %i.be, align 8, !tbaa !56
  %i.cj = add i64 %i.ci, %i.ch
  %i.ck = load i64, ptr %i.bf, align 8, !tbaa !51 ; 2 uses
  %i.cl = mul i64 %i.cj, %i.ck                    ; 3 uses
  %i.cm = load ptr, ptr %i.bg, align 8, !tbaa !50 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cm, i64 64) ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cl ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cn, i64 64) ]
  %i.co = load i64, ptr %1, align 8, !tbaa !57    ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load ptr, ptr %i.bh, align 8, !tbaa !50 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cq, i64 64) ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cl ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cr, i64 64) ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.co
  %i.ct = load ptr, ptr %i.bi, align 8, !tbaa !50 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ct, i64 64) ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cl ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cu, i64 64) ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.co
  %i.cw = lshr i64 %i.ck, 2                       ; 3 uses
  %i.cx = getelementptr i8, ptr %i.ca, i64 %i.cg
  %i.cy = getelementptr i8, ptr %i.cc, i64 %i.cg
  %i.cz = getelementptr i8, ptr %i.ce, i64 %i.cg
  %i.da = getelementptr i8, ptr %i.cf, i64 %i.cg
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph344.us, %.loopexit.us
  %indvar457 = phi i64 [ 0, %.lr.ph344.us ], [ %indvar.next458, %.loopexit.us ] ; 2 uses
  %.0221340.us = phi i64 [ %i.i, %.lr.ph344.us ], [ %i.hq, %.loopexit.us ] ; 5 uses
  %.1339.us = phi i64 [ %.0223346.us, %.lr.ph344.us ], [ %.4.us, %.loopexit.us ] ; 4 uses
  %i.db = shl i64 %indvar457, 2                   ; 4 uses
  %scevgep459 = getelementptr i8, ptr %i.cx, i64 %i.db ; 6 uses
  %scevgep461 = getelementptr i8, ptr %i.cy, i64 %i.db ; 6 uses
  %scevgep463 = getelementptr i8, ptr %i.cz, i64 %i.db ; 6 uses
  %scevgep465 = getelementptr i8, ptr %i.da, i64 %i.db ; 6 uses
  br i1 %8, label %.thread.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dc = load ptr, ptr %i.bk, align 8, !tbaa !50
  %i.dd = load i64, ptr %i.bl, align 8, !tbaa !51
  %i.de = mul i64 %i.dd, %.0222347.us
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.de ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.df, i64 64) ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.0221340.us
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !38  ; 2 uses
  %i.di = lshr i8 %i.dh, 1
  %i.dj = trunc i8 %i.dh to i1
  %extract.t.us = zext nneg i8 %i.di to i32
  br i1 %i.dj, label %.thread.us, label %.loopexit.us

.thread.us:                                       ; preds = %bb.f, %bb.e
  %storemerge307.off0.us = phi i32 [ %extract.t.us, %bb.f ], [ 0, %bb.e ] ; 7 uses
  %i.dk = zext nneg i32 %storemerge307.off0.us to i64 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !38
  %i.dn = zext i8 %i.dm to i64                    ; 11 uses
  %i.do = shl i64 %.0221340.us, 3                 ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.do
  tail call fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %storemerge307.off0.us, ptr noundef %i.dp, i64 noundef %i.cw, ptr noundef %i.am, ptr noundef nonnull %i.ba) #44
  tail call fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %storemerge307.off0.us, ptr noundef %i.am, ptr noundef nonnull %i.aw, i64 noundef %i.dn, ptr noundef nonnull %i.ba) #44
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.do
  tail call fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %storemerge307.off0.us, ptr noundef %i.dq, i64 noundef %i.cw, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ba) #44
  tail call fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %storemerge307.off0.us, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ay, i64 noundef %i.dn, ptr noundef nonnull %i.ba) #44
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.do
  tail call fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %storemerge307.off0.us, ptr noundef %i.dr, i64 noundef %i.cw, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ba) #44
  tail call fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %storemerge307.off0.us, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.az, i64 noundef %i.dn, ptr noundef nonnull %i.ba) #44
  %i.ds = load ptr, ptr %i.bm, align 8, !tbaa !68 ; 2 uses
  %.idx.i229.us = mul nuw nsw i64 %i.dk, 24
  %i.dt = getelementptr i8, ptr %i.bn, i64 %.idx.i229.us ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !69
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dt, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !69
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dx
  br i1 %8, label %.preheader314.us.preheader, label %bb.g

bb.g:                                             ; preds = %.thread.us
  %i.dz = load ptr, ptr %i.bo, align 8, !tbaa !72 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 60
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !53
  %i.ec = load float, ptr %i.bp, align 4, !tbaa !73
  %i.ed = load i32, ptr %i.bq, align 4, !tbaa !74
  %i.ee = sitofp i32 %i.ed to float
  %i.ef = fmul float %i.ec, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 68
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !53
  %i.ei = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %i.eh, i64 1
  %i.ek = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = fmul <2 x float> %i.ej, %i.el
  %i.en = fdiv <2 x float> splat (float 1.000000e+00), %i.em
  br label %.preheader314.us.preheader

.preheader314.us.preheader:                       ; preds = %.thread.us, %bb.g
  %i.eo = phi <2 x float> [ %i.en, %bb.g ], [ splat (float 1.000000e+00), %.thread.us ] ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.dk
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !38
  %i.er = zext i8 %i.eq to i64                    ; 6 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dn, i64 1) ; 3 uses
  %umax366 = tail call i64 @llvm.umax.i64(i64 %i.er, i64 1)
  %i.es = tail call i64 @llvm.usub.sat.i64(i64 %i.er, i64 1) ; 2 uses
  %13 = mul i64 %i.by, %i.es
  %i.et = shl nuw nsw i64 %umax, 2                ; 6 uses
  %14 = add i64 %13, %i.et                        ; 4 uses
  %scevgep462 = getelementptr i8, ptr %scevgep459, i64 %14
  %i.eu = getelementptr i8, ptr %scevgep461, i64 %14
  %scevgep456 = getelementptr i8, ptr %scevgep463, i64 %14
  %15 = shl nuw nsw i64 %i.es, 2
  %i.ev = mul nuw nsw i64 %15, %i.dn
  %16 = getelementptr i8, ptr %scevgep467, i64 %i.ev
  %scevgep468 = getelementptr i8, ptr %16, i64 %i.et ; 4 uses
  %scevgep470 = getelementptr i8, ptr %scevgep465, i64 %14
  %scevgep460 = getelementptr i8, ptr %scevgep459, i64 %i.et ; 3 uses
  %scevgep462.a = getelementptr i8, ptr %scevgep461, i64 %i.et ; 3 uses
  %scevgep464 = getelementptr i8, ptr %scevgep463, i64 %i.et ; 3 uses
  %scevgep466 = getelementptr i8, ptr %scevgep465, i64 %i.et ; 3 uses
  %i.ew = shl nuw i64 1, %i.dk
  %i.ex = and i64 %i.ew, 6291455
  %min.iters.check.not = icmp eq i64 %i.ex, 0
  %bound0 = icmp ult ptr %scevgep465, %scevgep464
  %bound1 = icmp ult ptr %scevgep463, %scevgep466
  %found.conflict = and i1 %bound0, %bound1
  %bound0467 = icmp ult ptr %scevgep465, %scevgep462.a
  %bound1468 = icmp ult ptr %scevgep461, %scevgep466
  %found.conflict469 = and i1 %bound0467, %bound1468
  %conflict.rdx = or i1 %found.conflict, %found.conflict469
  %bound0470 = icmp ult ptr %scevgep465, %scevgep460
  %bound1471 = icmp ult ptr %scevgep459, %scevgep466
  %found.conflict472 = and i1 %bound0470, %bound1471
  %conflict.rdx473 = or i1 %conflict.rdx, %found.conflict472
  %bound0474 = icmp ult ptr %scevgep465, %scevgep468
  %bound1475 = icmp ult ptr %i.aw, %scevgep470
  %found.conflict476 = and i1 %bound0474, %bound1475
  %conflict.rdx477 = or i1 %conflict.rdx473, %found.conflict476
  %bound0478 = icmp ult ptr %scevgep463, %scevgep462.a
  %bound1479 = icmp ult ptr %scevgep461, %scevgep464
  %found.conflict480 = and i1 %bound0478, %bound1479
  %conflict.rdx481 = or i1 %conflict.rdx477, %found.conflict480
  %bound0482 = icmp ult ptr %scevgep463, %scevgep460
  %bound1483 = icmp ult ptr %scevgep459, %scevgep464
  %found.conflict484 = and i1 %bound0482, %bound1483
  %conflict.rdx485 = or i1 %conflict.rdx481, %found.conflict484
  %bound0486 = icmp ult ptr %scevgep463, %scevgep468
  %bound1487 = icmp ult ptr %i.aw, %scevgep456
  %found.conflict488 = and i1 %bound0486, %bound1487
  %conflict.rdx489 = or i1 %conflict.rdx485, %found.conflict488
  %bound0490 = icmp ult ptr %scevgep461, %scevgep460
  %bound1491 = icmp ult ptr %scevgep459, %scevgep462.a
  %found.conflict492 = and i1 %bound0490, %bound1491
  %conflict.rdx493 = or i1 %conflict.rdx489, %found.conflict492
  %bound0494 = icmp ult ptr %scevgep461, %scevgep468
  %bound1495 = icmp ult ptr %i.aw, %i.eu
  %found.conflict496 = and i1 %bound0494, %bound1495
  %conflict.rdx497 = or i1 %conflict.rdx493, %found.conflict496
  %bound0498 = icmp ult ptr %scevgep459, %scevgep468
  %bound1499 = icmp ult ptr %i.aw, %scevgep462
  %found.conflict500 = and i1 %bound0498, %bound1499
  %conflict.rdx501 = or i1 %conflict.rdx497, %found.conflict500
  %n.vec = and i64 %umax, 252                     ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %i.eo, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat503 = shufflevector <2 x float> %i.eo, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.dn
  %i.ey = extractelement <2 x float> %i.eo, i64 0 ; 2 uses
  %i.ez = extractelement <2 x float> %i.eo, i64 1 ; 2 uses
  br label %.preheader314.us

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0219328.us = phi i64 [ %i.fr, %scalar.ph ], [ %.0219328.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fa = add nuw nsw i64 %.0219328.us, %i.il     ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.fa ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !53
  %i.fd = fmul float %i.ey, %i.fc
  %i.fe = add i64 %i.io, %.0219328.us             ; 4 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.fe
  store float %i.fd, ptr %i.ff, align 4, !tbaa !53
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.fa
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !53
  %i.fi = fmul float %i.ey, %i.fh
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.fe
  store float %i.fi, ptr %i.fj, align 4, !tbaa !53
  %i.fk = load float, ptr %i.fb, align 4, !tbaa !53
  %i.fl = fmul float %i.ez, %i.fk
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.fe
  store float %i.fl, ptr %i.fm, align 4, !tbaa !53
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.fa
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !53
  %i.fp = fmul float %i.ez, %i.fo
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.fe
  store float %i.fp, ptr %i.fq, align 4, !tbaa !53
  %i.fr = add nuw nsw i64 %.0219328.us, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.fr, %umax
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !115

._crit_edge330.split.us:                          ; preds = %._crit_edge.us
  %i.fs = add i64 %i.i, %i.dn
  %i.ft = icmp ugt i64 %i.fs, %i.l
  %i.fu = add i64 %i.h, %i.er
  %i.fv = icmp ugt i64 %i.fu, %i.o
  %or.cond.us = select i1 %i.ft, i1 true, i1 %i.fv
  br i1 %or.cond.us, label %.loopexit.us, label %bb.h

bb.h:                                             ; preds = %._crit_edge330.split.us
  %i.fw = tail call noundef i64 @llvm.umin.i64(i64 %i.er, i64 %i.dn) ; 4 uses
  %i.fx = tail call noundef i64 @llvm.umax.i64(i64 %i.er, i64 %i.dn) ; 3 uses
  %.not = icmp eq i64 %i.fw, 0
  br i1 %.not, label %._crit_edge334.split.us, label %.preheader313.lr.ph.us

._crit_edge334.split.us.loopexit.unr-lcssa:       ; preds = %.preheader313.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge334.split.us, label %.preheader313.us.epil.preheader

.preheader313.us.epil.preheader:                  ; preds = %._crit_edge334.split.us.loopexit.unr-lcssa, %.preheader313.us.preheader
  %.0218333.us.epil.init = phi i64 [ 0, %.preheader313.us.preheader ], [ %i.ik, %._crit_edge334.split.us.loopexit.unr-lcssa ]
  %lcmp.mod519 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod519)
  br label %.preheader313.us.epil

.preheader313.us.epil:                            ; preds = %.preheader313.us.epil, %.preheader313.us.epil.preheader
  %.0218333.us.epil = phi i64 [ %i.gc, %.preheader313.us.epil ], [ %.0218333.us.epil.init, %.preheader313.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader313.us.epil ], [ 0, %.preheader313.us.epil.preheader ]
  %i.fy = mul nuw nsw i64 %.0218333.us.epil, %i.je ; 3 uses
  %i.fz = getelementptr [4 x i8], ptr %i.am, i64 %i.fy
  %i.ga = getelementptr [4 x i8], ptr %i.an, i64 %i.fy
  %i.gb = getelementptr [4 x i8], ptr %i.ao, i64 %i.fy
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.fz, i8 0, i64 range(i64 0, 1021) %i.jf, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ga, i8 0, i64 range(i64 0, 1021) %i.jf, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gb, i8 0, i64 range(i64 0, 1021) %i.jf, i1 false), !tbaa !53
  %i.gc = add nuw nsw i64 %.0218333.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge334.split.us, label %.preheader313.us.epil, !llvm.loop !116

._crit_edge334.split.us:                          ; preds = %._crit_edge334.split.us.loopexit.unr-lcssa, %.preheader313.us.epil, %.preheader313.lr.ph.us, %bb.h
  br i1 %i.br, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge334.split.us
  %i.gd = load ptr, ptr %i.bs, align 8, !tbaa !50
  %i.ge = load i64, ptr %i.bt, align 8, !tbaa !51
  %i.gf = mul i64 %i.ge, %.0222347.us
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gf ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gg, i64 64) ]
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %.0221340.us
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !77
  %i.gj = sitofp i32 %i.gi to float
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge334.split.us
  %i.gk = phi float [ %i.gj, %bb.i ], [ 1.000000e+00, %._crit_edge334.split.us ]
  br i1 %8, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gl = load float, ptr %i.bp, align 4, !tbaa !73
  %i.gm = fmul float %i.gl, 1.280000e+02
  %i.gn = fmul float %i.gk, %i.gm
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.go = phi float [ %i.gn, %bb.k ], [ 1.000000e+00, %bb.j ]
  %i.gp = insertelement <4 x float> poison, float %i.go, i64 0
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gr = shl nuw nsw i64 %i.dn, 6
  %i.gs = mul nuw nsw i64 %i.gr, %i.er            ; 2 uses
  %.not352 = icmp eq i64 %i.gs, 0
  br i1 %.not352, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.l, %.lr.ph.us
  %.0336.us = phi i64 [ %i.ho, %.lr.ph.us ], [ 0, %bb.l ] ; 6 uses
  %.2335.us = phi i64 [ %i.hn, %.lr.ph.us ], [ %.1339.us, %bb.l ] ; 5 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.0336.us
  %i.gu = load <4 x float>, ptr %i.gt, align 16, !tbaa !38 ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.0336.us
  %i.gw = load <4 x float>, ptr %i.gv, align 16, !tbaa !38
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.0336.us
  %i.gy = load <4 x float>, ptr %i.gx, align 16, !tbaa !38
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.0336.us
  %i.ha = load <4 x float>, ptr %i.gz, align 16, !tbaa !38
  %i.hb = fmul <4 x float> %i.gq, %i.ha           ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.0336.us
  %i.hd = load <4 x float>, ptr %i.hc, align 16, !tbaa !38
  %i.he = fmul <4 x float> %i.gq, %i.hd           ; 2 uses
  %i.hf = fmul <4 x float> %i.gu, %i.hb
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.2335.us
  store <4 x float> %i.hf, ptr %i.hg, align 16, !tbaa !38
  %i.hh = fmul <4 x float> %i.gw, %i.hb
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.2335.us
  store <4 x float> %i.hh, ptr %i.hi, align 16, !tbaa !38
  %i.hj = fmul <4 x float> %i.gu, %i.he
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.2335.us
  store <4 x float> %i.hj, ptr %i.hk, align 16, !tbaa !38
  %i.hl = fmul <4 x float> %i.gy, %i.he
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.2335.us
  store <4 x float> %i.hl, ptr %i.hm, align 16, !tbaa !38
  %i.hn = add i64 %.2335.us, 4                    ; 2 uses
  %i.ho = add nuw nsw i64 %.0336.us, 4            ; 2 uses
  %i.hp = icmp samesign ult i64 %i.ho, %i.gs
  br i1 %i.hp, label %.lr.ph.us, label %.loopexit.us, !llvm.loop !117

.loopexit.us:                                     ; preds = %.lr.ph.us, %bb.l, %._crit_edge330.split.us, %bb.f
  %.4.us = phi i64 [ %.1339.us, %bb.f ], [ %.1339.us, %._crit_edge330.split.us ], [ %.1339.us, %bb.l ], [ %i.hn, %.lr.ph.us ] ; 12 uses
  %i.hq = add i64 %.0221340.us, 1                 ; 2 uses
  %exitcond369.not = icmp eq i64 %i.hq, %i.l
  %indvar.next458 = add i64 %indvar457, 1
  br i1 %exitcond369.not, label %._crit_edge345.us, label %bb.e, !llvm.loop !118

.preheader313.us:                                 ; preds = %.preheader313.us, %.preheader313.us.preheader.new
  %.0218333.us = phi i64 [ 0, %.preheader313.us.preheader.new ], [ %i.ik, %.preheader313.us ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader313.us.preheader.new ], [ %niter.next.3, %.preheader313.us ]
  %i.hr = mul nuw nsw i64 %.0218333.us, %i.je     ; 3 uses
  %i.hs = getelementptr [4 x i8], ptr %i.am, i64 %i.hr
  %i.ht = getelementptr [4 x i8], ptr %i.an, i64 %i.hr
  %i.hu = getelementptr [4 x i8], ptr %i.ao, i64 %i.hr
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hs, i8 0, i64 range(i64 0, 1021) %i.jf, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ht, i8 0, i64 range(i64 0, 1021) %i.jf, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hu, i8 0, i64 range(i64 0, 1021) %i.jf, i1 false), !tbaa !53
  %i.hv = or disjoint i64 %.0218333.us, 1
  %i.hw = mul nuw nsw i64 %i.hv, %i.je            ; 3 uses
  %i.hx = getelementptr [4 x i8], ptr %i.am, i64 %i.hw
  %i.hy = getelementptr [4 x i8], ptr %i.an, i64 %i.hw
  %i.hz = getelementptr [4 x i8], ptr %i.ao, i64 %i.hw
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hx, i8 0, i64 range(i64 0, 1021) %i.jf, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hy, i8 0, i64 range(i64 0, 1021) %i.jf, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hz, i8 0, i64 range(i64 0, 1021) %i.jf, i1 false), !tbaa !53
  %i.ia = or disjoint i64 %.0218333.us, 2
  %i.ib = mul nuw nsw i64 %i.ia, %i.je            ; 3 uses
  %i.ic = getelementptr [4 x i8], ptr %i.am, i64 %i.ib
  %i.id = getelementptr [4 x i8], ptr %i.an, i64 %i.ib
  %i.ie = getelementptr [4 x i8], ptr %i.ao, i64 %i.ib
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ic, i8 0, i64 range(i64 0, 1021) %i.jf, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.id, i8 0, i64 range(i64 0, 1021) %i.jf, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ie, i8 0, i64 range(i64 0, 1021) %i.jf, i1 false), !tbaa !53
  %i.if = or disjoint i64 %.0218333.us, 3
  %i.ig = mul nuw nsw i64 %i.if, %i.je            ; 3 uses
  %i.ih = getelementptr [4 x i8], ptr %i.am, i64 %i.ig
  %i.ii = getelementptr [4 x i8], ptr %i.an, i64 %i.ig
  %i.ij = getelementptr [4 x i8], ptr %i.ao, i64 %i.ig
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ih, i8 0, i64 range(i64 0, 1021) %i.jf, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ii, i8 0, i64 range(i64 0, 1021) %i.jf, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ij, i8 0, i64 range(i64 0, 1021) %i.jf, i1 false), !tbaa !53
  %i.ik = add nuw nsw i64 %.0218333.us, 4         ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge334.split.us.loopexit.unr-lcssa, label %.preheader313.us, !llvm.loop !119

.preheader314.us:                                 ; preds = %.preheader314.us.preheader, %._crit_edge.us
  %.0220329.us = phi i64 [ %i.jd, %._crit_edge.us ], [ 0, %.preheader314.us.preheader ] ; 3 uses
  %i.il = mul nuw nsw i64 %.0220329.us, %i.dn     ; 2 uses
  %i.im = add i64 %.0220329.us, %.0222347.us
  %i.in = mul i64 %i.im, %i.c
  %i.io = add i64 %i.in, %.0221340.us             ; 2 uses
  %min.iters.check.not.not = xor i1 %min.iters.check.not, true
  %brmerge = select i1 %min.iters.check.not.not, i1 true, i1 %conflict.rdx501
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader314.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader314.us ] ; 3 uses
  %i.ip = add nuw nsw i64 %index, %i.il           ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN3jxl6N_AVX213InitDCStorageEP22JxlMemoryManagerStructmPNS_5PlaneIfEE:bb.a
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef %i.d, i32 noundef 4, i64 noundef 4) #43, !noalias !744
  %i.e = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %0, i64 noundef 0) #43, !noalias !744 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  br i1 %i.f, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.e, ptr %i.g, align 8, !tbaa !42, !alias.scope !744
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

.critedge.i:                                      ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !42, !alias.scope !744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i) #43
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !48, !noalias !744
  store i64 %i.l, ptr %i.j, align 8, !tbaa !48, !alias.scope !744
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit: ; preds = %bb.c, %.critedge.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42, !noalias !744
  %.pre = load i32, ptr %i.g, align 8, !tbaa !42  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.o = icmp eq i32 %.pre, 0
  br i1 %i.o, label %bb.d, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

bb.d:                                             ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #42
  call void @llvm.experimental.noalias.scope.decl(metadata !745)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(60) %4, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q) #43
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !48, !noalias !745
  store i64 %i.t, ptr %i.r, align 8, !tbaa !48, !alias.scope !745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.p) #43 ; 0 uses
  %i.w = load i64, ptr %i.r, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.w, ptr %i.x, align 8, !tbaa !48
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
  %i.y = load i32, ptr %2, align 8, !tbaa !49     ; 3 uses
  %i.z = zext i32 %i.y to i64
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %.loopexit.split, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.aa = icmp ugt i32 %i.y, 7
  br i1 %i.aa, label %.preheader.split, label %.loopexit.split

.preheader.split:                                 ; preds = %.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !50 ; 5 uses
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !51 ; 3 uses
  %i.af = shl nuw nsw i64 %i.z, 2
  %i.ag = add nsw i64 %i.af, -32                  ; 4 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.ag
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ad, i64 64) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep, i8 0, i64 32, i1 false), !tbaa !53
  %i.ah = getelementptr i8, ptr %i.ad, i64 %i.ag
  %scevgep.1 = getelementptr i8, ptr %i.ah, i64 %i.ae
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep.1, i8 0, i64 32, i1 false), !tbaa !53
  %i.ai = shl i64 %i.ae, 1
  %i.aj = getelementptr i8, ptr %i.ad, i64 %i.ag
  %scevgep.2 = getelementptr i8, ptr %i.aj, i64 %i.ai
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep.2, i8 0, i64 32, i1 false), !tbaa !53
  %i.ak = mul i64 %i.ae, 3
  %i.al = getelementptr i8, ptr %i.ad, i64 %i.ag
  %scevgep.3 = getelementptr i8, ptr %i.al, i64 %i.ak
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep.3, i8 0, i64 32, i1 false), !tbaa !53
  br label %.loopexit.split

.loopexit.split:                                  ; preds = %.preheader.split, %.preheader, %bb.d
  %.sroa.015.0.ph = phi i32 [ 1, %bb.d ], [ 0, %.preheader ], [ 0, %.preheader.split ] ; 2 uses
  %.pr = load i32, ptr %i.n, align 8, !tbaa !42
  %i.am = icmp eq i32 %.pr, 0
  br i1 %i.am, label %bb.e, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

bb.e:                                             ; preds = %.loopexit.split
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.q) #43
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit:         ; preds = %bb.a, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit, %.loopexit.split, %bb.e
  %.sroa.015.020 = phi i32 [ %.sroa.015.0.ph, %bb.e ], [ %.sroa.015.0.ph, %.loopexit.split ], [ %.pre, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  ret i32 %.sroa.015.020
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl6N_AVX211ComputeTileERKNS_6Image3IfEERKNS_5RectTImEERKNS_15DequantMatricesEPKNS_15AcStrategyImageEPKNS_5PlaneIiEEPKNS_9QuantizerES8_bbPNSF_IaEESN_PNSF_IfEENS_4SpanIfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(744) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %6, i1 noundef zeroext %7, i1 noundef zeroext %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef readonly captures(none) %11, ptr nofree noundef readonly byval(%"class.jxl::Span") align 8 captures(none) %12) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !55
  %i.c = lshr i64 %i.b, 3                         ; 4 uses
  %i.d = tail call noundef i64 @_ZN3jxl13MaxVectorSizeEv() #43
  %i.e = lshr i64 %i.d, 2
  %i.f = mul i64 %i.e, 768
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !56   ; 6 uses
  %i.i = load i64, ptr %6, align 8, !tbaa !57     ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !55
  %i.l = add i64 %i.k, %i.i                       ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !58
  %i.o = add i64 %i.n, %i.h                       ; 3 uses
  %i.p = shl i64 %i.h, 29
  %i.q = ashr i64 %i.p, 32                        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !51
  %i.v = mul i64 %i.u, %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.w, i64 64) ]
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !51
  %i.ab = mul i64 %i.aa, %i.q
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 64) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ae, i64 64) ]
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !51 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ah, i64 64) ]
  %i.ai = shl i64 %i.ag, 1                        ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ai ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aj, i64 64) ]
  %i.ak = mul i64 %i.ag, 3                        ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ak ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.al, i64 64) ]
  %i.am = load ptr, ptr %12, align 8, !tbaa !61   ; 19 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 262144 ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 524288 ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !62 ; 4 uses
  %.not.i = icmp ult i64 %i.aq, 196608
  br i1 %.not.i, label %_ZN3jxl4SpanIfE13remove_prefixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 786432 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 802816 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 819200 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 835584 ; 5 uses
  %i.av = and i64 %i.aq, -16384
  %.not.i230 = icmp eq i64 %i.av, 196608
  br i1 %.not.i230, label %_ZN3jxl4SpanIfE13remove_prefixEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr i8, ptr %i.am, i64 851968 ; 5 uses
  %i.ax = add i64 %i.aq, -212992
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 856064 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 860160 ; 3 uses
  %.not.i233 = icmp ult i64 %i.ax, 3072
  br i1 %.not.i233, label %_ZN3jxl4SpanIfE13remove_prefixEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 864256 ; 6 uses
  %i.bb = add i64 %i.f, 347136
  %i.bc = icmp eq i64 %i.aq, %i.bb
  br i1 %i.bc, label %.preheader315, label %_ZN3jxl4SpanIfE13remove_prefixEm.exit

.preheader315:                                    ; preds = %bb.d
  %i.bd = icmp ult i64 %i.h, %i.o
  br i1 %i.bd, label %.lr.ph348, label %_ZN3jxl6N_AVX218FindBestMultiplierEPKfS2_mffb.exit.thread

.lr.ph348:                                        ; preds = %.preheader315
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bj = icmp ult i64 %i.i, %i.l
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.br = icmp eq ptr %4, null
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 16
  br i1 %i.bj, label %.lr.ph344.us.preheader, label %_ZN3jxl6N_AVX218FindBestMultiplierEPKfS2_mffb.exit.thread

.lr.ph344.us.preheader:                           ; preds = %.lr.ph348
  %i.bu = mul i64 %i.h, %i.c
  %i.bv = add i64 %i.i, %i.bu
  %i.bw = shl i64 %i.bv, 2                        ; 4 uses
  %i.bx = shl nuw nsw i64 %i.c, 2
  %i.by = shl nuw nsw i64 %i.c, 2
  %i.bz = getelementptr i8, ptr %i.am, i64 860160
  %i.ca = getelementptr i8, ptr %i.ae, i64 %i.bw
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.ak
  %i.cc = getelementptr i8, ptr %i.ae, i64 %i.bw
  %i.cd = getelementptr i8, ptr %i.cc, i64 %i.ai
  %i.ce = getelementptr i8, ptr %i.ae, i64 %i.ag
  %i.cf = getelementptr i8, ptr %i.ce, i64 %i.bw
  %13 = getelementptr i8, ptr %i.ae, i64 %i.bw
  br label %.lr.ph344.us

.lr.ph344.us:                                     ; preds = %.lr.ph344.us.preheader, %._crit_edge345.us
  %indvar = phi i64 [ 0, %.lr.ph344.us.preheader ], [ %indvar.next, %._crit_edge345.us ] ; 2 uses
  %.0222347.us = phi i64 [ %i.h, %.lr.ph344.us.preheader ], [ %i.jp, %._crit_edge345.us ] ; 5 uses
  %.0223346.us = phi i64 [ 0, %.lr.ph344.us.preheader ], [ %.4.us, %._crit_edge345.us ]
  %i.cg = mul i64 %i.bx, %indvar                  ; 4 uses
  %i.ch = shl i64 %.0222347.us, 3
  %i.ci = load i64, ptr %i.be, align 8, !tbaa !56
  %i.cj = add i64 %i.ci, %i.ch
  %i.ck = load i64, ptr %i.bf, align 8, !tbaa !51 ; 2 uses
  %i.cl = mul i64 %i.cj, %i.ck                    ; 3 uses
  %i.cm = load ptr, ptr %i.bg, align 8, !tbaa !50 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cm, i64 64) ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cl ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cn, i64 64) ]
  %i.co = load i64, ptr %1, align 8, !tbaa !57    ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load ptr, ptr %i.bh, align 8, !tbaa !50 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cq, i64 64) ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cl ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cr, i64 64) ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.co
  %i.ct = load ptr, ptr %i.bi, align 8, !tbaa !50 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ct, i64 64) ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cl ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cu, i64 64) ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.co
  %i.cw = lshr i64 %i.ck, 2                       ; 3 uses
  %i.cx = getelementptr i8, ptr %i.cb, i64 %i.cg
  %i.cy = getelementptr i8, ptr %i.cd, i64 %i.cg
  %i.cz = getelementptr i8, ptr %i.cf, i64 %i.cg
  %i.da = getelementptr i8, ptr %13, i64 %i.cg
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph344.us, %.loopexit.us
  %indvar457 = phi i64 [ 0, %.lr.ph344.us ], [ %indvar.next458, %.loopexit.us ] ; 2 uses
  %.0221340.us = phi i64 [ %i.i, %.lr.ph344.us ], [ %i.hy, %.loopexit.us ] ; 5 uses
  %.1339.us = phi i64 [ %.0223346.us, %.lr.ph344.us ], [ %.4.us, %.loopexit.us ] ; 4 uses
  %i.db = shl i64 %indvar457, 2                   ; 4 uses
  %scevgep459 = getelementptr i8, ptr %i.cx, i64 %i.db ; 5 uses
  %scevgep461 = getelementptr i8, ptr %i.cy, i64 %i.db ; 5 uses
  %scevgep463 = getelementptr i8, ptr %i.cz, i64 %i.db ; 6 uses
  %scevgep465 = getelementptr i8, ptr %i.da, i64 %i.db ; 6 uses
  br i1 %8, label %.thread.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dc = load ptr, ptr %i.bk, align 8, !tbaa !50
  %i.dd = load i64, ptr %i.bl, align 8, !tbaa !51
  %i.de = mul i64 %i.dd, %.0222347.us
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.de ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.df, i64 64) ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.0221340.us
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !38  ; 2 uses
  %i.di = lshr i8 %i.dh, 1
  %i.dj = trunc i8 %i.dh to i1
  %extract.t.us = zext nneg i8 %i.di to i32
  br i1 %i.dj, label %.thread.us, label %.loopexit.us

.thread.us:                                       ; preds = %bb.f, %bb.e
  %storemerge307.off0.us = phi i32 [ %extract.t.us, %bb.f ], [ 0, %bb.e ] ; 7 uses
  %i.dk = zext nneg i32 %storemerge307.off0.us to i64 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !38
  %i.dn = zext i8 %i.dm to i64                    ; 11 uses
  %i.do = shl i64 %.0221340.us, 3                 ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.do
  tail call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %storemerge307.off0.us, ptr noundef %i.dp, i64 noundef %i.cw, ptr noundef %i.am, ptr noundef nonnull %i.ba) #44
  tail call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %storemerge307.off0.us, ptr noundef %i.am, ptr noundef nonnull %i.aw, i64 noundef %i.dn, ptr noundef nonnull %i.ba) #44
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.do
  tail call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %storemerge307.off0.us, ptr noundef %i.dq, i64 noundef %i.cw, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ba) #44
  tail call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %storemerge307.off0.us, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ay, i64 noundef %i.dn, ptr noundef nonnull %i.ba) #44
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.do
  tail call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %storemerge307.off0.us, ptr noundef %i.dr, i64 noundef %i.cw, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ba) #44
  tail call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %storemerge307.off0.us, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.az, i64 noundef %i.dn, ptr noundef nonnull %i.ba) #44
  %i.ds = load ptr, ptr %i.bm, align 8, !tbaa !68 ; 2 uses
  %.idx.i229.us = mul nuw nsw i64 %i.dk, 24
  %i.dt = getelementptr i8, ptr %i.bn, i64 %.idx.i229.us ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !69
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dt, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !69
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dx
  br i1 %8, label %.preheader314.us.preheader, label %bb.g

bb.g:                                             ; preds = %.thread.us
  %i.dz = load ptr, ptr %i.bo, align 8, !tbaa !72 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 60
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !53
  %i.ec = load float, ptr %i.bp, align 4, !tbaa !73
  %i.ed = load i32, ptr %i.bq, align 4, !tbaa !74
  %i.ee = sitofp i32 %i.ed to float
  %i.ef = fmul float %i.ec, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 68
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !53
  %i.ei = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %i.eh, i64 1
  %i.ek = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = fmul <2 x float> %i.ej, %i.el
  %i.en = fdiv <2 x float> splat (float 1.000000e+00), %i.em
  br label %.preheader314.us.preheader

.preheader314.us.preheader:                       ; preds = %.thread.us, %bb.g
  %i.eo = phi <2 x float> [ %i.en, %bb.g ], [ splat (float 1.000000e+00), %.thread.us ] ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.dk
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !38
  %i.er = zext i8 %i.eq to i64                    ; 6 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dn, i64 1) ; 3 uses
  %umax366 = tail call i64 @llvm.umax.i64(i64 %i.er, i64 1)
  %i.es = tail call i64 @llvm.usub.sat.i64(i64 %i.er, i64 1) ; 2 uses
  %14 = mul i64 %i.by, %i.es
  %i.et = shl nuw nsw i64 %umax, 2                ; 6 uses
  %15 = add i64 %14, %i.et                        ; 4 uses
  %scevgep462 = getelementptr i8, ptr %scevgep459, i64 %15
  %i.eu = getelementptr i8, ptr %scevgep461, i64 %15
  %scevgep456 = getelementptr i8, ptr %scevgep463, i64 %15
  %16 = shl nuw nsw i64 %i.es, 2
  %i.ev = mul nuw nsw i64 %16, %i.dn
  %17 = getelementptr i8, ptr %i.bz, i64 %i.ev
  %scevgep468 = getelementptr i8, ptr %17, i64 %i.et ; 2 uses
  %scevgep470 = getelementptr i8, ptr %scevgep465, i64 %15
  %scevgep460 = getelementptr i8, ptr %scevgep459, i64 %i.et ; 3 uses
  %scevgep462.a = getelementptr i8, ptr %scevgep461, i64 %i.et ; 3 uses
  %scevgep464 = getelementptr i8, ptr %scevgep463, i64 %i.et ; 3 uses
  %scevgep466 = getelementptr i8, ptr %scevgep465, i64 %i.et ; 3 uses
  %i.ew = insertelement <4 x ptr> poison, ptr %scevgep463, i64 0
  %i.ex = insertelement <4 x ptr> %i.ew, ptr %scevgep459, i64 1
  %i.ey = insertelement <4 x ptr> %i.ex, ptr %scevgep461, i64 2 ; 2 uses
  %18 = shufflevector <4 x ptr> %i.ey, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ez = insertelement <4 x ptr> poison, ptr %scevgep468, i64 0
  %i.fa = insertelement <4 x ptr> %i.ez, ptr %scevgep462.a, i64 1
  %19 = shufflevector <4 x ptr> %i.fa, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %20 = shufflevector <4 x ptr> %i.ey, <4 x ptr> poison, <2 x i32> <i32 poison, i32 2>
  %21 = insertelement <2 x ptr> %20, ptr %i.aw, i64 0
  %22 = shufflevector <2 x ptr> %21, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.fb = insertelement <4 x ptr> poison, ptr %scevgep456, i64 0
  %i.fc = insertelement <4 x ptr> %i.fb, ptr %scevgep460, i64 1
  %23 = insertelement <4 x ptr> %i.fc, ptr %i.eu, i64 2
  %i.fd = insertelement <4 x ptr> %23, ptr %scevgep462, i64 3
  %24 = shl nuw i64 1, %i.dk
  %25 = and i64 %24, 6291455
  %min.iters.check.not = icmp eq i64 %25, 0
  %bound0 = icmp ult ptr %scevgep465, %scevgep464
  %bound1 = icmp ult ptr %scevgep463, %scevgep466
  %found.conflict = and i1 %bound0, %bound1
  %bound0475 = icmp ult ptr %scevgep465, %scevgep462.a
  %bound1476 = icmp ult ptr %scevgep461, %scevgep466
  %found.conflict477 = and i1 %bound0475, %bound1476
  %bound0478 = icmp ult ptr %scevgep465, %scevgep460
  %bound1479 = icmp ult ptr %scevgep459, %scevgep466
  %found.conflict480 = and i1 %bound0478, %bound1479
  %bound0.a = icmp ult ptr %scevgep465, %scevgep468
  %bound1.a = icmp ult ptr %i.aw, %scevgep470
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %bound0467 = icmp ult ptr %scevgep463, %scevgep462.a
  %bound1468 = icmp ult ptr %scevgep461, %scevgep464
  %found.conflict469 = and i1 %bound0467, %bound1468
  %bound0490 = icmp ult ptr %scevgep463, %scevgep460
  %bound1491 = icmp ult ptr %scevgep459, %scevgep464
  %found.conflict492 = and i1 %bound0490, %bound1491
  %i.fe = icmp ult <4 x ptr> %18, %19
  %26 = icmp ult <4 x ptr> %22, %i.fd
  %i.ff = and <4 x i1> %i.fe, %26
  %27 = bitcast <4 x i1> %i.ff to i4
  %28 = icmp ne i4 %27, 0
  %op.rdx = or i1 %28, %found.conflict
  %op.rdx515 = or i1 %found.conflict477, %found.conflict480
  %op.rdx516 = or i1 %found.conflict.a, %found.conflict469
  %op.rdx512 = or i1 %op.rdx, %op.rdx515
  %op.rdx513 = or i1 %op.rdx516, %found.conflict492
  %op.rdx514 = or i1 %op.rdx512, %op.rdx513
  %n.vec = and i64 %umax, 248                     ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %i.eo, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat503 = shufflevector <2 x float> %i.eo, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.dn
  %i.fg = extractelement <2 x float> %i.eo, i64 0 ; 2 uses
  %i.fh = extractelement <2 x float> %i.eo, i64 1 ; 2 uses
  br label %.preheader314.us

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0219328.us = phi i64 [ %i.fz, %scalar.ph ], [ %.0219328.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fi = add nuw nsw i64 %.0219328.us, %i.it     ; 3 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.fi ; 2 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !53
  %i.fl = fmul float %i.fg, %i.fk
  %i.fm = add i64 %i.iw, %.0219328.us             ; 4 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.fm
  store float %i.fl, ptr %i.fn, align 4, !tbaa !53
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.fi
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !53
  %i.fq = fmul float %i.fg, %i.fp
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.fm
  store float %i.fq, ptr %i.fr, align 4, !tbaa !53
  %i.fs = load float, ptr %i.fj, align 4, !tbaa !53
  %i.ft = fmul float %i.fh, %i.fs
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.fm
  store float %i.ft, ptr %i.fu, align 4, !tbaa !53
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.fi
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !53
  %i.fx = fmul float %i.fh, %i.fw
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.fm
  store float %i.fx, ptr %i.fy, align 4, !tbaa !53
  %i.fz = add nuw nsw i64 %.0219328.us, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.fz, %umax
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !746

._crit_edge330.split.us:                          ; preds = %._crit_edge.us
  %i.ga = add i64 %i.i, %i.dn
  %i.gb = icmp ugt i64 %i.ga, %i.l
  %i.gc = add i64 %i.h, %i.er
  %i.gd = icmp ugt i64 %i.gc, %i.o
  %or.cond.us = select i1 %i.gb, i1 true, i1 %i.gd
  br i1 %or.cond.us, label %.loopexit.us, label %bb.h

bb.h:                                             ; preds = %._crit_edge330.split.us
  %i.ge = tail call noundef i64 @llvm.umin.i64(i64 %i.er, i64 %i.dn) ; 4 uses
  %i.gf = tail call noundef i64 @llvm.umax.i64(i64 %i.er, i64 %i.dn) ; 3 uses
  %.not = icmp eq i64 %i.ge, 0
  br i1 %.not, label %._crit_edge334.split.us, label %.preheader313.lr.ph.us

._crit_edge334.split.us.loopexit.unr-lcssa:       ; preds = %.preheader313.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge334.split.us, label %.preheader313.us.epil.preheader

.preheader313.us.epil.preheader:                  ; preds = %._crit_edge334.split.us.loopexit.unr-lcssa, %.preheader313.us.preheader
  %.0218333.us.epil.init = phi i64 [ 0, %.preheader313.us.preheader ], [ %i.is, %._crit_edge334.split.us.loopexit.unr-lcssa ]
  %lcmp.mod527 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod527)
  br label %.preheader313.us.epil

.preheader313.us.epil:                            ; preds = %.preheader313.us.epil, %.preheader313.us.epil.preheader
  %.0218333.us.epil = phi i64 [ %i.gk, %.preheader313.us.epil ], [ %.0218333.us.epil.init, %.preheader313.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader313.us.epil ], [ 0, %.preheader313.us.epil.preheader ]
  %i.gg = mul nuw nsw i64 %.0218333.us.epil, %i.jm ; 3 uses
  %i.gh = getelementptr [4 x i8], ptr %i.am, i64 %i.gg
  %i.gi = getelementptr [4 x i8], ptr %i.an, i64 %i.gg
  %i.gj = getelementptr [4 x i8], ptr %i.ao, i64 %i.gg
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gh, i8 0, i64 range(i64 0, 1021) %i.jn, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gi, i8 0, i64 range(i64 0, 1021) %i.jn, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gj, i8 0, i64 range(i64 0, 1021) %i.jn, i1 false), !tbaa !53
  %i.gk = add nuw nsw i64 %.0218333.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge334.split.us, label %.preheader313.us.epil, !llvm.loop !747

._crit_edge334.split.us:                          ; preds = %._crit_edge334.split.us.loopexit.unr-lcssa, %.preheader313.us.epil, %.preheader313.lr.ph.us, %bb.h
  br i1 %i.br, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge334.split.us
  %i.gl = load ptr, ptr %i.bs, align 8, !tbaa !50
  %i.gm = load i64, ptr %i.bt, align 8, !tbaa !51
  %i.gn = mul i64 %i.gm, %.0222347.us
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gn ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.go, i64 64) ]
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %.0221340.us
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !77
  %i.gr = sitofp i32 %i.gq to float
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge334.split.us
  %i.gs = phi float [ %i.gr, %bb.i ], [ 1.000000e+00, %._crit_edge334.split.us ]
  br i1 %8, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gt = load float, ptr %i.bp, align 4, !tbaa !73
  %i.gu = fmul float %i.gt, 1.280000e+02
  %i.gv = fmul float %i.gs, %i.gu
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.gw = phi float [ %i.gv, %bb.k ], [ 1.000000e+00, %bb.j ]
  %i.gx = insertelement <8 x float> poison, float %i.gw, i64 0
  %i.gy = shufflevector <8 x float> %i.gx, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.gz = shl nuw nsw i64 %i.dn, 6
  %i.ha = mul nuw nsw i64 %i.gz, %i.er            ; 2 uses
  %.not352 = icmp eq i64 %i.ha, 0
  br i1 %.not352, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.l, %.lr.ph.us
  %.0336.us = phi i64 [ %i.hw, %.lr.ph.us ], [ 0, %bb.l ] ; 6 uses
  %.2335.us = phi i64 [ %i.hv, %.lr.ph.us ], [ %.1339.us, %bb.l ] ; 5 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.0336.us
  %i.hc = load <8 x float>, ptr %i.hb, align 32, !tbaa !38 ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.0336.us
  %i.he = load <8 x float>, ptr %i.hd, align 32, !tbaa !38
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.0336.us
  %i.hg = load <8 x float>, ptr %i.hf, align 32, !tbaa !38
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.0336.us
  %i.hi = load <8 x float>, ptr %i.hh, align 32, !tbaa !38
  %i.hj = fmul <8 x float> %i.gy, %i.hi           ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.0336.us
  %i.hl = load <8 x float>, ptr %i.hk, align 32, !tbaa !38
  %i.hm = fmul <8 x float> %i.gy, %i.hl           ; 2 uses
  %i.hn = fmul <8 x float> %i.hc, %i.hj
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.2335.us
  store <8 x float> %i.hn, ptr %i.ho, align 32, !tbaa !38
  %i.hp = fmul <8 x float> %i.he, %i.hj
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.2335.us
  store <8 x float> %i.hp, ptr %i.hq, align 32, !tbaa !38
  %i.hr = fmul <8 x float> %i.hc, %i.hm
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.2335.us
  store <8 x float> %i.hr, ptr %i.hs, align 32, !tbaa !38
  %i.ht = fmul <8 x float> %i.hg, %i.hm
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.2335.us
  store <8 x float> %i.ht, ptr %i.hu, align 32, !tbaa !38
  %i.hv = add i64 %.2335.us, 8                    ; 2 uses
  %i.hw = add nuw nsw i64 %.0336.us, 8            ; 2 uses
  %i.hx = icmp samesign ult i64 %i.hw, %i.ha
  br i1 %i.hx, label %.lr.ph.us, label %.loopexit.us, !llvm.loop !748

.loopexit.us:                                     ; preds = %.lr.ph.us, %bb.l, %._crit_edge330.split.us, %bb.f
  %.4.us = phi i64 [ %.1339.us, %bb.f ], [ %.1339.us, %._crit_edge330.split.us ], [ %.1339.us, %bb.l ], [ %i.hv, %.lr.ph.us ] ; 12 uses
  %i.hy = add i64 %.0221340.us, 1                 ; 2 uses
  %exitcond369.not = icmp eq i64 %i.hy, %i.l
  %indvar.next458 = add i64 %indvar457, 1
  br i1 %exitcond369.not, label %._crit_edge345.us, label %bb.e, !llvm.loop !749

.preheader313.us:                                 ; preds = %.preheader313.us, %.preheader313.us.preheader.new
  %.0218333.us = phi i64 [ 0, %.preheader313.us.preheader.new ], [ %i.is, %.preheader313.us ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader313.us.preheader.new ], [ %niter.next.3, %.preheader313.us ]
  %i.hz = mul nuw nsw i64 %.0218333.us, %i.jm     ; 3 uses
  %i.ia = getelementptr [4 x i8], ptr %i.am, i64 %i.hz
  %i.ib = getelementptr [4 x i8], ptr %i.an, i64 %i.hz
  %i.ic = getelementptr [4 x i8], ptr %i.ao, i64 %i.hz
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ia, i8 0, i64 range(i64 0, 1021) %i.jn, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ib, i8 0, i64 range(i64 0, 1021) %i.jn, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ic, i8 0, i64 range(i64 0, 1021) %i.jn, i1 false), !tbaa !53
  %i.id = or disjoint i64 %.0218333.us, 1
  %i.ie = mul nuw nsw i64 %i.id, %i.jm            ; 3 uses
  %i.if = getelementptr [4 x i8], ptr %i.am, i64 %i.ie
  %i.ig = getelementptr [4 x i8], ptr %i.an, i64 %i.ie
  %i.ih = getelementptr [4 x i8], ptr %i.ao, i64 %i.ie
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.if, i8 0, i64 range(i64 0, 1021) %i.jn, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ig, i8 0, i64 range(i64 0, 1021) %i.jn, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ih, i8 0, i64 range(i64 0, 1021) %i.jn, i1 false), !tbaa !53
  %i.ii = or disjoint i64 %.0218333.us, 2
  %i.ij = mul nuw nsw i64 %i.ii, %i.jm            ; 3 uses
  %i.ik = getelementptr [4 x i8], ptr %i.am, i64 %i.ij
  %i.il = getelementptr [4 x i8], ptr %i.an, i64 %i.ij
  %i.im = getelementptr [4 x i8], ptr %i.ao, i64 %i.ij
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ik, i8 0, i64 range(i64 0, 1021) %i.jn, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.il, i8 0, i64 range(i64 0, 1021) %i.jn, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.im, i8 0, i64 range(i64 0, 1021) %i.jn, i1 false), !tbaa !53
  %i.in = or disjoint i64 %.0218333.us, 3
  %i.io = mul nuw nsw i64 %i.in, %i.jm            ; 3 uses
  %i.ip = getelementptr [4 x i8], ptr %i.am, i64 %i.io
  %i.iq = getelementptr [4 x i8], ptr %i.an, i64 %i.io
  %i.ir = getelementptr [4 x i8], ptr %i.ao, i64 %i.io
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ip, i8 0, i64 range(i64 0, 1021) %i.jn, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.iq, i8 0, i64 range(i64 0, 1021) %i.jn, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ir, i8 0, i64 range(i64 0, 1021) %i.jn, i1 false), !tbaa !53
  %i.is = add nuw nsw i64 %.0218333.us, 4         ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge334.split.us.loopexit.unr-lcssa, label %.preheader313.us, !llvm.loop !750

.preheader314.us:                                 ; preds = %.preheader314.us.preheader, %._crit_edge.us
  %.0220329.us = phi i64 [ %i.jl, %._crit_edge.us ], [ 0, %.preheader314.us.preheader ] ; 3 uses
  %i.it = mul nuw nsw i64 %.0220329.us, %i.dn     ; 2 uses
  %i.iu = add i64 %.0220329.us, %.0222347.us
  %i.iv = mul i64 %i.iu, %i.c
  %i.iw = add i64 %i.iv, %.0221340.us             ; 2 uses
  %min.iters.check.not.not = xor i1 %min.iters.check.not, true
  %brmerge = select i1 %min.iters.check.not.not, i1 true, i1 %op.rdx514
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader314.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader314.us ] ; 3 uses
  %i.ix = add nuw nsw i64 %index, %i.it           ; 3 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ix ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3jxl6N_SSE213InitDCStorageEP22JxlMemoryManagerStructmPNS_5PlaneIfEE:bb.a
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef %i.d, i32 noundef 4, i64 noundef 4) #43, !noalias !1825
  %i.e = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %0, i64 noundef 0) #43, !noalias !1825 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  br i1 %i.f, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.e, ptr %i.g, align 8, !tbaa !42, !alias.scope !1825
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

.critedge.i:                                      ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !42, !alias.scope !1825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i) #43
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !48, !noalias !1825
  store i64 %i.l, ptr %i.j, align 8, !tbaa !48, !alias.scope !1825
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit: ; preds = %bb.c, %.critedge.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42, !noalias !1825
  %.pre = load i32, ptr %i.g, align 8, !tbaa !42  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.o = icmp eq i32 %.pre, 0
  br i1 %i.o, label %bb.d, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

bb.d:                                             ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #42
  call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(60) %4, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q) #43
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !48, !noalias !1826
  store i64 %i.t, ptr %i.r, align 8, !tbaa !48, !alias.scope !1826
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.p) #43 ; 0 uses
  %i.w = load i64, ptr %i.r, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.w, ptr %i.x, align 8, !tbaa !48
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
  %i.y = load i32, ptr %2, align 8, !tbaa !49     ; 3 uses
  %i.z = zext i32 %i.y to i64
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %.loopexit.split, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.aa = icmp ugt i32 %i.y, 3
  br i1 %i.aa, label %.preheader.split, label %.loopexit.split

.preheader.split:                                 ; preds = %.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !50 ; 5 uses
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !51 ; 3 uses
  %i.af = shl nuw nsw i64 %i.z, 2
  %i.ag = add nsw i64 %i.af, -16                  ; 4 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.ag
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ad, i64 64) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %scevgep, i8 0, i64 16, i1 false), !tbaa !53
  %i.ah = getelementptr i8, ptr %i.ad, i64 %i.ag
  %scevgep.1 = getelementptr i8, ptr %i.ah, i64 %i.ae
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %scevgep.1, i8 0, i64 16, i1 false), !tbaa !53
  %i.ai = shl i64 %i.ae, 1
  %i.aj = getelementptr i8, ptr %i.ad, i64 %i.ag
  %scevgep.2 = getelementptr i8, ptr %i.aj, i64 %i.ai
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %scevgep.2, i8 0, i64 16, i1 false), !tbaa !53
  %i.ak = mul i64 %i.ae, 3
  %i.al = getelementptr i8, ptr %i.ad, i64 %i.ag
  %scevgep.3 = getelementptr i8, ptr %i.al, i64 %i.ak
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %scevgep.3, i8 0, i64 16, i1 false), !tbaa !53
  br label %.loopexit.split

.loopexit.split:                                  ; preds = %.preheader.split, %.preheader, %bb.d
  %.sroa.015.0.ph = phi i32 [ 1, %bb.d ], [ 0, %.preheader ], [ 0, %.preheader.split ] ; 2 uses
  %.pr = load i32, ptr %i.n, align 8, !tbaa !42
  %i.am = icmp eq i32 %.pr, 0
  br i1 %i.am, label %bb.e, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

bb.e:                                             ; preds = %.loopexit.split
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.q) #43
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit:         ; preds = %bb.a, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit, %.loopexit.split, %bb.e
  %.sroa.015.020 = phi i32 [ %.sroa.015.0.ph, %bb.e ], [ %.sroa.015.0.ph, %.loopexit.split ], [ %.pre, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  ret i32 %.sroa.015.020
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl6N_SSE211ComputeTileERKNS_6Image3IfEERKNS_5RectTImEERKNS_15DequantMatricesEPKNS_15AcStrategyImageEPKNS_5PlaneIiEEPKNS_9QuantizerES8_bbPNSF_IaEESN_PNSF_IfEENS_4SpanIfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(744) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %6, i1 noundef zeroext %7, i1 noundef zeroext %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef readonly captures(none) %11, ptr nofree noundef readonly byval(%"class.jxl::Span") align 8 captures(none) %12) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !55
  %i.c = lshr i64 %i.b, 3                         ; 4 uses
  %i.d = tail call noundef i64 @_ZN3jxl13MaxVectorSizeEv() #43
  %i.e = lshr i64 %i.d, 2
  %i.f = mul i64 %i.e, 768
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !56   ; 6 uses
  %i.i = load i64, ptr %6, align 8, !tbaa !57     ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !55
  %i.l = add i64 %i.k, %i.i                       ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !58
  %i.o = add i64 %i.n, %i.h                       ; 3 uses
  %i.p = shl i64 %i.h, 29
  %i.q = ashr i64 %i.p, 32                        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !51
  %i.v = mul i64 %i.u, %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.w, i64 64) ]
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !51
  %i.ab = mul i64 %i.aa, %i.q
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 64) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ae, i64 64) ]
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !51 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ah, i64 64) ]
  %i.ai = shl i64 %i.ag, 1                        ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ai ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aj, i64 64) ]
  %i.ak = mul i64 %i.ag, 3                        ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ak ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.al, i64 64) ]
  %i.am = load ptr, ptr %12, align 8, !tbaa !61   ; 19 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 262144 ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 524288 ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !62 ; 4 uses
  %.not.i = icmp ult i64 %i.aq, 196608
  br i1 %.not.i, label %_ZN3jxl4SpanIfE13remove_prefixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 786432 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 802816 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 819200 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 835584 ; 5 uses
  %i.av = and i64 %i.aq, -16384
  %.not.i230 = icmp eq i64 %i.av, 196608
  br i1 %.not.i230, label %_ZN3jxl4SpanIfE13remove_prefixEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr i8, ptr %i.am, i64 851968 ; 7 uses
  %i.ax = add i64 %i.aq, -212992
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 856064 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 860160 ; 3 uses
  %.not.i233 = icmp ult i64 %i.ax, 3072
  br i1 %.not.i233, label %_ZN3jxl4SpanIfE13remove_prefixEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 864256 ; 6 uses
  %i.bb = add i64 %i.f, 347136
  %i.bc = icmp eq i64 %i.aq, %i.bb
  br i1 %i.bc, label %.preheader317, label %_ZN3jxl4SpanIfE13remove_prefixEm.exit

.preheader317:                                    ; preds = %bb.d
  %i.bd = icmp ult i64 %i.h, %i.o
  br i1 %i.bd, label %.lr.ph350, label %_ZN3jxl6N_SSE218FindBestMultiplierEPKfS2_mffb.exit.thread

.lr.ph350:                                        ; preds = %.preheader317
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bj = icmp ult i64 %i.i, %i.l
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.br = icmp eq ptr %4, null
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 16
  br i1 %i.bj, label %.lr.ph346.us.preheader, label %_ZN3jxl6N_SSE218FindBestMultiplierEPKfS2_mffb.exit.thread

.lr.ph346.us.preheader:                           ; preds = %.lr.ph350
  %i.bu = mul i64 %i.h, %i.c
  %i.bv = add i64 %i.i, %i.bu
  %i.bw = shl i64 %i.bv, 2                        ; 4 uses
  %i.bx = shl nuw nsw i64 %i.c, 2
  %i.by = shl nuw nsw i64 %i.c, 2
  %scevgep469 = getelementptr i8, ptr %i.am, i64 860160
  %i.bz = getelementptr i8, ptr %i.ae, i64 %i.bw
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.ak
  %i.cb = getelementptr i8, ptr %i.ae, i64 %i.bw
  %i.cc = getelementptr i8, ptr %i.cb, i64 %i.ai
  %i.cd = getelementptr i8, ptr %i.ae, i64 %i.ag
  %i.ce = getelementptr i8, ptr %i.cd, i64 %i.bw
  %i.cf = getelementptr i8, ptr %i.ae, i64 %i.bw
  %i.cg = insertelement <4 x ptr> poison, ptr %i.aw, i64 1
  br label %.lr.ph346.us

.lr.ph346.us:                                     ; preds = %.lr.ph346.us.preheader, %._crit_edge347.us
  %indvar = phi i64 [ 0, %.lr.ph346.us.preheader ], [ %indvar.next, %._crit_edge347.us ] ; 2 uses
  %.0222349.us = phi i64 [ %i.h, %.lr.ph346.us.preheader ], [ %i.kc, %._crit_edge347.us ] ; 5 uses
  %.0223348.us = phi i64 [ 0, %.lr.ph346.us.preheader ], [ %.4.us, %._crit_edge347.us ]
  %i.ch = mul i64 %i.bx, %indvar                  ; 4 uses
  %i.ci = shl i64 %.0222349.us, 3
  %i.cj = load i64, ptr %i.be, align 8, !tbaa !56
  %i.ck = add i64 %i.cj, %i.ci
  %i.cl = load i64, ptr %i.bf, align 8, !tbaa !51 ; 2 uses
  %i.cm = mul i64 %i.ck, %i.cl                    ; 3 uses
  %i.cn = load ptr, ptr %i.bg, align 8, !tbaa !50 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cn, i64 64) ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cm ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.co, i64 64) ]
  %i.cp = load i64, ptr %1, align 8, !tbaa !57    ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load ptr, ptr %i.bh, align 8, !tbaa !50 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cr, i64 64) ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cm ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cs, i64 64) ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cp
  %i.cu = load ptr, ptr %i.bi, align 8, !tbaa !50 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cu, i64 64) ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cm ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cv, i64 64) ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cp
  %i.cx = lshr i64 %i.cl, 2                       ; 3 uses
  %i.cy = getelementptr i8, ptr %i.ca, i64 %i.ch
  %i.cz = getelementptr i8, ptr %i.cc, i64 %i.ch
  %i.da = getelementptr i8, ptr %i.ce, i64 %i.ch
  %i.db = getelementptr i8, ptr %i.cf, i64 %i.ch
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph346.us, %.loopexit.us
  %indvar459 = phi i64 [ 0, %.lr.ph346.us ], [ %indvar.next460, %.loopexit.us ] ; 2 uses
  %.0221342.us = phi i64 [ %i.i, %.lr.ph346.us ], [ %i.il, %.loopexit.us ] ; 5 uses
  %.1341.us = phi i64 [ %.0223348.us, %.lr.ph346.us ], [ %.4.us, %.loopexit.us ] ; 4 uses
  %i.dc = shl i64 %indvar459, 2                   ; 4 uses
  %scevgep461 = getelementptr i8, ptr %i.cy, i64 %i.dc ; 6 uses
  %scevgep463 = getelementptr i8, ptr %i.cz, i64 %i.dc ; 6 uses
  %scevgep465 = getelementptr i8, ptr %i.da, i64 %i.dc ; 6 uses
  %scevgep467 = getelementptr i8, ptr %i.db, i64 %i.dc ; 6 uses
  br i1 %8, label %.thread.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dd = load ptr, ptr %i.bk, align 8, !tbaa !50
  %i.de = load i64, ptr %i.bl, align 8, !tbaa !51
  %i.df = mul i64 %i.de, %.0222349.us
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.df ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dg, i64 64) ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.0221342.us
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !38  ; 2 uses
  %i.dj = lshr i8 %i.di, 1
  %i.dk = trunc i8 %i.di to i1
  %extract.t.us = zext nneg i8 %i.dj to i32
  br i1 %i.dk, label %.thread.us, label %.loopexit.us

.thread.us:                                       ; preds = %bb.f, %bb.e
  %storemerge309.off0.us = phi i32 [ %extract.t.us, %bb.f ], [ 0, %bb.e ] ; 7 uses
  %i.dl = zext nneg i32 %storemerge309.off0.us to i64 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !38
  %i.do = zext i8 %i.dn to i64                    ; 11 uses
  %i.dp = shl i64 %.0221342.us, 3                 ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dp
  tail call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %storemerge309.off0.us, ptr noundef %i.dq, i64 noundef %i.cx, ptr noundef %i.am, ptr noundef nonnull %i.ba) #44
  tail call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %storemerge309.off0.us, ptr noundef %i.am, ptr noundef nonnull %i.aw, i64 noundef %i.do, ptr noundef nonnull %i.ba) #44
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dp
  tail call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %storemerge309.off0.us, ptr noundef %i.dr, i64 noundef %i.cx, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ba) #44
  tail call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %storemerge309.off0.us, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ay, i64 noundef %i.do, ptr noundef nonnull %i.ba) #44
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.dp
  tail call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %storemerge309.off0.us, ptr noundef %i.ds, i64 noundef %i.cx, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ba) #44
  tail call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %storemerge309.off0.us, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.az, i64 noundef %i.do, ptr noundef nonnull %i.ba) #44
  %i.dt = load ptr, ptr %i.bm, align 8, !tbaa !68 ; 2 uses
  %.idx.i229.us = mul nuw nsw i64 %i.dl, 24
  %i.du = getelementptr i8, ptr %i.bn, i64 %.idx.i229.us ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !69
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.du, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !69
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dy
  br i1 %8, label %.preheader316.us.preheader, label %bb.g

bb.g:                                             ; preds = %.thread.us
  %i.ea = load ptr, ptr %i.bo, align 8, !tbaa !72 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 60
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !53
  %i.ed = load float, ptr %i.bp, align 4, !tbaa !73
  %i.ee = load i32, ptr %i.bq, align 4, !tbaa !74
  %i.ef = sitofp i32 %i.ee to float
  %i.eg = fmul float %i.ed, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 68
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !53
  %i.ej = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %i.ei, i64 1
  %i.el = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = fmul <2 x float> %i.ek, %i.em
  %i.eo = fdiv <2 x float> splat (float 1.000000e+00), %i.en
  br label %.preheader316.us.preheader

.preheader316.us.preheader:                       ; preds = %.thread.us, %bb.g
  %i.ep = phi <2 x float> [ %i.eo, %bb.g ], [ splat (float 1.000000e+00), %.thread.us ] ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.dl
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !38
  %i.es = zext i8 %i.er to i64                    ; 6 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.do, i64 1) ; 3 uses
  %umax368 = tail call i64 @llvm.umax.i64(i64 %i.es, i64 1)
  %i.et = tail call i64 @llvm.usub.sat.i64(i64 %i.es, i64 1) ; 2 uses
  %13 = mul i64 %i.by, %i.et
  %i.eu = shl nuw nsw i64 %umax, 2                ; 6 uses
  %14 = add i64 %13, %i.eu                        ; 4 uses
  %scevgep464 = getelementptr i8, ptr %scevgep461, i64 %14
  %i.ev = getelementptr i8, ptr %scevgep463, i64 %14
  %scevgep458 = getelementptr i8, ptr %scevgep465, i64 %14
  %15 = shl nuw nsw i64 %i.et, 2
  %i.ew = mul nuw nsw i64 %15, %i.do
  %16 = getelementptr i8, ptr %scevgep469, i64 %i.ew
  %scevgep470 = getelementptr i8, ptr %16, i64 %i.eu ; 4 uses
  %scevgep472 = getelementptr i8, ptr %scevgep467, i64 %14
  %scevgep462 = getelementptr i8, ptr %scevgep461, i64 %i.eu ; 3 uses
  %scevgep464.a = getelementptr i8, ptr %scevgep463, i64 %i.eu ; 3 uses
  %scevgep466 = getelementptr i8, ptr %scevgep465, i64 %i.eu ; 3 uses
  %scevgep468 = getelementptr i8, ptr %scevgep467, i64 %i.eu ; 3 uses
  %i.ex = insertelement <4 x ptr> poison, ptr %scevgep461, i64 0
  %i.ey = insertelement <4 x ptr> %i.ex, ptr %scevgep467, i64 1
  %i.ez = insertelement <4 x ptr> %i.ey, ptr %scevgep463, i64 2
  %i.fa = insertelement <4 x ptr> %i.ez, ptr %scevgep465, i64 3
  %i.fb = insertelement <4 x ptr> poison, ptr %scevgep468, i64 0
  %i.fc = insertelement <4 x ptr> %i.fb, ptr %scevgep470, i64 1
  %i.fd = insertelement <4 x ptr> %i.fc, ptr %scevgep466, i64 2
  %i.fe = insertelement <4 x ptr> %i.fd, ptr %scevgep462, i64 3
  %i.ff = insertelement <4 x ptr> %i.cg, ptr %scevgep467, i64 0
  %i.fg = insertelement <4 x ptr> %i.ff, ptr %scevgep465, i64 2
  %i.fh = insertelement <4 x ptr> %i.fg, ptr %scevgep461, i64 3
  %i.fi = insertelement <4 x ptr> poison, ptr %scevgep462, i64 0
  %i.fj = insertelement <4 x ptr> %i.fi, ptr %scevgep472, i64 1
  %i.fk = insertelement <4 x ptr> %i.fj, ptr %scevgep464.a, i64 2
  %i.fl = insertelement <4 x ptr> %i.fk, ptr %scevgep466, i64 3
  %i.fm = shl nuw i64 1, %i.dl
  %i.fn = and i64 %i.fm, 6291455
  %min.iters.check.not = icmp eq i64 %i.fn, 0
  %bound0 = icmp ult ptr %scevgep467, %scevgep466
  %bound1 = icmp ult ptr %scevgep465, %scevgep468
  %found.conflict = and i1 %bound0, %bound1
  %bound0469 = icmp ult ptr %scevgep467, %scevgep464.a
  %bound1470 = icmp ult ptr %scevgep463, %scevgep468
  %found.conflict471 = and i1 %bound0469, %bound1470
  %i.fo = icmp ult <4 x ptr> %i.fh, %i.fl
  %i.fp = icmp ult <4 x ptr> %i.fa, %i.fe
  %i.fq = and <4 x i1> %i.fp, %i.fo
  %bound0488 = icmp ult ptr %scevgep465, %scevgep470
  %bound1489 = icmp ult ptr %i.aw, %scevgep458
  %found.conflict490 = and i1 %bound0488, %bound1489
  %bound0492 = icmp ult ptr %scevgep463, %scevgep462
  %bound1493 = icmp ult ptr %scevgep461, %scevgep464.a
  %found.conflict494 = and i1 %bound0492, %bound1493
  %bound0496 = icmp ult ptr %scevgep463, %scevgep470
  %bound1497 = icmp ult ptr %i.aw, %i.ev
  %found.conflict498 = and i1 %bound0496, %bound1497
  %bound0500 = icmp ult ptr %scevgep461, %scevgep470
  %bound1501 = icmp ult ptr %i.aw, %scevgep464
  %found.conflict502 = and i1 %bound0500, %bound1501
  %i.fr = bitcast <4 x i1> %i.fq to i4
  %i.fs = icmp ne i4 %i.fr, 0
  %op.rdx = or i1 %i.fs, %found.conflict
  %op.rdx509 = or i1 %found.conflict471, %found.conflict490
  %op.rdx510 = or i1 %found.conflict494, %found.conflict498
  %op.rdx511 = or i1 %op.rdx, %op.rdx509
  %op.rdx512 = or i1 %op.rdx510, %found.conflict502
  %op.rdx513 = or i1 %op.rdx511, %op.rdx512
  %n.vec = and i64 %umax, 252                     ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %i.ep, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat505 = shufflevector <2 x float> %i.ep, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.do
  %i.ft = extractelement <2 x float> %i.ep, i64 0 ; 2 uses
  %i.fu = extractelement <2 x float> %i.ep, i64 1 ; 2 uses
  br label %.preheader316.us

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0219330.us = phi i64 [ %i.gm, %scalar.ph ], [ %.0219330.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fv = add nuw nsw i64 %.0219330.us, %i.jg     ; 3 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.fv ; 2 uses
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !53
  %i.fy = fmul float %i.ft, %i.fx
  %i.fz = add i64 %i.jj, %.0219330.us             ; 4 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.fz
  store float %i.fy, ptr %i.ga, align 4, !tbaa !53
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.fv
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !53
  %i.gd = fmul float %i.ft, %i.gc
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.fz
  store float %i.gd, ptr %i.ge, align 4, !tbaa !53
  %i.gf = load float, ptr %i.fw, align 4, !tbaa !53
  %i.gg = fmul float %i.fu, %i.gf
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.fz
  store float %i.gg, ptr %i.gh, align 4, !tbaa !53
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.fv
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !53
  %i.gk = fmul float %i.fu, %i.gj
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.fz
  store float %i.gk, ptr %i.gl, align 4, !tbaa !53
  %i.gm = add nuw nsw i64 %.0219330.us, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.gm, %umax
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1827

._crit_edge332.split.us:                          ; preds = %._crit_edge.us
  %i.gn = add i64 %i.i, %i.do
  %i.go = icmp ugt i64 %i.gn, %i.l
  %i.gp = add i64 %i.h, %i.es
  %i.gq = icmp ugt i64 %i.gp, %i.o
  %or.cond.us = select i1 %i.go, i1 true, i1 %i.gq
  br i1 %or.cond.us, label %.loopexit.us, label %bb.h

bb.h:                                             ; preds = %._crit_edge332.split.us
  %i.gr = tail call noundef i64 @llvm.umin.i64(i64 %i.es, i64 %i.do) ; 4 uses
  %i.gs = tail call noundef i64 @llvm.umax.i64(i64 %i.es, i64 %i.do) ; 3 uses
  %.not = icmp eq i64 %i.gr, 0
  br i1 %.not, label %._crit_edge336.split.us, label %.preheader315.lr.ph.us

._crit_edge336.split.us.loopexit.unr-lcssa:       ; preds = %.preheader315.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge336.split.us, label %.preheader315.us.epil.preheader

.preheader315.us.epil.preheader:                  ; preds = %._crit_edge336.split.us.loopexit.unr-lcssa, %.preheader315.us.preheader
  %.0218335.us.epil.init = phi i64 [ 0, %.preheader315.us.preheader ], [ %i.jf, %._crit_edge336.split.us.loopexit.unr-lcssa ]
  %lcmp.mod530 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod530)
  br label %.preheader315.us.epil

.preheader315.us.epil:                            ; preds = %.preheader315.us.epil, %.preheader315.us.epil.preheader
  %.0218335.us.epil = phi i64 [ %i.gx, %.preheader315.us.epil ], [ %.0218335.us.epil.init, %.preheader315.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader315.us.epil ], [ 0, %.preheader315.us.epil.preheader ]
  %i.gt = mul nuw nsw i64 %.0218335.us.epil, %i.jz ; 3 uses
  %i.gu = getelementptr [4 x i8], ptr %i.am, i64 %i.gt
  %i.gv = getelementptr [4 x i8], ptr %i.an, i64 %i.gt
  %i.gw = getelementptr [4 x i8], ptr %i.ao, i64 %i.gt
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gu, i8 0, i64 range(i64 0, 1021) %i.ka, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gv, i8 0, i64 range(i64 0, 1021) %i.ka, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gw, i8 0, i64 range(i64 0, 1021) %i.ka, i1 false), !tbaa !53
  %i.gx = add nuw nsw i64 %.0218335.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge336.split.us, label %.preheader315.us.epil, !llvm.loop !1828

._crit_edge336.split.us:                          ; preds = %._crit_edge336.split.us.loopexit.unr-lcssa, %.preheader315.us.epil, %.preheader315.lr.ph.us, %bb.h
  br i1 %i.br, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge336.split.us
  %i.gy = load ptr, ptr %i.bs, align 8, !tbaa !50
  %i.gz = load i64, ptr %i.bt, align 8, !tbaa !51
  %i.ha = mul i64 %i.gz, %.0222349.us
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ha ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hb, i64 64) ]
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %.0221342.us
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !77
  %i.he = sitofp i32 %i.hd to float
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge336.split.us
  %i.hf = phi float [ %i.he, %bb.i ], [ 1.000000e+00, %._crit_edge336.split.us ]
  br i1 %8, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hg = load float, ptr %i.bp, align 4, !tbaa !73
  %i.hh = fmul float %i.hg, 1.280000e+02
  %i.hi = fmul float %i.hf, %i.hh
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.hj = phi float [ %i.hi, %bb.k ], [ 1.000000e+00, %bb.j ]
  %i.hk = insertelement <4 x float> poison, float %i.hj, i64 0
  %i.hl = shufflevector <4 x float> %i.hk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hm = shl nuw nsw i64 %i.do, 6
  %i.hn = mul nuw nsw i64 %i.hm, %i.es            ; 2 uses
  %.not354 = icmp eq i64 %i.hn, 0
  br i1 %.not354, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.l, %.lr.ph.us
  %.0338.us = phi i64 [ %i.ij, %.lr.ph.us ], [ 0, %bb.l ] ; 6 uses
  %.2337.us = phi i64 [ %i.ii, %.lr.ph.us ], [ %.1341.us, %bb.l ] ; 5 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.0338.us
  %i.hp = load <4 x float>, ptr %i.ho, align 16, !tbaa !38 ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.0338.us
  %i.hr = load <4 x float>, ptr %i.hq, align 16, !tbaa !38
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.0338.us
  %i.ht = load <4 x float>, ptr %i.hs, align 16, !tbaa !38
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.0338.us
  %i.hv = load <4 x float>, ptr %i.hu, align 16, !tbaa !38
  %i.hw = fmul <4 x float> %i.hl, %i.hv           ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.0338.us
  %i.hy = load <4 x float>, ptr %i.hx, align 16, !tbaa !38
  %i.hz = fmul <4 x float> %i.hl, %i.hy           ; 2 uses
  %i.ia = fmul <4 x float> %i.hp, %i.hw
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.2337.us
  store <4 x float> %i.ia, ptr %i.ib, align 16, !tbaa !38
  %i.ic = fmul <4 x float> %i.hr, %i.hw
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.2337.us
  store <4 x float> %i.ic, ptr %i.id, align 16, !tbaa !38
  %i.ie = fmul <4 x float> %i.hp, %i.hz
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.2337.us
  store <4 x float> %i.ie, ptr %i.if, align 16, !tbaa !38
  %i.ig = fmul <4 x float> %i.ht, %i.hz
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.2337.us
  store <4 x float> %i.ig, ptr %i.ih, align 16, !tbaa !38
  %i.ii = add i64 %.2337.us, 4                    ; 2 uses
  %i.ij = add nuw nsw i64 %.0338.us, 4            ; 2 uses
  %i.ik = icmp samesign ult i64 %i.ij, %i.hn
  br i1 %i.ik, label %.lr.ph.us, label %.loopexit.us, !llvm.loop !1829

.loopexit.us:                                     ; preds = %.lr.ph.us, %bb.l, %._crit_edge332.split.us, %bb.f
  %.4.us = phi i64 [ %.1341.us, %bb.f ], [ %.1341.us, %._crit_edge332.split.us ], [ %.1341.us, %bb.l ], [ %i.ii, %.lr.ph.us ] ; 12 uses
  %i.il = add i64 %.0221342.us, 1                 ; 2 uses
  %exitcond371.not = icmp eq i64 %i.il, %i.l
  %indvar.next460 = add i64 %indvar459, 1
  br i1 %exitcond371.not, label %._crit_edge347.us, label %bb.e, !llvm.loop !1830

.preheader315.us:                                 ; preds = %.preheader315.us, %.preheader315.us.preheader.new
  %.0218335.us = phi i64 [ 0, %.preheader315.us.preheader.new ], [ %i.jf, %.preheader315.us ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader315.us.preheader.new ], [ %niter.next.3, %.preheader315.us ]
  %i.im = mul nuw nsw i64 %.0218335.us, %i.jz     ; 3 uses
  %i.in = getelementptr [4 x i8], ptr %i.am, i64 %i.im
  %i.io = getelementptr [4 x i8], ptr %i.an, i64 %i.im
  %i.ip = getelementptr [4 x i8], ptr %i.ao, i64 %i.im
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.in, i8 0, i64 range(i64 0, 1021) %i.ka, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.io, i8 0, i64 range(i64 0, 1021) %i.ka, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ip, i8 0, i64 range(i64 0, 1021) %i.ka, i1 false), !tbaa !53
  %i.iq = or disjoint i64 %.0218335.us, 1
  %i.ir = mul nuw nsw i64 %i.iq, %i.jz            ; 3 uses
  %i.is = getelementptr [4 x i8], ptr %i.am, i64 %i.ir
  %i.it = getelementptr [4 x i8], ptr %i.an, i64 %i.ir
  %i.iu = getelementptr [4 x i8], ptr %i.ao, i64 %i.ir
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.is, i8 0, i64 range(i64 0, 1021) %i.ka, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.it, i8 0, i64 range(i64 0, 1021) %i.ka, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.iu, i8 0, i64 range(i64 0, 1021) %i.ka, i1 false), !tbaa !53
  %i.iv = or disjoint i64 %.0218335.us, 2
  %i.iw = mul nuw nsw i64 %i.iv, %i.jz            ; 3 uses
  %i.ix = getelementptr [4 x i8], ptr %i.am, i64 %i.iw
  %i.iy = getelementptr [4 x i8], ptr %i.an, i64 %i.iw
  %i.iz = getelementptr [4 x i8], ptr %i.ao, i64 %i.iw
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ix, i8 0, i64 range(i64 0, 1021) %i.ka, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.iy, i8 0, i64 range(i64 0, 1021) %i.ka, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.iz, i8 0, i64 range(i64 0, 1021) %i.ka, i1 false), !tbaa !53
  %i.ja = or disjoint i64 %.0218335.us, 3
  %i.jb = mul nuw nsw i64 %i.ja, %i.jz            ; 3 uses
  %i.jc = getelementptr [4 x i8], ptr %i.am, i64 %i.jb
  %i.jd = getelementptr [4 x i8], ptr %i.an, i64 %i.jb
  %i.je = getelementptr [4 x i8], ptr %i.ao, i64 %i.jb
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jc, i8 0, i64 range(i64 0, 1021) %i.ka, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jd, i8 0, i64 range(i64 0, 1021) %i.ka, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.je, i8 0, i64 range(i64 0, 1021) %i.ka, i1 false), !tbaa !53
  %i.jf = add nuw nsw i64 %.0218335.us, 4         ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge336.split.us.loopexit.unr-lcssa, label %.preheader315.us, !llvm.loop !1831

.preheader316.us:                                 ; preds = %.preheader316.us.preheader, %._crit_edge.us
  %.0220331.us = phi i64 [ %i.jy, %._crit_edge.us ], [ 0, %.preheader316.us.preheader ] ; 3 uses
  %i.jg = mul nuw nsw i64 %.0220331.us, %i.do     ; 2 uses
  %i.jh = add i64 %.0220331.us, %.0222349.us
  %i.ji = mul i64 %i.jh, %i.c
  %i.jj = add i64 %i.ji, %.0221342.us             ; 2 uses
end_hunk_2
