Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpTNLP?download=true
inline.NumInlined: 1322
inline.NumDeleted: 252
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK5Ipopt4TNLP16get_curr_iterateEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEbiPdS6_S6_iS6_S6_:bb.a
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %bb.ae
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !73
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292, %bb.ad
  %.pn269 = phi { ptr, i32 } [ %i.bs, %bb.ad ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292 ], [ %i.bt, %bb.ae ] ; 4 uses
  %.1166 = phi i1 [ true, %bb.ad ], [ %.0165, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292 ], [ %.0165, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  %i.bz = load ptr, ptr %19, align 8, !tbaa !72   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !73
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  %i.ce = load ptr, ptr %17, align 8, !tbaa !72   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297.thread: ; preds = %bb.z
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  %i.ci = load ptr, ptr %17, align 8, !tbaa !72   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300.thread471, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297.thread
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !73
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #17
  br label %.sink.split572

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300.thread471: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297.thread
  %i.cn = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !74
  %i.cp = icmp ult i64 %i.co, 16
  call void @llvm.assume(i1 %i.cp)
  br label %.sink.split572

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297
  %i.cq = load i64, ptr %i.cf, align 8, !tbaa !73
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.cr) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br i1 %.1166, label %bb.af, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit402

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br i1 %.1166, label %bb.af, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit402

.sink.split572:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300.thread471, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298.thread
  %.pn269.pn.pn464.ph = phi { ptr, i32 } [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298.thread ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300.thread471 ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %bb.af

bb.af:                                            ; preds = %.sink.split572, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300
  %.pn269.pn.pn464 = phi { ptr, i32 } [ %.pn269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298 ], [ %.pn269, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300 ], [ %.pn269.pn.pn464.ph, %.sink.split572 ]
  call void @__cxa_free_exception(ptr %i.bq) #15
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit402

bb.ag:                                            ; preds = %bb.x, %bb.w
  %.not231 = icmp eq ptr %5, null                 ; 2 uses
  br i1 %.not231, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cs = icmp ne ptr %6, null
  %i.ct = icmp ne ptr %7, null
  %or.cond5 = and i1 %i.cs, %i.ct
  br i1 %or.cond5, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  call fastcc void @_ZN5IpoptL6curr_xEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %23, ptr noundef nonnull %1, ptr noundef %.0172, ptr noundef %.0171, i1 noundef zeroext %3)
  %i.cu = load ptr, ptr %23, align 8, !tbaa !77   ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !25
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.ak, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit

bb.ak:                                            ; preds = %bb.aj
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !27
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  tail call void %i.da(ptr noundef nonnull align 8 dereferenceable(248) %i.cu) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit:  ; preds = %bb.ai, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  br label %bb.al

bb.al:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit, %bb.ah
  %.sroa.0430.0 = phi ptr [ %i.cu, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit ], [ null, %bb.ah ] ; 10 uses
  %i.db = icmp ne ptr %6, null
  %i.dc = icmp ne ptr %7, null
  %or.cond7 = and i1 %i.db, %i.dc                 ; 2 uses
  %i.dd = icmp ne ptr %10, null                   ; 2 uses
  %or.cond9 = or i1 %or.cond7, %i.dd
  br i1 %or.cond9, label %bb.am, label %bb.av

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  invoke fastcc void @_ZN5IpoptL8curr_y_cEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %24, ptr noundef nonnull %1, ptr noundef %.0172, ptr noundef %.0171, i1 noundef zeroext %3)
          to label %bb.an unwind label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.de = load ptr, ptr %24, align 8, !tbaa !77   ; 6 uses
  %.not.i.i.i305 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i305, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit309, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !25
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.ap, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit309

bb.ap:                                            ; preds = %bb.ao
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !27
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  tail call void %i.dk(ptr noundef nonnull align 8 dereferenceable(248) %i.de) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit309

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit309: ; preds = %bb.an, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15
  invoke fastcc void @_ZN5IpoptL8curr_y_dEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %25, ptr noundef nonnull %1, ptr noundef %.0172, ptr noundef %.0171, i1 noundef zeroext %3)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit309
  %i.dl = load ptr, ptr %25, align 8, !tbaa !77   ; 5 uses
  %.not.i.i.i310 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i310, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit314, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !25
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.as, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit314

bb.as:                                            ; preds = %bb.ar
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !27
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  tail call void %i.dr(ptr noundef nonnull align 8 dereferenceable(248) %i.dl) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit314

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit314: ; preds = %bb.aq, %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  br label %bb.av

bb.at:                                            ; preds = %bb.am
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit400

bb.au:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit309
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit398

bb.av:                                            ; preds = %bb.al, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit314
  %.sroa.0425.0 = phi ptr [ %i.de, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit314 ], [ null, %bb.al ] ; 9 uses
  %.sroa.0420.0 = phi ptr [ %i.dl, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit314 ], [ null, %bb.al ] ; 10 uses
  br i1 %.not231, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN5Ipopt11TNLPAdapter7ResortXERKNS_6VectorEPdb(ptr noundef nonnull align 8 dereferenceable(600) %i.aa, ptr noundef nonnull align 8 dereferenceable(205) %.sroa.0430.0, ptr noundef nonnull %5, i1 noundef zeroext true)
          to label %bb.ay unwind label %bb.ax

bb.ax:                                            ; preds = %bb.fb, %bb.aw
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit350

bb.ay:                                            ; preds = %bb.aw, %bb.av
  br i1 %or.cond7, label %bb.az, label %.loopexit

bb.az:                                            ; preds = %bb.ay
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !78 ; 7 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aa, i64 472
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !79 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !80
  %.not = xor i1 %3, true
  %i.eb = icmp eq i32 %i.dw, 0
  %or.cond13 = select i1 %.not, i1 true, i1 %i.eb
  %i.ec = icmp ne i32 %i.ea, 0
  %or.cond15 = select i1 %or.cond13, i1 true, i1 %i.ec
  br i1 %or.cond15, label %bb.ba, label %bb.bm

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15
  invoke fastcc void @_ZN5IpoptL8curr_z_LEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %26, ptr noundef nonnull %1, ptr noundef %.0172, ptr noundef %.0171, i1 noundef zeroext %3)
          to label %bb.bb unwind label %bb.bh

bb.bb:                                            ; preds = %bb.ba
  %i.ed = load ptr, ptr %26, align 8, !tbaa !77   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15
  invoke fastcc void @_ZN5IpoptL8curr_z_UEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %27, ptr noundef nonnull %1, ptr noundef %.0172, ptr noundef %.0171, i1 noundef zeroext %3)
          to label %bb.bc unwind label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit324

bb.bc:                                            ; preds = %bb.bb
  %i.ee = load ptr, ptr %27, align 8, !tbaa !77   ; 7 uses
  %i.ef = invoke noundef zeroext i1 @_ZN5Ipopt11TNLPAdapter22ResortBoundMultipliersERKNS_6VectorES3_S3_S3_PdS3_S4_(ptr noundef nonnull align 8 dereferenceable(600) %i.aa, ptr noundef nonnull align 8 dereferenceable(205) %.sroa.0430.0, ptr noundef nonnull align 8 dereferenceable(205) %.sroa.0425.0, ptr noundef nonnull align 8 dereferenceable(205) %.sroa.0420.0, ptr noundef nonnull align 8 dereferenceable(205) %i.ed, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(205) %i.ee, ptr noundef nonnull %7)
          to label %bb.bd unwind label %bb.bi     ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !25
  %i.ei = add nsw i32 %i.eh, -1                   ; 2 uses
  store i32 %i.ei, ptr %i.eg, align 8, !tbaa !25
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ek = load ptr, ptr %i.ee, align 8, !tbaa !27
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  tail call void %i.em(ptr noundef nonnull align 8 dereferenceable(248) %i.ee) #15, !inline_history !2
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !25
  %i.ep = add nsw i32 %i.eo, -1                   ; 2 uses
  store i32 %i.ep, ptr %i.en, align 8, !tbaa !25
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.bg, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit322

bb.bg:                                            ; preds = %bb.bf
  %i.er = load ptr, ptr %i.ed, align 8, !tbaa !27
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  tail call void %i.et(ptr noundef nonnull align 8 dereferenceable(248) %i.ed) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit322

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit322: ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  br label %.loopexit

bb.bh:                                            ; preds = %bb.ba
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit326

bb.bi:                                            ; preds = %bb.bc
  %i.ev = landingpad { ptr, i32 }
          cleanup
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !25
  %i.ey = add nsw i32 %i.ex, -1                   ; 2 uses
  store i32 %i.ey, ptr %i.ew, align 8, !tbaa !25
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.bj, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit324.thread

bb.bj:                                            ; preds = %bb.bi
  %i.fa = load ptr, ptr %i.ee, align 8, !tbaa !27
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  tail call void %i.fc(ptr noundef nonnull align 8 dereferenceable(248) %i.ee) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit324.thread

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit324.thread: ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  br label %bb.bk

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit324: ; preds = %bb.bb
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  %.not.i.i325 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i325, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit326, label %bb.bk

bb.bk:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit324.thread, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit324
  %.pn245566 = phi { ptr, i32 } [ %i.ev, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit324.thread ], [ %i.fd, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit324 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !25
  %i.fg = add nsw i32 %i.ff, -1                   ; 2 uses
  store i32 %i.fg, ptr %i.fe, align 8, !tbaa !25
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.bl, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit326

bb.bl:                                            ; preds = %bb.bk
  %i.fi = load ptr, ptr %i.ed, align 8, !tbaa !27
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  tail call void %i.fk(ptr noundef nonnull align 8 dereferenceable(248) %i.ed) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit326

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit326: ; preds = %bb.bl, %bb.bk, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit324, %bb.bh
  %.pn245.pn = phi { ptr, i32 } [ %i.eu, %bb.bh ], [ %i.fd, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit324 ], [ %.pn245566, %bb.bk ], [ %.pn245566, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  br label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit350

bb.bm:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15
  invoke fastcc void @_ZN5IpoptL6curr_xEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %28, ptr noundef nonnull %1, ptr noundef %.0172, ptr noundef %.0171, i1 noundef zeroext false)
          to label %bb.bn unwind label %bb.cf

bb.bn:                                            ; preds = %bb.bm
  %i.fl = load ptr, ptr %28, align 8, !tbaa !77   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #15
  invoke fastcc void @_ZN5IpoptL8curr_y_cEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %29, ptr noundef nonnull %1, ptr noundef %.0172, ptr noundef %.0171, i1 noundef zeroext false)
          to label %bb.bo unwind label %bb.cg

bb.bo:                                            ; preds = %bb.bn
  %i.fm = load ptr, ptr %29, align 8, !tbaa !77   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #15
  invoke fastcc void @_ZN5IpoptL8curr_y_dEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %30, ptr noundef nonnull %1, ptr noundef %.0172, ptr noundef %.0171, i1 noundef zeroext false)
          to label %bb.bp unwind label %bb.ch

bb.bp:                                            ; preds = %bb.bo
  %i.fn = load ptr, ptr %30, align 8, !tbaa !77   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #15
  invoke fastcc void @_ZN5IpoptL8curr_z_LEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %31, ptr noundef nonnull %1, ptr noundef %.0172, ptr noundef %.0171, i1 noundef zeroext true)
          to label %bb.bq unwind label %bb.ci

bb.bq:                                            ; preds = %bb.bp
  %i.fo = load ptr, ptr %31, align 8, !tbaa !77   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #15
  invoke fastcc void @_ZN5IpoptL8curr_z_UEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %32, ptr noundef nonnull %1, ptr noundef %.0172, ptr noundef %.0171, i1 noundef zeroext true)
          to label %bb.br unwind label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit340

bb.br:                                            ; preds = %bb.bq
  %i.fp = load ptr, ptr %32, align 8, !tbaa !77   ; 7 uses
  %i.fq = invoke noundef zeroext i1 @_ZN5Ipopt11TNLPAdapter22ResortBoundMultipliersERKNS_6VectorES3_S3_S3_PdS3_S4_(ptr noundef nonnull align 8 dereferenceable(600) %i.aa, ptr noundef nonnull align 8 dereferenceable(205) %i.fl, ptr noundef nonnull align 8 dereferenceable(205) %i.fm, ptr noundef nonnull align 8 dereferenceable(205) %i.fn, ptr noundef nonnull align 8 dereferenceable(205) %i.fo, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(205) %i.fp, ptr noundef nonnull %7)
          to label %bb.bs unwind label %bb.cj     ; 0 uses

bb.bs:                                            ; preds = %bb.br
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !25
  %i.ft = add nsw i32 %i.fs, -1                   ; 2 uses
  store i32 %i.ft, ptr %i.fr, align 8, !tbaa !25
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.fv = load ptr, ptr %i.fp, align 8, !tbaa !27
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8
  tail call void %i.fx(ptr noundef nonnull align 8 dereferenceable(248) %i.fp) #15, !inline_history !2
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #15
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !25
  %i.ga = add nsw i32 %i.fz, -1                   ; 2 uses
  store i32 %i.ga, ptr %i.fy, align 8, !tbaa !25
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.gc = load ptr, ptr %i.fo, align 8, !tbaa !27
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  tail call void %i.ge(ptr noundef nonnull align 8 dereferenceable(248) %i.fo) #15, !inline_history !2
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #15
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !25
  %i.gh = add nsw i32 %i.gg, -1                   ; 2 uses
  store i32 %i.gh, ptr %i.gf, align 8, !tbaa !25
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.gj = load ptr, ptr %i.fn, align 8, !tbaa !27
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  tail call void %i.gl(ptr noundef nonnull align 8 dereferenceable(248) %i.fn) #15, !inline_history !2
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #15
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !25
  %i.go = add nsw i32 %i.gn, -1                   ; 2 uses
  store i32 %i.go, ptr %i.gm, align 8, !tbaa !25
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.gq = load ptr, ptr %i.fm, align 8, !tbaa !27
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  tail call void %i.gs(ptr noundef nonnull align 8 dereferenceable(248) %i.fm) #15, !inline_history !2
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !25
  %i.gv = add nsw i32 %i.gu, -1                   ; 2 uses
  store i32 %i.gv, ptr %i.gt, align 8, !tbaa !25
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.cb, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit336

bb.cb:                                            ; preds = %bb.ca
  %i.gx = load ptr, ptr %i.fl, align 8, !tbaa !27
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  tail call void %i.gz(ptr noundef nonnull align 8 dereferenceable(248) %i.fl) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit336

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit336: ; preds = %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  %i.ha = getelementptr inbounds nuw i8, ptr %.0172, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !83, !noalias !160 ; 10 uses
  %.not.i.i.i.i337 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i.i337, label %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit, label %bb.cc

bb.cc:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit336
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !25, !noalias !160
  %i.he = add nsw i32 %i.hd, 1
  store i32 %i.he, ptr %i.hc, align 8, !tbaa !25, !noalias !160
  br label %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit

_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit:          ; preds = %bb.cc, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !84
  %i.hf = load ptr, ptr %i.hb, align 8, !tbaa !27
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = invoke noundef double %i.hh(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.cd unwind label %bb.ct     ; 14 uses

bb.cd:                                            ; preds = %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !25
  %i.hl = add nsw i32 %i.hk, -1                   ; 2 uses
  store i32 %i.hl, ptr %i.hj, align 8, !tbaa !25
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %bb.ce, label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit

bb.ce:                                            ; preds = %bb.cd
  %i.hn = load ptr, ptr %i.hb, align 8, !tbaa !27
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(24) %i.hb) #15, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit: ; preds = %bb.cd, %bb.ce
  %39 = fcmp une double %i.hi, 1.000000e+00
  br i1 %39, label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit.a, label %.loopexit.a

_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit.a: ; preds = %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit
  %i.hq = icmp sgt i32 %i.dw, 0
  br i1 %i.hq, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit.a
  %i.hr = fcmp ogt double %i.hi, 0.000000e+00
  %wide.trip.count515 = zext nneg i32 %i.dw to i64 ; 4 uses
  br i1 %i.hr, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i64 %wide.trip.count515, 1
  %i.hs = icmp eq i32 %i.dw, 1
  br i1 %i.hs, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %wide.trip.count515, 2147483646
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter580 = and i64 %wide.trip.count515, 1
  %i.ht = icmp eq i32 %i.dw, 1
  br i1 %i.ht, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter583 = and i64 %wide.trip.count515, 2147483646
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %indvars.iv512 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next513.1, %.lr.ph.split.us ] ; 3 uses
  %niter584 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter584.next.1, %.lr.ph.split.us ]
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv512
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !85
  %i.hw = sext i32 %i.hv to i64                   ; 2 uses
  %i.hx = getelementptr inbounds [8 x i8], ptr %6, i64 %i.hw ; 2 uses
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !84
  %i.hz = fmul double %i.hi, %i.hy
  store double %i.hz, ptr %i.hx, align 8, !tbaa !84
  %i.ia = getelementptr inbounds [8 x i8], ptr %7, i64 %i.hw ; 2 uses
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !84
  %i.ic = fmul double %i.hi, %i.ib
  store double %i.ic, ptr %i.ia, align 8, !tbaa !84
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv512
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !85
  %i.ig = sext i32 %i.if to i64                   ; 2 uses
  %i.ih = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ig ; 2 uses
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !84
  %i.ij = fmul double %i.hi, %i.ii
  store double %i.ij, ptr %i.ih, align 8, !tbaa !84
  %i.ik = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ig ; 2 uses
  %i.il = load double, ptr %i.ik, align 8, !tbaa !84
  %i.im = fmul double %i.hi, %i.il
  store double %i.im, ptr %i.ik, align 8, !tbaa !84
  %indvars.iv.next513.1 = add nuw nsw i64 %indvars.iv512, 2 ; 2 uses
  %niter584.next.1 = add i64 %niter584, 2         ; 2 uses
  %niter584.ncmp.1 = icmp eq i64 %niter584.next.1, %unroll_iter583
  br i1 %niter584.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !151

bb.cf:                                            ; preds = %bb.bm
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit348

bb.cg:                                            ; preds = %bb.bn
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit346

bb.ch:                                            ; preds = %bb.bo
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit344

bb.ci:                                            ; preds = %bb.bp
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit342

bb.cj:                                            ; preds = %bb.br
  %i.ir = landingpad { ptr, i32 }
          cleanup
  %i.is = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.it = load i32, ptr %i.is, align 8, !tbaa !25
  %i.iu = add nsw i32 %i.it, -1                   ; 2 uses
  store i32 %i.iu, ptr %i.is, align 8, !tbaa !25
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %bb.ck, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit340.thread

bb.ck:                                            ; preds = %bb.cj
  %i.iw = load ptr, ptr %i.fp, align 8, !tbaa !27
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8
  tail call void %i.iy(ptr noundef nonnull align 8 dereferenceable(248) %i.fp) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit340.thread

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit340.thread: ; preds = %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #15
  br label %bb.cl

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit340: ; preds = %bb.bq
  %i.iz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #15
  %.not.i.i341 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i341, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit342, label %bb.cl

bb.cl:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit340.thread, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit340
  %.pn237569 = phi { ptr, i32 } [ %i.ir, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit340.thread ], [ %i.iz, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit340 ] ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !25
  %i.jc = add nsw i32 %i.jb, -1                   ; 2 uses
  store i32 %i.jc, ptr %i.ja, align 8, !tbaa !25
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %bb.cm, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit342

bb.cm:                                            ; preds = %bb.cl
  %i.je = load ptr, ptr %i.fo, align 8, !tbaa !27
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8
  tail call void %i.jg(ptr noundef nonnull align 8 dereferenceable(248) %i.fo) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit342

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit342: ; preds = %bb.cm, %bb.cl, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit340, %bb.ci
  %.pn237.pn = phi { ptr, i32 } [ %i.iq, %bb.ci ], [ %i.iz, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit340 ], [ %.pn237569, %bb.cl ], [ %.pn237569, %bb.cm ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #15
  %.not.i.i343 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i343, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit344, label %bb.cn

bb.cn:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit342
  %i.jh = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !25
  %i.jj = add nsw i32 %i.ji, -1                   ; 2 uses
  store i32 %i.jj, ptr %i.jh, align 8, !tbaa !25
  %i.jk = icmp eq i32 %i.jj, 0
  br i1 %i.jk, label %bb.co, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit344

bb.co:                                            ; preds = %bb.cn
  %i.jl = load ptr, ptr %i.fn, align 8, !tbaa !27
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8
  tail call void %i.jn(ptr noundef nonnull align 8 dereferenceable(248) %i.fn) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit344

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit344: ; preds = %bb.co, %bb.cn, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit342, %bb.ch
  %.pn237.pn.pn = phi { ptr, i32 } [ %i.ip, %bb.ch ], [ %.pn237.pn, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit342 ], [ %.pn237.pn, %bb.cn ], [ %.pn237.pn, %bb.co ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #15
  %.not.i.i345 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i345, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit346, label %bb.cp

bb.cp:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit344
  %i.jo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !25
  %i.jq = add nsw i32 %i.jp, -1                   ; 2 uses
  store i32 %i.jq, ptr %i.jo, align 8, !tbaa !25
  %i.jr = icmp eq i32 %i.jq, 0
  br i1 %i.jr, label %bb.cq, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit346

bb.cq:                                            ; preds = %bb.cp
  %i.js = load ptr, ptr %i.fm, align 8, !tbaa !27
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8
  tail call void %i.ju(ptr noundef nonnull align 8 dereferenceable(248) %i.fm) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit346

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit346: ; preds = %bb.cq, %bb.cp, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit344, %bb.cg
  %.pn237.pn.pn.pn = phi { ptr, i32 } [ %i.io, %bb.cg ], [ %.pn237.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit344 ], [ %.pn237.pn.pn, %bb.cp ], [ %.pn237.pn.pn, %bb.cq ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  %.not.i.i347 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i347, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit348, label %bb.cr

bb.cr:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit346
  %i.jv = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !25
  %i.jx = add nsw i32 %i.jw, -1                   ; 2 uses
  store i32 %i.jx, ptr %i.jv, align 8, !tbaa !25
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %bb.cs, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit348

bb.cs:                                            ; preds = %bb.cr
  %i.jz = load ptr, ptr %i.fl, align 8, !tbaa !27
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8
  tail call void %i.kb(ptr noundef nonnull align 8 dereferenceable(248) %i.fl) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit348

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit348: ; preds = %bb.cs, %bb.cr, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit346, %bb.cf
  %.pn237.pn.pn.pn.pn = phi { ptr, i32 } [ %i.in, %bb.cf ], [ %.pn237.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit346 ], [ %.pn237.pn.pn.pn, %bb.cr ], [ %.pn237.pn.pn.pn, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  br label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit350

bb.ct:                                            ; preds = %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit
  %i.kc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.kd = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !25
  %i.kf = add nsw i32 %i.ke, -1                   ; 2 uses
  store i32 %i.kf, ptr %i.kd, align 8, !tbaa !25
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %bb.cu, label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit350

bb.cu:                                            ; preds = %bb.ct
  %i.kh = load ptr, ptr %i.hb, align 8, !tbaa !27
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(24) %i.hb) #15, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit350

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.split ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %.lr.ph.split ]
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !85
  %i.km = sext i32 %i.kl to i64                   ; 2 uses
  %i.kn = getelementptr inbounds [8 x i8], ptr %6, i64 %i.km ; 2 uses
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !84
  %i.kp = fneg double %i.ko
  %i.kq = fmul double %i.hi, %i.kp
  %i.kr = getelementptr inbounds [8 x i8], ptr %7, i64 %i.km ; 2 uses
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !84
  %i.kt = fneg double %i.ks
  %i.ku = fmul double %i.hi, %i.kt
  store double %i.ku, ptr %i.kn, align 8, !tbaa !84
  store double %i.kq, ptr %i.kr, align 8, !tbaa !84
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 4
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !85
  %i.ky = sext i32 %i.kx to i64                   ; 2 uses
  %i.kz = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ky ; 2 uses
  %i.la = load double, ptr %i.kz, align 8, !tbaa !84
  %i.lb = fneg double %i.la
  %i.lc = fmul double %i.hi, %i.lb
  %i.ld = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ky ; 2 uses
  %i.le = load double, ptr %i.ld, align 8, !tbaa !84
  %i.lf = fneg double %i.le
  %i.lg = fmul double %i.hi, %i.lf
  store double %i.lg, ptr %i.kz, align 8, !tbaa !84
  store double %i.lc, ptr %i.ld, align 8, !tbaa !84
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit578.unr-lcssa, label %.lr.ph.split, !llvm.loop !151

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.split.us
  %lcmp.mod581.not = icmp eq i64 %xtraiter580, 0
  br i1 %lcmp.mod581.not, label %.loopexit, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv512.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next513.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod582 = trunc i32 %i.dw to i1
  call void @llvm.assume(i1 %lcmp.mod582)
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv512.epil.init
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !85
  %i.lj = sext i32 %i.li to i64                   ; 2 uses
  %i.lk = getelementptr inbounds [8 x i8], ptr %6, i64 %i.lj ; 2 uses
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !84
  %i.lm = fmul double %i.hi, %i.ll
  store double %i.lm, ptr %i.lk, align 8, !tbaa !84
  %i.ln = getelementptr inbounds [8 x i8], ptr %7, i64 %i.lj ; 2 uses
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !84
  %i.lp = fmul double %i.hi, %i.lo
  store double %i.lp, ptr %i.ln, align 8, !tbaa !84
  br label %.loopexit

.loopexit.loopexit578.unr-lcssa:                  ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %.loopexit.loopexit578.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit578.unr-lcssa ]
  %lcmp.mod579 = trunc i32 %i.dw to i1
  call void @llvm.assume(i1 %lcmp.mod579)
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.epil.init
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !85
  %i.ls = sext i32 %i.lr to i64                   ; 2 uses
  %i.lt = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ls ; 2 uses
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !84
  %i.lv = fneg double %i.lu
  %i.lw = fmul double %i.hi, %i.lv
  %i.lx = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ls ; 2 uses
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !84
  %i.lz = fneg double %i.ly
  %i.ma = fmul double %i.hi, %i.lz
  store double %i.ma, ptr %i.lt, align 8, !tbaa !84
  store double %i.lw, ptr %i.lx, align 8, !tbaa !84
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split.epil.preheader, %.loopexit.loopexit578.unr-lcssa, %.lr.ph.split.us.epil.preheader, %.loopexit.loopexit.unr-lcssa, %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit.a, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit322, %bb.ay
  %.not249 = icmp eq ptr %9, null
  br i1 %.not249, label %bb.fa, label %bb.cv

.loopexit.a:                                      ; preds = %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit
  %.not249.a = icmp eq ptr %9, null
  br i1 %.not249.a, label %bb.fa, label %bb.cw

bb.cv:                                            ; preds = %.loopexit
  br i1 %3, label %bb.cw, label %.critedge280.thread

bb.cw:                                            ; preds = %.loopexit.a, %bb.cv
  %i.mb = getelementptr inbounds nuw i8, ptr %.0172, i64 16 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !83, !noalias !161 ; 10 uses
  %.not.i.i.i.i351 = icmp eq ptr %i.mc, null
  br i1 %.not.i.i.i.i351, label %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit352, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8 ; 2 uses
  %i.me = load i32, ptr %i.md, align 8, !tbaa !25, !noalias !161
  %i.mf = add nsw i32 %i.me, 1
  store i32 %i.mf, ptr %i.md, align 8, !tbaa !25, !noalias !161
  br label %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit352

_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit352:       ; preds = %bb.cx, %bb.cw
  %i.mg = load ptr, ptr %i.mc, align 8, !tbaa !27
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 192
  %i.mi = load ptr, ptr %i.mh, align 8
  %i.mj = invoke noundef zeroext i1 %i.mi(ptr noundef nonnull align 8 dereferenceable(24) %i.mc)
          to label %bb.cy unwind label %bb.df     ; 2 uses

bb.cy:                                            ; preds = %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit352
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mc, i64 8 ; 2 uses
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !25
  %i.mm = add nsw i32 %i.ml, -1                   ; 2 uses
  store i32 %i.mm, ptr %i.mk, align 8, !tbaa !25
  %i.mn = icmp eq i32 %i.mm, 0
  br i1 %i.mn, label %.split, label %.critedge280

.split:                                           ; preds = %bb.cy
  %i.mo = load ptr, ptr %i.mc, align 8, !tbaa !27
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mq = load ptr, ptr %i.mp, align 8
  call void %i.mq(ptr noundef nonnull align 8 dereferenceable(24) %i.mc) #15, !inline_history !3
  br i1 %i.mj, label %bb.dm, label %.critedge280.thread

.critedge280:                                     ; preds = %bb.cy
  br i1 %i.mj, label %bb.dm, label %.critedge280.thread

.critedge280.thread:                              ; preds = %bb.cv, %.split, %.critedge280
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #15
  invoke fastcc void @_ZN5IpoptL6curr_cEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %33, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %.0172, ptr noundef %.0171, i1 noundef zeroext %3)
          to label %bb.cz unwind label %bb.dh

bb.cz:                                            ; preds = %.critedge280.thread
  %i.mr = load ptr, ptr %33, align 8, !tbaa !77   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #15
  invoke fastcc void @_ZN5IpoptL6curr_dEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %34, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %.0172, ptr noundef %.0171, i1 noundef zeroext %3)
          to label %bb.da unwind label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit362

bb.da:                                            ; preds = %bb.cz
  %i.ms = load ptr, ptr %34, align 8, !tbaa !77   ; 7 uses
  invoke void @_ZN5Ipopt11TNLPAdapter7ResortGERKNS_6VectorES3_Pdb(ptr noundef nonnull align 8 dereferenceable(600) %i.aa, ptr noundef nonnull align 8 dereferenceable(205) %i.mr, ptr noundef nonnull align 8 dereferenceable(205) %i.ms, ptr noundef nonnull %9, i1 noundef zeroext true)
          to label %bb.db unwind label %bb.di

bb.db:                                            ; preds = %bb.da
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 8, !tbaa !25
  %i.mv = add nsw i32 %i.mu, -1                   ; 2 uses
  store i32 %i.mv, ptr %i.mt, align 8, !tbaa !25
  %i.mw = icmp eq i32 %i.mv, 0
  br i1 %i.mw, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.mx = load ptr, ptr %i.ms, align 8, !tbaa !27
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.mz = load ptr, ptr %i.my, align 8
  call void %i.mz(ptr noundef nonnull align 8 dereferenceable(248) %i.ms) #15, !inline_history !2
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #15
  %i.na = getelementptr inbounds nuw i8, ptr %i.mr, i64 8 ; 2 uses
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !25
  %i.nc = add nsw i32 %i.nb, -1                   ; 2 uses
  store i32 %i.nc, ptr %i.na, align 8, !tbaa !25
  %i.nd = icmp eq i32 %i.nc, 0
  br i1 %i.nd, label %bb.de, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit358

bb.de:                                            ; preds = %bb.dd
  %i.ne = load ptr, ptr %i.mr, align 8, !tbaa !27
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8
  call void %i.ng(ptr noundef nonnull align 8 dereferenceable(248) %i.mr) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit358

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit358: ; preds = %bb.dd, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #15
  br label %bb.fa

bb.df:                                            ; preds = %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit352
  %i.nh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mc, i64 8 ; 2 uses
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !25
  %i.nk = add nsw i32 %i.nj, -1                   ; 2 uses
  store i32 %i.nk, ptr %i.ni, align 8, !tbaa !25
  %i.nl = icmp eq i32 %i.nk, 0
  br i1 %i.nl, label %bb.dg, label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit350

bb.dg:                                            ; preds = %bb.df
  %i.nm = load ptr, ptr %i.mc, align 8, !tbaa !27
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.no = load ptr, ptr %i.nn, align 8
  call void %i.no(ptr noundef nonnull align 8 dereferenceable(24) %i.mc) #15, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit350

bb.dh:                                            ; preds = %.critedge280.thread
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit364

bb.di:                                            ; preds = %bb.da
  %i.nq = landingpad { ptr, i32 }
          cleanup
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 2 uses
  %i.ns = load i32, ptr %i.nr, align 8, !tbaa !25
  %i.nt = add nsw i32 %i.ns, -1                   ; 2 uses
  store i32 %i.nt, ptr %i.nr, align 8, !tbaa !25
  %i.nu = icmp eq i32 %i.nt, 0
  br i1 %i.nu, label %bb.dj, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit362.thread

bb.dj:                                            ; preds = %bb.di
  %i.nv = load ptr, ptr %i.ms, align 8, !tbaa !27
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %i.nx = load ptr, ptr %i.nw, align 8
  call void %i.nx(ptr noundef nonnull align 8 dereferenceable(248) %i.ms) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit362.thread

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit362.thread: ; preds = %bb.dj, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #15
  br label %bb.dk

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit362: ; preds = %bb.cz
  %i.ny = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #15
  %.not.i.i363 = icmp eq ptr %i.mr, null
  br i1 %.not.i.i363, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit364, label %bb.dk

bb.dk:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit362.thread, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit362
  %.pn264483 = phi { ptr, i32 } [ %i.nq, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit362.thread ], [ %i.ny, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit362 ] ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.mr, i64 8 ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !25
  %i.ob = add nsw i32 %i.oa, -1                   ; 2 uses
  store i32 %i.ob, ptr %i.nz, align 8, !tbaa !25
  %i.oc = icmp eq i32 %i.ob, 0
  br i1 %i.oc, label %bb.dl, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit364

bb.dl:                                            ; preds = %bb.dk
  %i.od = load ptr, ptr %i.mr, align 8, !tbaa !27
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.of = load ptr, ptr %i.oe, align 8
  call void %i.of(ptr noundef nonnull align 8 dereferenceable(248) %i.mr) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit364

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit364: ; preds = %bb.dl, %bb.dk, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit362, %bb.dh
  %.pn264.pn = phi { ptr, i32 } [ %i.np, %bb.dh ], [ %i.ny, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit362 ], [ %.pn264483, %bb.dk ], [ %.pn264483, %bb.dl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #15
  br label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit350

bb.dm:                                            ; preds = %.split, %.critedge280
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #15
  invoke fastcc void @_ZN5IpoptL6curr_cEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %35, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %.0172, ptr noundef %.0171, i1 noundef zeroext true)
          to label %bb.dn unwind label %bb.ei

bb.dn:                                            ; preds = %bb.dm
  %i.og = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #18
          to label %bb.do unwind label %bb.ej     ; 11 uses

bb.do:                                            ; preds = %bb.dn
  %i.oh = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #18
          to label %bb.dp unwind label %bb.ek     ; 19 uses

bb.dp:                                            ; preds = %bb.do
  %i.oi = load ptr, ptr %35, align 8, !tbaa !77   ; 5 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 56
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !87
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 12
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !89
  %i.on = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  store i32 0, ptr %i.on, align 8, !tbaa !25
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oh, i64 12
  store i32 %i.om, ptr %i.oo, align 4, !tbaa !89
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt16DenseVectorSpaceE, i64 16), ptr %i.oh, align 8, !tbaa !27
  %i.op = getelementptr inbounds nuw i8, ptr %i.oh, i64 24 ; 3 uses
  store i32 0, ptr %i.op, align 8, !tbaa !94
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oh, i64 32
  store ptr null, ptr %i.oq, align 8, !tbaa !95
  %i.or = getelementptr inbounds nuw i8, ptr %i.oh, i64 40
  store ptr %i.op, ptr %i.or, align 8, !tbaa !96
  %i.os = getelementptr inbounds nuw i8, ptr %i.oh, i64 48
  store ptr %i.op, ptr %i.os, align 8, !tbaa !97
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oh, i64 56
  store i64 0, ptr %i.ot, align 8, !tbaa !98
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oh, i64 72 ; 3 uses
  store i32 0, ptr %i.ou, align 8, !tbaa !94
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oh, i64 80
  store ptr null, ptr %i.ov, align 8, !tbaa !95
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oh, i64 88
  store ptr %i.ou, ptr %i.ow, align 8, !tbaa !96
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oh, i64 96
  store ptr %i.ou, ptr %i.ox, align 8, !tbaa !97
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oh, i64 104
  store i64 0, ptr %i.oy, align 8, !tbaa !98
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oh, i64 120 ; 3 uses
  store i32 0, ptr %i.oz, align 8, !tbaa !94
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oh, i64 128
  store ptr null, ptr %i.pa, align 8, !tbaa !95
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oh, i64 136
  store ptr %i.oz, ptr %i.pb, align 8, !tbaa !96
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oh, i64 144
  store ptr %i.oz, ptr %i.pc, align 8, !tbaa !97
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oh, i64 152
  store i64 0, ptr %i.pd, align 8, !tbaa !98
  invoke void @_ZN5Ipopt11DenseVectorC1EPKNS_16DenseVectorSpaceE(ptr noundef nonnull align 8 dereferenceable(248) %i.og, ptr noundef nonnull %i.oh)
          to label %bb.dq unwind label %bb.ek

bb.dq:                                            ; preds = %bb.dp
  %i.pe = getelementptr inbounds nuw i8, ptr %i.og, i64 8 ; 8 uses
  %i.pf = load i32, ptr %i.pe, align 8, !tbaa !25
  %i.pg = add nsw i32 %i.pf, 1
  store i32 %i.pg, ptr %i.pe, align 8, !tbaa !25
  %i.ph = getelementptr inbounds nuw i8, ptr %i.aa, i64 344
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !99
  invoke void @_ZN5Ipopt11DenseVector9SetValuesEPKd(ptr noundef nonnull align 8 dereferenceable(248) %i.og, ptr noundef %i.pi)
          to label %bb.dr unwind label %bb.el

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #15
  %i.pj = load ptr, ptr %i.mb, align 8, !tbaa !83, !noalias !162 ; 9 uses
  %.not.i.i.i.i366 = icmp eq ptr %i.pj, null
  br i1 %.not.i.i.i.i366, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 8 ; 2 uses
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !25, !noalias !162
  %i.pm = add nsw i32 %i.pl, 1
  store i32 %i.pm, ptr %i.pk, align 8, !tbaa !25, !noalias !162
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dr, %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #15
  %i.pn = load i32, ptr %i.pe, align 8, !tbaa !25
  store ptr %i.og, ptr %37, align 8, !tbaa !102
  %i.po = add nsw i32 %i.pn, 1                    ; 2 uses
  store i32 %i.po, ptr %i.pe, align 8, !tbaa !25
  %i.pp = icmp eq i32 %i.po, 0
  br i1 %i.pp, label %bb.du, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEEC2INS_11DenseVectorEEERKNS0_IT_EE.exit

bb.du:                                            ; preds = %bb.dt
  %i.pq = load ptr, ptr %i.og, align 8, !tbaa !27
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %i.ps = load ptr, ptr %i.pr, align 8
  call void %i.ps(ptr noundef nonnull align 8 dereferenceable(205) %i.og) #15, !inline_history !156
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEEC2INS_11DenseVectorEEERKNS0_IT_EE.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEEC2INS_11DenseVectorEEERKNS0_IT_EE.exit: ; preds = %bb.du, %bb.dt
  %i.pt = load ptr, ptr %i.pj, align 8, !tbaa !27
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 80
  %i.pv = load ptr, ptr %i.pu, align 8
  invoke void %i.pv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.11") align 8 %36, ptr noundef nonnull align 8 dereferenceable(24) %i.pj, ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.dv unwind label %bb.em

bb.dv:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEEC2INS_11DenseVectorEEERKNS0_IT_EE.exit
  %i.pw = load ptr, ptr %37, align 8, !tbaa !102  ; 4 uses
  %.not.i.i369 = icmp eq ptr %i.pw, null
  br i1 %.not.i.i369, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8 ; 2 uses
  %i.py = load i32, ptr %i.px, align 8, !tbaa !25
  %i.pz = add nsw i32 %i.py, -1                   ; 2 uses
  store i32 %i.pz, ptr %i.px, align 8, !tbaa !25
  %i.qa = icmp eq i32 %i.pz, 0
  br i1 %i.qa, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.qb = load ptr, ptr %i.pw, align 8, !tbaa !27
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qd = load ptr, ptr %i.qc, align 8
  call void %i.qd(ptr noundef nonnull align 8 dereferenceable(205) %i.pw) #15, !inline_history !4
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #15
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pj, i64 8 ; 2 uses
  %i.qf = load i32, ptr %i.qe, align 8, !tbaa !25
  %i.qg = add nsw i32 %i.qf, -1                   ; 2 uses
  store i32 %i.qg, ptr %i.qe, align 8, !tbaa !25
  %i.qh = icmp eq i32 %i.qg, 0
  br i1 %i.qh, label %bb.dz, label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit371

bb.dz:                                            ; preds = %bb.dy
  %i.qi = load ptr, ptr %i.pj, align 8, !tbaa !27
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8
  call void %i.qk(ptr noundef nonnull align 8 dereferenceable(24) %i.pj) #15, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit371

_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit371: ; preds = %bb.dy, %bb.dz
  %i.ql = load ptr, ptr %36, align 8, !tbaa !104  ; 3 uses
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !27
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 32
  %i.qo = load ptr, ptr %i.qn, align 8
  invoke void %i.qo(ptr noundef nonnull align 8 dereferenceable(205) %i.ql, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.oi)
          to label %.noexc unwind label %bb.eq, !inline_history !5

.noexc:                                           ; preds = %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit371
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.ql)
          to label %_ZN5Ipopt6Vector4AxpyEdRKS0_.exit unwind label %bb.eq

_ZN5Ipopt6Vector4AxpyEdRKS0_.exit:                ; preds = %.noexc
  %i.qp = load ptr, ptr %36, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #15
  invoke fastcc void @_ZN5IpoptL6curr_dEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %38, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %.0172, ptr noundef %.0171, i1 noundef zeroext %3)
          to label %bb.ea unwind label %bb.er

bb.ea:                                            ; preds = %_ZN5Ipopt6Vector4AxpyEdRKS0_.exit
  %i.qq = load ptr, ptr %38, align 8, !tbaa !77   ; 7 uses
  invoke void @_ZN5Ipopt11TNLPAdapter7ResortGERKNS_6VectorES3_Pdb(ptr noundef nonnull align 8 dereferenceable(600) %i.aa, ptr noundef nonnull align 8 dereferenceable(205) %i.qp, ptr noundef nonnull align 8 dereferenceable(205) %i.qq, ptr noundef nonnull %9, i1 noundef zeroext false)
          to label %bb.eb unwind label %bb.es

bb.eb:                                            ; preds = %bb.ea
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8 ; 2 uses
  %i.qs = load i32, ptr %i.qr, align 8, !tbaa !25
  %i.qt = add nsw i32 %i.qs, -1                   ; 2 uses
  store i32 %i.qt, ptr %i.qr, align 8, !tbaa !25
  %i.qu = icmp eq i32 %i.qt, 0
  br i1 %i.qu, label %bb.ec, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit374

bb.ec:                                            ; preds = %bb.eb
  %i.qv = load ptr, ptr %i.qq, align 8, !tbaa !27
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8
  call void %i.qx(ptr noundef nonnull align 8 dereferenceable(248) %i.qq) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit374

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit374: ; preds = %bb.eb, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #15
  %i.qy = load ptr, ptr %36, align 8, !tbaa !104  ; 4 uses
  %.not.i.i375 = icmp eq ptr %i.qy, null
  br i1 %.not.i.i375, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit374
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 8 ; 2 uses
  %i.ra = load i32, ptr %i.qz, align 8, !tbaa !25
  %i.rb = add nsw i32 %i.ra, -1                   ; 2 uses
  store i32 %i.rb, ptr %i.qz, align 8, !tbaa !25
  %i.rc = icmp eq i32 %i.rb, 0
  br i1 %i.rc, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.rd = load ptr, ptr %i.qy, align 8, !tbaa !27
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %i.rf = load ptr, ptr %i.re, align 8
  call void %i.rf(ptr noundef nonnull align 8 dereferenceable(205) %i.qy) #15, !inline_history !6
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit374
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #15
  %i.rg = load i32, ptr %i.pe, align 8, !tbaa !25
  %i.rh = add nsw i32 %i.rg, -1                   ; 2 uses
  store i32 %i.rh, ptr %i.pe, align 8, !tbaa !25
  %i.ri = icmp eq i32 %i.rh, 0
  br i1 %i.ri, label %bb.eg, label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit

bb.eg:                                            ; preds = %bb.ef
  %i.rj = load ptr, ptr %i.og, align 8, !tbaa !27
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.rl = load ptr, ptr %i.rk, align 8
  call void %i.rl(ptr noundef nonnull align 8 dereferenceable(248) %i.og) #15, !inline_history !157
  br label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit:   ; preds = %bb.eg, %bb.ef
  %i.rm = getelementptr inbounds nuw i8, ptr %i.oi, i64 8 ; 2 uses
  %i.rn = load i32, ptr %i.rm, align 8, !tbaa !25
  %i.ro = add nsw i32 %i.rn, -1                   ; 2 uses
  store i32 %i.ro, ptr %i.rm, align 8, !tbaa !25
  %i.rp = icmp eq i32 %i.ro, 0
  br i1 %i.rp, label %bb.eh, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit378

bb.eh:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit
  %i.rq = load ptr, ptr %i.oi, align 8, !tbaa !27
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.rs = load ptr, ptr %i.rr, align 8
  call void %i.rs(ptr noundef nonnull align 8 dereferenceable(248) %i.oi) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit378

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit378: ; preds = %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #15
  br label %bb.fa

bb.ei:                                            ; preds = %bb.dm
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit390

bb.ej:                                            ; preds = %bb.dn
  %i.ru = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit388

bb.ek:                                            ; preds = %bb.dp, %bb.do
  %i.rv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.og, i64 noundef 248) #17
  br label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit388

bb.el:                                            ; preds = %bb.dq
  %i.rw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.em:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEEC2INS_11DenseVectorEEERKNS0_IT_EE.exit
  %i.rx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ry = load ptr, ptr %37, align 8, !tbaa !102  ; 4 uses
  %.not.i.i379 = icmp eq ptr %i.ry, null
  br i1 %.not.i.i379, label %bb.ep, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8 ; 2 uses
  %i.sa = load i32, ptr %i.rz, align 8, !tbaa !25
  %i.sb = add nsw i32 %i.sa, -1                   ; 2 uses
  store i32 %i.sb, ptr %i.rz, align 8, !tbaa !25
  %i.sc = icmp eq i32 %i.sb, 0
  br i1 %i.sc, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.sd = load ptr, ptr %i.ry, align 8, !tbaa !27
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.sf = load ptr, ptr %i.se, align 8
  call void %i.sf(ptr noundef nonnull align 8 dereferenceable(205) %i.ry) #15, !inline_history !4
  br label %bb.ep

bb.ep:                                            ; preds = %bb.em, %bb.en, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #15
  %i.sg = getelementptr inbounds nuw i8, ptr %i.pj, i64 8 ; 2 uses
  %i.sh = load i32, ptr %i.sg, align 8, !tbaa !25
  %i.si = add nsw i32 %i.sh, -1                   ; 2 uses
  store i32 %i.si, ptr %i.sg, align 8, !tbaa !25
  %i.sj = icmp eq i32 %i.si, 0
  br i1 %i.sj, label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit382.sink.split, label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit382

bb.eq:                                            ; preds = %.noexc, %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit371
  %i.sk = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.er:                                            ; preds = %_ZN5Ipopt6Vector4AxpyEdRKS0_.exit
  %i.sl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit384

bb.es:                                            ; preds = %bb.ea
  %i.sm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.qq, i64 8 ; 2 uses
  %i.so = load i32, ptr %i.sn, align 8, !tbaa !25
  %i.sp = add nsw i32 %i.so, -1                   ; 2 uses
  store i32 %i.sp, ptr %i.sn, align 8, !tbaa !25
  %i.sq = icmp eq i32 %i.sp, 0
  br i1 %i.sq, label %bb.et, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit384

bb.et:                                            ; preds = %bb.es
  %i.sr = load ptr, ptr %i.qq, align 8, !tbaa !27
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.st = load ptr, ptr %i.ss, align 8
  call void %i.st(ptr noundef nonnull align 8 dereferenceable(248) %i.qq) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit384

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit384: ; preds = %bb.et, %bb.es, %bb.er
  %.pn257 = phi { ptr, i32 } [ %i.sl, %bb.er ], [ %i.sm, %bb.es ], [ %i.sm, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #15
  br label %bb.eu

bb.eu:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit384, %bb.eq
  %.pn257.pn = phi { ptr, i32 } [ %.pn257, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit384 ], [ %i.sk, %bb.eq ] ; 3 uses
  %i.su = load ptr, ptr %36, align 8, !tbaa !104  ; 3 uses
  %.not.i.i385 = icmp eq ptr %i.su, null
  br i1 %.not.i.i385, label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit382, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 8 ; 2 uses
  %i.sw = load i32, ptr %i.sv, align 8, !tbaa !25
  %i.sx = add nsw i32 %i.sw, -1                   ; 2 uses
  store i32 %i.sx, ptr %i.sv, align 8, !tbaa !25
  %i.sy = icmp eq i32 %i.sx, 0
  br i1 %i.sy, label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit382.sink.split, label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit382

_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit382.sink.split: ; preds = %bb.ev, %bb.ep
  %.sink576 = phi ptr [ %i.pj, %bb.ep ], [ %i.su, %bb.ev ] ; 2 uses
  %.pn257.pn.pn.ph = phi { ptr, i32 } [ %i.rx, %bb.ep ], [ %.pn257.pn, %bb.ev ]
  %i.sz = load ptr, ptr %.sink576, align 8, !tbaa !27
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tb = load ptr, ptr %i.ta, align 8
  call void %i.tb(ptr noundef nonnull align 8 dereferenceable(24) %.sink576) #15
  br label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit382

_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit382: ; preds = %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit382.sink.split, %bb.ev, %bb.eu, %bb.ep
  %.pn257.pn.pn = phi { ptr, i32 } [ %.pn257.pn, %bb.eu ], [ %.pn257.pn, %bb.ev ], [ %i.rx, %bb.ep ], [ %.pn257.pn.pn.ph, %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit382.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #15
  br label %bb.ew

bb.ew:                                            ; preds = %bb.el, %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit382
  %.pn257.pn.pn.pn = phi { ptr, i32 } [ %.pn257.pn.pn, %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit382 ], [ %i.rw, %bb.el ] ; 2 uses
  %i.tc = load i32, ptr %i.pe, align 8, !tbaa !25
  %i.td = add nsw i32 %i.tc, -1                   ; 2 uses
  store i32 %i.td, ptr %i.pe, align 8, !tbaa !25
  %i.te = icmp eq i32 %i.td, 0
  br i1 %i.te, label %bb.ex, label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit388

bb.ex:                                            ; preds = %bb.ew
  %i.tf = load ptr, ptr %i.og, align 8, !tbaa !27
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.th = load ptr, ptr %i.tg, align 8
  call void %i.th(ptr noundef nonnull align 8 dereferenceable(248) %i.og) #15, !inline_history !157
  br label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit388

_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit388: ; preds = %bb.ex, %bb.ew, %bb.ek, %bb.ej
  %.pn257.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rv, %bb.ek ], [ %i.ru, %bb.ej ], [ %.pn257.pn.pn.pn, %bb.ew ], [ %.pn257.pn.pn.pn, %bb.ex ] ; 3 uses
  %i.ti = load ptr, ptr %35, align 8, !tbaa !77   ; 4 uses
  %.not.i.i389 = icmp eq ptr %i.ti, null
  br i1 %.not.i.i389, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit390, label %bb.ey

bb.ey:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit388
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8 ; 2 uses
  %i.tk = load i32, ptr %i.tj, align 8, !tbaa !25
  %i.tl = add nsw i32 %i.tk, -1                   ; 2 uses
  store i32 %i.tl, ptr %i.tj, align 8, !tbaa !25
  %i.tm = icmp eq i32 %i.tl, 0
  br i1 %i.tm, label %bb.ez, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit390

bb.ez:                                            ; preds = %bb.ey
  %i.tn = load ptr, ptr %i.ti, align 8, !tbaa !27
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.tp = load ptr, ptr %i.to, align 8
  call void %i.tp(ptr noundef nonnull align 8 dereferenceable(248) %i.ti) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit390

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit390: ; preds = %bb.ez, %bb.ey, %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit388, %bb.ei
  %.pn257.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rt, %bb.ei ], [ %.pn257.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit388 ], [ %.pn257.pn.pn.pn.pn, %bb.ey ], [ %.pn257.pn.pn.pn.pn, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #15
  br label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit350

bb.fa:                                            ; preds = %.loopexit.a, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit358, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit378, %.loopexit
  br i1 %i.dd, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  invoke void @_ZN5Ipopt11TNLPAdapter7ResortGERKNS_6VectorES3_Pdb(ptr noundef nonnull align 8 dereferenceable(600) %i.aa, ptr noundef nonnull align 8 dereferenceable(205) %.sroa.0425.0, ptr noundef nonnull align 8 dereferenceable(205) %.sroa.0420.0, ptr noundef nonnull %10, i1 noundef zeroext false)
          to label %.thread485 unwind label %bb.ax

bb.fc:                                            ; preds = %bb.fa
  %.not.i.i391 = icmp eq ptr %.sroa.0420.0, null
  br i1 %.not.i.i391, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit392, label %.thread485

.thread485:                                       ; preds = %bb.fb, %bb.fc
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.0420.0, i64 8 ; 2 uses
  %i.tr = load i32, ptr %i.tq, align 8, !tbaa !25
  %i.ts = add nsw i32 %i.tr, -1                   ; 2 uses
  store i32 %i.ts, ptr %i.tq, align 8, !tbaa !25
  %i.tt = icmp eq i32 %i.ts, 0
  br i1 %i.tt, label %bb.fd, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit392

bb.fd:                                            ; preds = %.thread485
  %i.tu = load ptr, ptr %.sroa.0420.0, align 8, !tbaa !27
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  %i.tw = load ptr, ptr %i.tv, align 8
  call void %i.tw(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.0420.0) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit392

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit392: ; preds = %bb.fc, %.thread485, %bb.fd
  %.not.i.i393 = icmp eq ptr %.sroa.0425.0, null
  br i1 %.not.i.i393, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit394, label %bb.fe

bb.fe:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit392
  %i.tx = getelementptr inbounds nuw i8, ptr %.sroa.0425.0, i64 8 ; 2 uses
  %i.ty = load i32, ptr %i.tx, align 8, !tbaa !25
  %i.tz = add nsw i32 %i.ty, -1                   ; 2 uses
  store i32 %i.tz, ptr %i.tx, align 8, !tbaa !25
  %i.ua = icmp eq i32 %i.tz, 0
  br i1 %i.ua, label %bb.ff, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit394

bb.ff:                                            ; preds = %bb.fe
  %i.ub = load ptr, ptr %.sroa.0425.0, align 8, !tbaa !27
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8
  call void %i.ud(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.0425.0) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit394

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit394: ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit392, %bb.fe, %bb.ff
  %.not.i.i395 = icmp eq ptr %.sroa.0430.0, null
  br i1 %.not.i.i395, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit396, label %bb.fg

bb.fg:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit394
  %i.ue = getelementptr inbounds nuw i8, ptr %.sroa.0430.0, i64 8 ; 2 uses
  %i.uf = load i32, ptr %i.ue, align 8, !tbaa !25
  %i.ug = add nsw i32 %i.uf, -1                   ; 2 uses
  store i32 %i.ug, ptr %i.ue, align 8, !tbaa !25
  %i.uh = icmp eq i32 %i.ug, 0
  br i1 %i.uh, label %bb.fh, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit396

bb.fh:                                            ; preds = %bb.fg
  %i.ui = load ptr, ptr %.sroa.0430.0, align 8, !tbaa !27
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %i.uk = load ptr, ptr %i.uj, align 8
  call void %i.uk(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.0430.0) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit396

_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit350: ; preds = %bb.df, %bb.dg, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit326, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit348, %bb.cu, %bb.ct, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit390, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit364, %bb.ax
  %.pn267 = phi { ptr, i32 } [ %i.du, %bb.ax ], [ %.pn264.pn, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit364 ], [ %.pn257.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit390 ], [ %i.kc, %bb.cu ], [ %i.kc, %bb.ct ], [ %i.nh, %bb.df ], [ %i.nh, %bb.dg ], [ %.pn245.pn, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit326 ], [ %.pn237.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit348 ] ; 3 uses
  %.not.i.i397 = icmp eq ptr %.sroa.0420.0, null
  br i1 %.not.i.i397, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit398, label %bb.fi

bb.fi:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit350
  %i.ul = getelementptr inbounds nuw i8, ptr %.sroa.0420.0, i64 8 ; 2 uses
  %i.um = load i32, ptr %i.ul, align 8, !tbaa !25
  %i.un = add nsw i32 %i.um, -1                   ; 2 uses
  store i32 %i.un, ptr %i.ul, align 8, !tbaa !25
  %i.uo = icmp eq i32 %i.un, 0
  br i1 %i.uo, label %bb.fj, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit398

bb.fj:                                            ; preds = %bb.fi
  %i.up = load ptr, ptr %.sroa.0420.0, align 8, !tbaa !27
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %i.ur = load ptr, ptr %i.uq, align 8
  call void %i.ur(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.0420.0) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit398

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit398: ; preds = %bb.au, %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit350, %bb.fi, %bb.fj
  %.pn267494 = phi { ptr, i32 } [ %.pn267, %bb.fj ], [ %.pn267, %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit350 ], [ %.pn267, %bb.fi ], [ %i.dt, %bb.au ] ; 3 uses
  %.sroa.0425.1493 = phi ptr [ %.sroa.0425.0, %bb.fj ], [ %.sroa.0425.0, %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit350 ], [ %.sroa.0425.0, %bb.fi ], [ %i.de, %bb.au ] ; 4 uses
  %.not.i.i399 = icmp eq ptr %.sroa.0425.1493, null
  br i1 %.not.i.i399, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit400, label %bb.fk

bb.fk:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit398
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.0425.1493, i64 8 ; 2 uses
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !25
  %i.uu = add nsw i32 %i.ut, -1                   ; 2 uses
  store i32 %i.uu, ptr %i.us, align 8, !tbaa !25
  %i.uv = icmp eq i32 %i.uu, 0
  br i1 %i.uv, label %bb.fl, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit400

bb.fl:                                            ; preds = %bb.fk
  %i.uw = load ptr, ptr %.sroa.0425.1493, align 8, !tbaa !27
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.uy = load ptr, ptr %i.ux, align 8
  call void %i.uy(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.0425.1493) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit400

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit400: ; preds = %bb.at, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit398, %bb.fk, %bb.fl
  %.pn267494503 = phi { ptr, i32 } [ %.pn267494, %bb.fl ], [ %.pn267494, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit398 ], [ %.pn267494, %bb.fk ], [ %i.ds, %bb.at ] ; 3 uses
  %.not.i.i401 = icmp eq ptr %.sroa.0430.0, null
  br i1 %.not.i.i401, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit402, label %bb.fm

bb.fm:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit400
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.0430.0, i64 8 ; 2 uses
  %i.va = load i32, ptr %i.uz, align 8, !tbaa !25
  %i.vb = add nsw i32 %i.va, -1                   ; 2 uses
  store i32 %i.vb, ptr %i.uz, align 8, !tbaa !25
  %i.vc = icmp eq i32 %i.vb, 0
  br i1 %i.vc, label %bb.fn, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit402

bb.fn:                                            ; preds = %bb.fm
  %i.vd = load ptr, ptr %.sroa.0430.0, align 8, !tbaa !27
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %i.vf = load ptr, ptr %i.ve, align 8
  call void %i.vf(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.0430.0) #15, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit402

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit396: ; preds = %bb.i, %bb.e, %bb.b, %bb.a, %bb.g, %bb.h, %_ZN5Ipopt8SmartPtrINS_3NLPEED2Ev.exit, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit394, %bb.fg, %bb.fh, %.critedge
  %.1 = phi i1 [ true, %bb.fh ], [ false, %.critedge ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.h ], [ false, %_ZN5Ipopt8SmartPtrINS_3NLPEED2Ev.exit ], [ false, %bb.b ], [ true, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit394 ], [ true, %bb.fg ], [ false, %bb.a ], [ false, %bb.i ]
  ret i1 %.1

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit402: ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit400, %bb.fm, %bb.fn
  %.pn273.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn267494503, %bb.fn ], [ %.pn273.pn.pn452, %bb.v ], [ %.pn273, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ], [ %.pn269.pn.pn464, %bb.af ], [ %.pn269, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300 ], [ %.pn269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298 ], [ %.pn273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289 ], [ %.pn267494503, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit400 ], [ %.pn267494503, %bb.fm ]
  resume { ptr, i32 } %.pn273.pn.pn.pn.pn

bb.fo:                                            ; preds = %bb.ac, %bb.s
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !105
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.6) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.d, ptr %i.a, align 8, !tbaa !106
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !72
  %i.g = load i64, ptr %i.a, align 8, !tbaa !106
  store i64 %i.g, ptr %i.b, align 8, !tbaa !73
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !73
  store i8 %i.i, ptr %i.h, align 1, !tbaa !73
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !74
  %i.l = load ptr, ptr %0, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
end_hunk_0
