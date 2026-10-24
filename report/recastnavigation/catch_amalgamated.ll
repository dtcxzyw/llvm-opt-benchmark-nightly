Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/catch_amalgamated?download=true
inline.NumInlined: 19374
inline.NumDeleted: 7049
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZNK5Catch5Clara6Parser13writeToStreamERSo:bb.a
  br i1 %.not.i41, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit43

bb.ae:                                            ; preds = %bb.ac
  %i.dq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 93) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit43

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit43: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit43, %._crit_edge
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !16319
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !16319
  %i.dv = icmp eq ptr %i.ds, %i.du
  br i1 %i.dv, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %._crit_edge.thread
  %i.dw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.86, i64 noundef 8) #49 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge.thread
  %i.dx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.87, i64 noundef 21) #49 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @_ZNK5Catch5Clara6Parser14getHelpColumnsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.180") align 8 %2, ptr noundef nonnull align 8 dereferenceable(96) %0)
  %i.dy = load ptr, ptr %2, align 8, !tbaa !70660 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !70660 ; 3 uses
  %i.eb = icmp eq ptr %i.dy, %i.ea
  br i1 %i.eb, label %_ZSt8_DestroyIPN5Catch5Clara6Detail11HelpColumnsEEvT_S5_.exit.i, label %.lr.ph141

.lr.ph146:                                        ; preds = %.lr.ph141
  %i.ec = call i64 @llvm.umin.i64(i64 %.sroa.speculated96, i64 40) ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 12 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ez = sub nuw nsw i64 73, %i.ec
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.aj

.lr.ph141:                                        ; preds = %bb.ah, %.lr.ph141
  %.sroa.0100.0139 = phi ptr [ %i.ff, %.lr.ph141 ], [ %i.dy, %bb.ah ] ; 2 uses
  %.0114138 = phi i64 [ %.sroa.speculated96, %.lr.ph141 ], [ 0, %bb.ah ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0100.0139, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !9324
  %i.fe = add i64 %i.fd, 2
  %.sroa.speculated96 = call i64 @llvm.umax.i64(i64 %.0114138, i64 %i.fe) ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0100.0139, i64 48 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.ea
  br i1 %i.fg, label %.lr.ph146, label %.lr.ph141

._crit_edge147:                                   ; preds = %_ZN5Catch8TextFlow7ColumnsD2Ev.exit90
  %.pre173.a = load ptr, ptr %2, align 8, !tbaa !21802 ; 3 uses
  %.pre174 = load ptr, ptr %i.dz, align 8, !tbaa !21800 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre173.a, %.pre174
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5Catch5Clara6Detail11HelpColumnsEEvT_S5_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge147, %_ZSt8_DestroyIN5Catch5Clara6Detail11HelpColumnsEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fm, %_ZSt8_DestroyIN5Catch5Clara6Detail11HelpColumnsEEvPT_.exit.i.i.i ], [ %.pre173.a, %._crit_edge147 ] ; 3 uses
  %i.fh = load ptr, ptr %.05.i.i.i, align 8, !tbaa !9326 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZSt8_DestroyIN5Catch5Clara6Detail11HelpColumnsEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.fk = load i64, ptr %i.fi, align 8, !tbaa !9325
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #60
  br label %_ZSt8_DestroyIN5Catch5Clara6Detail11HelpColumnsEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5Catch5Clara6Detail11HelpColumnsEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fm, %.pre174
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5Catch5Clara6Detail11HelpColumnsEEvT_S5_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !70651

_ZSt8_DestroyIPN5Catch5Clara6Detail11HelpColumnsEEvT_S5_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5Catch5Clara6Detail11HelpColumnsEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !21802
  br label %_ZSt8_DestroyIPN5Catch5Clara6Detail11HelpColumnsEEvT_S5_.exit.i

_ZSt8_DestroyIPN5Catch5Clara6Detail11HelpColumnsEEvT_S5_.exit.i: ; preds = %bb.ah, %_ZSt8_DestroyIPN5Catch5Clara6Detail11HelpColumnsEEvT_S5_.exitthread-pre-split.i, %._crit_edge147
  %i.fn = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5Catch5Clara6Detail11HelpColumnsEEvT_S5_.exitthread-pre-split.i ], [ %.pre173.a, %._crit_edge147 ], [ %i.dy, %bb.ah ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5Catch5Clara6Detail11HelpColumnsESaIS3_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPN5Catch5Clara6Detail11HelpColumnsEEvT_S5_.exit.i
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !21801
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %i.fn to i64
  %i.fs = sub i64 %i.fq, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.fs) #60
  br label %_ZNSt6vectorIN5Catch5Clara6Detail11HelpColumnsESaIS3_EED2Ev.exit

_ZNSt6vectorIN5Catch5Clara6Detail11HelpColumnsESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5Catch5Clara6Detail11HelpColumnsEEvT_S5_.exit.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret void

bb.aj:                                            ; preds = %.lr.ph146, %_ZN5Catch8TextFlow7ColumnsD2Ev.exit90
  %.sroa.091.0144 = phi ptr [ %i.dy, %.lr.ph146 ], [ %i.mu, %_ZN5Catch8TextFlow7ColumnsD2Ev.exit90 ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  store ptr %i.ed, ptr %5, align 8, !tbaa !9321
  %i.ft = load ptr, ptr %.sroa.091.0144, align 8, !tbaa !9326 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.091.0144, i64 16 ; 5 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.091.0144, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !9324 ; 2 uses
  %i.fy = icmp ult i64 %i.fx, 16
  call void @llvm.assume(i1 %i.fy)
  %i.fz = add nuw nsw i64 %i.fx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ed, ptr noundef nonnull align 8 dereferenceable(1) %i.fu, i64 %i.fz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aj
  store ptr %i.ft, ptr %5, align 8, !tbaa !9326
  %i.ga = load i64, ptr %i.fu, align 8, !tbaa !9325
  store i64 %i.ga, ptr %i.ed, align 8, !tbaa !9325
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ak
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.091.0144, i64 8 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !9324
  store i64 %i.gc, ptr %i.ee, align 8, !tbaa !9324
  store ptr %i.fu, ptr %.sroa.091.0144, align 8, !tbaa !9326
  store i64 0, ptr %i.gb, align 8, !tbaa !9324
  store i8 0, ptr %i.fu, align 8, !tbaa !9325
  store i64 0, ptr %i.ef, align 8, !tbaa !21803
  %i.gd = load i64, ptr %i.ee, align 8, !tbaa !9324 ; 2 uses
  %i.ge = icmp samesign eq i64 %i.gd, 0
  br i1 %i.ge, label %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.lr.ph.i.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.gf = load ptr, ptr %5, align 8, !tbaa !9326  ; 2 uses
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ao, %.preheader.lr.ph.i.i.i
  %i.gg = phi i64 [ %i.gd, %.preheader.lr.ph.i.i.i ], [ %i.he, %bb.ao ] ; 3 uses
  %i.gh = phi ptr [ %i.gf, %.preheader.lr.ph.i.i.i ], [ %i.hf, %bb.ao ] ; 3 uses
  %.sroa.022.049.i.i.i = phi ptr [ %i.gf, %.preheader.lr.ph.i.i.i ], [ %.sroa.022.4.i.i.i, %bb.ao ] ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gg ; 2 uses
  %i.gj = icmp eq ptr %.sroa.022.049.i.i.i, %i.gi
  br i1 %i.gj, label %.critedge.i.i.i, label %.lr.ph40.i.i.i

.lr.ph40.i.i.i:                                   ; preds = %.preheader.i.i.i, %.critedge6.i.i.i
  %i.gk = phi i64 [ %i.hb, %.critedge6.i.i.i ], [ %i.gg, %.preheader.i.i.i ] ; 5 uses
  %i.gl = phi ptr [ %i.ha, %.critedge6.i.i.i ], [ %i.gh, %.preheader.i.i.i ] ; 5 uses
  %i.gm = phi ptr [ %i.hc, %.critedge6.i.i.i ], [ %i.gi, %.preheader.i.i.i ] ; 3 uses
  %.sroa.022.139.i.i.i = phi ptr [ %i.gz, %.critedge6.i.i.i ], [ %.sroa.022.049.i.i.i, %.preheader.i.i.i ] ; 8 uses
  %i.gn = load i8, ptr %.sroa.022.139.i.i.i, align 1, !tbaa !9325
  %i.go = icmp eq i8 %i.gn, 27
  br i1 %i.go, label %bb.al, label %.critedge.i.i.i

bb.al:                                            ; preds = %.lr.ph40.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i.i.i, i64 1 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.gm
  br i1 %i.gq, label %.critedge.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gr = load i8, ptr %i.gp, align 1, !tbaa !9325
  %i.gs = icmp ne i8 %i.gr, 91
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i.i.i, i64 2 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.gm
  %or.cond51.i.i.i = select i1 %i.gs, i1 true, i1 %i.gu
  br i1 %or.cond51.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i45

.lr.ph.i.i.i45:                                   ; preds = %bb.am, %.critedge4.i.i.i
  %.sroa.09.036.i.i.i = phi ptr [ %i.gx, %.critedge4.i.i.i ], [ %i.gt, %bb.am ] ; 4 uses
  %i.gv = load i8, ptr %.sroa.09.036.i.i.i, align 1, !tbaa !9325 ; 3 uses
  %9 = sext i8 %i.gv to i32
  %isdigittmp.i.i.i = add nsw i32 %9, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  %i.gw = icmp eq i8 %i.gv, 59
  %or.cond.i.i.i = or i1 %i.gw, %isdigit.i.i.i
  br i1 %or.cond.i.i.i, label %.critedge4.i.i.i, label %.critedge2.i.i.i

.critedge4.i.i.i:                                 ; preds = %.lr.ph.i.i.i45
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i.i.i, i64 1 ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.gm
  br i1 %i.gy, label %.critedge.i.i.i, label %.lr.ph.i.i.i45, !llvm.loop !664

.critedge2.i.i.i:                                 ; preds = %.lr.ph.i.i.i45
  %.not.i.i.i46 = icmp eq i8 %i.gv, 109
  br i1 %.not.i.i.i46, label %.critedge6.i.i.i, label %.critedge.i.i.i

.critedge6.i.i.i:                                 ; preds = %.critedge2.i.i.i
  store i8 -1, ptr %.sroa.09.036.i.i.i, align 1, !tbaa !9325
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i.i.i, i64 1 ; 3 uses
  %i.ha = load ptr, ptr %5, align 8, !tbaa !9326  ; 3 uses
  %i.hb = load i64, ptr %i.ee, align 8, !tbaa !9324 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.hb ; 2 uses
  %i.hd = icmp eq ptr %i.gz, %i.hc
  br i1 %i.hd, label %.critedge.i.i.i, label %.lr.ph40.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge6.i.i.i, %.critedge2.i.i.i, %bb.am, %bb.al, %.lr.ph40.i.i.i, %.critedge4.i.i.i, %.preheader.i.i.i
  %i.he = phi i64 [ %i.gg, %.preheader.i.i.i ], [ %i.gk, %.critedge4.i.i.i ], [ %i.gk, %.lr.ph40.i.i.i ], [ %i.hb, %.critedge6.i.i.i ], [ %i.gk, %bb.am ], [ %i.gk, %.critedge2.i.i.i ], [ %i.gk, %bb.al ] ; 2 uses
  %i.hf = phi ptr [ %i.gh, %.preheader.i.i.i ], [ %i.gl, %.critedge4.i.i.i ], [ %i.gl, %.lr.ph40.i.i.i ], [ %i.ha, %.critedge6.i.i.i ], [ %i.gl, %bb.am ], [ %i.gl, %.critedge2.i.i.i ], [ %i.gl, %bb.al ] ; 2 uses
  %.sroa.022.135.i.i.i = phi ptr [ %.sroa.022.049.i.i.i, %.preheader.i.i.i ], [ %.sroa.022.139.i.i.i, %.critedge4.i.i.i ], [ %.sroa.022.139.i.i.i, %.lr.ph40.i.i.i ], [ %i.gz, %.critedge6.i.i.i ], [ %.sroa.022.139.i.i.i, %bb.am ], [ %.sroa.022.139.i.i.i, %.critedge2.i.i.i ], [ %.sroa.022.139.i.i.i, %bb.al ] ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.he ; 2 uses
  %i.hh = icmp eq ptr %.sroa.022.135.i.i.i, %i.hg
  br i1 %i.hh, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.critedge.i.i.i
  %i.hi = load i64, ptr %i.ef, align 8, !tbaa !21803
  %i.hj = add i64 %i.hi, 1
  store i64 %i.hj, ptr %i.ef, align 8, !tbaa !21803
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.022.135.i.i.i, i64 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.critedge.i.i.i
  %.sroa.022.4.i.i.i = phi ptr [ %.sroa.022.135.i.i.i, %.critedge.i.i.i ], [ %i.hk, %bb.an ] ; 2 uses
  %i.hl = icmp eq ptr %.sroa.022.4.i.i.i, %i.hg
  br i1 %i.hl, label %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i.i.i, !llvm.loop !665

_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store i64 -1, ptr %i.ei, align 8, !tbaa !19288
  store i64 %i.ec, ptr %i.eg, align 8, !tbaa !19287
  store i64 2, ptr %i.eh, align 8, !tbaa !19289
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  store ptr %i.ej, ptr %6, align 8, !tbaa !9321, !alias.scope !70661
  store i8 0, ptr %i.ej, align 8, !alias.scope !70661
  store i64 0, ptr %i.ek, align 8, !tbaa !9324, !alias.scope !70661
  store i64 0, ptr %i.el, align 8, !tbaa !21803, !alias.scope !70661
  store i64 0, ptr %i.en, align 8, !tbaa !19289, !alias.scope !70661
  store i64 -1, ptr %i.eo, align 8, !tbaa !19288, !alias.scope !70661
  store i64 4, ptr %i.em, align 8, !tbaa !19287, !alias.scope !70661
  call void @llvm.experimental.noalias.scope.decl(metadata !70662)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !alias.scope !70662
  call void @_ZNSt6vectorIN5Catch8TextFlow6ColumnESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr null, ptr noundef nonnull align 8 dereferenceable(64) %5)
  %i.hm = load ptr, ptr %i.ep, align 8, !tbaa !21806, !alias.scope !70662 ; 9 uses
  %i.hn = load ptr, ptr %i.eq, align 8, !tbaa !21807, !alias.scope !70662
  %.not.i.i.i3.i = icmp eq ptr %i.hm, %i.hn
  br i1 %.not.i.i.i3.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 3 uses
  store ptr %i.ho, ptr %i.hm, align 8, !tbaa !9321
  %i.hp = load ptr, ptr %6, align 8, !tbaa !9326, !noalias !70662 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.ej
  br i1 %i.hq, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i

bb.aq:                                            ; preds = %bb.ap
  %i.hr = load i64, ptr %i.ek, align 8, !tbaa !9324, !noalias !70662 ; 3 uses
  %i.hs = icmp ult i64 %i.hr, 16
  call void @llvm.assume(i1 %i.hs)
  %i.ht = add nuw nsw i64 %i.hr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ho, ptr noundef nonnull align 8 dereferenceable(1) %i.ej, i64 %i.ht, i1 false)
  br label %_ZSt12construct_atIN5Catch8TextFlow6ColumnEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i: ; preds = %bb.ap
  store ptr %i.hp, ptr %i.hm, align 8, !tbaa !9326
  %i.hu = load i64, ptr %i.ej, align 8, !tbaa !9325, !noalias !70662
  store i64 %i.hu, ptr %i.ho, align 8, !tbaa !9325
  %.pre171.a = load i64, ptr %i.ek, align 8, !tbaa !9324, !noalias !70662
  br label %_ZSt12construct_atIN5Catch8TextFlow6ColumnEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i5.i

_ZSt12construct_atIN5Catch8TextFlow6ColumnEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i5.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i, %bb.aq
  %i.hv = phi i64 [ %.pre171.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i ], [ %i.hr, %bb.aq ]
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store i64 %i.hv, ptr %i.hw, align 8, !tbaa !9324
  store ptr %i.ej, ptr %6, align 8, !tbaa !9326, !noalias !70662
  store i64 0, ptr %i.ek, align 8, !tbaa !9324, !noalias !70662
  store i8 0, ptr %i.ej, align 8, !tbaa !9325, !noalias !70662
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.hy = load i64, ptr %i.el, align 8, !tbaa !21803, !noalias !70662
  store i64 %i.hy, ptr %i.hx, align 8, !tbaa !21803
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hz, ptr noundef nonnull align 8 dereferenceable(24) %i.em, i64 24, i1 false)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hm, i64 64
  store ptr %i.ia, ptr %i.ep, align 8, !tbaa !21806, !alias.scope !70662
  br label %_ZN5Catch8TextFlowplEONS0_6ColumnES2_.exit

bb.ar:                                            ; preds = %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @_ZNSt6vectorIN5Catch8TextFlow6ColumnESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.hm, ptr noundef nonnull align 8 dereferenceable(64) %6)
  br label %_ZN5Catch8TextFlowplEONS0_6ColumnES2_.exit

_ZN5Catch8TextFlowplEONS0_6ColumnES2_.exit:       ; preds = %_ZSt12construct_atIN5Catch8TextFlow6ColumnEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i5.i, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.091.0144, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !70663)
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !9368, !noalias !70663 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.091.0144, i64 40
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !9367, !noalias !70663 ; 9 uses
  store ptr %i.er, ptr %8, align 8, !tbaa !9321, !alias.scope !70663
  %i.if = icmp eq ptr %i.ic, null
  %i.ig = icmp ne i64 %i.ie, 0
  %or.cond.i.i = and i1 %i.if, %i.ig
  br i1 %or.cond.i.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN5Catch8TextFlowplEONS0_6ColumnES2_.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.504) #58
  unreachable

bb.at:                                            ; preds = %_ZN5Catch8TextFlowplEONS0_6ColumnES2_.exit
  %i.ih = icmp ugt i64 %i.ie, 15
  br i1 %i.ih, label %bb.au, label %._crit_edge.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.ii = icmp slt i64 %i.ie, 0
  br i1 %i.ii, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.502) #58
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.ij = add nuw i64 %i.ie, 1                    ; 2 uses
  %i.ik = icmp slt i64 %i.ij, 0
  br i1 %i.ik, label %bb.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !9356

bb.ax:                                            ; preds = %bb.aw
  call void @_ZSt17__throw_bad_allocv() #58
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.aw
  %i.il = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ij) #59 ; 2 uses
  store ptr %i.il, ptr %8, align 8, !tbaa !9326, !alias.scope !70663
  store i64 %i.ie, ptr %i.er, align 8, !tbaa !9325, !alias.scope !70663
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.at
  %i.im = phi ptr [ %i.il, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.er, %bb.at ] ; 3 uses
  switch i64 %i.ie, label %bb.az [
    i64 1, label %bb.ay
    i64 0, label %_ZNK5Catch9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  ]

bb.ay:                                            ; preds = %._crit_edge.i.i.i
  %i.in = load i8, ptr %i.ic, align 1, !tbaa !9325
  store i8 %i.in, ptr %i.im, align 1, !tbaa !9325
  br label %_ZNK5Catch9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.az:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.im, ptr align 1 %i.ic, i64 %i.ie, i1 false)
  br label %_ZNK5Catch9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK5Catch9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %._crit_edge.i.i.i, %bb.ay, %bb.az
  store i64 %i.ie, ptr %i.es, align 8, !tbaa !9324, !alias.scope !70663
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ie
  store i8 0, ptr %i.io, align 1, !tbaa !9325
  store ptr %i.et, ptr %7, align 8, !tbaa !9321
  %i.ip = load ptr, ptr %8, align 8, !tbaa !9326  ; 3 uses
  %i.iq = icmp eq ptr %i.ip, %i.er
  br i1 %i.iq, label %bb.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47

bb.ba:                                            ; preds = %_ZNK5Catch9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %i.ir = load i64, ptr %i.es, align 8, !tbaa !9324 ; 3 uses
  %i.is = icmp ult i64 %i.ir, 16
  call void @llvm.assume(i1 %i.is)
  %i.it = add nuw nsw i64 %i.ir, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.et, ptr noundef nonnull align 8 dereferenceable(1) %i.er, i64 %i.it, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47: ; preds = %_ZNK5Catch9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  store ptr %i.ip, ptr %7, align 8, !tbaa !9326
  %i.iu = load i64, ptr %i.er, align 8, !tbaa !9325
  store i64 %i.iu, ptr %i.et, align 8, !tbaa !9325
  %.pr = load i64, ptr %i.es, align 8, !tbaa !9324
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i48: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47, %bb.ba
  %i.iv = phi ptr [ %i.ip, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47 ], [ %i.et, %bb.ba ] ; 2 uses
  %i.iw = phi i64 [ %.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47 ], [ %i.ir, %bb.ba ] ; 3 uses
  store i64 %i.iw, ptr %i.eu, align 8, !tbaa !9324
  store ptr %i.er, ptr %8, align 8, !tbaa !9326
  store i64 0, ptr %i.es, align 8, !tbaa !9324
  store i8 0, ptr %i.er, align 8, !tbaa !9325
  store i64 0, ptr %i.ev, align 8, !tbaa !21803
  %i.ix = icmp samesign eq i64 %i.iw, 0
  br i1 %i.ix, label %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit67, label %.preheader.i.i.i50

.preheader.i.i.i50:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i48, %bb.be
  %i.iy = phi i64 [ %i.jw, %bb.be ], [ %i.iw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i48 ] ; 3 uses
  %i.iz = phi ptr [ %i.jx, %bb.be ], [ %i.iv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i48 ] ; 3 uses
  %.sroa.022.049.i.i.i51 = phi ptr [ %.sroa.022.4.i.i.i56, %bb.be ], [ %i.iv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i48 ] ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.iy ; 2 uses
  %i.jb = icmp eq ptr %.sroa.022.049.i.i.i51, %i.ja
  br i1 %i.jb, label %.critedge.i.i.i54, label %.lr.ph40.i.i.i52

.lr.ph40.i.i.i52:                                 ; preds = %.preheader.i.i.i50, %.critedge6.i.i.i65
  %i.jc = phi i64 [ %i.jt, %.critedge6.i.i.i65 ], [ %i.iy, %.preheader.i.i.i50 ] ; 5 uses
  %i.jd = phi ptr [ %i.js, %.critedge6.i.i.i65 ], [ %i.iz, %.preheader.i.i.i50 ] ; 5 uses
  %i.je = phi ptr [ %i.ju, %.critedge6.i.i.i65 ], [ %i.ja, %.preheader.i.i.i50 ] ; 3 uses
  %.sroa.022.139.i.i.i53 = phi ptr [ %i.jr, %.critedge6.i.i.i65 ], [ %.sroa.022.049.i.i.i51, %.preheader.i.i.i50 ] ; 8 uses
  %i.jf = load i8, ptr %.sroa.022.139.i.i.i53, align 1, !tbaa !9325
  %i.jg = icmp eq i8 %i.jf, 27
  br i1 %i.jg, label %bb.bb, label %.critedge.i.i.i54

bb.bb:                                            ; preds = %.lr.ph40.i.i.i52
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i.i.i53, i64 1 ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.je
  br i1 %i.ji, label %.critedge.i.i.i54, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jj = load i8, ptr %i.jh, align 1, !tbaa !9325
  %i.jk = icmp ne i8 %i.jj, 91
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i.i.i53, i64 2 ; 2 uses
  %i.jm = icmp eq ptr %i.jl, %i.je
  %or.cond51.i.i.i57 = select i1 %i.jk, i1 true, i1 %i.jm
  br i1 %or.cond51.i.i.i57, label %.critedge.i.i.i54, label %.lr.ph.i.i.i58

.lr.ph.i.i.i58:                                   ; preds = %bb.bc, %.critedge4.i.i.i66
  %.sroa.09.036.i.i.i59 = phi ptr [ %i.jp, %.critedge4.i.i.i66 ], [ %i.jl, %bb.bc ] ; 4 uses
  %i.jn = load i8, ptr %.sroa.09.036.i.i.i59, align 1, !tbaa !9325 ; 3 uses
  %10 = sext i8 %i.jn to i32
  %isdigittmp.i.i.i60 = add nsw i32 %10, -48
  %isdigit.i.i.i61 = icmp ult i32 %isdigittmp.i.i.i60, 10
  %i.jo = icmp eq i8 %i.jn, 59
  %or.cond.i.i.i62 = or i1 %i.jo, %isdigit.i.i.i61
  br i1 %or.cond.i.i.i62, label %.critedge4.i.i.i66, label %.critedge2.i.i.i63

.critedge4.i.i.i66:                               ; preds = %.lr.ph.i.i.i58
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i.i.i59, i64 1 ; 2 uses
  %i.jq = icmp eq ptr %i.jp, %i.je
  br i1 %i.jq, label %.critedge.i.i.i54, label %.lr.ph.i.i.i58, !llvm.loop !664

.critedge2.i.i.i63:                               ; preds = %.lr.ph.i.i.i58
  %.not.i.i.i64 = icmp eq i8 %i.jn, 109
  br i1 %.not.i.i.i64, label %.critedge6.i.i.i65, label %.critedge.i.i.i54

.critedge6.i.i.i65:                               ; preds = %.critedge2.i.i.i63
  store i8 -1, ptr %.sroa.09.036.i.i.i59, align 1, !tbaa !9325
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i.i.i59, i64 1 ; 3 uses
  %i.js = load ptr, ptr %7, align 8, !tbaa !9326  ; 3 uses
  %i.jt = load i64, ptr %i.eu, align 8, !tbaa !9324 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jt ; 2 uses
  %i.jv = icmp eq ptr %i.jr, %i.ju
  br i1 %i.jv, label %.critedge.i.i.i54, label %.lr.ph40.i.i.i52

.critedge.i.i.i54:                                ; preds = %.critedge6.i.i.i65, %.critedge2.i.i.i63, %bb.bc, %bb.bb, %.lr.ph40.i.i.i52, %.critedge4.i.i.i66, %.preheader.i.i.i50
  %i.jw = phi i64 [ %i.iy, %.preheader.i.i.i50 ], [ %i.jc, %.critedge4.i.i.i66 ], [ %i.jc, %.lr.ph40.i.i.i52 ], [ %i.jt, %.critedge6.i.i.i65 ], [ %i.jc, %bb.bc ], [ %i.jc, %.critedge2.i.i.i63 ], [ %i.jc, %bb.bb ] ; 3 uses
  %i.jx = phi ptr [ %i.iz, %.preheader.i.i.i50 ], [ %i.jd, %.critedge4.i.i.i66 ], [ %i.jd, %.lr.ph40.i.i.i52 ], [ %i.js, %.critedge6.i.i.i65 ], [ %i.jd, %bb.bc ], [ %i.jd, %.critedge2.i.i.i63 ], [ %i.jd, %bb.bb ] ; 2 uses
  %.sroa.022.135.i.i.i55 = phi ptr [ %.sroa.022.049.i.i.i51, %.preheader.i.i.i50 ], [ %.sroa.022.139.i.i.i53, %.critedge4.i.i.i66 ], [ %.sroa.022.139.i.i.i53, %.lr.ph40.i.i.i52 ], [ %i.jr, %.critedge6.i.i.i65 ], [ %.sroa.022.139.i.i.i53, %bb.bc ], [ %.sroa.022.139.i.i.i53, %.critedge2.i.i.i63 ], [ %.sroa.022.139.i.i.i53, %bb.bb ] ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jw ; 2 uses
  %i.jz = icmp eq ptr %.sroa.022.135.i.i.i55, %i.jy
  br i1 %i.jz, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.critedge.i.i.i54
  %i.ka = load i64, ptr %i.ev, align 8, !tbaa !21803
  %i.kb = add i64 %i.ka, 1
  store i64 %i.kb, ptr %i.ev, align 8, !tbaa !21803
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.022.135.i.i.i55, i64 1
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.critedge.i.i.i54
  %.sroa.022.4.i.i.i56 = phi ptr [ %.sroa.022.135.i.i.i55, %.critedge.i.i.i54 ], [ %i.kc, %bb.bd ] ; 2 uses
  %i.kd = icmp eq ptr %.sroa.022.4.i.i.i56, %i.jy
  br i1 %i.kd, label %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit67, label %.preheader.i.i.i50, !llvm.loop !665

_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit67: ; preds = %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i48
  %i.ke = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i48 ], [ %i.jw, %bb.be ] ; 3 uses
  store i64 0, ptr %i.ex, align 8, !tbaa !19289
  store i64 -1, ptr %i.ey, align 8, !tbaa !19288
  store i64 %i.ez, ptr %i.ew, align 8, !tbaa !19287
  call void @llvm.experimental.noalias.scope.decl(metadata !70664)
  %i.kf = load ptr, ptr %i.ep, align 8, !tbaa !21806, !noalias !70664 ; 9 uses
  %i.kg = load ptr, ptr %i.eq, align 8, !tbaa !21807, !noalias !70664
  %.not.i.i.i.i = icmp eq ptr %i.kf, %i.kg
  br i1 %.not.i.i.i.i, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit67
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 16 ; 3 uses
  store ptr %i.kh, ptr %i.kf, align 8, !tbaa !9321, !noalias !70664
  %i.ki = load ptr, ptr %7, align 8, !tbaa !9326, !noalias !70664 ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.et
  br i1 %i.kj, label %bb.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i68

bb.bg:                                            ; preds = %bb.bf
  %i.kk = icmp ult i64 %i.ke, 16
  call void @llvm.assume(i1 %i.kk)
  %i.kl = add nuw nsw i64 %i.ke, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kh, ptr noundef nonnull align 8 dereferenceable(1) %i.et, i64 %i.kl, i1 false), !noalias !70664
  br label %_ZSt12construct_atIN5Catch8TextFlow6ColumnEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i68: ; preds = %bb.bf
  store ptr %i.ki, ptr %i.kf, align 8, !tbaa !9326, !noalias !70664
  %i.km = load i64, ptr %i.et, align 8, !tbaa !9325, !noalias !70664
  store i64 %i.km, ptr %i.kh, align 8, !tbaa !9325, !noalias !70664
  br label %_ZSt12construct_atIN5Catch8TextFlow6ColumnEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i

_ZSt12construct_atIN5Catch8TextFlow6ColumnEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i68, %bb.bg
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store i64 %i.ke, ptr %i.kn, align 8, !tbaa !9324, !noalias !70664
  store ptr %i.et, ptr %7, align 8, !tbaa !9326, !noalias !70664
  store i64 0, ptr %i.eu, align 8, !tbaa !9324, !noalias !70664
  store i8 0, ptr %i.et, align 8, !tbaa !9325, !noalias !70664
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  %i.kp = load i64, ptr %i.ev, align 8, !tbaa !21803, !noalias !70664
  store i64 %i.kp, ptr %i.ko, align 8, !tbaa !21803, !noalias !70664
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kf, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kq, ptr noundef nonnull align 8 dereferenceable(24) %i.ew, i64 24, i1 false), !noalias !70664
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kf, i64 64 ; 2 uses
  store ptr %i.kr, ptr %i.ep, align 8, !tbaa !21806, !noalias !70664
  br label %_ZN5Catch8TextFlowplEONS0_7ColumnsEONS0_6ColumnE.exit

bb.bh:                                            ; preds = %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit67
  call void @_ZNSt6vectorIN5Catch8TextFlow6ColumnESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.kf, ptr noundef nonnull align 8 dereferenceable(64) %7), !noalias !70664
  %.pre.i = load ptr, ptr %i.ep, align 8, !tbaa !21806, !noalias !70664
  %.pre172 = load ptr, ptr %7, align 8, !tbaa !9326
  br label %_ZN5Catch8TextFlowplEONS0_7ColumnsEONS0_6ColumnE.exit

_ZN5Catch8TextFlowplEONS0_7ColumnsEONS0_6ColumnE.exit: ; preds = %_ZSt12construct_atIN5Catch8TextFlow6ColumnEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i, %bb.bh
  %i.ks = phi ptr [ %i.et, %_ZSt12construct_atIN5Catch8TextFlow6ColumnEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i ], [ %.pre172, %bb.bh ] ; 2 uses
  %i.kt = phi ptr [ %i.kr, %_ZSt12construct_atIN5Catch8TextFlow6ColumnEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i ], [ %.pre.i, %bb.bh ]
  %i.ku = load ptr, ptr %4, align 8, !tbaa !21808, !noalias !70664
  store ptr %i.ku, ptr %3, align 8, !tbaa !21808, !alias.scope !70664
  store ptr %i.kt, ptr %i.fa, align 8, !tbaa !21806, !alias.scope !70664
  %i.kv = load ptr, ptr %i.eq, align 8, !tbaa !21807, !noalias !70664
  store ptr %i.kv, ptr %i.fb, align 8, !tbaa !21807, !alias.scope !70664
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !70664
  %i.kw = icmp eq ptr %i.ks, %i.et
  br i1 %i.kw, label %_ZN5Catch8TextFlow6ColumnD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN5Catch8TextFlowplEONS0_7ColumnsEONS0_6ColumnE.exit
  %i.kx = load i64, ptr %i.et, align 8, !tbaa !9325
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.ky) #60
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit

_ZN5Catch8TextFlow6ColumnD2Ev.exit:               ; preds = %_ZN5Catch8TextFlowplEONS0_7ColumnsEONS0_6ColumnE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.kz = load ptr, ptr %8, align 8, !tbaa !9326  ; 2 uses
  %i.la = icmp eq ptr %i.kz, %i.er
  br i1 %i.la, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit
  %i.lb = load i64, ptr %i.er, align 8, !tbaa !9325
  %i.lc = add i64 %i.lb, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.lc) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  %i.ld = load ptr, ptr %4, align 8, !tbaa !21808 ; 3 uses
  %i.le = load ptr, ptr %i.ep, align 8, !tbaa !21806 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ld, %i.le
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.lk, %_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i ], [ %i.ld, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.lf = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !9326 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !9325
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #60
  br label %_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i69 = icmp eq ptr %i.lk, %i.le
  br i1 %.not.i.i.i.i69, label %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !666

_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !21808
  br label %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exit.i.i

_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ll = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exitthread-pre-split.i.i ], [ %i.ld, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ll, null
  br i1 %.not.i.i1.i.i, label %_ZN5Catch8TextFlow7ColumnsD2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exit.i.i
  %i.lm = load ptr, ptr %i.eq, align 8, !tbaa !21807
  %i.ln = ptrtoint ptr %i.lm to i64
  %i.lo = ptrtoint ptr %i.ll to i64
  %i.lp = sub i64 %i.ln, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %i.ll, i64 noundef %i.lp) #60
  br label %_ZN5Catch8TextFlow7ColumnsD2Ev.exit

_ZN5Catch8TextFlow7ColumnsD2Ev.exit:              ; preds = %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exit.i.i, %bb.bi
  %i.lq = load ptr, ptr %6, align 8, !tbaa !9326  ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.ej
  br i1 %i.lr, label %_ZN5Catch8TextFlow6ColumnD2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70: ; preds = %_ZN5Catch8TextFlow7ColumnsD2Ev.exit
  %i.ls = load i64, ptr %i.ej, align 8, !tbaa !9325
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lt) #60
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit72

_ZN5Catch8TextFlow6ColumnD2Ev.exit72:             ; preds = %_ZN5Catch8TextFlow7ColumnsD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %i.lu = load ptr, ptr %5, align 8, !tbaa !9326  ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.ed
  br i1 %i.lv, label %_ZN5Catch8TextFlow6ColumnD2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit72
  %i.lw = load i64, ptr %i.ed, align 8, !tbaa !9325
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.lx) #60
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit75

_ZN5Catch8TextFlow6ColumnD2Ev.exit75:             ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  %i.ly = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Catch8TextFlowlsERSoRKNS0_7ColumnsE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !9325
  %i.lz = load ptr, ptr %1, align 8, !tbaa !3603
  %i.ma = getelementptr i8, ptr %i.lz, i64 -24
  %i.mb = load i64, ptr %i.ma, align 8
  %i.mc = getelementptr inbounds i8, ptr %1, i64 %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
end_hunk_0
begin_hunk_1_@_ZN5Catch8TextFlowlsERSoRKNS0_7ColumnsE:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !21811
  br label %_ZN5Catch8TextFlow7Columns8iteratorppEv.exit.outer

_ZN5Catch8TextFlow7Columns8iteratorppEv.exit.outer: ; preds = %bb.t, %bb.a
  %.ph147 = phi ptr [ %.pre, %bb.a ], [ %i.ee, %bb.t ] ; 7 uses
  %.0.ph = phi i1 [ true, %bb.a ], [ false, %bb.t ]
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !21812 ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %.ph147 to i64              ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !21812
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !21811 ; 4 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp eq i64 %i.k, %i.p
  %.not9.i.i.i.i.i.i = icmp eq ptr %.ph147, %i.h
  %i.r = load ptr, ptr %2, align 8, !nonnull !4070, !align !19314 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  br label %_ZN5Catch8TextFlow7Columns8iteratorppEv.exit

_ZN5Catch8TextFlow7Columns8iteratorppEv.exit:     ; preds = %_ZN5Catch8TextFlow7Columns8iteratorppEv.exit.outer, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.0.ph, %_ZN5Catch8TextFlow7Columns8iteratorppEv.exit.outer ]
  br i1 %i.q, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN5Catch8TextFlow7Columns8iteratorppEv.exit
  br i1 %.not9.i.i.i.i.i.i, label %_ZNK5Catch8TextFlow7Columns8iteratorneERKS2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %bb.c
  %.011.i.i.i.i.i.i = phi ptr [ %i.ac, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.ab, %bb.c ], [ %.ph147, %bb.b ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 16
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !9357
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !9357
  %i.x = icmp ne ptr %i.v, %i.w
  %i.y = load ptr, ptr %.0810.i.i.i.i.i.i, align 8, !nonnull !4070, !align !19314
  %i.z = load ptr, ptr %.011.i.i.i.i.i.i, align 8, !nonnull !4070, !align !19314
  %i.aa = icmp ne ptr %i.y, %i.z
  %.not5.i = select i1 %i.x, i1 true, i1 %i.aa
  br i1 %.not5.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5Catch8TextFlow7Columns8iteratorneERKS2_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !70665

_ZNK5Catch8TextFlow7Columns8iteratorneERKS2_.exit: ; preds = %bb.b, %bb.c
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZN5Catch8TextFlow7Columns8iteratorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5Catch8TextFlow7Columns8iteratorneERKS2_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !21813
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.ag) #60
  br label %_ZN5Catch8TextFlow7Columns8iteratorD2Ev.exit

_ZN5Catch8TextFlow7Columns8iteratorD2Ev.exit:     ; preds = %_ZNK5Catch8TextFlow7Columns8iteratorneERKS2_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  %.not.i.i.i.i6 = icmp eq ptr %.ph147, null
  br i1 %.not.i.i.i.i6, label %_ZN5Catch8TextFlow7Columns8iteratorD2Ev.exit7, label %bb.e

bb.e:                                             ; preds = %_ZN5Catch8TextFlow7Columns8iteratorD2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21813
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.j
  call void @_ZdlPvm(ptr noundef nonnull %.ph147, i64 noundef %i.ak) #60
  br label %_ZN5Catch8TextFlow7Columns8iteratorD2Ev.exit7

_ZN5Catch8TextFlow7Columns8iteratorD2Ev.exit7:    ; preds = %_ZN5Catch8TextFlow7Columns8iteratorD2Ev.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret ptr %0

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Catch8TextFlow7Columns8iteratorppEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  call void @_ZNK5Catch8TextFlow7Columns8iteratordeB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br i1 %.0, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !9325
  %i.al = load ptr, ptr %0, align 8, !tbaa !3603
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !9346
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.h:                                             ; preds = %bb.f
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.at = load ptr, ptr %4, align 8, !tbaa !9326
  %i.au = load i64, ptr %i.f, align 8, !tbaa !9324
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.at, i64 noundef %i.au) #49 ; 0 uses
  %i.aw = load ptr, ptr %4, align 8, !tbaa !9326  ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.g
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ay = load i64, ptr %i.g, align 8, !tbaa !9325
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  %i.ba = load ptr, ptr %i.s, align 8, !tbaa !21806
  %i.bb = load ptr, ptr %i.r, align 8, !tbaa !21808 ; 2 uses
  %.not.i8 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not.i8, label %_ZN5Catch8TextFlow7Columns8iteratorppEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.t
  %i.bc = phi ptr [ %i.ee, %bb.t ], [ %.ph147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.bd = phi ptr [ %i.ef, %bb.t ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.be = phi ptr [ %i.eg, %bb.t ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.bf = phi ptr [ %i.eh, %bb.t ], [ %.ph147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.05.i = phi i64 [ %i.ei, %bb.t ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [64 x i8], ptr %i.bf, i64 %.05.i ; 5 uses
  %i.bh = getelementptr inbounds nuw [64 x i8], ptr %i.bd, i64 %.05.i ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !9326, !noalias !70668
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !9324, !noalias !70668
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 6 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !9357
  %i.bo = icmp ne ptr %i.bn, %i.bl
  %i.bp = load ptr, ptr %i.bg, align 8, !nonnull !4070, !align !19314 ; 5 uses
  %i.bq = icmp ne ptr %i.bp, %i.bh
  %.not3.i.i = select i1 %i.bo, i1 true, i1 %i.bq
  br i1 %.not3.i.i, label %bb.j, label %bb.t

bb.j:                                             ; preds = %.lr.ph.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !21814
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !9326
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !9324 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bv ; 2 uses
  %i.bx = load ptr, ptr %i.bm, align 8, !tbaa !9357 ; 4 uses
  %.not.i9 = icmp eq ptr %i.bx, %i.bw
  br i1 %.not.i9, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !9325 ; 2 uses
  %i.bz = icmp eq i8 %i.by, 10
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bs, align 8 ; 6 uses
  br i1 %i.bz, label %bb.l, label %.lr.ph.i10

bb.l:                                             ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 4 uses
  store ptr %i.ca, ptr %i.bm, align 8, !tbaa !21816
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !9324 ; 2 uses
  %i.cd = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !9326
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cc ; 2 uses
  %i.cf = icmp eq ptr %i.ca, %i.ce
  br i1 %i.cf, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.i, label %.lr.ph24.i.i.i.i.i

.lr.ph24.i.i.i.i.i:                               ; preds = %bb.l, %.critedge6.i.i.i.i.i
  %i.cg = phi ptr [ %i.cu, %.critedge6.i.i.i.i.i ], [ %i.ca, %bb.l ] ; 8 uses
  %i.ch = phi ptr [ %i.cw, %.critedge6.i.i.i.i.i ], [ %i.ce, %bb.l ] ; 3 uses
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !9325
  %i.cj = icmp eq i8 %i.ci, 27
  br i1 %i.cj, label %bb.m, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.i

bb.m:                                             ; preds = %.lr.ph24.i.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 1 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.ch
  br i1 %i.cl, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cm = load i8, ptr %i.ck, align 1, !tbaa !9325
  %i.cn = icmp ne i8 %i.cm, 91
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 2 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.ch
  %or.cond29.i.i.i.i.i = select i1 %i.cn, i1 true, i1 %i.cp
  br i1 %or.cond29.i.i.i.i.i, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %.critedge4.i.i.i.i.i
  %.sroa.08.022.i.i.i.i.i = phi ptr [ %i.cs, %.critedge4.i.i.i.i.i ], [ %i.co, %bb.n ] ; 3 uses
  %i.cq = load i8, ptr %.sroa.08.022.i.i.i.i.i, align 1, !tbaa !9325 ; 3 uses
  %5 = sext i8 %i.cq to i32
  %isdigittmp.i.i.i.i.i = add nsw i32 %5, -48
  %isdigit.i.i.i.i.i = icmp ult i32 %isdigittmp.i.i.i.i.i, 10
  %i.cr = icmp eq i8 %i.cq, 59
  %or.cond.i.i.i.i.i = or i1 %i.cr, %isdigit.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %.critedge4.i.i.i.i.i, label %.critedge2.i.i.i.i.i

.critedge4.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i.i.i, i64 1 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.ch
  br i1 %i.ct, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !667

.critedge2.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i8 %i.cq, -1
  br i1 %.not.i.i.i.i.i, label %.critedge6.i.i.i.i.i, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.i

.critedge6.i.i.i.i.i:                             ; preds = %.critedge2.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.cu, ptr %i.bm, align 8, !tbaa !9357
  %i.cv = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !9326
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cc ; 2 uses
  %i.cx = icmp eq ptr %i.cu, %i.cw
  br i1 %i.cx, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.i, label %.lr.ph24.i.i.i.i.i

.lr.ph.i10:                                       ; preds = %bb.k
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  br label %bb.o

thread-pre-split.i:                               ; preds = %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit.i
  %.pr.i = load i8, ptr %i.dy, align 1, !tbaa !9325
  br label %bb.o

bb.o:                                             ; preds = %thread-pre-split.i, %.lr.ph.i10
  %i.cz = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.by, %.lr.ph.i10 ]
  %i.da = phi ptr [ %i.dy, %thread-pre-split.i ], [ %i.bx, %.lr.ph.i10 ] ; 2 uses
  switch i8 %i.cz, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.i [
    i8 32, label %bb.p
    i8 10, label %bb.p
    i8 9, label %bb.p
    i8 13, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1 ; 4 uses
  store ptr %i.db, ptr %i.bm, align 8, !tbaa !21816
  %i.dc = load i64, ptr %i.cy, align 8, !tbaa !9324 ; 2 uses
  %i.dd = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !9326
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dc ; 2 uses
  %i.df = icmp eq ptr %i.db, %i.de
  br i1 %i.df, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit.i, label %.lr.ph24.i.i.i.i

.lr.ph24.i.i.i.i:                                 ; preds = %bb.p, %.critedge6.i.i.i.i
  %i.dg = phi ptr [ %i.du, %.critedge6.i.i.i.i ], [ %i.db, %bb.p ] ; 8 uses
  %i.dh = phi ptr [ %i.dw, %.critedge6.i.i.i.i ], [ %i.de, %bb.p ] ; 3 uses
  %i.di = load i8, ptr %i.dg, align 1, !tbaa !9325
  %i.dj = icmp eq i8 %i.di, 27
  br i1 %i.dj, label %bb.q, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit.i

bb.q:                                             ; preds = %.lr.ph24.i.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 1 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.dh
  br i1 %i.dl, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dm = load i8, ptr %i.dk, align 1, !tbaa !9325
  %i.dn = icmp ne i8 %i.dm, 91
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 2 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.dh
  %or.cond29.i.i.i.i = select i1 %i.dn, i1 true, i1 %i.dp
  br i1 %or.cond29.i.i.i.i, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.r, %.critedge4.i.i.i.i
  %.sroa.08.022.i.i.i.i = phi ptr [ %i.ds, %.critedge4.i.i.i.i ], [ %i.do, %bb.r ] ; 3 uses
  %i.dq = load i8, ptr %.sroa.08.022.i.i.i.i, align 1, !tbaa !9325 ; 3 uses
  %6 = sext i8 %i.dq to i32
  %isdigittmp.i.i.i.i = add nsw i32 %6, -48
  %isdigit.i.i.i.i = icmp ult i32 %isdigittmp.i.i.i.i, 10
  %i.dr = icmp eq i8 %i.dq, 59
  %or.cond.i.i.i.i = or i1 %i.dr, %isdigit.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %.critedge4.i.i.i.i, label %.critedge2.i.i.i.i

.critedge4.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i.i, i64 1 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.dh
  br i1 %i.dt, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !667

.critedge2.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i11 = icmp eq i8 %i.dq, -1
  br i1 %.not.i.i.i.i11, label %.critedge6.i.i.i.i, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit.i

.critedge6.i.i.i.i:                               ; preds = %.critedge2.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.du, ptr %i.bm, align 8, !tbaa !9357
  %i.dv = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !9326
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dc ; 2 uses
  %i.dx = icmp eq ptr %i.du, %i.dw
  br i1 %i.dx, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit.i, label %.lr.ph24.i.i.i.i

_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit.i: ; preds = %.critedge6.i.i.i.i, %.critedge2.i.i.i.i, %bb.r, %bb.q, %.lr.ph24.i.i.i.i, %.critedge4.i.i.i.i, %bb.p
  %i.dy = phi ptr [ %i.dg, %.critedge4.i.i.i.i ], [ %i.db, %bb.p ], [ %i.du, %.critedge6.i.i.i.i ], [ %i.dg, %.critedge2.i.i.i.i ], [ %i.dg, %bb.r ], [ %i.dg, %bb.q ], [ %i.dg, %.lr.ph24.i.i.i.i ] ; 4 uses
  %i.dz = load ptr, ptr %i.bp, align 8, !tbaa !9326
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.bv
  %.not15.i = icmp eq ptr %i.dy, %i.ea
  br i1 %.not15.i, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.i, label %thread-pre-split.i, !llvm.loop !668

_ZN12_GLOBAL__N_112isWhitespaceEc.exit.i:         ; preds = %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit.i, %bb.o, %.critedge6.i.i.i.i.i, %.critedge2.i.i.i.i.i, %bb.n, %bb.m, %.lr.ph24.i.i.i.i.i, %.critedge4.i.i.i.i.i, %bb.l, %bb.j
  %i.eb = phi ptr [ %i.bw, %bb.j ], [ %i.cg, %.critedge4.i.i.i.i.i ], [ %i.ca, %bb.l ], [ %i.cu, %.critedge6.i.i.i.i.i ], [ %i.cg, %.lr.ph24.i.i.i.i.i ], [ %i.cg, %bb.m ], [ %i.cg, %bb.n ], [ %i.cg, %.critedge2.i.i.i.i.i ], [ %i.dy, %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit.i ], [ %i.da, %bb.o ]
  %i.ec = load ptr, ptr %i.bp, align 8, !tbaa !9326
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.bv
  %.not16.i = icmp eq ptr %i.eb, %i.ed
  br i1 %.not16.i, label %_ZN5Catch8TextFlow6Column14const_iteratorppEv.exit, label %bb.s

bb.s:                                             ; preds = %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.i
  call void @_ZN5Catch8TextFlow6Column14const_iterator10calcLengthEv(ptr noundef nonnull align 8 dereferenceable(57) %i.bg)
  br label %_ZN5Catch8TextFlow6Column14const_iteratorppEv.exit

_ZN5Catch8TextFlow6Column14const_iteratorppEv.exit: ; preds = %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.i, %bb.s
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !21811 ; 2 uses
  %.pre7.i = load ptr, ptr %2, align 8, !tbaa !21822 ; 2 uses
  %.pre8.i = load ptr, ptr %.pre7.i, align 8, !tbaa !21808
  br label %bb.t

bb.t:                                             ; preds = %_ZN5Catch8TextFlow6Column14const_iteratorppEv.exit, %.lr.ph.i
  %i.ee = phi ptr [ %i.bc, %.lr.ph.i ], [ %.pre.i, %_ZN5Catch8TextFlow6Column14const_iteratorppEv.exit ] ; 2 uses
  %i.ef = phi ptr [ %i.bd, %.lr.ph.i ], [ %.pre8.i, %_ZN5Catch8TextFlow6Column14const_iteratorppEv.exit ] ; 2 uses
  %i.eg = phi ptr [ %i.be, %.lr.ph.i ], [ %.pre7.i, %_ZN5Catch8TextFlow6Column14const_iteratorppEv.exit ] ; 2 uses
  %i.eh = phi ptr [ %i.bf, %.lr.ph.i ], [ %.pre.i, %_ZN5Catch8TextFlow6Column14const_iteratorppEv.exit ]
  %i.ei = add nuw i64 %.05.i, 1                   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !21806
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ef to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 6
  %i.ep = icmp ult i64 %i.ei, %i.eo
  br i1 %i.ep, label %.lr.ph.i, label %_ZN5Catch8TextFlow7Columns8iteratorppEv.exit.outer, !llvm.loop !669
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5Catch5Clara6Parser8validateEv(ptr dead_on_unwind noalias writable sret(%"class.Catch::Clara::Detail::BasicResult.162") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16319 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16319 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5Catch5Clara6Detail11BasicResultIvED2Ev.exit
  %.sroa.029.035 = phi ptr [ %i.b, %.lr.ph ], [ %i.r, %_ZN5Catch5Clara6Detail11BasicResultIvED2Ev.exit ] ; 3 uses
  %i.i = load ptr, ptr %.sroa.029.035, align 8, !tbaa !3603
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr dead_on_unwind writable sret(%"class.Catch::Clara::Detail::BasicResult.162") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.029.035) #49, !call_target !16355
  %i.l = load i32, ptr %i.f, align 8, !tbaa !19197
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch5Clara6Detail11BasicResultIvEE, i64 16), ptr %0, align 8, !tbaa !3603
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !9326 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.h
  br i1 %i.o, label %_ZN5Catch5Clara6Detail11BasicResultIvED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.p = load i64, ptr %i.h, align 8, !tbaa !9325
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #60, !inline_history !21785
  br label %_ZN5Catch5Clara6Detail11BasicResultIvED2Ev.exit

_ZN5Catch5Clara6Detail11BasicResultIvED2Ev.exit:  ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.029.035, i64 88 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_ZN5Catch5Clara6Detail11BasicResultIvED2Ev.exit, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16306 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16306 ; 2 uses
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %._crit_edge39, label %.lr.ph38

.lr.ph38:                                         ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph38, %_ZN5Catch5Clara6Detail11BasicResultIvED2Ev.exit24
  %.sroa.025.036 = phi ptr [ %i.u, %.lr.ph38 ], [ %i.ak, %_ZN5Catch5Clara6Detail11BasicResultIvED2Ev.exit24 ] ; 3 uses
  %i.ab = load ptr, ptr %.sroa.025.036, align 8, !tbaa !3603
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr dead_on_unwind writable sret(%"class.Catch::Clara::Detail::BasicResult.162") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.025.036) #49, !call_target !17782
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !19197
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch5Clara6Detail11BasicResultIvEE, i64 16), ptr %0, align 8, !tbaa !3603
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !9326 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.aa
  br i1 %i.ah, label %_ZN5Catch5Clara6Detail11BasicResultIvED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22: ; preds = %bb.e
  %i.ai = load i64, ptr %i.aa, align 8, !tbaa !9325
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #60, !inline_history !21785
  br label %_ZN5Catch5Clara6Detail11BasicResultIvED2Ev.exit24

_ZN5Catch5Clara6Detail11BasicResultIvED2Ev.exit24: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.025.036, i64 64 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.w
  br i1 %i.al, label %._crit_edge39, label %bb.d

._crit_edge39:                                    ; preds = %_ZN5Catch5Clara6Detail11BasicResultIvED2Ev.exit24, %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.am, align 8, !tbaa !19197, !alias.scope !70671
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch5Clara6Detail11BasicResultIvEE, i64 16), ptr %0, align 8, !tbaa !3603, !alias.scope !70671
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !9321, !alias.scope !70671
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.ap, align 8, !tbaa !9324, !alias.scope !70671
  store i8 0, ptr %i.ao, align 8, !tbaa !9325, !alias.scope !70671
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.d, %._crit_edge39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5Catch5Clara6Parser5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6Detail11TokenStreamE(ptr dead_on_unwind noalias writable sret(%"class.Catch::Clara::Detail::BasicResult") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofreeobj noundef align 8 captures(none) dereferenceable(40) %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.Catch::Clara::Detail::BasicResult.159", align 8 ; 4 uses
  %5 = alloca %"class.Catch::Clara::Detail::BasicResult", align 8 ; 28 uses
  %6 = alloca %"class.Catch::Clara::Detail::BasicResult", align 8 ; 13 uses
  %7 = alloca %"class.Catch::Clara::Detail::TokenStream", align 8 ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16301 ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !16304 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 88
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17795 ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !16305 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 6
  %i.q = add nsw i64 %i.p, %i.h                   ; 4 uses
  %i.r = icmp ugt i64 %i.q, 576460752303423487
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.499) #58
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not114 = icmp eq i64 %i.q, 0
  br i1 %.not114, label %_ZNSt6vectorIZNK5Catch5Clara6Parser5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6Detail11TokenStreamEE10ParserInfoSaISD_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIZNK5Catch5Clara6Parser5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6Detail11TokenStreamEE10ParserInfoSaISD_EE13_M_deallocateEPSD_m.exit.i

_ZNSt12_Vector_baseIZNK5Catch5Clara6Parser5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6Detail11TokenStreamEE10ParserInfoSaISD_EE13_M_deallocateEPSD_m.exit.i: ; preds = %bb.c
  %i.s = shl nuw nsw i64 %i.q, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #59 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5Catch14TestSpecParser17preprocessPatternB5cxx11Ev:bb.a
  call void @llvm.assume(i1 %i.do)
  %.not21.i31 = icmp eq ptr %6, %0
  br i1 %.not21.i31, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit36, label %bb.aj, !prof !9356

bb.aj:                                            ; preds = %bb.ai
  switch i64 %i.dn, label %bb.al [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i32
    i64 1, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.dp = load i8, ptr %i.dm, align 1, !tbaa !9325
  store i8 %i.dp, ptr %i.cu, align 1, !tbaa !9325
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i32

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cu, ptr align 1 %i.dm, i64 %i.dn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i32: ; preds = %bb.al, %bb.ak, %bb.aj
  %i.dq = load i64, ptr %i.de, align 8, !tbaa !9324 ; 2 uses
  store i64 %i.dq, ptr %i.m, align 8, !tbaa !9324
  %i.dr = load ptr, ptr %0, align 8, !tbaa !9326
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dq
  store i8 0, ptr %i.ds, align 1, !tbaa !9325
  %.pre.i33 = load ptr, ptr %6, align 8, !tbaa !9326
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit36

.thread.i35:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i34
  store ptr %i.di, ptr %0, align 8, !tbaa !9326
  %i.dt = load <2 x i64>, ptr %i.de, align 8, !tbaa !9325
  store <2 x i64> %i.dt, ptr %i.m, align 8, !tbaa !9325
  br label %bb.an

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i28
  %i.du = load i64, ptr %i.b, align 8, !tbaa !9325
  store ptr %i.dk, ptr %0, align 8, !tbaa !9326
  %i.dv = load <2 x i64>, ptr %i.de, align 8, !tbaa !9325
  store <2 x i64> %i.dv, ptr %i.m, align 8, !tbaa !9325
  %.not.i30 = icmp eq ptr %i.cu, null
  br i1 %.not.i30, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i29
  store ptr %i.cu, ptr %6, align 8, !tbaa !9326
  store i64 %i.du, ptr %i.ct, align 8, !tbaa !9325
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit36

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i29, %.thread.i35
  store ptr %i.ct, ptr %6, align 8, !tbaa !9326
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit36: ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i32, %bb.am, %bb.an
  %i.dw = phi ptr [ %i.cu, %bb.am ], [ %i.ct, %bb.an ], [ %i.dm, %bb.ai ], [ %.pre.i33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i32 ]
  store i64 0, ptr %i.de, align 8, !tbaa !9324
  store i8 0, ptr %i.dw, align 1, !tbaa !9325
  %i.dx = load ptr, ptr %6, align 8, !tbaa !9326  ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.ct
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit36
  %i.dz = load i64, ptr %i.ct, align 8, !tbaa !9325
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i64 0, ptr %i.d, align 8, !tbaa !9324
  %i.eb = load ptr, ptr %i.a, align 8, !tbaa !9326
  store i8 0, ptr %i.eb, align 1, !tbaa !9325
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 0, ptr %i.ec, align 8, !tbaa !23555
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch6Detail11make_uniqueINS_8TestSpec10TagPatternEJRA2_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS0_10unique_ptrIT_EEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.Catch::Detail::unique_ptr.372") align 8 %0, ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #59 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !9321
  %i.c = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #49 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.502) #58
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !9356

bb.e:                                             ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #58
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.h = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #59 ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !9326
  store i64 %i.c, ptr %i.b, align 8, !tbaa !9325
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1, !tbaa !9325
  store i8 %i.j, ptr %i.i, align 1, !tbaa !9325
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !9324
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !9325
  call void @_ZN5Catch8TestSpec10TagPatternC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store ptr %i.a, ptr %0, align 8, !tbaa !23558
  %i.m = load ptr, ptr %3, align 8, !tbaa !9326   ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.o = load i64, ptr %i.b, align 8, !tbaa !9325
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5Catch8TextFlow18AnsiSkippingString16preprocessStringEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9324 ; 2 uses
  %i.c = icmp samesign eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !9326   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.e
  %i.f = phi i64 [ %i.b, %.preheader.lr.ph ], [ %i.ad, %bb.e ] ; 3 uses
  %i.g = phi ptr [ %i.d, %.preheader.lr.ph ], [ %i.ae, %bb.e ] ; 3 uses
  %.sroa.022.049 = phi ptr [ %i.d, %.preheader.lr.ph ], [ %.sroa.022.4, %bb.e ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.f ; 2 uses
  %i.i = icmp eq ptr %.sroa.022.049, %i.h
  br i1 %i.i, label %.critedge, label %.lr.ph40

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

.lr.ph40:                                         ; preds = %.preheader, %.critedge6
  %i.j = phi i64 [ %i.aa, %.critedge6 ], [ %i.f, %.preheader ] ; 5 uses
  %i.k = phi ptr [ %i.z, %.critedge6 ], [ %i.g, %.preheader ] ; 5 uses
  %i.l = phi ptr [ %i.ab, %.critedge6 ], [ %i.h, %.preheader ] ; 3 uses
  %.sroa.022.139 = phi ptr [ %i.y, %.critedge6 ], [ %.sroa.022.049, %.preheader ] ; 8 uses
  %i.m = load i8, ptr %.sroa.022.139, align 1, !tbaa !9325
  %i.n = icmp eq i8 %i.m, 27
  br i1 %i.n, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph40
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.022.139, i64 1 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.l
  br i1 %i.p, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.o, align 1, !tbaa !9325
  %i.r = icmp ne i8 %i.q, 91
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.022.139, i64 2 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.l
  %or.cond51 = select i1 %i.r, i1 true, i1 %i.t
  br i1 %or.cond51, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.critedge4
  %.sroa.09.036 = phi ptr [ %i.w, %.critedge4 ], [ %i.s, %bb.c ] ; 4 uses
  %i.u = load i8, ptr %.sroa.09.036, align 1, !tbaa !9325 ; 3 uses
  %1 = sext i8 %i.u to i32
  %isdigittmp = add nsw i32 %1, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  %i.v = icmp eq i8 %i.u, 59
  %or.cond = or i1 %i.v, %isdigit
  br i1 %or.cond, label %.critedge4, label %.critedge2

.critedge4:                                       ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.09.036, i64 1 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.l
  br i1 %i.x, label %.critedge, label %.lr.ph, !llvm.loop !664

.critedge2:                                       ; preds = %.lr.ph
  %.not = icmp eq i8 %i.u, 109
  br i1 %.not, label %.critedge6, label %.critedge

.critedge6:                                       ; preds = %.critedge2
  store i8 -1, ptr %.sroa.09.036, align 1, !tbaa !9325
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.09.036, i64 1 ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !9326   ; 3 uses
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !9324 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa ; 2 uses
  %i.ac = icmp eq ptr %i.y, %i.ab
  br i1 %i.ac, label %.critedge, label %.lr.ph40

.critedge:                                        ; preds = %bb.c, %.critedge6, %.lr.ph40, %bb.b, %.critedge2, %.critedge4, %.preheader
  %i.ad = phi i64 [ %i.f, %.preheader ], [ %i.j, %.critedge4 ], [ %i.j, %.critedge2 ], [ %i.j, %bb.c ], [ %i.aa, %.critedge6 ], [ %i.j, %.lr.ph40 ], [ %i.j, %bb.b ] ; 2 uses
  %i.ae = phi ptr [ %i.g, %.preheader ], [ %i.k, %.critedge4 ], [ %i.k, %.critedge2 ], [ %i.k, %bb.c ], [ %i.z, %.critedge6 ], [ %i.k, %.lr.ph40 ], [ %i.k, %bb.b ] ; 2 uses
  %.sroa.022.135 = phi ptr [ %.sroa.022.049, %.preheader ], [ %.sroa.022.139, %.critedge4 ], [ %.sroa.022.139, %.critedge2 ], [ %.sroa.022.139, %bb.c ], [ %i.y, %.critedge6 ], [ %.sroa.022.139, %.lr.ph40 ], [ %.sroa.022.139, %bb.b ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad ; 2 uses
  %i.ag = icmp eq ptr %.sroa.022.135, %i.af
  br i1 %i.ag, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.ah = load i64, ptr %i.e, align 8, !tbaa !21803
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.e, align 8, !tbaa !21803
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.022.135, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge
  %.sroa.022.4 = phi ptr [ %.sroa.022.135, %.critedge ], [ %i.aj, %bb.d ] ; 2 uses
  %i.ak = icmp eq ptr %.sroa.022.4, %i.af
  br i1 %i.ak, label %._crit_edge, label %.preheader, !llvm.loop !665
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch8TextFlow18AnsiSkippingStringC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !9321
  %i.b = load ptr, ptr %1, align 8, !tbaa !9326   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9324 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.502) #58
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !9356

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #58
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #59 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !9326
  store i64 %i.d, ptr %i.a, align 8, !tbaa !9325
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !9325
  store i8 %i.k, ptr %i.j, align 1, !tbaa !9325
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %i.d, ptr %i.l, align 8, !tbaa !9324
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !9325
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i64 0, ptr %i.n, align 8, !tbaa !21803
  %i.o = load i64, ptr %i.l, align 8, !tbaa !9324 ; 2 uses
  %i.p = icmp samesign eq i64 %i.o, 0
  br i1 %i.p, label %_ZN5Catch8TextFlow18AnsiSkippingString16preprocessStringEv.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.q = load ptr, ptr %0, align 8, !tbaa !9326   ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.k, %.preheader.lr.ph.i
  %i.r = phi i64 [ %i.o, %.preheader.lr.ph.i ], [ %i.ap, %bb.k ] ; 3 uses
  %i.s = phi ptr [ %i.q, %.preheader.lr.ph.i ], [ %i.aq, %bb.k ] ; 3 uses
  %.sroa.022.049.i = phi ptr [ %i.q, %.preheader.lr.ph.i ], [ %.sroa.022.4.i, %bb.k ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r ; 2 uses
  %i.u = icmp eq ptr %.sroa.022.049.i, %i.t
  br i1 %i.u, label %.critedge.i, label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %.preheader.i, %.critedge6.i
  %i.v = phi i64 [ %i.am, %.critedge6.i ], [ %i.r, %.preheader.i ] ; 5 uses
  %i.w = phi ptr [ %i.al, %.critedge6.i ], [ %i.s, %.preheader.i ] ; 5 uses
  %i.x = phi ptr [ %i.an, %.critedge6.i ], [ %i.t, %.preheader.i ] ; 3 uses
  %.sroa.022.139.i = phi ptr [ %i.ak, %.critedge6.i ], [ %.sroa.022.049.i, %.preheader.i ] ; 8 uses
  %i.y = load i8, ptr %.sroa.022.139.i, align 1, !tbaa !9325
  %i.z = icmp eq i8 %i.y, 27
  br i1 %i.z, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %.lr.ph40.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i, i64 1 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.x
  br i1 %i.ab, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !9325
  %i.ad = icmp ne i8 %i.ac, 91
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i, i64 2 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.x
  %or.cond51.i = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond51.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.critedge4.i
  %.sroa.09.036.i = phi ptr [ %i.ai, %.critedge4.i ], [ %i.ae, %bb.i ] ; 4 uses
  %i.ag = load i8, ptr %.sroa.09.036.i, align 1, !tbaa !9325 ; 3 uses
  %2 = sext i8 %i.ag to i32
  %isdigittmp.i = add nsw i32 %2, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  %i.ah = icmp eq i8 %i.ag, 59
  %or.cond.i = or i1 %i.ah, %isdigit.i
  br i1 %or.cond.i, label %.critedge4.i, label %.critedge2.i

.critedge4.i:                                     ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i, i64 1 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.x
  br i1 %i.aj, label %.critedge.i, label %.lr.ph.i, !llvm.loop !664

.critedge2.i:                                     ; preds = %.lr.ph.i
  %.not.i = icmp eq i8 %i.ag, 109
  br i1 %.not.i, label %.critedge6.i, label %.critedge.i

.critedge6.i:                                     ; preds = %.critedge2.i
  store i8 -1, ptr %.sroa.09.036.i, align 1, !tbaa !9325
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i, i64 1 ; 3 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !9326  ; 3 uses
  %i.am = load i64, ptr %i.l, align 8, !tbaa !9324 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = icmp eq ptr %i.ak, %i.an
  br i1 %i.ao, label %.critedge.i, label %.lr.ph40.i

.critedge.i:                                      ; preds = %.critedge6.i, %.critedge2.i, %bb.i, %bb.h, %.lr.ph40.i, %.critedge4.i, %.preheader.i
  %i.ap = phi i64 [ %i.r, %.preheader.i ], [ %i.v, %.critedge4.i ], [ %i.v, %.lr.ph40.i ], [ %i.am, %.critedge6.i ], [ %i.v, %bb.i ], [ %i.v, %.critedge2.i ], [ %i.v, %bb.h ] ; 2 uses
  %i.aq = phi ptr [ %i.s, %.preheader.i ], [ %i.w, %.critedge4.i ], [ %i.w, %.lr.ph40.i ], [ %i.al, %.critedge6.i ], [ %i.w, %bb.i ], [ %i.w, %.critedge2.i ], [ %i.w, %bb.h ] ; 2 uses
  %.sroa.022.135.i = phi ptr [ %.sroa.022.049.i, %.preheader.i ], [ %.sroa.022.139.i, %.critedge4.i ], [ %.sroa.022.139.i, %.lr.ph40.i ], [ %i.ak, %.critedge6.i ], [ %.sroa.022.139.i, %bb.i ], [ %.sroa.022.139.i, %.critedge2.i ], [ %.sroa.022.139.i, %bb.h ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap ; 2 uses
  %i.as = icmp eq ptr %.sroa.022.135.i, %i.ar
  br i1 %i.as, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge.i
  %i.at = load i64, ptr %i.n, align 8, !tbaa !21803
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.n, align 8, !tbaa !21803
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.022.135.i, i64 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge.i
  %.sroa.022.4.i = phi ptr [ %.sroa.022.135.i, %.critedge.i ], [ %i.av, %bb.j ] ; 2 uses
  %i.aw = icmp eq ptr %.sroa.022.4.i, %i.ar
  br i1 %i.aw, label %_ZN5Catch8TextFlow18AnsiSkippingString16preprocessStringEv.exit, label %.preheader.i, !llvm.loop !665

_ZN5Catch8TextFlow18AnsiSkippingString16preprocessStringEv.exit: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @_ZN5Catch8TextFlow18AnsiSkippingStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #41 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !9321
  %i.b = load ptr, ptr %1, align 8, !tbaa !9326   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9324 ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !9326
  %i.i = load i64, ptr %i.c, align 8, !tbaa !9325
  store i64 %i.i, ptr %i.a, align 8, !tbaa !9325
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !9324
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !9324
  store ptr %i.c, ptr %1, align 8, !tbaa !9326
  store i64 0, ptr %i.j, align 8, !tbaa !9324
  store i8 0, ptr %i.c, align 8, !tbaa !9325
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i64 0, ptr %i.m, align 8, !tbaa !21803
  %i.n = load i64, ptr %i.l, align 8, !tbaa !9324 ; 2 uses
  %i.o = icmp samesign eq i64 %i.n, 0
  br i1 %i.o, label %_ZN5Catch8TextFlow18AnsiSkippingString16preprocessStringEv.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !9326   ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.f, %.preheader.lr.ph.i
  %i.q = phi i64 [ %i.n, %.preheader.lr.ph.i ], [ %i.ao, %bb.f ] ; 3 uses
  %i.r = phi ptr [ %i.p, %.preheader.lr.ph.i ], [ %i.ap, %bb.f ] ; 3 uses
  %.sroa.022.049.i = phi ptr [ %i.p, %.preheader.lr.ph.i ], [ %.sroa.022.4.i, %bb.f ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q ; 2 uses
  %i.t = icmp eq ptr %.sroa.022.049.i, %i.s
  br i1 %i.t, label %.critedge.i, label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %.preheader.i, %.critedge6.i
  %i.u = phi i64 [ %i.al, %.critedge6.i ], [ %i.q, %.preheader.i ] ; 5 uses
  %i.v = phi ptr [ %i.ak, %.critedge6.i ], [ %i.r, %.preheader.i ] ; 5 uses
  %i.w = phi ptr [ %i.am, %.critedge6.i ], [ %i.s, %.preheader.i ] ; 3 uses
  %.sroa.022.139.i = phi ptr [ %i.aj, %.critedge6.i ], [ %.sroa.022.049.i, %.preheader.i ] ; 8 uses
  %i.x = load i8, ptr %.sroa.022.139.i, align 1, !tbaa !9325
  %i.y = icmp eq i8 %i.x, 27
  br i1 %i.y, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph40.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i, i64 1 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.w
  br i1 %i.aa, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !9325
  %i.ac = icmp ne i8 %i.ab, 91
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i, i64 2 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.w
  %or.cond51.i = select i1 %i.ac, i1 true, i1 %i.ae
  br i1 %or.cond51.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.critedge4.i
  %.sroa.09.036.i = phi ptr [ %i.ah, %.critedge4.i ], [ %i.ad, %bb.d ] ; 4 uses
  %i.af = load i8, ptr %.sroa.09.036.i, align 1, !tbaa !9325 ; 3 uses
  %2 = sext i8 %i.af to i32
  %isdigittmp.i = add nsw i32 %2, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  %i.ag = icmp eq i8 %i.af, 59
  %or.cond.i = or i1 %i.ag, %isdigit.i
  br i1 %or.cond.i, label %.critedge4.i, label %.critedge2.i

.critedge4.i:                                     ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i, i64 1 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.w
  br i1 %i.ai, label %.critedge.i, label %.lr.ph.i, !llvm.loop !664

.critedge2.i:                                     ; preds = %.lr.ph.i
  %.not.i = icmp eq i8 %i.af, 109
  br i1 %.not.i, label %.critedge6.i, label %.critedge.i

.critedge6.i:                                     ; preds = %.critedge2.i
  store i8 -1, ptr %.sroa.09.036.i, align 1, !tbaa !9325
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i, i64 1 ; 3 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !9326  ; 3 uses
  %i.al = load i64, ptr %i.l, align 8, !tbaa !9324 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al ; 2 uses
  %i.an = icmp eq ptr %i.aj, %i.am
  br i1 %i.an, label %.critedge.i, label %.lr.ph40.i

.critedge.i:                                      ; preds = %.critedge6.i, %.critedge2.i, %bb.d, %bb.c, %.lr.ph40.i, %.critedge4.i, %.preheader.i
  %i.ao = phi i64 [ %i.q, %.preheader.i ], [ %i.u, %.critedge4.i ], [ %i.u, %.lr.ph40.i ], [ %i.al, %.critedge6.i ], [ %i.u, %bb.d ], [ %i.u, %.critedge2.i ], [ %i.u, %bb.c ] ; 2 uses
  %i.ap = phi ptr [ %i.r, %.preheader.i ], [ %i.v, %.critedge4.i ], [ %i.v, %.lr.ph40.i ], [ %i.ak, %.critedge6.i ], [ %i.v, %bb.d ], [ %i.v, %.critedge2.i ], [ %i.v, %bb.c ] ; 2 uses
  %.sroa.022.135.i = phi ptr [ %.sroa.022.049.i, %.preheader.i ], [ %.sroa.022.139.i, %.critedge4.i ], [ %.sroa.022.139.i, %.lr.ph40.i ], [ %i.aj, %.critedge6.i ], [ %.sroa.022.139.i, %bb.d ], [ %.sroa.022.139.i, %.critedge2.i ], [ %.sroa.022.139.i, %bb.c ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao ; 2 uses
  %i.ar = icmp eq ptr %.sroa.022.135.i, %i.aq
  br i1 %i.ar, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.as = load i64, ptr %i.m, align 8, !tbaa !21803
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.m, align 8, !tbaa !21803
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.022.135.i, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge.i
  %.sroa.022.4.i = phi ptr [ %.sroa.022.135.i, %.critedge.i ], [ %i.au, %bb.e ] ; 2 uses
  %i.av = icmp eq ptr %.sroa.022.4.i, %i.aq
  br i1 %i.av, label %_ZN5Catch8TextFlow18AnsiSkippingString16preprocessStringEv.exit, label %.preheader.i, !llvm.loop !665

_ZN5Catch8TextFlow18AnsiSkippingString16preprocessStringEv.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, ptr } @_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #23 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9326   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9324 ; 2 uses
  %i.d = icmp samesign eq i64 %i.c, 0
  br i1 %i.d, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph24.i.preheader.i

.lr.ph24.i.preheader.i:                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 5 uses
  br label %.lr.ph24.i.i

.lr.ph24.i.i:                                     ; preds = %.critedge6.i.i, %.lr.ph24.i.preheader.i
  %.sroa.2.0 = phi ptr [ %i.a, %.lr.ph24.i.preheader.i ], [ %i.r, %.critedge6.i.i ] ; 8 uses
  %i.f = load i8, ptr %.sroa.2.0, align 1, !tbaa !9325
  %i.g = icmp eq i8 %i.f, 27
  br i1 %i.g, label %bb.b, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.b:                                             ; preds = %.lr.ph24.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.2.0, i64 1 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.h, align 1, !tbaa !9325
  %i.k = icmp ne i8 %i.j, 91
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.2.0, i64 2 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.e
  %or.cond29.i.i = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond29.i.i, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.critedge4.i.i
  %.sroa.08.022.i.i = phi ptr [ %i.p, %.critedge4.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %i.n = load i8, ptr %.sroa.08.022.i.i, align 1, !tbaa !9325 ; 3 uses
  %1 = sext i8 %i.n to i32
  %isdigittmp.i.i = add nsw i32 %1, -48
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  %i.o = icmp eq i8 %i.n, 59
  %or.cond.i.i = or i1 %i.o, %isdigit.i.i
  br i1 %or.cond.i.i, label %.critedge4.i.i, label %.critedge2.i.i

.critedge4.i.i:                                   ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i, i64 1 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i, !llvm.loop !667

.critedge2.i.i:                                   ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq i8 %i.n, -1
  br i1 %.not.i.i, label %.critedge6.i.i, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.critedge6.i.i:                                   ; preds = %.critedge2.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i, i64 1 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.e
  br i1 %i.s, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph24.i.i

_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph24.i.i, %bb.b, %bb.c, %.critedge2.i.i, %.critedge6.i.i, %.critedge4.i.i, %bb.a
  %.sroa.2.1 = phi ptr [ %i.a, %bb.a ], [ %.sroa.2.0, %.critedge4.i.i ], [ %.sroa.2.0, %.critedge2.i.i ], [ %i.e, %.critedge6.i.i ], [ %.sroa.2.0, %.lr.ph24.i.i ], [ %.sroa.2.0, %bb.c ], [ %.sroa.2.0, %bb.b ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.2.1, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { ptr, ptr } @_ZNK5Catch8TextFlow18AnsiSkippingString3endEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9326
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9324
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.d, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5Catch8TextFlow18AnsiSkippingString9substringB5cxx11ENS1_14const_iteratorES2_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr nofree readnone captures(none) %2, ptr %3, ptr nofree readnone captures(none) %4, ptr %5) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !9326   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9324 ; 2 uses
  %i.d = icmp samesign eq i64 %i.c, 0
  br i1 %i.d, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit, label %.lr.ph24.i.preheader.i.i

.lr.ph24.i.preheader.i.i:                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 5 uses
  br label %.lr.ph24.i.i.i

.lr.ph24.i.i.i:                                   ; preds = %.critedge6.i.i.i, %.lr.ph24.i.preheader.i.i
  %.sroa.2.0.i = phi ptr [ %i.a, %.lr.ph24.i.preheader.i.i ], [ %i.r, %.critedge6.i.i.i ] ; 8 uses
  %i.f = load i8, ptr %.sroa.2.0.i, align 1, !tbaa !9325
  %i.g = icmp eq i8 %i.f, 27
  br i1 %i.g, label %bb.b, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit

bb.b:                                             ; preds = %.lr.ph24.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 1 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.h, align 1, !tbaa !9325
  %i.k = icmp ne i8 %i.j, 91
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 2 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.e
  %or.cond29.i.i.i = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond29.i.i.i, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.critedge4.i.i.i
  %.sroa.08.022.i.i.i = phi ptr [ %i.p, %.critedge4.i.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %i.n = load i8, ptr %.sroa.08.022.i.i.i, align 1, !tbaa !9325 ; 3 uses
  %6 = sext i8 %i.n to i32
  %isdigittmp.i.i.i = add nsw i32 %6, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  %i.o = icmp eq i8 %i.n, 59
  %or.cond.i.i.i = or i1 %i.o, %isdigit.i.i.i
  br i1 %or.cond.i.i.i, label %.critedge4.i.i.i, label %.critedge2.i.i.i

.critedge4.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i, i64 1 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit, label %.lr.ph.i.i.i, !llvm.loop !667

.critedge2.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i8 %i.n, -1
  br i1 %.not.i.i.i, label %.critedge6.i.i.i, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit

.critedge6.i.i.i:                                 ; preds = %.critedge2.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i, i64 1 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.e
  br i1 %i.s, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit, label %.lr.ph24.i.i.i

_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit: ; preds = %.lr.ph24.i.i.i, %bb.b, %bb.c, %.critedge2.i.i.i, %.critedge6.i.i.i, %.critedge4.i.i.i, %bb.a
  %.sroa.2.1.i = phi ptr [ %i.a, %bb.a ], [ %.sroa.2.0.i, %.critedge4.i.i.i ], [ %.sroa.2.0.i, %bb.c ], [ %.sroa.2.0.i, %.lr.ph24.i.i.i ], [ %i.e, %.critedge6.i.i.i ], [ %.sroa.2.0.i, %.critedge2.i.i.i ], [ %.sroa.2.0.i, %bb.b ]
  %i.t = icmp eq ptr %3, %.sroa.2.1.i
  %spec.select = select i1 %i.t, ptr %i.a, ptr %3 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !9321
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.v, align 8, !tbaa !9324
  %i.w = ptrtoint ptr %5 to i64
  %i.x = ptrtoint ptr %spec.select to i64
  %i.y = sub i64 %i.w, %i.x                       ; 8 uses
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit
  %i.aa = icmp slt i64 %i.y, 0
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.502) #58
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = add nuw i64 %i.y, 1                     ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !9356

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #58
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.f
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #59 ; 2 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !9326
  store i64 %i.y, ptr %i.u, align 8, !tbaa !9325
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit
  %i.ae = phi ptr [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.u, %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit ] ; 3 uses
  switch i64 %i.y, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9__gnu_cxx17__normal_iteratorIPKcS4_EEvEET_SB_RKS3_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.af = load i8, ptr %spec.select, align 1, !tbaa !9325
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !9325
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9__gnu_cxx17__normal_iteratorIPKcS4_EEvEET_SB_RKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr align 1 %spec.select, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9__gnu_cxx17__normal_iteratorIPKcS4_EEvEET_SB_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9__gnu_cxx17__normal_iteratorIPKcS4_EEvEET_SB_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  store i64 %i.y, ptr %i.v, align 8, !tbaa !9324
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.y
  store i8 0, ptr %i.ag, align 1, !tbaa !9325
  %i.ah = load ptr, ptr %0, align 8, !tbaa !9326  ; 6 uses
  %i.ai = load i64, ptr %i.v, align 8, !tbaa !9324 ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  %i.ak = icmp samesign eq i64 %i.ai, 0
  br i1 %i.ak, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZNK5Catch8TextFlow18AnsiSkippingString9substringENSC_14const_iteratorESD_E3$_0ET0_T_SG_SF_T1_.exit", label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9__gnu_cxx17__normal_iteratorIPKcS4_EEvEET_SB_RKS3_.exit
  %min.iters.check = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check34 = icmp ult i64 %i.ai, 32
  br i1 %min.iters.check34, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.al = and i64 %i.ai, 24
  %n.vec = and i64 %i.ai, -32                     ; 4 uses
  %i.am = getelementptr i8, ptr %i.ah, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ah, i64 %index ; 3 uses
  %i.an = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !9325 ; 2 uses
  %wide.load35 = load <16 x i8>, ptr %i.an, align 1, !tbaa !9325 ; 2 uses
  %i.ao = icmp eq <16 x i8> %wide.load, splat (i8 -1)
  %i.ap = icmp eq <16 x i8> %wide.load35, splat (i8 -1)
  %i.aq = select <16 x i1> %i.ao, <16 x i8> splat (i8 109), <16 x i8> %wide.load
  %i.ar = select <16 x i1> %i.ap, <16 x i8> splat (i8 109), <16 x i8> %wide.load35
  store <16 x i8> %i.aq, ptr %next.gep, align 1, !tbaa !9325
  store <16 x i8> %i.ar, ptr %i.an, align 1, !tbaa !9325
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !71169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZNK5Catch8TextFlow18AnsiSkippingString9substringENSC_14const_iteratorESD_E3$_0ET0_T_SG_SF_T1_.exit", label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.al, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !23574

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec36 = and i64 %i.ai, -8                    ; 3 uses
  %i.at = getelementptr i8, ptr %i.ah, i64 %n.vec36
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.ah, i64 %index37 ; 2 uses
  %wide.load39 = load <8 x i8>, ptr %next.gep38, align 1, !tbaa !9325 ; 2 uses
  %i.au = icmp eq <8 x i8> %wide.load39, splat (i8 -1)
  %i.av = select <8 x i1> %i.au, <8 x i8> splat (i8 109), <8 x i8> %wide.load39
  store <8 x i8> %i.av, ptr %next.gep38, align 1, !tbaa !9325
  %index.next40 = add nuw i64 %index37, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next40, %n.vec36
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71170

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %i.ai, %n.vec36
  br i1 %cmp.n41, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZNK5Catch8TextFlow18AnsiSkippingString9substringENSC_14const_iteratorESD_E3$_0ET0_T_SG_SF_T1_.exit", label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.07.i.ph = phi ptr [ %i.ah, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.07.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %.sroa.0.07.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ax = load i8, ptr %.sroa.0.07.i, align 1, !tbaa !9325 ; 2 uses
  %i.ay = icmp eq i8 %i.ax, -1
  %i.az = select i1 %i.ay, i8 109, i8 %i.ax
  store i8 %i.az, ptr %.sroa.0.07.i, align 1, !tbaa !9325
  %i.ba = getelementptr i8, ptr %.sroa.0.07.i, i64 1 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.aj
  br i1 %i.bb, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZNK5Catch8TextFlow18AnsiSkippingString9substringENSC_14const_iteratorESD_E3$_0ET0_T_SG_SF_T1_.exit", label %.lr.ph.i, !llvm.loop !71171

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZNK5Catch8TextFlow18AnsiSkippingString9substringENSC_14const_iteratorESD_E3$_0ET0_T_SG_SF_T1_.exit": ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9__gnu_cxx17__normal_iteratorIPKcS4_EEvEET_SB_RKS3_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5Catch8TextFlow18AnsiSkippingString14const_iterator19tryParseAnsiEscapesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #42 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !23576  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9324 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !9326
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !9357 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.f
  br i1 %i.h, label %.critedge, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a, %.critedge6
  %i.i = phi ptr [ %i.w, %.critedge6 ], [ %i.g, %bb.a ] ; 3 uses
  %i.j = phi ptr [ %i.y, %.critedge6 ], [ %i.f, %bb.a ] ; 3 uses
  %i.k = load i8, ptr %i.i, align 1, !tbaa !9325
  %i.l = icmp eq i8 %i.k, 27
  br i1 %i.l, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph24
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.j
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i8, ptr %i.m, align 1, !tbaa !9325
  %i.p = icmp ne i8 %i.o, 91
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.j
  %or.cond29 = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond29, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.critedge4
  %.sroa.08.022 = phi ptr [ %i.u, %.critedge4 ], [ %i.q, %bb.c ] ; 3 uses
  %i.s = load i8, ptr %.sroa.08.022, align 1, !tbaa !9325 ; 3 uses
  %1 = sext i8 %i.s to i32
  %isdigittmp = add nsw i32 %1, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  %i.t = icmp eq i8 %i.s, 59
  %or.cond = or i1 %i.t, %isdigit
  br i1 %or.cond, label %.critedge4, label %.critedge2

.critedge4:                                       ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.08.022, i64 1 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.j
  br i1 %i.v, label %.critedge, label %.lr.ph, !llvm.loop !667

.critedge2:                                       ; preds = %.lr.ph
  %.not = icmp eq i8 %i.s, -1
  br i1 %.not, label %.critedge6, label %.critedge

.critedge6:                                       ; preds = %.critedge2
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.08.022, i64 1 ; 3 uses
  store ptr %i.w, ptr %i.a, align 8, !tbaa !9357
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !9326
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.d ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %.critedge, label %.lr.ph24

.critedge:                                        ; preds = %bb.c, %.critedge6, %.lr.ph24, %bb.b, %.critedge2, %.critedge4, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5Catch8TextFlow18AnsiSkippingString14const_iterator7advanceEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #42 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21816
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !21816
  %i.d = load ptr, ptr %0, align 8, !tbaa !23576  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9324 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !9326
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.f ; 2 uses
  %i.i = icmp eq ptr %i.c, %i.h
  br i1 %i.i, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iterator19tryParseAnsiEscapesEv.exit, label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %bb.a, %.critedge6.i
  %i.j = phi ptr [ %i.x, %.critedge6.i ], [ %i.c, %bb.a ] ; 3 uses
  %i.k = phi ptr [ %i.z, %.critedge6.i ], [ %i.h, %bb.a ] ; 3 uses
  %i.l = load i8, ptr %i.j, align 1, !tbaa !9325
  %i.m = icmp eq i8 %i.l, 27
  br i1 %i.m, label %bb.b, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iterator19tryParseAnsiEscapesEv.exit

bb.b:                                             ; preds = %.lr.ph24.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.k
  br i1 %i.o, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iterator19tryParseAnsiEscapesEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %i.n, align 1, !tbaa !9325
  %i.q = icmp ne i8 %i.p, 91
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 2 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.k
  %or.cond29.i = select i1 %i.q, i1 true, i1 %i.s
  br i1 %or.cond29.i, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iterator19tryParseAnsiEscapesEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.critedge4.i
  %.sroa.08.022.i = phi ptr [ %i.v, %.critedge4.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.t = load i8, ptr %.sroa.08.022.i, align 1, !tbaa !9325 ; 3 uses
  %1 = sext i8 %i.t to i32
  %isdigittmp.i = add nsw i32 %1, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  %i.u = icmp eq i8 %i.t, 59
  %or.cond.i = or i1 %i.u, %isdigit.i
  br i1 %or.cond.i, label %.critedge4.i, label %.critedge2.i

.critedge4.i:                                     ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i, i64 1 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.k
  br i1 %i.w, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iterator19tryParseAnsiEscapesEv.exit, label %.lr.ph.i, !llvm.loop !667

.critedge2.i:                                     ; preds = %.lr.ph.i
  %.not.i = icmp eq i8 %i.t, -1
  br i1 %.not.i, label %.critedge6.i, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iterator19tryParseAnsiEscapesEv.exit

.critedge6.i:                                     ; preds = %.critedge2.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i, i64 1 ; 3 uses
  store ptr %i.x, ptr %i.a, align 8, !tbaa !9357
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !9326
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.f ; 2 uses
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iterator19tryParseAnsiEscapesEv.exit, label %.lr.ph24.i

_ZN5Catch8TextFlow18AnsiSkippingString14const_iterator19tryParseAnsiEscapesEv.exit: ; preds = %.lr.ph24.i, %bb.b, %bb.c, %.critedge2.i, %.critedge6.i, %.critedge4.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5Catch8TextFlow18AnsiSkippingString14const_iterator9unadvanceEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #42 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21816
  %storemerge5 = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 3 uses
  store ptr %storemerge5, ptr %i.a, align 8, !tbaa !21816
  %i.c = load i8, ptr %storemerge5, align 1, !tbaa !9325
  %i.d = icmp eq i8 %i.c, -1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.loopexit:                                        ; preds = %.lr.ph
  %storemerge = getelementptr inbounds i8, ptr %i.g, i64 -2 ; 3 uses
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !21816
  %i.e = load i8, ptr %storemerge, align 1, !tbaa !9325
  %i.f = icmp eq i8 %i.e, -1
  br i1 %i.f, label %.lr.ph.backedge, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph.backedge
  %i.g = phi ptr [ %.be, %.lr.ph.backedge ], [ %storemerge5, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -1 ; 3 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !21816
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9325
  %.not = icmp eq i8 %i.i, 27
  br i1 %.not, label %.loopexit, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %.lr.ph, %.loopexit
  %.be = phi ptr [ %i.h, %.lr.ph ], [ %storemerge, %.loopexit ]
  br label %.lr.ph, !llvm.loop !744

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5Catch8TextFlow6Column14const_iterator10calcLengthEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) initializes((56, 57)) %0) local_unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !23578
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !21814
  %i.d = load ptr, ptr %0, align 8, !tbaa !23579, !nonnull !4070, !align !19314 ; 8 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9326
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9324 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9357 ; 3 uses
  %i.k = icmp eq ptr %i.j, %i.h
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  br label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21816 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9325
  %i.p = icmp eq i8 %i.o, 10
  br i1 %i.p, label %bb.d, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 4 uses
  store ptr %i.q, ptr %i.i, align 8, !tbaa !21816
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !23576 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !9324 ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !9326
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t ; 2 uses
  %i.w = icmp eq ptr %i.q, %i.v
  br i1 %i.w, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit, label %.lr.ph24.i.i.i

.lr.ph24.i.i.i:                                   ; preds = %bb.d, %.critedge6.i.i.i
  %i.x = phi ptr [ %i.al, %.critedge6.i.i.i ], [ %i.q, %bb.d ] ; 8 uses
  %i.y = phi ptr [ %i.an, %.critedge6.i.i.i ], [ %i.v, %bb.d ] ; 3 uses
  %i.z = load i8, ptr %i.x, align 1, !tbaa !9325
  %i.aa = icmp eq i8 %i.z, 27
  br i1 %i.aa, label %bb.e, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit

bb.e:                                             ; preds = %.lr.ph24.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.y
  br i1 %i.ac, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !9325
  %i.ae = icmp ne i8 %i.ad, 91
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.y
  %or.cond29.i.i.i = select i1 %i.ae, i1 true, i1 %i.ag
  br i1 %or.cond29.i.i.i, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.critedge4.i.i.i
  %.sroa.08.022.i.i.i = phi ptr [ %i.aj, %.critedge4.i.i.i ], [ %i.af, %bb.f ] ; 3 uses
  %i.ah = load i8, ptr %.sroa.08.022.i.i.i, align 1, !tbaa !9325 ; 3 uses
  %1 = sext i8 %i.ah to i32
  %isdigittmp.i.i.i = add nsw i32 %1, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  %i.ai = icmp eq i8 %i.ah, 59
  %or.cond.i.i.i = or i1 %i.ai, %isdigit.i.i.i
  br i1 %or.cond.i.i.i, label %.critedge4.i.i.i, label %.critedge2.i.i.i

.critedge4.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i, i64 1 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.y
  br i1 %i.ak, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit, label %.lr.ph.i.i.i, !llvm.loop !667

.critedge2.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i8 %i.ah, -1
  br i1 %.not.i.i.i, label %.critedge6.i.i.i, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit

.critedge6.i.i.i:                                 ; preds = %.critedge2.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i, i64 1 ; 4 uses
  store ptr %i.al, ptr %i.i, align 8, !tbaa !9357
  %i.am = load ptr, ptr %i.r, align 8, !tbaa !9326
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.t ; 2 uses
  %i.ao = icmp eq ptr %i.al, %i.an
  br i1 %i.ao, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit, label %.lr.ph24.i.i.i

_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit: ; preds = %.critedge6.i.i.i, %.critedge2.i.i.i, %bb.f, %bb.e, %.lr.ph24.i.i.i, %.critedge4.i.i.i, %bb.d, %bb.c
  %i.ap = phi ptr [ %i.x, %.critedge4.i.i.i ], [ %i.j, %bb.c ], [ %i.q, %bb.d ], [ %i.x, %.critedge2.i.i.i ], [ %i.x, %bb.f ], [ %i.x, %bb.e ], [ %i.x, %.lr.ph24.i.i.i ], [ %i.al, %.critedge6.i.i.i ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !19287 ; 2 uses
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !9326 ; 4 uses
  %i.at = icmp samesign eq i64 %i.g, 0
  br i1 %i.at, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit.i, label %.lr.ph24.i.preheader.i.i.i

.lr.ph24.i.preheader.i.i.i:                       ; preds = %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.g ; 5 uses
  br label %.lr.ph24.i.i.i.i

.lr.ph24.i.i.i.i:                                 ; preds = %.critedge6.i.i.i.i, %.lr.ph24.i.preheader.i.i.i
  %.sroa.2.0.i.i = phi ptr [ %i.as, %.lr.ph24.i.preheader.i.i.i ], [ %i.bh, %.critedge6.i.i.i.i ] ; 8 uses
  %i.av = load i8, ptr %.sroa.2.0.i.i, align 1, !tbaa !9325
  %i.aw = icmp eq i8 %i.av, 27
  br i1 %i.aw, label %bb.g, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit.i

bb.g:                                             ; preds = %.lr.ph24.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i.i, i64 1 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.au
  br i1 %i.ay, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !9325
  %i.ba = icmp ne i8 %i.az, 91
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i.i, i64 2 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.au
  %or.cond29.i.i.i.i = select i1 %i.ba, i1 true, i1 %i.bc
  br i1 %or.cond29.i.i.i.i, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.critedge4.i.i.i.i
  %.sroa.08.022.i.i.i.i = phi ptr [ %i.bf, %.critedge4.i.i.i.i ], [ %i.bb, %bb.h ] ; 3 uses
  %i.bd = load i8, ptr %.sroa.08.022.i.i.i.i, align 1, !tbaa !9325 ; 3 uses
  %2 = sext i8 %i.bd to i32
  %isdigittmp.i.i.i.i = add nsw i32 %2, -48
  %isdigit.i.i.i.i = icmp ult i32 %isdigittmp.i.i.i.i, 10
  %i.be = icmp eq i8 %i.bd, 59
  %or.cond.i.i.i.i = or i1 %i.be, %isdigit.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %.critedge4.i.i.i.i, label %.critedge2.i.i.i.i

.critedge4.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i.i, i64 1 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.au
  br i1 %i.bg, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !667

.critedge2.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq i8 %i.bd, -1
  br i1 %.not.i.i.i.i, label %.critedge6.i.i.i.i, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit.i

.critedge6.i.i.i.i:                               ; preds = %.critedge2.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i.i, i64 1 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.au
  br i1 %i.bi, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit.i, label %.lr.ph24.i.i.i.i

_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit.i: ; preds = %.critedge6.i.i.i.i, %.critedge2.i.i.i.i, %bb.h, %bb.g, %.lr.ph24.i.i.i.i, %.critedge4.i.i.i.i, %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit
  %.sroa.2.1.i.i = phi ptr [ %i.as, %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit ], [ %.sroa.2.0.i.i, %.critedge4.i.i.i.i ], [ %.sroa.2.0.i.i, %.critedge2.i.i.i.i ], [ %i.au, %.critedge6.i.i.i.i ], [ %.sroa.2.0.i.i, %.lr.ph24.i.i.i.i ], [ %.sroa.2.0.i.i, %bb.h ], [ %.sroa.2.0.i.i, %bb.g ]
  %i.bj = icmp eq ptr %i.n, %.sroa.2.1.i.i
  br i1 %i.bj, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !19288 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, -1
  br i1 %i.bm, label %.thread.i, label %_ZNK5Catch8TextFlow6Column14const_iterator10indentSizeEv.exit

.thread.i:                                        ; preds = %bb.i, %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !19289
  br label %_ZNK5Catch8TextFlow6Column14const_iterator10indentSizeEv.exit

_ZNK5Catch8TextFlow6Column14const_iterator10indentSizeEv.exit: ; preds = %bb.i, %.thread.i
  %i.bp = phi i64 [ %i.bo, %.thread.i ], [ %i.bl, %bb.i ] ; 2 uses
  %i.bq = sub i64 %i.ar, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.g
  %i.bs = icmp ne ptr %i.ap, %i.br
  %i.bt = icmp ne i64 %i.ar, %i.bp                ; 2 uses
  %or.cond90 = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond90, label %.lr.ph.preheader, label %.critedge.thread178

.lr.ph.preheader:                                 ; preds = %_ZNK5Catch8TextFlow6Column14const_iterator10indentSizeEv.exit
  %i.bu = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit33
  %i.bw = phi ptr [ %i.cv, %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit33 ], [ %i.ap, %.lr.ph.preheader ] ; 2 uses
  %.091 = phi i64 [ %i.cw, %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit33 ], [ 0, %.lr.ph.preheader ]
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !9325
  %.not = icmp eq i8 %i.bx, 10
  br i1 %.not, label %.critedge.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 1 ; 4 uses
  store ptr %i.by, ptr %i.i, align 8, !tbaa !21816
  %i.bz = load i64, ptr %i.bv, align 8, !tbaa !9324 ; 2 uses
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !9326
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz ; 2 uses
  %i.cc = icmp eq ptr %i.by, %i.cb
  br i1 %i.cc, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit33, label %.lr.ph24.i.i.i22

.lr.ph24.i.i.i22:                                 ; preds = %bb.j, %.critedge6.i.i.i31
  %i.cd = phi ptr [ %i.cr, %.critedge6.i.i.i31 ], [ %i.by, %bb.j ] ; 8 uses
  %i.ce = phi ptr [ %i.ct, %.critedge6.i.i.i31 ], [ %i.cb, %bb.j ] ; 3 uses
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !9325
  %i.cg = icmp eq i8 %i.cf, 27
  br i1 %i.cg, label %bb.k, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit33

bb.k:                                             ; preds = %.lr.ph24.i.i.i22
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 1 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.ce
  br i1 %i.ci, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit33, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cj = load i8, ptr %i.ch, align 1, !tbaa !9325
  %i.ck = icmp ne i8 %i.cj, 91
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 2 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ce
  %or.cond29.i.i.i23 = select i1 %i.ck, i1 true, i1 %i.cm
  br i1 %or.cond29.i.i.i23, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit33, label %.lr.ph.i.i.i24

.lr.ph.i.i.i24:                                   ; preds = %bb.l, %.critedge4.i.i.i32
  %.sroa.08.022.i.i.i25 = phi ptr [ %i.cp, %.critedge4.i.i.i32 ], [ %i.cl, %bb.l ] ; 3 uses
  %i.cn = load i8, ptr %.sroa.08.022.i.i.i25, align 1, !tbaa !9325 ; 3 uses
  %3 = sext i8 %i.cn to i32
  %isdigittmp.i.i.i26 = add nsw i32 %3, -48
  %isdigit.i.i.i27 = icmp ult i32 %isdigittmp.i.i.i26, 10
  %i.co = icmp eq i8 %i.cn, 59
  %or.cond.i.i.i28 = or i1 %i.co, %isdigit.i.i.i27
  br i1 %or.cond.i.i.i28, label %.critedge4.i.i.i32, label %.critedge2.i.i.i29

.critedge4.i.i.i32:                               ; preds = %.lr.ph.i.i.i24
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i25, i64 1 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.ce
  br i1 %i.cq, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit33, label %.lr.ph.i.i.i24, !llvm.loop !667

.critedge2.i.i.i29:                               ; preds = %.lr.ph.i.i.i24
  %.not.i.i.i30 = icmp eq i8 %i.cn, -1
  br i1 %.not.i.i.i30, label %.critedge6.i.i.i31, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit33

.critedge6.i.i.i31:                               ; preds = %.critedge2.i.i.i29
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i25, i64 1 ; 4 uses
  store ptr %i.cr, ptr %i.i, align 8, !tbaa !9357
  %i.cs = load ptr, ptr %i.bu, align 8, !tbaa !9326
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.bz ; 2 uses
  %i.cu = icmp eq ptr %i.cr, %i.ct
  br i1 %i.cu, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit33, label %.lr.ph24.i.i.i22

_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit33: ; preds = %.lr.ph24.i.i.i22, %bb.k, %bb.l, %.critedge2.i.i.i29, %.critedge6.i.i.i31, %.critedge4.i.i.i32, %bb.j
  %i.cv = phi ptr [ %i.cd, %.critedge4.i.i.i32 ], [ %i.by, %bb.j ], [ %i.cd, %bb.k ], [ %i.cd, %bb.l ], [ %i.cd, %.critedge2.i.i.i29 ], [ %i.cr, %.critedge6.i.i.i31 ], [ %i.cd, %.lr.ph24.i.i.i22 ] ; 4 uses
  %i.cw = add nuw i64 %.091, 1                    ; 3 uses
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !9326
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.g
  %i.cz = icmp ne ptr %i.cv, %i.cy
  %i.da = icmp ult i64 %i.cw, %i.bq               ; 2 uses
  %or.cond = select i1 %i.cz, i1 %i.da, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !71172

.critedge:                                        ; preds = %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit33
  br i1 %i.da, label %.critedge.thread, label %.lr.ph100

.critedge.thread178:                              ; preds = %_ZNK5Catch8TextFlow6Column14const_iterator10indentSizeEv.exit
  br i1 %i.bt, label %.critedge.thread, label %.thread

.thread:                                          ; preds = %.critedge.thread178
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !21814
  br label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.thread65

.critedge.thread:                                 ; preds = %.lr.ph, %.critedge.thread178, %.critedge
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !21814
  br label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit

.lr.ph100:                                        ; preds = %.critedge
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !21814
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.de = load ptr, ptr %i.d, align 8, !tbaa !9326
  %i.df = load i64, ptr %i.f, align 8, !tbaa !9324
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.df
  %.sroa.2.0..sroa_idx.promoted = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !9357
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph100, %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratormmEv.exit
  %.sroa.2.0.copyload107.a = phi ptr [ %.sroa.2.0..sroa_idx.promoted, %.lr.ph100 ], [ %.sroa.2.0.copyload108, %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratormmEv.exit ] ; 4 uses
  %.199 = phi i64 [ %i.cw, %.lr.ph100 ], [ %i.ed, %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratormmEv.exit ] ; 2 uses
  %i.dh = icmp eq ptr %.sroa.2.0.copyload107.a, %i.dg
  br i1 %i.dh, label %.lr.ph111, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.di = load i8, ptr %.sroa.2.0.copyload107.a, align 1, !tbaa !9325 ; 2 uses
  switch i8 %i.di, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.i [
    i8 32, label %bb.o
    i8 10, label %bb.o
    i8 9, label %bb.o
    i8 13, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n
  %storemerge5.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.2.0.copyload107.a, i64 -1 ; 2 uses
  %i.dj = load i8, ptr %storemerge5.i.i.i.i, align 1, !tbaa !9325 ; 2 uses
  %i.dk = icmp eq i8 %i.dj, -1
  br i1 %i.dk, label %.lr.ph.i.i.i.i34, label %_ZNK5Catch8TextFlow18AnsiSkippingString14const_iterator9oneBeforeEv.exit.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i34
  %storemerge.i.i.i.i = getelementptr inbounds i8, ptr %i.dn, i64 -2 ; 2 uses
  %i.dl = load i8, ptr %storemerge.i.i.i.i, align 1, !tbaa !9325 ; 2 uses
  %i.dm = icmp eq i8 %i.dl, -1
  br i1 %i.dm, label %.lr.ph.i.i.i.i34.backedge, label %_ZNK5Catch8TextFlow18AnsiSkippingString14const_iterator9oneBeforeEv.exit.i

.lr.ph.i.i.i.i34:                                 ; preds = %bb.o, %.lr.ph.i.i.i.i34.backedge
  %i.dn = phi ptr [ %.be267, %.lr.ph.i.i.i.i34.backedge ], [ %storemerge5.i.i.i.i, %bb.o ] ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -1 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !9325
  %.not.i.i.i.i35 = icmp eq i8 %i.dp, 27
  br i1 %.not.i.i.i.i35, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i34.backedge

.lr.ph.i.i.i.i34.backedge:                        ; preds = %.lr.ph.i.i.i.i34, %.loopexit.i.i.i.i
  %.be267 = phi ptr [ %i.do, %.lr.ph.i.i.i.i34 ], [ %storemerge.i.i.i.i, %.loopexit.i.i.i.i ]
  br label %.lr.ph.i.i.i.i34, !llvm.loop !744

_ZNK5Catch8TextFlow18AnsiSkippingString14const_iterator9oneBeforeEv.exit.i: ; preds = %.loopexit.i.i.i.i, %bb.o
  %i.dq = phi i8 [ %i.dj, %bb.o ], [ %i.dl, %.loopexit.i.i.i.i ]
  switch i8 %i.dq, label %.lr.ph111 [
    i8 32, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.i
    i8 10, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.i
    i8 9, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.i
    i8 13, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.i
  ]

_ZN12_GLOBAL__N_112isWhitespaceEc.exit.i:         ; preds = %_ZNK5Catch8TextFlow18AnsiSkippingString14const_iterator9oneBeforeEv.exit.i, %_ZNK5Catch8TextFlow18AnsiSkippingString14const_iterator9oneBeforeEv.exit.i, %_ZNK5Catch8TextFlow18AnsiSkippingString14const_iterator9oneBeforeEv.exit.i, %_ZNK5Catch8TextFlow18AnsiSkippingString14const_iterator9oneBeforeEv.exit.i, %bb.n
  %i.dr = sext i8 %i.di to i32
  %i.ds = tail call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZZN12_GLOBAL__N_117isBreakableBeforeEcE5chars, i32 noundef %i.dr, i64 noundef 5) #62
  %.not.i = icmp eq ptr %i.ds, null
  br i1 %.not.i, label %bb.p, label %.lr.ph111

bb.p:                                             ; preds = %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.i
  %storemerge5.i.i.i7.i = getelementptr inbounds i8, ptr %.sroa.2.0.copyload107.a, i64 -1 ; 6 uses
  %i.dt = load i8, ptr %storemerge5.i.i.i7.i, align 1, !tbaa !9325 ; 2 uses
  %i.du = icmp eq i8 %i.dt, -1
  br i1 %i.du, label %.lr.ph.i.i.i13.i, label %_ZN5Catch8TextFlowL10isBoundaryERKNS0_18AnsiSkippingStringENS1_14const_iteratorE.exit

.loopexit.i.i.i15.i:                              ; preds = %.lr.ph.i.i.i13.i
  %storemerge.i.i.i16.i = getelementptr inbounds i8, ptr %i.dx, i64 -2 ; 2 uses
  %i.dv = load i8, ptr %storemerge.i.i.i16.i, align 1, !tbaa !9325 ; 2 uses
  %i.dw = icmp eq i8 %i.dv, -1
  br i1 %i.dw, label %.lr.ph.i.i.i13.i.backedge, label %_ZN5Catch8TextFlowL10isBoundaryERKNS0_18AnsiSkippingStringENS1_14const_iteratorE.exit

.lr.ph.i.i.i13.i:                                 ; preds = %bb.p, %.lr.ph.i.i.i13.i.backedge
  %i.dx = phi ptr [ %.be266, %.lr.ph.i.i.i13.i.backedge ], [ %storemerge5.i.i.i7.i, %bb.p ] ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -1 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !9325
  %.not.i.i.i14.i = icmp eq i8 %i.dz, 27
  br i1 %.not.i.i.i14.i, label %.loopexit.i.i.i15.i, label %.lr.ph.i.i.i13.i.backedge

.lr.ph.i.i.i13.i.backedge:                        ; preds = %.lr.ph.i.i.i13.i, %.loopexit.i.i.i15.i
  %.be266 = phi ptr [ %i.dy, %.lr.ph.i.i.i13.i ], [ %storemerge.i.i.i16.i, %.loopexit.i.i.i15.i ]
  br label %.lr.ph.i.i.i13.i, !llvm.loop !744

_ZN5Catch8TextFlowL10isBoundaryERKNS0_18AnsiSkippingStringENS1_14const_iteratorE.exit: ; preds = %.loopexit.i.i.i15.i, %bb.p
  %i.ea = phi i8 [ %i.dt, %bb.p ], [ %i.dv, %.loopexit.i.i.i15.i ]
  %i.eb = sext i8 %i.ea to i32
  %i.ec = tail call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZZN12_GLOBAL__N_116isBreakableAfterEcE5chars, i32 noundef %i.eb, i64 noundef 15) #62
  %.not66 = icmp eq ptr %i.ec, null
  br i1 %.not66, label %bb.q, label %.lr.ph111

bb.q:                                             ; preds = %_ZN5Catch8TextFlowL10isBoundaryERKNS0_18AnsiSkippingStringENS1_14const_iteratorE.exit
  %i.ed = add i64 %.199, -1                       ; 2 uses
  store ptr %storemerge5.i.i.i7.i, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !21816
  %i.ee = load i8, ptr %storemerge5.i.i.i7.i, align 1, !tbaa !9325
  %i.ef = icmp eq i8 %i.ee, -1
  br i1 %i.ef, label %.lr.ph.i.i, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratormmEv.exit

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i
  %storemerge.i.i = getelementptr inbounds i8, ptr %i.ei, i64 -2 ; 4 uses
  store ptr %storemerge.i.i, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !21816
  %i.eg = load i8, ptr %storemerge.i.i, align 1, !tbaa !9325
  %i.eh = icmp eq i8 %i.eg, -1
  br i1 %i.eh, label %.lr.ph.i.i.backedge, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratormmEv.exit

.lr.ph.i.i:                                       ; preds = %bb.q, %.lr.ph.i.i.backedge
  %i.ei = phi ptr [ %.be265, %.lr.ph.i.i.backedge ], [ %storemerge5.i.i.i7.i, %bb.q ] ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -1 ; 3 uses
  store ptr %i.ej, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !21816
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !9325
  %.not.i.i = icmp eq i8 %i.ek, 27
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.backedge

.lr.ph.i.i.backedge:                              ; preds = %.lr.ph.i.i, %.loopexit.i.i
  %.be265 = phi ptr [ %i.ej, %.lr.ph.i.i ], [ %storemerge.i.i, %.loopexit.i.i ]
  br label %.lr.ph.i.i, !llvm.loop !744

_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratormmEv.exit: ; preds = %.loopexit.i.i, %bb.q
  %.sroa.2.0.copyload108 = phi ptr [ %storemerge5.i.i.i7.i, %bb.q ], [ %storemerge.i.i, %.loopexit.i.i ]
  %.not18 = icmp eq i64 %i.ed, 0
  br i1 %.not18, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.thread65, label %bb.m, !llvm.loop !71173

.lr.ph111:                                        ; preds = %bb.m, %_ZNK5Catch8TextFlow18AnsiSkippingString14const_iterator9oneBeforeEv.exit.i, %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.i, %_ZN5Catch8TextFlowL10isBoundaryERKNS0_18AnsiSkippingStringENS1_14const_iteratorE.exit
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %.sroa.4.0..sroa_idx.i.promoted = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !9357
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph111, %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratormmEv.exit47
  %.sroa.4.0.copyload.i112.a = phi ptr [ %.sroa.4.0..sroa_idx.i.promoted, %.lr.ph111 ], [ %.sroa.4.0.copyload.i113, %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratormmEv.exit47 ]
  %.2110 = phi i64 [ %.199, %.lr.ph111 ], [ %i.et, %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratormmEv.exit47 ]
  %storemerge5.i.i.i = getelementptr inbounds i8, ptr %.sroa.4.0.copyload.i112.a, i64 -1 ; 6 uses
  %i.el = load i8, ptr %storemerge5.i.i.i, align 1, !tbaa !9325 ; 2 uses
  %i.em = icmp eq i8 %i.el, -1
  br i1 %i.em, label %.lr.ph.i.i.i38, label %_ZNK5Catch8TextFlow18AnsiSkippingString14const_iterator9oneBeforeEv.exit

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i38
  %storemerge.i.i.i = getelementptr inbounds i8, ptr %i.ep, i64 -2 ; 2 uses
  %i.en = load i8, ptr %storemerge.i.i.i, align 1, !tbaa !9325 ; 2 uses
  %i.eo = icmp eq i8 %i.en, -1
  br i1 %i.eo, label %.lr.ph.i.i.i38.backedge, label %_ZNK5Catch8TextFlow18AnsiSkippingString14const_iterator9oneBeforeEv.exit

.lr.ph.i.i.i38:                                   ; preds = %bb.r, %.lr.ph.i.i.i38.backedge
  %i.ep = phi ptr [ %.be264, %.lr.ph.i.i.i38.backedge ], [ %storemerge5.i.i.i, %bb.r ] ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -1 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !9325
  %.not.i.i.i39 = icmp eq i8 %i.er, 27
  br i1 %.not.i.i.i39, label %.loopexit.i.i.i, label %.lr.ph.i.i.i38.backedge

.lr.ph.i.i.i38.backedge:                          ; preds = %.lr.ph.i.i.i38, %.loopexit.i.i.i
  %.be264 = phi ptr [ %i.eq, %.lr.ph.i.i.i38 ], [ %storemerge.i.i.i, %.loopexit.i.i.i ]
  br label %.lr.ph.i.i.i38, !llvm.loop !744

_ZNK5Catch8TextFlow18AnsiSkippingString14const_iterator9oneBeforeEv.exit: ; preds = %.loopexit.i.i.i, %bb.r
  %i.es = phi i8 [ %i.el, %bb.r ], [ %i.en, %.loopexit.i.i.i ]
  switch i8 %i.es, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit [
    i8 32, label %bb.s
    i8 10, label %bb.s
    i8 9, label %bb.s
    i8 13, label %bb.s
  ]

bb.s:                                             ; preds = %_ZNK5Catch8TextFlow18AnsiSkippingString14const_iterator9oneBeforeEv.exit, %_ZNK5Catch8TextFlow18AnsiSkippingString14const_iterator9oneBeforeEv.exit, %_ZNK5Catch8TextFlow18AnsiSkippingString14const_iterator9oneBeforeEv.exit, %_ZNK5Catch8TextFlow18AnsiSkippingString14const_iterator9oneBeforeEv.exit
  %i.et = add i64 %.2110, -1                      ; 2 uses
  store ptr %storemerge5.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !21816
  %i.eu = load i8, ptr %storemerge5.i.i.i, align 1, !tbaa !9325
  %i.ev = icmp eq i8 %i.eu, -1
  br i1 %i.ev, label %.lr.ph.i.i43, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratormmEv.exit47

.loopexit.i.i45:                                  ; preds = %.lr.ph.i.i43
  %storemerge.i.i46 = getelementptr inbounds i8, ptr %i.ey, i64 -2 ; 4 uses
  store ptr %storemerge.i.i46, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !21816
  %i.ew = load i8, ptr %storemerge.i.i46, align 1, !tbaa !9325
  %i.ex = icmp eq i8 %i.ew, -1
  br i1 %i.ex, label %.lr.ph.i.i43.backedge, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratormmEv.exit47

.lr.ph.i.i43:                                     ; preds = %bb.s, %.lr.ph.i.i43.backedge
  %i.ey = phi ptr [ %.be263, %.lr.ph.i.i43.backedge ], [ %storemerge5.i.i.i, %bb.s ] ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -1 ; 3 uses
  store ptr %i.ez, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !21816
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !9325
  %.not.i.i44 = icmp eq i8 %i.fa, 27
  br i1 %.not.i.i44, label %.loopexit.i.i45, label %.lr.ph.i.i43.backedge

.lr.ph.i.i43.backedge:                            ; preds = %.lr.ph.i.i43, %.loopexit.i.i45
  %.be263 = phi ptr [ %i.ez, %.lr.ph.i.i43 ], [ %storemerge.i.i46, %.loopexit.i.i45 ]
  br label %.lr.ph.i.i43, !llvm.loop !744

_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratormmEv.exit47: ; preds = %.loopexit.i.i45, %bb.s
  %.sroa.4.0.copyload.i113 = phi ptr [ %storemerge5.i.i.i, %bb.s ], [ %storemerge.i.i46, %.loopexit.i.i45 ]
  %.not19 = icmp eq i64 %i.et, 0
  br i1 %.not19, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.thread65, label %bb.r, !llvm.loop !71174

_ZN12_GLOBAL__N_112isWhitespaceEc.exit.thread65:  ; preds = %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratormmEv.exit, %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratormmEv.exit47, %.thread
  %.lcssa82183187191 = phi ptr [ %i.ap, %.thread ], [ %i.cv, %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratormmEv.exit47 ], [ %i.cv, %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratormmEv.exit ]
  %i.fb = phi ptr [ %i.db, %.thread ], [ %i.dd, %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratormmEv.exit47 ], [ %i.dd, %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratormmEv.exit ]
  store i8 1, ptr %i.a, align 8, !tbaa !23578
  %.sroa.0.0.copyload1.i48 = load ptr, ptr %i.c, align 8, !tbaa !9382
  %storemerge5.i.i.i51 = getelementptr inbounds i8, ptr %.lcssa82183187191, i64 -1 ; 3 uses
  %i.fc = load i8, ptr %storemerge5.i.i.i51, align 1, !tbaa !9325
  %i.fd = icmp eq i8 %i.fc, -1
  br i1 %i.fd, label %.lr.ph.i.i.i57, label %_ZNK5Catch8TextFlow18AnsiSkippingString14const_iterator9oneBeforeEv.exit61

.loopexit.i.i.i59:                                ; preds = %.lr.ph.i.i.i57
  %storemerge.i.i.i60 = getelementptr inbounds i8, ptr %i.fg, i64 -2 ; 3 uses
  %i.fe = load i8, ptr %storemerge.i.i.i60, align 1, !tbaa !9325
  %i.ff = icmp eq i8 %i.fe, -1
  br i1 %i.ff, label %.lr.ph.i.i.i57.backedge, label %_ZNK5Catch8TextFlow18AnsiSkippingString14const_iterator9oneBeforeEv.exit61

.lr.ph.i.i.i57:                                   ; preds = %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.thread65, %.lr.ph.i.i.i57.backedge
  %i.fg = phi ptr [ %.be, %.lr.ph.i.i.i57.backedge ], [ %storemerge5.i.i.i51, %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.thread65 ] ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -1 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !9325
  %.not.i.i.i58 = icmp eq i8 %i.fi, 27
  br i1 %.not.i.i.i58, label %.loopexit.i.i.i59, label %.lr.ph.i.i.i57.backedge

.lr.ph.i.i.i57.backedge:                          ; preds = %.lr.ph.i.i.i57, %.loopexit.i.i.i59
  %.be = phi ptr [ %i.fh, %.lr.ph.i.i.i57 ], [ %storemerge.i.i.i60, %.loopexit.i.i.i59 ]
  br label %.lr.ph.i.i.i57, !llvm.loop !744

_ZNK5Catch8TextFlow18AnsiSkippingString14const_iterator9oneBeforeEv.exit61: ; preds = %.loopexit.i.i.i59, %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.thread65
  %.sroa.4.0.i52 = phi ptr [ %storemerge5.i.i.i51, %_ZN12_GLOBAL__N_112isWhitespaceEc.exit.thread65 ], [ %storemerge.i.i.i60, %.loopexit.i.i.i59 ]
  store ptr %.sroa.0.0.copyload1.i48, ptr %i.fb, align 8, !tbaa !9382
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.4.0.i52, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !9357
  br label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit

_ZN12_GLOBAL__N_112isWhitespaceEc.exit:           ; preds = %_ZNK5Catch8TextFlow18AnsiSkippingString14const_iterator9oneBeforeEv.exit, %.critedge.thread, %_ZNK5Catch8TextFlow18AnsiSkippingString14const_iterator9oneBeforeEv.exit61, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i64 @_ZNK5Catch8TextFlow6Column14const_iterator10indentSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(57) %0) local_unnamed_addr #23 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23579, !nonnull !4070, !align !19314 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9326 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9324 ; 2 uses
  %i.e = icmp samesign eq i64 %i.d, 0
  br i1 %i.e, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit, label %.lr.ph24.i.preheader.i.i

.lr.ph24.i.preheader.i.i:                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 5 uses
  br label %.lr.ph24.i.i.i

.lr.ph24.i.i.i:                                   ; preds = %.critedge6.i.i.i, %.lr.ph24.i.preheader.i.i
  %.sroa.2.0.i = phi ptr [ %i.b, %.lr.ph24.i.preheader.i.i ], [ %i.s, %.critedge6.i.i.i ] ; 8 uses
  %i.g = load i8, ptr %.sroa.2.0.i, align 1, !tbaa !9325
  %i.h = icmp eq i8 %i.g, 27
  br i1 %i.h, label %bb.b, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit

bb.b:                                             ; preds = %.lr.ph24.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 1 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.f
  br i1 %i.j, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.i, align 1, !tbaa !9325
  %i.l = icmp ne i8 %i.k, 91
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 2 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.f
  %or.cond29.i.i.i = select i1 %i.l, i1 true, i1 %i.n
  br i1 %or.cond29.i.i.i, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.critedge4.i.i.i
  %.sroa.08.022.i.i.i = phi ptr [ %i.q, %.critedge4.i.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %i.o = load i8, ptr %.sroa.08.022.i.i.i, align 1, !tbaa !9325 ; 3 uses
  %1 = sext i8 %i.o to i32
  %isdigittmp.i.i.i = add nsw i32 %1, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  %i.p = icmp eq i8 %i.o, 59
  %or.cond.i.i.i = or i1 %i.p, %isdigit.i.i.i
  br i1 %or.cond.i.i.i, label %.critedge4.i.i.i, label %.critedge2.i.i.i

.critedge4.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i, i64 1 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.f
  br i1 %i.r, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit, label %.lr.ph.i.i.i, !llvm.loop !667

.critedge2.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i8 %i.o, -1
  br i1 %.not.i.i.i, label %.critedge6.i.i.i, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit

.critedge6.i.i.i:                                 ; preds = %.critedge2.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i, i64 1 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.f
  br i1 %i.t, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit, label %.lr.ph24.i.i.i

_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit: ; preds = %.lr.ph24.i.i.i, %bb.b, %bb.c, %.critedge2.i.i.i, %.critedge6.i.i.i, %.critedge4.i.i.i, %bb.a
  %.sroa.2.1.i = phi ptr [ %i.b, %bb.a ], [ %.sroa.2.0.i, %.critedge4.i.i.i ], [ %.sroa.2.0.i, %bb.c ], [ %.sroa.2.0.i, %.lr.ph24.i.i.i ], [ %i.f, %.critedge6.i.i.i ], [ %.sroa.2.0.i, %.critedge2.i.i.i ], [ %.sroa.2.0.i, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !9357
  %i.w = icmp eq ptr %i.v, %.sroa.2.1.i
  br i1 %i.w, label %bb.d, label %.thread

bb.d:                                             ; preds = %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.y = load i64, ptr %i.x, align 8, !tbaa !19288 ; 2 uses
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %.thread, label %bb.e

.thread:                                          ; preds = %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !19289
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %i.ac = phi i64 [ %i.ab, %.thread ], [ %i.y, %bb.d ]
  ret i64 %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5Catch8TextFlow6Column14const_iterator18addIndentAndSuffixB5cxx11ENS0_18AnsiSkippingString14const_iteratorES4_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(57) %1, ptr nofree readnone captures(none) %2, ptr %3, ptr nofree readnone captures(none) %4, ptr %5) local_unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !9321
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.b, align 8, !tbaa !9324
  store i8 0, ptr %i.a, align 8, !tbaa !9325
  %i.c = load ptr, ptr %1, align 8, !tbaa !23579, !nonnull !4070, !align !19314 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9326 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9324 ; 2 uses
  %i.g = icmp samesign eq i64 %i.f, 0
  br i1 %i.g, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit.i, label %.lr.ph24.i.preheader.i.i.i

.lr.ph24.i.preheader.i.i.i:                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 5 uses
  br label %.lr.ph24.i.i.i.i

.lr.ph24.i.i.i.i:                                 ; preds = %.critedge6.i.i.i.i, %.lr.ph24.i.preheader.i.i.i
  %.sroa.2.0.i.i = phi ptr [ %i.d, %.lr.ph24.i.preheader.i.i.i ], [ %i.u, %.critedge6.i.i.i.i ] ; 8 uses
  %i.i = load i8, ptr %.sroa.2.0.i.i, align 1, !tbaa !9325
  %i.j = icmp eq i8 %i.i, 27
  br i1 %i.j, label %bb.b, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit.i

bb.b:                                             ; preds = %.lr.ph24.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i.i, i64 1 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.h
  br i1 %i.l, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.k, align 1, !tbaa !9325
  %i.n = icmp ne i8 %i.m, 91
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i.i, i64 2 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.h
  %or.cond29.i.i.i.i = select i1 %i.n, i1 true, i1 %i.p
  br i1 %or.cond29.i.i.i.i, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.critedge4.i.i.i.i
  %.sroa.08.022.i.i.i.i = phi ptr [ %i.s, %.critedge4.i.i.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %i.q = load i8, ptr %.sroa.08.022.i.i.i.i, align 1, !tbaa !9325 ; 3 uses
  %7 = sext i8 %i.q to i32
  %isdigittmp.i.i.i.i = add nsw i32 %7, -48
  %isdigit.i.i.i.i = icmp ult i32 %isdigittmp.i.i.i.i, 10
  %i.r = icmp eq i8 %i.q, 59
  %or.cond.i.i.i.i = or i1 %i.r, %isdigit.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %.critedge4.i.i.i.i, label %.critedge2.i.i.i.i

.critedge4.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i.i, i64 1 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.h
  br i1 %i.t, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !667

.critedge2.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq i8 %i.q, -1
  br i1 %.not.i.i.i.i, label %.critedge6.i.i.i.i, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit.i

.critedge6.i.i.i.i:                               ; preds = %.critedge2.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i.i, i64 1 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.h
  br i1 %i.v, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit.i, label %.lr.ph24.i.i.i.i

_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit.i: ; preds = %.critedge6.i.i.i.i, %.critedge2.i.i.i.i, %bb.c, %bb.b, %.lr.ph24.i.i.i.i, %.critedge4.i.i.i.i, %bb.a
  %.sroa.2.1.i.i = phi ptr [ %i.d, %bb.a ], [ %.sroa.2.0.i.i, %.critedge4.i.i.i.i ], [ %.sroa.2.0.i.i, %.critedge2.i.i.i.i ], [ %i.h, %.critedge6.i.i.i.i ], [ %.sroa.2.0.i.i, %.lr.ph24.i.i.i.i ], [ %.sroa.2.0.i.i, %bb.c ], [ %.sroa.2.0.i.i, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !9357
  %i.y = icmp eq ptr %i.x, %.sroa.2.1.i.i
  br i1 %i.y, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !19288 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %.thread.i, label %_ZNK5Catch8TextFlow6Column14const_iterator10indentSizeEv.exit

.thread.i:                                        ; preds = %bb.d, %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !19289
  br label %_ZNK5Catch8TextFlow6Column14const_iterator10indentSizeEv.exit

_ZNK5Catch8TextFlow6Column14const_iterator10indentSizeEv.exit: ; preds = %bb.d, %.thread.i
  %i.ae = phi i64 [ %i.ad, %.thread.i ], [ %i.aa, %bb.d ] ; 7 uses
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.e:                                             ; preds = %_ZNK5Catch8TextFlow6Column14const_iterator10indentSizeEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.555) #58
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNK5Catch8TextFlow6Column14const_iterator10indentSizeEv.exit
  %.not.i.i = icmp samesign ugt i64 %i.ae, 15
  br i1 %.not.i.i, label %.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef null, i64 noundef %i.ae)
  %i.ag = load ptr, ptr %0, align 8, !tbaa !9326
  br label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  switch i64 %i.ae, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i
  store i8 32, ptr %i.a, align 8, !tbaa !9325
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i, %.thread
  %i.ah = phi ptr [ %i.ag, %.thread ], [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ah, i8 32, i64 %i.ae, i1 false)
  %.pre = load ptr, ptr %0, align 8, !tbaa !9326
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i, %bb.f, %bb.g
  %i.ai = phi ptr [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i ], [ %i.a, %bb.f ], [ %.pre, %bb.g ]
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !9324
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ae
  store i8 0, ptr %i.aj, align 1, !tbaa !9325
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.ak = load ptr, ptr %1, align 8, !tbaa !23579, !nonnull !4070, !align !19314
  call void @_ZNK5Catch8TextFlow18AnsiSkippingString9substringB5cxx11ENS1_14const_iteratorES2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr poison, ptr %3, ptr poison, ptr %5)
  %i.al = load ptr, ptr %6, align 8, !tbaa !9326  ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !9324 ; 6 uses
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !9324 ; 5 uses
  %i.ap = sub i64 9223372036854775807, %i.ao
  %i.aq = icmp ult i64 %i.ap, %i.an
  br i1 %i.aq, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.531) #58
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  %i.ar = add i64 %i.ao, %i.an                    ; 3 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !9326  ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.a
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.au = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.au)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.av = load i64, ptr %i.a, align 8, !tbaa !9325
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.aw = phi i64 [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i8 = icmp ugt i64 %i.ar, %i.aw
  br i1 %.not.i.i.i.i8, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ao ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.an, 1
  br i1 %cond.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load i8, ptr %i.al, align 1, !tbaa !9325
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !9325
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.al, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ao, i64 noundef 0, ptr noundef %i.al, i64 noundef %i.an)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !9324
  %i.az = load ptr, ptr %0, align 8, !tbaa !9326
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  store i8 0, ptr %i.ba, align 1, !tbaa !9325
  %i.bb = load ptr, ptr %6, align 8, !tbaa !9326  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !9325
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !23578, !range !16139, !noundef !4070
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !9324 ; 4 uses
  %i.bk = add i64 %i.bj, 1                        ; 3 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !9326  ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.a
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10: ; preds = %bb.n
  %i.bn = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.n
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !9325
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10
  %i.bp = phi i64 [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10 ]
  %i.bq = icmp ugt i64 %i.bk, %i.bp
  br i1 %i.bq, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bj, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !9326
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.o
  %i.br = phi ptr [ %.pre.i, %bb.o ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj
  store i8 45, ptr %i.bs, align 1, !tbaa !9325
  store i64 %i.bk, ptr %i.b, align 8, !tbaa !9324
  %i.bt = load ptr, ptr %0, align 8, !tbaa !9326
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bk
  store i8 0, ptr %i.bu, align 1, !tbaa !9325
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5Catch8TextFlow6Column14const_iteratorC2ERKS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #25 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !23580
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !9326   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9324 ; 2 uses
  %i.e = icmp samesign eq i64 %i.d, 0
  br i1 %i.e, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit, label %.lr.ph24.i.preheader.i.i

.lr.ph24.i.preheader.i.i:                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 5 uses
  br label %.lr.ph24.i.i.i

.lr.ph24.i.i.i:                                   ; preds = %.critedge6.i.i.i, %.lr.ph24.i.preheader.i.i
  %.sroa.2.0.i = phi ptr [ %i.b, %.lr.ph24.i.preheader.i.i ], [ %i.s, %.critedge6.i.i.i ] ; 8 uses
  %i.g = load i8, ptr %.sroa.2.0.i, align 1, !tbaa !9325
  %i.h = icmp eq i8 %i.g, 27
  br i1 %i.h, label %bb.b, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit

bb.b:                                             ; preds = %.lr.ph24.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 1 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.f
  br i1 %i.j, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.i, align 1, !tbaa !9325
  %i.l = icmp ne i8 %i.k, 91
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 2 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.f
  %or.cond29.i.i.i = select i1 %i.l, i1 true, i1 %i.n
  br i1 %or.cond29.i.i.i, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.critedge4.i.i.i
  %.sroa.08.022.i.i.i = phi ptr [ %i.q, %.critedge4.i.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %i.o = load i8, ptr %.sroa.08.022.i.i.i, align 1, !tbaa !9325 ; 3 uses
  %2 = sext i8 %i.o to i32
  %isdigittmp.i.i.i = add nsw i32 %2, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  %i.p = icmp eq i8 %i.o, 59
  %or.cond.i.i.i = or i1 %i.p, %isdigit.i.i.i
  br i1 %or.cond.i.i.i, label %.critedge4.i.i.i, label %.critedge2.i.i.i

.critedge4.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i, i64 1 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.f
  br i1 %i.r, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit, label %.lr.ph.i.i.i, !llvm.loop !667

.critedge2.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i8 %i.o, -1
  br i1 %.not.i.i.i, label %.critedge6.i.i.i, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit

.critedge6.i.i.i:                                 ; preds = %.critedge2.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i, i64 1 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.f
  br i1 %i.t, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit, label %.lr.ph24.i.i.i

_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit: ; preds = %.lr.ph24.i.i.i, %bb.b, %bb.c, %.critedge2.i.i.i, %.critedge6.i.i.i, %.critedge4.i.i.i, %bb.a
  %.sroa.2.1.i = phi ptr [ %i.b, %bb.a ], [ %.sroa.2.0.i, %.critedge4.i.i.i ], [ %.sroa.2.0.i, %bb.c ], [ %.sroa.2.0.i, %.lr.ph24.i.i.i ], [ %i.f, %.critedge6.i.i.i ], [ %.sroa.2.0.i, %.critedge2.i.i.i ], [ %.sroa.2.0.i, %bb.b ]
  store ptr %1, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %.sroa.2.1.i, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %1, align 8, !tbaa !9326   ; 3 uses
  %i.x = load i64, ptr %i.c, align 8, !tbaa !9324 ; 2 uses
  %i.y = icmp samesign eq i64 %i.x, 0
  br i1 %i.y, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit21, label %.lr.ph24.i.preheader.i.i5

.lr.ph24.i.preheader.i.i5:                        ; preds = %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x ; 5 uses
  br label %.lr.ph24.i.i.i6

.lr.ph24.i.i.i6:                                  ; preds = %.critedge6.i.i.i19, %.lr.ph24.i.preheader.i.i5
  %.sroa.2.0.i7 = phi ptr [ %i.w, %.lr.ph24.i.preheader.i.i5 ], [ %i.am, %.critedge6.i.i.i19 ] ; 8 uses
  %i.aa = load i8, ptr %.sroa.2.0.i7, align 1, !tbaa !9325
  %i.ab = icmp eq i8 %i.aa, 27
  br i1 %i.ab, label %bb.d, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit21

bb.d:                                             ; preds = %.lr.ph24.i.i.i6
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i7, i64 1 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.z
  br i1 %i.ad, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit21, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !9325
  %i.af = icmp ne i8 %i.ae, 91
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i7, i64 2 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.z
  %or.cond29.i.i.i11 = select i1 %i.af, i1 true, i1 %i.ah
  br i1 %or.cond29.i.i.i11, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit21, label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %bb.e, %.critedge4.i.i.i20
  %.sroa.08.022.i.i.i13 = phi ptr [ %i.ak, %.critedge4.i.i.i20 ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ai = load i8, ptr %.sroa.08.022.i.i.i13, align 1, !tbaa !9325 ; 3 uses
  %3 = sext i8 %i.ai to i32
  %isdigittmp.i.i.i14 = add nsw i32 %3, -48
  %isdigit.i.i.i15 = icmp ult i32 %isdigittmp.i.i.i14, 10
  %i.aj = icmp eq i8 %i.ai, 59
  %or.cond.i.i.i16 = or i1 %i.aj, %isdigit.i.i.i15
  br i1 %or.cond.i.i.i16, label %.critedge4.i.i.i20, label %.critedge2.i.i.i17

.critedge4.i.i.i20:                               ; preds = %.lr.ph.i.i.i12
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i13, i64 1 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.z
  br i1 %i.al, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit21, label %.lr.ph.i.i.i12, !llvm.loop !667

.critedge2.i.i.i17:                               ; preds = %.lr.ph.i.i.i12
  %.not.i.i.i18 = icmp eq i8 %i.ai, -1
  br i1 %.not.i.i.i18, label %.critedge6.i.i.i19, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit21

.critedge6.i.i.i19:                               ; preds = %.critedge2.i.i.i17
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i13, i64 1 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.z
  br i1 %i.an, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit21, label %.lr.ph24.i.i.i6

_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit21: ; preds = %.lr.ph24.i.i.i6, %bb.d, %bb.e, %.critedge2.i.i.i17, %.critedge6.i.i.i19, %.critedge4.i.i.i20, %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit
  %.sroa.2.1.i8 = phi ptr [ %i.w, %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit ], [ %.sroa.2.0.i7, %.critedge4.i.i.i20 ], [ %.sroa.2.0.i7, %bb.e ], [ %.sroa.2.0.i7, %.lr.ph24.i.i.i6 ], [ %i.z, %.critedge6.i.i.i19 ], [ %.sroa.2.0.i7, %.critedge2.i.i.i17 ], [ %.sroa.2.0.i7, %bb.d ]
  store ptr %1, ptr %i.v, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %.sroa.2.1.i8, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %1, align 8, !tbaa !9326  ; 3 uses
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !9324 ; 2 uses
  %i.as = icmp samesign eq i64 %i.ar, 0
  br i1 %i.as, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit38, label %.lr.ph24.i.preheader.i.i22

.lr.ph24.i.preheader.i.i22:                       ; preds = %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit21
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar ; 5 uses
  br label %.lr.ph24.i.i.i23

.lr.ph24.i.i.i23:                                 ; preds = %.critedge6.i.i.i36, %.lr.ph24.i.preheader.i.i22
  %.sroa.2.0.i24 = phi ptr [ %i.aq, %.lr.ph24.i.preheader.i.i22 ], [ %i.bg, %.critedge6.i.i.i36 ] ; 8 uses
  %i.au = load i8, ptr %.sroa.2.0.i24, align 1, !tbaa !9325
  %i.av = icmp eq i8 %i.au, 27
  br i1 %i.av, label %bb.f, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit38

bb.f:                                             ; preds = %.lr.ph24.i.i.i23
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i24, i64 1 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.at
  br i1 %i.ax, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit38, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !9325
  %i.az = icmp ne i8 %i.ay, 91
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i24, i64 2 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.at
  %or.cond29.i.i.i28 = select i1 %i.az, i1 true, i1 %i.bb
  br i1 %or.cond29.i.i.i28, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit38, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %bb.g, %.critedge4.i.i.i37
  %.sroa.08.022.i.i.i30 = phi ptr [ %i.be, %.critedge4.i.i.i37 ], [ %i.ba, %bb.g ] ; 3 uses
  %i.bc = load i8, ptr %.sroa.08.022.i.i.i30, align 1, !tbaa !9325 ; 3 uses
  %4 = sext i8 %i.bc to i32
  %isdigittmp.i.i.i31 = add nsw i32 %4, -48
  %isdigit.i.i.i32 = icmp ult i32 %isdigittmp.i.i.i31, 10
  %i.bd = icmp eq i8 %i.bc, 59
  %or.cond.i.i.i33 = or i1 %i.bd, %isdigit.i.i.i32
  br i1 %or.cond.i.i.i33, label %.critedge4.i.i.i37, label %.critedge2.i.i.i34

.critedge4.i.i.i37:                               ; preds = %.lr.ph.i.i.i29
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i30, i64 1 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.at
  br i1 %i.bf, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit38, label %.lr.ph.i.i.i29, !llvm.loop !667

.critedge2.i.i.i34:                               ; preds = %.lr.ph.i.i.i29
  %.not.i.i.i35 = icmp eq i8 %i.bc, -1
  br i1 %.not.i.i.i35, label %.critedge6.i.i.i36, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit38

.critedge6.i.i.i36:                               ; preds = %.critedge2.i.i.i34
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i30, i64 1 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.at
  br i1 %i.bh, label %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit38, label %.lr.ph24.i.i.i23

_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit38: ; preds = %.lr.ph24.i.i.i23, %bb.f, %bb.g, %.critedge2.i.i.i34, %.critedge6.i.i.i36, %.critedge4.i.i.i37, %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit21
  %.sroa.2.1.i25 = phi ptr [ %i.aq, %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit21 ], [ %.sroa.2.0.i24, %.critedge4.i.i.i37 ], [ %.sroa.2.0.i24, %bb.g ], [ %.sroa.2.0.i24, %.lr.ph24.i.i.i23 ], [ %i.at, %.critedge6.i.i.i36 ], [ %.sroa.2.0.i24, %.critedge2.i.i.i34 ], [ %.sroa.2.0.i24, %bb.f ]
  store ptr %1, ptr %i.ap, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.2.1.i25, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.bj, align 8, !tbaa !23578
  tail call void @_ZN5Catch8TextFlow6Column14const_iterator10calcLengthEv(ptr noundef nonnull align 8 dereferenceable(57) %0)
  %i.bk = load ptr, ptr %i.u, align 8, !tbaa !9357
  %i.bl = load ptr, ptr %i.ao, align 8, !tbaa !9357
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit38
  %i.bn = load ptr, ptr %0, align 8, !tbaa !23579, !nonnull !4070, !align !19314 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !9326
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !9324
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bq
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !9382
  store ptr %i.br, ptr %i.u, align 8, !tbaa !9357
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK5Catch8TextFlow18AnsiSkippingString5beginEv.exit38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5Catch8TextFlow6Column14const_iteratordeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(57) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !9357
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !9357
  tail call void @_ZNK5Catch8TextFlow6Column14const_iterator18addIndentAndSuffixB5cxx11ENS0_18AnsiSkippingString14const_iteratorES4_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(57) %1, ptr poison, ptr %.sroa.22.0.copyload, ptr poison, ptr %.sroa.2.0.copyload)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(57) ptr @_ZN5Catch8TextFlow6Column14const_iteratorppEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(57) %0) local_unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !21814
  %i.c = load ptr, ptr %0, align 8, !tbaa !23579, !nonnull !4070, !align !19314 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9326
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9324 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9357 ; 4 uses
  %.not = icmp eq ptr %i.i, %i.g
  br i1 %.not, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9325  ; 2 uses
  %i.k = icmp eq i8 %i.j, 10
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8 ; 6 uses
  br i1 %i.k, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 4 uses
  store ptr %i.l, ptr %i.h, align 8, !tbaa !21816
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9324 ; 2 uses
  %i.o = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !9326
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n ; 2 uses
  %i.q = icmp eq ptr %i.l, %i.p
  br i1 %i.q, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit, label %.lr.ph24.i.i.i.i

.lr.ph24.i.i.i.i:                                 ; preds = %bb.c, %.critedge6.i.i.i.i
  %i.r = phi ptr [ %i.af, %.critedge6.i.i.i.i ], [ %i.l, %bb.c ] ; 8 uses
  %i.s = phi ptr [ %i.ah, %.critedge6.i.i.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.t = load i8, ptr %i.r, align 1, !tbaa !9325
  %i.u = icmp eq i8 %i.t, 27
  br i1 %i.u, label %bb.d, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit

bb.d:                                             ; preds = %.lr.ph24.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.s
  br i1 %i.w, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i8, ptr %i.v, align 1, !tbaa !9325
  %i.y = icmp ne i8 %i.x, 91
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 2 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.s
  %or.cond29.i.i.i.i = select i1 %i.y, i1 true, i1 %i.aa
  br i1 %or.cond29.i.i.i.i, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.critedge4.i.i.i.i
  %.sroa.08.022.i.i.i.i = phi ptr [ %i.ad, %.critedge4.i.i.i.i ], [ %i.z, %bb.e ] ; 3 uses
  %i.ab = load i8, ptr %.sroa.08.022.i.i.i.i, align 1, !tbaa !9325 ; 3 uses
  %1 = sext i8 %i.ab to i32
  %isdigittmp.i.i.i.i = add nsw i32 %1, -48
  %isdigit.i.i.i.i = icmp ult i32 %isdigittmp.i.i.i.i, 10
  %i.ac = icmp eq i8 %i.ab, 59
  %or.cond.i.i.i.i = or i1 %i.ac, %isdigit.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %.critedge4.i.i.i.i, label %.critedge2.i.i.i.i

.critedge4.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i.i, i64 1 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit, label %.lr.ph.i.i.i.i, !llvm.loop !667

.critedge2.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq i8 %i.ab, -1
  br i1 %.not.i.i.i.i, label %.critedge6.i.i.i.i, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit

.critedge6.i.i.i.i:                               ; preds = %.critedge2.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.af, ptr %i.h, align 8, !tbaa !9357
  %i.ag = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !9326
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.n ; 2 uses
  %i.ai = icmp eq ptr %i.af, %i.ah
  br i1 %i.ai, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit, label %.lr.ph24.i.i.i.i

.lr.ph:                                           ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  br label %bb.f

thread-pre-split:                                 ; preds = %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit
  %.pr = load i8, ptr %i.bj, align 1, !tbaa !9325
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %.lr.ph
  %i.ak = phi i8 [ %.pr, %thread-pre-split ], [ %i.j, %.lr.ph ]
  %i.al = phi ptr [ %i.bj, %thread-pre-split ], [ %i.i, %.lr.ph ] ; 2 uses
  switch i8 %i.ak, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 4 uses
  store ptr %i.am, ptr %i.h, align 8, !tbaa !21816
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !9324 ; 2 uses
  %i.ao = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !9326
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an ; 2 uses
  %i.aq = icmp eq ptr %i.am, %i.ap
  br i1 %i.aq, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit, label %.lr.ph24.i.i.i

.lr.ph24.i.i.i:                                   ; preds = %bb.g, %.critedge6.i.i.i
  %i.ar = phi ptr [ %i.bf, %.critedge6.i.i.i ], [ %i.am, %bb.g ] ; 8 uses
  %i.as = phi ptr [ %i.bh, %.critedge6.i.i.i ], [ %i.ap, %bb.g ] ; 3 uses
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !9325
  %i.au = icmp eq i8 %i.at, 27
  br i1 %i.au, label %bb.h, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit

bb.h:                                             ; preds = %.lr.ph24.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = load i8, ptr %i.av, align 1, !tbaa !9325
  %i.ay = icmp ne i8 %i.ax, 91
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 2 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.as
  %or.cond29.i.i.i = select i1 %i.ay, i1 true, i1 %i.ba
  br i1 %or.cond29.i.i.i, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.critedge4.i.i.i
  %.sroa.08.022.i.i.i = phi ptr [ %i.bd, %.critedge4.i.i.i ], [ %i.az, %bb.i ] ; 3 uses
  %i.bb = load i8, ptr %.sroa.08.022.i.i.i, align 1, !tbaa !9325 ; 3 uses
  %2 = sext i8 %i.bb to i32
  %isdigittmp.i.i.i = add nsw i32 %2, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  %i.bc = icmp eq i8 %i.bb, 59
  %or.cond.i.i.i = or i1 %i.bc, %isdigit.i.i.i
  br i1 %or.cond.i.i.i, label %.critedge4.i.i.i, label %.critedge2.i.i.i

.critedge4.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i, i64 1 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.as
  br i1 %i.be, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit, label %.lr.ph.i.i.i, !llvm.loop !667

.critedge2.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i8 %i.bb, -1
  br i1 %.not.i.i.i, label %.critedge6.i.i.i, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit

.critedge6.i.i.i:                                 ; preds = %.critedge2.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i.i.i, i64 1 ; 4 uses
  store ptr %i.bf, ptr %i.h, align 8, !tbaa !9357
  %i.bg = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !9326
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.an ; 2 uses
  %i.bi = icmp eq ptr %i.bf, %i.bh
  br i1 %i.bi, label %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit, label %.lr.ph24.i.i.i

_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit: ; preds = %.lr.ph24.i.i.i, %bb.h, %bb.i, %.critedge2.i.i.i, %.critedge6.i.i.i, %.critedge4.i.i.i, %bb.g
  %i.bj = phi ptr [ %i.ar, %.critedge4.i.i.i ], [ %i.am, %bb.g ], [ %i.ar, %bb.h ], [ %i.ar, %bb.i ], [ %i.ar, %.critedge2.i.i.i ], [ %i.bf, %.critedge6.i.i.i ], [ %i.ar, %.lr.ph24.i.i.i ] ; 4 uses
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !9326
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.f
  %.not15 = icmp eq ptr %i.bj, %i.bl
  br i1 %.not15, label %_ZN12_GLOBAL__N_112isWhitespaceEc.exit, label %thread-pre-split, !llvm.loop !668

_ZN12_GLOBAL__N_112isWhitespaceEc.exit:           ; preds = %bb.f, %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit, %.critedge6.i.i.i.i, %.critedge2.i.i.i.i, %bb.e, %bb.d, %.lr.ph24.i.i.i.i, %.critedge4.i.i.i.i, %bb.a, %bb.c
  %i.bm = phi ptr [ %i.g, %bb.a ], [ %i.r, %.critedge4.i.i.i.i ], [ %i.l, %bb.c ], [ %i.af, %.critedge6.i.i.i.i ], [ %i.r, %.critedge2.i.i.i.i ], [ %i.r, %bb.e ], [ %i.r, %bb.d ], [ %i.r, %.lr.ph24.i.i.i.i ], [ %i.bj, %_ZN5Catch8TextFlow18AnsiSkippingString14const_iteratorppEv.exit ], [ %i.al, %bb.f ]
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !9326
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.f
  %.not16 = icmp eq ptr %i.bm, %i.bo
  br i1 %.not16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN12_GLOBAL__N_112isWhitespaceEc.exit
  tail call void @_ZN5Catch8TextFlow6Column14const_iterator10calcLengthEv(ptr noundef nonnull align 8 dereferenceable(57) %0)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN12_GLOBAL__N_112isWhitespaceEc.exit
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5Catch8TextFlow6Column14const_iteratorppEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Catch::TextFlow::Column::const_iterator") align 8 captures(none) initializes((0, 64)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1, i32 noundef %2) local_unnamed_addr #25 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !23581
  %i.a = tail call noundef nonnull align 8 dereferenceable(57) ptr @_ZN5Catch8TextFlow6Column14const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(57) %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch8TextFlow7Columns8iteratorC2ERKS1_NS2_6EndTagE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !23582
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21806 ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !21808  ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = icmp ugt i64 %i.g, 9223372036854775744
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.499) #58
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.c
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #59 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.a, align 8, !tbaa !21811
  store ptr %i.j, ptr %i.k, align 8, !tbaa !21812
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g ; 2 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !21813
  br label %_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.m = phi ptr [ null, %bb.c ], [ %i.l, %_ZNSt12_Vector_baseIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE13_M_deallocateEPS3_m.exit.i ]
  %i.n = phi ptr [ null, %bb.c ], [ %i.j, %_ZNSt12_Vector_baseIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE13_M_deallocateEPS3_m.exit.i ] ; 2 uses
  %i.o = icmp eq ptr %i.d, %i.c
  br i1 %i.o, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE7reserveEm.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE9push_backEOS3_.exit, %_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE7reserveEm.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE9push_backEOS3_.exit
  %i.q = phi ptr [ %i.n, %.lr.ph ], [ %i.ao, %_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE9push_backEOS3_.exit ] ; 6 uses
  %i.r = phi ptr [ %i.m, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE9push_backEOS3_.exit ] ; 5 uses
  %i.s = phi ptr [ %i.n, %.lr.ph ], [ %i.aq, %_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE9push_backEOS3_.exit ] ; 10 uses
  %.sroa.023.026 = phi ptr [ %i.d, %.lr.ph ], [ %i.ar, %_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE9push_backEOS3_.exit ] ; 11 uses
  %i.t = load ptr, ptr %.sroa.023.026, align 8, !tbaa !9326, !noalias !71180
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.023.026, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !9324, !noalias !71180
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v ; 6 uses
  %.not.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %.sroa.023.026, ptr %i.s, align 8, !tbaa !23580
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.023.026, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !9382
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.w, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !9357
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %.sroa.023.026, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !9382
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.w, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !9357
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %.sroa.023.026, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !9382
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store ptr %i.w, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !9357
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !9350
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 64 ; 2 uses
  store ptr %i.x, ptr %i.p, align 8, !tbaa !21812
  br label %_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE9push_backEOS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.y = ptrtoint ptr %i.r to i64
  %i.z = ptrtoint ptr %i.q to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775744
  br i1 %i.ab, label %bb.g, label %_ZNKSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.500) #58
  unreachable

_ZNKSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ac = ashr exact i64 %i.aa, 6                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 144115188075855871)
  %i.ag = select i1 %i.ae, i64 144115188075855871, i64 %i.af ; 3 uses
  %.not.i.i.i.i5 = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i5)
  %i.ah = shl nuw nsw i64 %i.ag, 6
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #59 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa ; 8 uses
  store ptr %.sroa.023.026, ptr %i.aj, align 8, !tbaa !23580
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %.sroa.023.026, ptr %.sroa.5.0..sroa_idx7, align 8, !tbaa !9382
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.w, ptr %.sroa.6.0..sroa_idx9, align 8, !tbaa !9357
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %.sroa.023.026, ptr %.sroa.7.0..sroa_idx11, align 8, !tbaa !9382
  %.sroa.8.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.w, ptr %.sroa.8.0..sroa_idx13, align 8, !tbaa !9357
  %.sroa.9.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store ptr %.sroa.023.026, ptr %.sroa.9.0..sroa_idx15, align 8, !tbaa !9382
  %.sroa.10.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store ptr %i.w, ptr %.sroa.10.0..sroa_idx17, align 8, !tbaa !9357
  %.sroa.11.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  store i8 0, ptr %.sroa.11.0..sroa_idx19, align 8, !tbaa !9350
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %_ZNKSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %i.q, %_ZNKSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i.i.i, i64 64, i1 false), !tbaa.struct !23581, !alias.scope !71181
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.r
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !745

_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ai, %_ZNKSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.aa) #60
  br label %_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !21811
  store ptr %i.am, ptr %i.p, align 8, !tbaa !21812
  %i.an = getelementptr inbounds nuw [64 x i8], ptr %i.ai, i64 %i.ag ; 2 uses
  store ptr %i.an, ptr %i.i, align 8, !tbaa !21813
  br label %_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.e, %_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.ao = phi ptr [ %i.q, %bb.e ], [ %i.ai, %_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  %i.ap = phi ptr [ %i.r, %bb.e ], [ %i.an, %_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  %i.aq = phi ptr [ %i.x, %bb.e ], [ %i.am, %_ZNSt6vectorIN5Catch8TextFlow6Column14const_iteratorESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
end_hunk_2
begin_hunk_3_@_ZN5Catch20defaultListReportersERSoRKSt6vectorINS_19ReporterDescriptionESaIS2_EENS_9VerbosityE:bb.a
  br i1 %or.cond.i.i, label %"_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKN5Catch19ReporterDescriptionESt6vectorIS3_SaIS3_EEEEZNS2_20defaultListReportersERSoRKS8_NS2_9VerbosityEE3$_0ET_SF_SF_T0_.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.l = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.j, %bb.a ] ; 3 uses
  %.sroa.02.010.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.06.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.f, %bb.a ]
  %i.m = getelementptr i8, ptr %.sroa.02.010.i.i, i64 8
  %.val.i.i.i = load i64, ptr %i.m, align 8, !tbaa !9324
  %i.n = getelementptr i8, ptr %.sroa.06.09.i.i, i64 72
  %.val1.i.i.i = load i64, ptr %i.n, align 8, !tbaa !9324
  %i.o = icmp ult i64 %.val.i.i.i, %.val1.i.i.i
  %spec.select.i.i = select i1 %i.o, ptr %i.l, ptr %.sroa.02.010.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.h
  br i1 %i.q, label %"_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKN5Catch19ReporterDescriptionESt6vectorIS3_SaIS3_EEEEZNS2_20defaultListReportersERSoRKS8_NS2_9VerbosityEE3$_0ET_SF_SF_T0_.exit", label %.lr.ph.i.i, !llvm.loop !71309

"_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKN5Catch19ReporterDescriptionESt6vectorIS3_SaIS3_EEEEZNS2_20defaultListReportersERSoRKS8_NS2_9VerbosityEE3$_0ET_SF_SF_T0_.exit": ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.02.2.i.i = phi ptr [ %i.f, %bb.a ], [ %spec.select.i.i, %.lr.ph.i.i ]
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKN5Catch19ReporterDescriptionESt6vectorIS3_SaIS3_EEEEZNS2_20defaultListReportersERSoRKS8_NS2_9VerbosityEE3$_0ET_SF_SF_T0_.exit"
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !9324 ; 2 uses
  %i.t = icmp eq i32 %2, 0
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ac = add i64 %i.s, 5                         ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.af = sub i64 72, %i.s
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br i1 %i.t, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 56
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN5Catch8TextFlow6ColumnD2Ev.exit.us
  %.sroa.028.041.us = phi ptr [ %i.bd, %_ZN5Catch8TextFlow6ColumnD2Ev.exit.us ], [ %i.f, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  call void @_ZN5Catch8TextFlow18AnsiSkippingStringC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.028.041.us)
  store i64 -1, ptr %i.an, align 8, !tbaa !19288
  store i64 2, ptr %i.am, align 8, !tbaa !19289
  store i64 %i.ac, ptr %i.al, align 8, !tbaa !19287
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Catch8TextFlowlsERSoRKNS0_6ColumnE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !9325
  %i.ar = load ptr, ptr %0, align 8, !tbaa !3603
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %0, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !9346
  %.not.i16.us = icmp eq i64 %i.aw, 0
  br i1 %.not.i16.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 1) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit18.us

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit18.us

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit18.us: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.az = load ptr, ptr %4, align 8, !tbaa !9326  ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ao
  br i1 %i.ba, label %_ZN5Catch8TextFlow6ColumnD2Ev.exit.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit18.us
  %i.bb = load i64, ptr %i.ao, align 8, !tbaa !9325
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #60
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit.us

_ZN5Catch8TextFlow6ColumnD2Ev.exit.us:            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit18.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.028.041.us, i64 64 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.h
  br i1 %i.be, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN5Catch8TextFlow6ColumnD2Ev.exit.us, %"_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKN5Catch19ReporterDescriptionESt6vectorIS3_SaIS3_EEEEZNS2_20defaultListReportersERSoRKS8_NS2_9VerbosityEE3$_0ET_SF_SF_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1, !tbaa !9325
  %i.bf = load ptr, ptr %0, align 8, !tbaa !3603
  %i.bg = getelementptr i8, ptr %i.bf, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %0, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !9346
  %.not.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) #49
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.e:                                             ; preds = %._crit_edge
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.bl, %bb.d ], [ %0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %.0.i) #49 ; 0 uses
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.028.041 = phi ptr [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %.lr.ph.split.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 58, ptr %i.b, align 1, !tbaa !9325, !noalias !71314
  %i.bo = load ptr, ptr %.sroa.028.041, align 8, !tbaa !9326, !noalias !71314
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.028.041, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !9324, !noalias !71314
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49, !noalias !71314
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %i.bo, i64 noundef %i.bq, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49, !noalias !71314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.u, ptr %6, align 8, !tbaa !9321
  %i.br = load ptr, ptr %7, align 8, !tbaa !9326  ; 3 uses
  %i.bs = icmp eq ptr %i.br, %i.v
  br i1 %i.bs, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.split
  %i.bt = load i64, ptr %i.w, align 8, !tbaa !9324 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.bv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph.split
  store ptr %i.br, ptr %6, align 8, !tbaa !9326
  %i.bw = load i64, ptr %i.v, align 8, !tbaa !9325
  store i64 %i.bw, ptr %i.u, align 8, !tbaa !9325
  %.pre = load i64, ptr %i.w, align 8, !tbaa !9324
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.f
  %i.bx = phi ptr [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.u, %bb.f ] ; 2 uses
  %i.by = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %bb.f ] ; 3 uses
  store i64 %i.by, ptr %i.x, align 8, !tbaa !9324
  store ptr %i.v, ptr %7, align 8, !tbaa !9326
  store i64 0, ptr %i.w, align 8, !tbaa !9324
  store i8 0, ptr %i.v, align 8, !tbaa !9325
  store i64 0, ptr %i.y, align 8, !tbaa !21803
  %i.bz = icmp samesign eq i64 %i.by, 0
  br i1 %i.bz, label %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %bb.j
  %i.ca = phi i64 [ %i.cy, %bb.j ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ] ; 3 uses
  %i.cb = phi ptr [ %i.cz, %bb.j ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ] ; 3 uses
  %.sroa.022.049.i.i.i = phi ptr [ %.sroa.022.4.i.i.i, %bb.j ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ca ; 2 uses
  %i.cd = icmp eq ptr %.sroa.022.049.i.i.i, %i.cc
  br i1 %i.cd, label %.critedge.i.i.i, label %.lr.ph40.i.i.i

.lr.ph40.i.i.i:                                   ; preds = %.preheader.i.i.i, %.critedge6.i.i.i
  %i.ce = phi i64 [ %i.cv, %.critedge6.i.i.i ], [ %i.ca, %.preheader.i.i.i ] ; 5 uses
  %i.cf = phi ptr [ %i.cu, %.critedge6.i.i.i ], [ %i.cb, %.preheader.i.i.i ] ; 5 uses
  %i.cg = phi ptr [ %i.cw, %.critedge6.i.i.i ], [ %i.cc, %.preheader.i.i.i ] ; 3 uses
  %.sroa.022.139.i.i.i = phi ptr [ %i.ct, %.critedge6.i.i.i ], [ %.sroa.022.049.i.i.i, %.preheader.i.i.i ] ; 8 uses
  %i.ch = load i8, ptr %.sroa.022.139.i.i.i, align 1, !tbaa !9325
  %i.ci = icmp eq i8 %i.ch, 27
  br i1 %i.ci, label %bb.g, label %.critedge.i.i.i

bb.g:                                             ; preds = %.lr.ph40.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i.i.i, i64 1 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.cg
  br i1 %i.ck, label %.critedge.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cl = load i8, ptr %i.cj, align 1, !tbaa !9325
  %i.cm = icmp ne i8 %i.cl, 91
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i.i.i, i64 2 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.cg
  %or.cond51.i.i.i = select i1 %i.cm, i1 true, i1 %i.co
  br i1 %or.cond51.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.critedge4.i.i.i
  %.sroa.09.036.i.i.i = phi ptr [ %i.cr, %.critedge4.i.i.i ], [ %i.cn, %bb.h ] ; 4 uses
  %i.cp = load i8, ptr %.sroa.09.036.i.i.i, align 1, !tbaa !9325 ; 3 uses
  %9 = sext i8 %i.cp to i32
  %isdigittmp.i.i.i = add nsw i32 %9, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  %i.cq = icmp eq i8 %i.cp, 59
  %or.cond.i.i.i = or i1 %i.cq, %isdigit.i.i.i
  br i1 %or.cond.i.i.i, label %.critedge4.i.i.i, label %.critedge2.i.i.i

.critedge4.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i.i.i, i64 1 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.cg
  br i1 %i.cs, label %.critedge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !664

.critedge2.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i8 %i.cp, 109
  br i1 %.not.i.i.i, label %.critedge6.i.i.i, label %.critedge.i.i.i

.critedge6.i.i.i:                                 ; preds = %.critedge2.i.i.i
  store i8 -1, ptr %.sroa.09.036.i.i.i, align 1, !tbaa !9325
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i.i.i, i64 1 ; 3 uses
  %i.cu = load ptr, ptr %6, align 8, !tbaa !9326  ; 3 uses
  %i.cv = load i64, ptr %i.x, align 8, !tbaa !9324 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cv ; 2 uses
  %i.cx = icmp eq ptr %i.ct, %i.cw
  br i1 %i.cx, label %.critedge.i.i.i, label %.lr.ph40.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge6.i.i.i, %.critedge2.i.i.i, %bb.h, %bb.g, %.lr.ph40.i.i.i, %.critedge4.i.i.i, %.preheader.i.i.i
  %i.cy = phi i64 [ %i.ca, %.preheader.i.i.i ], [ %i.ce, %.critedge4.i.i.i ], [ %i.ce, %.lr.ph40.i.i.i ], [ %i.cv, %.critedge6.i.i.i ], [ %i.ce, %bb.h ], [ %i.ce, %.critedge2.i.i.i ], [ %i.ce, %bb.g ] ; 2 uses
  %i.cz = phi ptr [ %i.cb, %.preheader.i.i.i ], [ %i.cf, %.critedge4.i.i.i ], [ %i.cf, %.lr.ph40.i.i.i ], [ %i.cu, %.critedge6.i.i.i ], [ %i.cf, %bb.h ], [ %i.cf, %.critedge2.i.i.i ], [ %i.cf, %bb.g ] ; 2 uses
  %.sroa.022.135.i.i.i = phi ptr [ %.sroa.022.049.i.i.i, %.preheader.i.i.i ], [ %.sroa.022.139.i.i.i, %.critedge4.i.i.i ], [ %.sroa.022.139.i.i.i, %.lr.ph40.i.i.i ], [ %i.ct, %.critedge6.i.i.i ], [ %.sroa.022.139.i.i.i, %bb.h ], [ %.sroa.022.139.i.i.i, %.critedge2.i.i.i ], [ %.sroa.022.139.i.i.i, %bb.g ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cy ; 2 uses
  %i.db = icmp eq ptr %.sroa.022.135.i.i.i, %i.da
  br i1 %i.db, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge.i.i.i
  %i.dc = load i64, ptr %i.y, align 8, !tbaa !21803
  %i.dd = add i64 %i.dc, 1
  store i64 %i.dd, ptr %i.y, align 8, !tbaa !21803
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.022.135.i.i.i, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge.i.i.i
  %.sroa.022.4.i.i.i = phi ptr [ %.sroa.022.135.i.i.i, %.critedge.i.i.i ], [ %i.de, %bb.i ] ; 2 uses
  %i.df = icmp eq ptr %.sroa.022.4.i.i.i, %i.da
  br i1 %i.df, label %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i.i.i, !llvm.loop !665

_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store i64 -1, ptr %i.ab, align 8, !tbaa !19288
  store i64 2, ptr %i.aa, align 8, !tbaa !19289
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !19287
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.028.041, i64 32
  call void @_ZN5Catch8TextFlow18AnsiSkippingStringC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.dg)
  store i64 0, ptr %i.ap, align 8
  store i64 2, ptr %i.ae, align 8, !tbaa !19289
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !19287
  call void @llvm.experimental.noalias.scope.decl(metadata !71315)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !alias.scope !71315
  call void @_ZNSt6vectorIN5Catch8TextFlow6ColumnESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr null, ptr noundef nonnull align 8 dereferenceable(64) %6)
  %i.dh = load ptr, ptr %i.ag, align 8, !tbaa !21806, !alias.scope !71315 ; 9 uses
  %i.di = load ptr, ptr %i.ah, align 8, !tbaa !21807, !alias.scope !71315
  %.not.i.i.i3.i = icmp eq ptr %i.dh, %i.di
  br i1 %.not.i.i.i3.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 3 uses
  store ptr %i.dj, ptr %i.dh, align 8, !tbaa !9321
  %i.dk = load ptr, ptr %8, align 8, !tbaa !9326, !noalias !71315 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.ai
  br i1 %i.dl, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i

bb.l:                                             ; preds = %bb.k
  %i.dm = load i64, ptr %i.aj, align 8, !tbaa !9324, !noalias !71315 ; 3 uses
  %i.dn = icmp ult i64 %i.dm, 16
  call void @llvm.assume(i1 %i.dn)
  %i.do = add nuw nsw i64 %i.dm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dj, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.do, i1 false)
  br label %_ZSt12construct_atIN5Catch8TextFlow6ColumnEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i: ; preds = %bb.k
  store ptr %i.dk, ptr %i.dh, align 8, !tbaa !9326
  %i.dp = load i64, ptr %i.ai, align 8, !tbaa !9325, !noalias !71315
  store i64 %i.dp, ptr %i.dj, align 8, !tbaa !9325
  %.pre52 = load i64, ptr %i.aj, align 8, !tbaa !9324, !noalias !71315
  br label %_ZSt12construct_atIN5Catch8TextFlow6ColumnEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i5.i

_ZSt12construct_atIN5Catch8TextFlow6ColumnEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i5.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i, %bb.l
  %i.dq = phi i64 [ %.pre52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i ], [ %i.dm, %bb.l ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !9324
  store ptr %i.ai, ptr %8, align 8, !tbaa !9326, !noalias !71315
  store i64 0, ptr %i.aj, align 8, !tbaa !9324, !noalias !71315
  store i8 0, ptr %i.ai, align 8, !tbaa !9325, !noalias !71315
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dt = load i64, ptr %i.ak, align 8, !tbaa !21803, !noalias !71315
  store i64 %i.dt, ptr %i.ds, align 8, !tbaa !21803
  %i.du = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.du, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  store ptr %i.dv, ptr %i.ag, align 8, !tbaa !21806, !alias.scope !71315
  br label %_ZN5Catch8TextFlowplEONS0_6ColumnES2_.exit

bb.m:                                             ; preds = %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @_ZNSt6vectorIN5Catch8TextFlow6ColumnESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.dh, ptr noundef nonnull align 8 dereferenceable(64) %8)
  br label %_ZN5Catch8TextFlowplEONS0_6ColumnES2_.exit

_ZN5Catch8TextFlowplEONS0_6ColumnES2_.exit:       ; preds = %_ZSt12construct_atIN5Catch8TextFlow6ColumnEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i5.i, %bb.m
  %i.dw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Catch8TextFlowlsERSoRKNS0_7ColumnsE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !9325
  %i.dx = load ptr, ptr %0, align 8, !tbaa !3603
  %i.dy = getelementptr i8, ptr %i.dx, i64 -24
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds i8, ptr %0, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !9346
  %.not.i19 = icmp eq i64 %i.ec, 0
  br i1 %.not.i19, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN5Catch8TextFlowplEONS0_6ColumnES2_.exit
  %i.ed = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit21

bb.o:                                             ; preds = %_ZN5Catch8TextFlowplEONS0_6ColumnES2_.exit
  %i.ee = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit21

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit21: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ef = load ptr, ptr %5, align 8, !tbaa !21808 ; 3 uses
  %i.eg = load ptr, ptr %i.ag, align 8, !tbaa !21806 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ef, %i.eg
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit21, %_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.em, %_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i ], [ %i.ef, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit21 ] ; 3 uses
  %i.eh = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !9326 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !9325
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #60
  br label %_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.em, %i.eg
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !666

_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %5, align 8, !tbaa !21808
  br label %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exit.i.i

_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exitthread-pre-split.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit21
  %i.en = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exitthread-pre-split.i.i ], [ %i.ef, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit21 ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i1.i.i, label %_ZN5Catch8TextFlow7ColumnsD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exit.i.i
  %i.eo = load ptr, ptr %i.ah, align 8, !tbaa !21807
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.en to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.er) #60
  br label %_ZN5Catch8TextFlow7ColumnsD2Ev.exit

_ZN5Catch8TextFlow7ColumnsD2Ev.exit:              ; preds = %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exit.i.i, %bb.p
  %i.es = load ptr, ptr %8, align 8, !tbaa !9326  ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.ai
  br i1 %i.et, label %_ZN5Catch8TextFlow6ColumnD2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22: ; preds = %_ZN5Catch8TextFlow7ColumnsD2Ev.exit
  %i.eu = load i64, ptr %i.ai, align 8, !tbaa !9325
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #60
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit24

_ZN5Catch8TextFlow6ColumnD2Ev.exit24:             ; preds = %_ZN5Catch8TextFlow7ColumnsD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  %i.ew = load ptr, ptr %6, align 8, !tbaa !9326  ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.u
  br i1 %i.ex, label %_ZN5Catch8TextFlow6ColumnD2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit24
  %i.ey = load i64, ptr %i.u, align 8, !tbaa !9325
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #60
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit27

_ZN5Catch8TextFlow6ColumnD2Ev.exit27:             ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25
  %i.fa = load ptr, ptr %7, align 8, !tbaa !9326  ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.v
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit27
  %i.fc = load i64, ptr %i.v, align 8, !tbaa !9325
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_3
begin_hunk_4_@_ZN5Catch20defaultListListenersERSoRKSt6vectorINS_19ListenerDescriptionESaIS2_EE:bb.a
bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.bf = load i8, ptr %i.au, align 1, !tbaa !9325
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !9325
  br label %_ZNK5Catch9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.m:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr align 1 %i.au, i64 %i.aw, i1 false)
  br label %_ZNK5Catch9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK5Catch9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %._crit_edge.i.i.i, %bb.l, %bb.m
  store i64 %i.aw, ptr %i.s, align 8, !tbaa !9324, !alias.scope !71323
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw
  store i8 0, ptr %i.bg, align 1, !tbaa !9325
  call void @llvm.experimental.noalias.scope.decl(metadata !71324)
  %i.bh = load i64, ptr %i.s, align 8, !tbaa !9324, !noalias !71324 ; 9 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775807
  br i1 %i.bi, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.n:                                             ; preds = %_ZNK5Catch9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.555) #58, !noalias !71324
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZNK5Catch9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %i.bj = add nsw i64 %i.bh, 1                    ; 7 uses
  %i.bk = load ptr, ptr %5, align 8, !tbaa !9326, !noalias !71324 ; 6 uses
  %i.bl = icmp eq ptr %i.bk, %i.r                 ; 2 uses
  br i1 %i.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bm = icmp samesign ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bm)
  %.not.i.i.i = icmp eq i64 %i.bh, 15
  br i1 %.not.i.i.i, label %.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bn = load i64, ptr %i.r, align 8, !tbaa !9325, !noalias !71324 ; 3 uses
  %.not.i.i.i34 = icmp ugt i64 %i.bj, %i.bn
  br i1 %.not.i.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.thread
  %i.bo = icmp slt i64 %i.bh, -1
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.502) #58, !noalias !71324
  unreachable

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.bp = icmp ugt i64 %i.bj, %i.bn
  br i1 %i.bp, label %.thread, label %bb.r

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i, %bb.p
  %i.bq = phi i64 [ %i.bn, %bb.p ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.br = shl nuw i64 %i.bq, 1                    ; 2 uses
  %i.bs = icmp ult i64 %i.bj, %i.br
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.br, i64 9223372036854775807)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread, %bb.p
  %.0.i28 = phi i64 [ %spec.store.select.i.i, %bb.q ], [ %i.bj, %.thread ], [ %i.bj, %bb.p ] ; 2 uses
  %i.bt = add nuw i64 %.0.i28, 1                  ; 2 uses
  %i.bu = icmp slt i64 %i.bt, 0
  br i1 %i.bu, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !9356

bb.s:                                             ; preds = %bb.r
  call void @_ZSt17__throw_bad_allocv() #58, !noalias !71324
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.r
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #59, !noalias !71324 ; 4 uses
  switch i64 %i.bh, label %bb.u [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.bw = load i8, ptr %i.bk, align 1, !tbaa !9325, !noalias !71324
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !9325, !noalias !71324
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr align 1 %i.bk, i64 %i.bh, i1 false), !noalias !71324
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %bb.t, %bb.u
  br i1 %i.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.bx = icmp samesign ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bx), !noalias !71324
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.by = load i64, ptr %i.r, align 8, !tbaa !9325, !noalias !71324
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bz) #60, !noalias !71324
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i
  store ptr %i.bv, ptr %5, align 8, !tbaa !9326, !noalias !71324
  store i64 %.0.i28, ptr %i.r, align 8, !tbaa !9325, !noalias !71324
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ca = phi ptr [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.thread ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bh
  store i8 58, ptr %i.cb, align 1, !tbaa !9325, !noalias !71324
  store i64 %i.bj, ptr %i.s, align 8, !tbaa !9324, !noalias !71324
  %i.cc = load ptr, ptr %5, align 8, !tbaa !9326, !noalias !71324
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bj
  store i8 0, ptr %i.cd, align 1, !tbaa !9325, !noalias !71324
  store ptr %i.t, ptr %4, align 8, !tbaa !9321, !alias.scope !71324
  %i.ce = load ptr, ptr %5, align 8, !tbaa !9326, !noalias !71324 ; 4 uses
  %i.cf = icmp eq ptr %i.ce, %i.r
  br i1 %i.cf, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_.exit.thread, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i
  %i.cg = load i64, ptr %i.s, align 8, !tbaa !9324, !noalias !71324 ; 3 uses
  %i.ch = icmp samesign ult i64 %i.cg, 16
  call void @llvm.assume(i1 %i.ch)
  %i.ci = add nuw nsw i64 %i.cg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.ci, i1 false)
  store ptr %i.r, ptr %5, align 8, !tbaa !9326, !noalias !71324
  store i64 0, ptr %i.s, align 8, !tbaa !9324, !noalias !71324
  store i8 0, ptr %i.r, align 8, !tbaa !9325, !noalias !71324
  store ptr %i.v, ptr %3, align 8, !tbaa !9321
  br label %bb.v

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i
  %i.cj = load i64, ptr %i.r, align 8, !tbaa !9325, !noalias !71324
  store i64 %i.cj, ptr %i.t, align 8, !tbaa !9325, !alias.scope !71324
  %.pre1.i = load i64, ptr %i.s, align 8, !tbaa !9324, !noalias !71324 ; 2 uses
  store ptr %i.r, ptr %5, align 8, !tbaa !9326, !noalias !71324
  store i64 0, ptr %i.s, align 8, !tbaa !9324, !noalias !71324
  store i8 0, ptr %i.r, align 8, !tbaa !9325, !noalias !71324
  store ptr %i.v, ptr %3, align 8, !tbaa !9321
  %i.ck = icmp eq ptr %i.ce, %i.t
  br i1 %i.ck, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.v:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_.exit.thread, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_.exit
  %i.cl = phi i64 [ %i.cg, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_.exit.thread ], [ %.pre1.i, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_.exit ] ; 3 uses
  %i.cm = icmp ult i64 %i.cl, 16
  call void @llvm.assume(i1 %i.cm)
  %i.cn = add nuw nsw i64 %i.cl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.cn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_.exit
  store ptr %i.ce, ptr %3, align 8, !tbaa !9326
  %i.co = load i64, ptr %i.t, align 8, !tbaa !9325
  store i64 %i.co, ptr %i.v, align 8, !tbaa !9325
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.v
  %i.cp = phi i64 [ %.pre1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.cl, %bb.v ] ; 3 uses
  %i.cq = phi ptr [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.v, %bb.v ] ; 2 uses
  store i64 %i.cp, ptr %i.w, align 8, !tbaa !9324
  store ptr %i.t, ptr %4, align 8, !tbaa !9326
  store i64 0, ptr %i.u, align 8, !tbaa !9324
  store i8 0, ptr %i.t, align 8, !tbaa !9325
  store i64 0, ptr %i.x, align 8, !tbaa !21803
  %i.cr = icmp samesign eq i64 %i.cp, 0
  br i1 %i.cr, label %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %bb.z
  %i.cs = phi i64 [ %i.dq, %bb.z ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ] ; 3 uses
  %i.ct = phi ptr [ %i.dr, %bb.z ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ] ; 3 uses
  %.sroa.022.049.i.i.i = phi ptr [ %.sroa.022.4.i.i.i, %bb.z ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cs ; 2 uses
  %i.cv = icmp eq ptr %.sroa.022.049.i.i.i, %i.cu
  br i1 %i.cv, label %.critedge.i.i.i, label %.lr.ph40.i.i.i

.lr.ph40.i.i.i:                                   ; preds = %.preheader.i.i.i, %.critedge6.i.i.i
  %i.cw = phi i64 [ %i.dn, %.critedge6.i.i.i ], [ %i.cs, %.preheader.i.i.i ] ; 5 uses
  %i.cx = phi ptr [ %i.dm, %.critedge6.i.i.i ], [ %i.ct, %.preheader.i.i.i ] ; 5 uses
  %i.cy = phi ptr [ %i.do, %.critedge6.i.i.i ], [ %i.cu, %.preheader.i.i.i ] ; 3 uses
  %.sroa.022.139.i.i.i = phi ptr [ %i.dl, %.critedge6.i.i.i ], [ %.sroa.022.049.i.i.i, %.preheader.i.i.i ] ; 8 uses
  %i.cz = load i8, ptr %.sroa.022.139.i.i.i, align 1, !tbaa !9325
  %i.da = icmp eq i8 %i.cz, 27
  br i1 %i.da, label %bb.w, label %.critedge.i.i.i

bb.w:                                             ; preds = %.lr.ph40.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i.i.i, i64 1 ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.cy
  br i1 %i.dc, label %.critedge.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = load i8, ptr %i.db, align 1, !tbaa !9325
  %i.de = icmp ne i8 %i.dd, 91
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i.i.i, i64 2 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.cy
  %or.cond51.i.i.i = select i1 %i.de, i1 true, i1 %i.dg
  br i1 %or.cond51.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.x, %.critedge4.i.i.i
  %.sroa.09.036.i.i.i = phi ptr [ %i.dj, %.critedge4.i.i.i ], [ %i.df, %bb.x ] ; 4 uses
  %i.dh = load i8, ptr %.sroa.09.036.i.i.i, align 1, !tbaa !9325 ; 3 uses
  %7 = sext i8 %i.dh to i32
  %isdigittmp.i.i.i = add nsw i32 %7, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  %i.di = icmp eq i8 %i.dh, 59
  %or.cond.i.i.i = or i1 %i.di, %isdigit.i.i.i
  br i1 %or.cond.i.i.i, label %.critedge4.i.i.i, label %.critedge2.i.i.i

.critedge4.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i.i.i, i64 1 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cy
  br i1 %i.dk, label %.critedge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !664

.critedge2.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %.not.i.i.i14 = icmp eq i8 %i.dh, 109
  br i1 %.not.i.i.i14, label %.critedge6.i.i.i, label %.critedge.i.i.i

.critedge6.i.i.i:                                 ; preds = %.critedge2.i.i.i
  store i8 -1, ptr %.sroa.09.036.i.i.i, align 1, !tbaa !9325
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i.i.i, i64 1 ; 3 uses
  %i.dm = load ptr, ptr %3, align 8, !tbaa !9326  ; 3 uses
  %i.dn = load i64, ptr %i.w, align 8, !tbaa !9324 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dn ; 2 uses
  %i.dp = icmp eq ptr %i.dl, %i.do
  br i1 %i.dp, label %.critedge.i.i.i, label %.lr.ph40.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge6.i.i.i, %.critedge2.i.i.i, %bb.x, %bb.w, %.lr.ph40.i.i.i, %.critedge4.i.i.i, %.preheader.i.i.i
  %i.dq = phi i64 [ %i.cs, %.preheader.i.i.i ], [ %i.cw, %.critedge4.i.i.i ], [ %i.cw, %.lr.ph40.i.i.i ], [ %i.dn, %.critedge6.i.i.i ], [ %i.cw, %bb.x ], [ %i.cw, %.critedge2.i.i.i ], [ %i.cw, %bb.w ] ; 2 uses
  %i.dr = phi ptr [ %i.ct, %.preheader.i.i.i ], [ %i.cx, %.critedge4.i.i.i ], [ %i.cx, %.lr.ph40.i.i.i ], [ %i.dm, %.critedge6.i.i.i ], [ %i.cx, %bb.x ], [ %i.cx, %.critedge2.i.i.i ], [ %i.cx, %bb.w ] ; 2 uses
  %.sroa.022.135.i.i.i = phi ptr [ %.sroa.022.049.i.i.i, %.preheader.i.i.i ], [ %.sroa.022.139.i.i.i, %.critedge4.i.i.i ], [ %.sroa.022.139.i.i.i, %.lr.ph40.i.i.i ], [ %i.dl, %.critedge6.i.i.i ], [ %.sroa.022.139.i.i.i, %bb.x ], [ %.sroa.022.139.i.i.i, %.critedge2.i.i.i ], [ %.sroa.022.139.i.i.i, %bb.w ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dq ; 2 uses
  %i.dt = icmp eq ptr %.sroa.022.135.i.i.i, %i.ds
  br i1 %i.dt, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge.i.i.i
  %i.du = load i64, ptr %i.x, align 8, !tbaa !21803
  %i.dv = add i64 %i.du, 1
  store i64 %i.dv, ptr %i.x, align 8, !tbaa !21803
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.022.135.i.i.i, i64 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.critedge.i.i.i
  %.sroa.022.4.i.i.i = phi ptr [ %.sroa.022.135.i.i.i, %.critedge.i.i.i ], [ %i.dw, %bb.y ] ; 2 uses
  %i.dx = icmp eq ptr %.sroa.022.4.i.i.i, %i.ds
  br i1 %i.dx, label %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i.i.i, !llvm.loop !665

_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store i64 -1, ptr %i.aa, align 8, !tbaa !19288
  store i64 2, ptr %i.z, align 8, !tbaa !19289
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !19287
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.030.044, i64 16
  call void @_ZN5Catch8TextFlow18AnsiSkippingStringC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.dy)
  store i64 0, ptr %i.ak, align 8
  store i64 2, ptr %i.ad, align 8, !tbaa !19289
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !19287
  call void @llvm.experimental.noalias.scope.decl(metadata !71325)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !alias.scope !71325
  call void @_ZNSt6vectorIN5Catch8TextFlow6ColumnESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr null, ptr noundef nonnull align 8 dereferenceable(64) %3)
  %i.dz = load ptr, ptr %i.af, align 8, !tbaa !21806, !alias.scope !71325 ; 9 uses
  %i.ea = load ptr, ptr %i.ag, align 8, !tbaa !21807, !alias.scope !71325
  %.not.i.i.i3.i = icmp eq ptr %i.dz, %i.ea
  br i1 %.not.i.i.i3.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 3 uses
  store ptr %i.eb, ptr %i.dz, align 8, !tbaa !9321
  %i.ec = load ptr, ptr %6, align 8, !tbaa !9326, !noalias !71325 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.ah
  br i1 %i.ed, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i

bb.ab:                                            ; preds = %bb.aa
  %i.ee = load i64, ptr %i.ai, align 8, !tbaa !9324, !noalias !71325 ; 3 uses
  %i.ef = icmp ult i64 %i.ee, 16
  call void @llvm.assume(i1 %i.ef)
  %i.eg = add nuw nsw i64 %i.ee, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eb, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.eg, i1 false)
  br label %_ZSt12construct_atIN5Catch8TextFlow6ColumnEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i: ; preds = %bb.aa
  store ptr %i.ec, ptr %i.dz, align 8, !tbaa !9326
  %i.eh = load i64, ptr %i.ah, align 8, !tbaa !9325, !noalias !71325
  store i64 %i.eh, ptr %i.eb, align 8, !tbaa !9325
  %.pre = load i64, ptr %i.ai, align 8, !tbaa !9324, !noalias !71325
  br label %_ZSt12construct_atIN5Catch8TextFlow6ColumnEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i5.i

_ZSt12construct_atIN5Catch8TextFlow6ColumnEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i5.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i, %bb.ab
  %i.ei = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i ], [ %i.ee, %bb.ab ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !9324
  store ptr %i.ah, ptr %6, align 8, !tbaa !9326, !noalias !71325
  store i64 0, ptr %i.ai, align 8, !tbaa !9324, !noalias !71325
  store i8 0, ptr %i.ah, align 8, !tbaa !9325, !noalias !71325
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.el = load i64, ptr %i.aj, align 8, !tbaa !21803, !noalias !71325
  store i64 %i.el, ptr %i.ek, align 8, !tbaa !21803
  %i.em = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 64
  store ptr %i.en, ptr %i.af, align 8, !tbaa !21806, !alias.scope !71325
  br label %_ZN5Catch8TextFlowplEONS0_6ColumnES2_.exit

bb.ac:                                            ; preds = %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @_ZNSt6vectorIN5Catch8TextFlow6ColumnESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.dz, ptr noundef nonnull align 8 dereferenceable(64) %6)
  br label %_ZN5Catch8TextFlowplEONS0_6ColumnES2_.exit

_ZN5Catch8TextFlowplEONS0_6ColumnES2_.exit:       ; preds = %_ZSt12construct_atIN5Catch8TextFlow6ColumnEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i5.i, %bb.ac
  %i.eo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Catch8TextFlowlsERSoRKNS0_7ColumnsE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !9325
  %i.ep = load ptr, ptr %0, align 8, !tbaa !3603
  %i.eq = getelementptr i8, ptr %i.ep, i64 -24
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = getelementptr inbounds i8, ptr %0, i64 %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !9346
  %.not.i15 = icmp eq i64 %i.eu, 0
  br i1 %.not.i15, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZN5Catch8TextFlowplEONS0_6ColumnES2_.exit
  %i.ev = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.ae:                                            ; preds = %_ZN5Catch8TextFlowplEONS0_6ColumnES2_.exit
  %i.ew = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ex = load ptr, ptr %2, align 8, !tbaa !21808 ; 3 uses
  %i.ey = load ptr, ptr %i.af, align 8, !tbaa !21806 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ex, %i.ey
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17, %_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.fe, %_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i ], [ %i.ex, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ] ; 3 uses
  %i.ez = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !9326 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !9325
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #60
  br label %_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fe, %i.ey
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !666

_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %2, align 8, !tbaa !21808
  br label %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exit.i.i

_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exitthread-pre-split.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17
  %i.ff = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exitthread-pre-split.i.i ], [ %i.ex, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i1.i.i, label %_ZN5Catch8TextFlow7ColumnsD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exit.i.i
  %i.fg = load ptr, ptr %i.ag, align 8, !tbaa !21807
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.ff to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fj) #60
  br label %_ZN5Catch8TextFlow7ColumnsD2Ev.exit

_ZN5Catch8TextFlow7ColumnsD2Ev.exit:              ; preds = %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exit.i.i, %bb.af
  %i.fk = load ptr, ptr %6, align 8, !tbaa !9326  ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.ah
  br i1 %i.fl, label %_ZN5Catch8TextFlow6ColumnD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18: ; preds = %_ZN5Catch8TextFlow7ColumnsD2Ev.exit
  %i.fm = load i64, ptr %i.ah, align 8, !tbaa !9325
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #60
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit

_ZN5Catch8TextFlow6ColumnD2Ev.exit:               ; preds = %_ZN5Catch8TextFlow7ColumnsD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %i.fo = load ptr, ptr %3, align 8, !tbaa !9326  ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.v
  br i1 %i.fp, label %_ZN5Catch8TextFlow6ColumnD2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit
  %i.fq = load i64, ptr %i.v, align 8, !tbaa !9325
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #60
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit22

_ZN5Catch8TextFlow6ColumnD2Ev.exit22:             ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20
  %i.fs = load ptr, ptr %4, align 8, !tbaa !9326  ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.t
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit22
  %i.fu = load i64, ptr %i.t, align 8, !tbaa !9325
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
end_hunk_4
begin_hunk_5_@_ZN5Catch16defaultListTestsERSoPNS_10ColourImplERKSt6vectorINS_14TestCaseHandleESaIS4_EEbNS_9VerbosityE:bb.a
  br label %bb.h

_ZN5Catch10startsWithENS_9StringRefEc.exit.thread.i: ; preds = %_ZN5Catch10startsWithENS_9StringRefEc.exit.i, %.lr.ph.i
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.k, i64 noundef %i.m) #49 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN5Catch10startsWithENS_9StringRefEc.exit.thread.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit13.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1, !tbaa !9325
  %i.ak = load ptr, ptr %0, align 8, !tbaa !3603
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %0, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !9346
  %.not.i14.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i14.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16.i

bb.j:                                             ; preds = %bb.h
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.as, %.val32
  br i1 %i.at, label %_ZN5Catch12_GLOBAL__N_117listTestNamesOnlyERSoRKSt6vectorINS_14TestCaseHandleESaIS3_EE.exit, label %.lr.ph.i

bb.k:                                             ; preds = %bb.a
  br i1 %3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.329, i64 noundef 21) #49 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.330, i64 noundef 26) #49 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aw = load ptr, ptr %2, align 8, !tbaa !19389 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !19389 ; 2 uses
  %i.az = icmp eq ptr %i.aw, %i.ay
  br i1 %i.az, label %._crit_edge, label %_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit.lr.ph

_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit.lr.ph: ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.be = icmp sgt i32 %4, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bn = icmp slt i32 %4, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 56
  br label %_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit

._crit_edge:                                      ; preds = %_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit69, %bb.n
  br i1 %3, label %bb.ah, label %bb.ai

_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit:      ; preds = %_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit.lr.ph, %_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit69
  %.sroa.077.0100 = phi ptr [ %i.aw, %_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit.lr.ph ], [ %i.hm, %_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit69 ] ; 2 uses
  %i.bw = load ptr, ptr %.sroa.077.0100, align 8, !tbaa !19392 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 120
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !19400
  %i.bz = and i8 %i.by, 2
  %.not = icmp eq i8 %i.bz, 0
  %i.ca = select i1 %.not, i32 0, i32 23
  %i.cb = load ptr, ptr %1, align 8, !tbaa !3603
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.ca) #49, !call_target !19207, !inline_history !23634
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  call void @_ZN5Catch8TextFlow18AnsiSkippingStringC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.bw)
  store i64 79, ptr %i.ba, align 8, !tbaa !19287
  store i64 -1, ptr %i.bc, align 8, !tbaa !19288
  store i64 2, ptr %i.bb, align 8, !tbaa !19289
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Catch8TextFlowlsERSoRKNS0_6ColumnE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %5) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !9325
  %i.cf = load ptr, ptr %0, align 8, !tbaa !3603
  %i.cg = getelementptr i8, ptr %i.cf, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr %0, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !9346
  %.not.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 1) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.p:                                             ; preds = %_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit
  %i.cm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cn = load ptr, ptr %5, align 8, !tbaa !9326  ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.bd
  br i1 %i.co, label %_ZN5Catch8TextFlow6ColumnD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.cp = load i64, ptr %i.bd, align 8, !tbaa !9325
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #60
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit

_ZN5Catch8TextFlow6ColumnD2Ev.exit:               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br i1 %i.be, label %bb.q, label %bb.y

bb.q:                                             ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 104
  call void @_ZN5Catch11StringMakerINS_14SourceLineInfoEvE7convertIS1_EENSt9enable_ifIXgssr5Catch6DetailE20IsStreamInsertable_vIT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeERKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %i.cr)
  store ptr %i.bf, ptr %6, align 8, !tbaa !9321
  %i.cs = load ptr, ptr %7, align 8, !tbaa !9326  ; 3 uses
  %i.ct = icmp eq ptr %i.cs, %i.bg
  br i1 %i.ct, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.cu = load i64, ptr %i.bh, align 8, !tbaa !9324 ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.cv)
  %i.cw = add nuw nsw i64 %i.cu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.cw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.q
  store ptr %i.cs, ptr %6, align 8, !tbaa !9326
  %i.cx = load i64, ptr %i.bg, align 8, !tbaa !9325
  store i64 %i.cx, ptr %i.bf, align 8, !tbaa !9325
  %.pre = load i64, ptr %i.bh, align 8, !tbaa !9324
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.r
  %i.cy = phi ptr [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bf, %bb.r ] ; 2 uses
  %i.cz = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.cu, %bb.r ] ; 3 uses
  store i64 %i.cz, ptr %i.bi, align 8, !tbaa !9324
  store ptr %i.bg, ptr %7, align 8, !tbaa !9326
  store i64 0, ptr %i.bh, align 8, !tbaa !9324
  store i8 0, ptr %i.bg, align 8, !tbaa !9325
  store i64 0, ptr %i.bj, align 8, !tbaa !21803
  %i.da = icmp samesign eq i64 %i.cz, 0
  br i1 %i.da, label %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %bb.v
  %i.db = phi i64 [ %i.dz, %bb.v ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ] ; 3 uses
  %i.dc = phi ptr [ %i.ea, %bb.v ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ] ; 3 uses
  %.sroa.022.049.i.i.i = phi ptr [ %.sroa.022.4.i.i.i, %bb.v ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.db ; 2 uses
  %i.de = icmp eq ptr %.sroa.022.049.i.i.i, %i.dd
  br i1 %i.de, label %.critedge.i.i.i, label %.lr.ph40.i.i.i

.lr.ph40.i.i.i:                                   ; preds = %.preheader.i.i.i, %.critedge6.i.i.i
  %i.df = phi i64 [ %i.dw, %.critedge6.i.i.i ], [ %i.db, %.preheader.i.i.i ] ; 5 uses
  %i.dg = phi ptr [ %i.dv, %.critedge6.i.i.i ], [ %i.dc, %.preheader.i.i.i ] ; 5 uses
  %i.dh = phi ptr [ %i.dx, %.critedge6.i.i.i ], [ %i.dd, %.preheader.i.i.i ] ; 3 uses
  %.sroa.022.139.i.i.i = phi ptr [ %i.du, %.critedge6.i.i.i ], [ %.sroa.022.049.i.i.i, %.preheader.i.i.i ] ; 8 uses
  %i.di = load i8, ptr %.sroa.022.139.i.i.i, align 1, !tbaa !9325
  %i.dj = icmp eq i8 %i.di, 27
  br i1 %i.dj, label %bb.s, label %.critedge.i.i.i

bb.s:                                             ; preds = %.lr.ph40.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i.i.i, i64 1 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.dh
  br i1 %i.dl, label %.critedge.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dm = load i8, ptr %i.dk, align 1, !tbaa !9325
  %i.dn = icmp ne i8 %i.dm, 91
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i.i.i, i64 2 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.dh
  %or.cond51.i.i.i = select i1 %i.dn, i1 true, i1 %i.dp
  br i1 %or.cond51.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.critedge4.i.i.i
  %.sroa.09.036.i.i.i = phi ptr [ %i.ds, %.critedge4.i.i.i ], [ %i.do, %bb.t ] ; 4 uses
  %i.dq = load i8, ptr %.sroa.09.036.i.i.i, align 1, !tbaa !9325 ; 3 uses
  %12 = sext i8 %i.dq to i32
  %isdigittmp.i.i.i = add nsw i32 %12, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  %i.dr = icmp eq i8 %i.dq, 59
  %or.cond.i.i.i = or i1 %i.dr, %isdigit.i.i.i
  br i1 %or.cond.i.i.i, label %.critedge4.i.i.i, label %.critedge2.i.i.i

.critedge4.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i.i.i, i64 1 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.dh
  br i1 %i.dt, label %.critedge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !664

.critedge2.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i8 %i.dq, 109
  br i1 %.not.i.i.i, label %.critedge6.i.i.i, label %.critedge.i.i.i

.critedge6.i.i.i:                                 ; preds = %.critedge2.i.i.i
  store i8 -1, ptr %.sroa.09.036.i.i.i, align 1, !tbaa !9325
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i.i.i, i64 1 ; 3 uses
  %i.dv = load ptr, ptr %6, align 8, !tbaa !9326  ; 3 uses
  %i.dw = load i64, ptr %i.bi, align 8, !tbaa !9324 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dw ; 2 uses
  %i.dy = icmp eq ptr %i.du, %i.dx
  br i1 %i.dy, label %.critedge.i.i.i, label %.lr.ph40.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge6.i.i.i, %.critedge2.i.i.i, %bb.t, %bb.s, %.lr.ph40.i.i.i, %.critedge4.i.i.i, %.preheader.i.i.i
  %i.dz = phi i64 [ %i.db, %.preheader.i.i.i ], [ %i.df, %.critedge4.i.i.i ], [ %i.df, %.lr.ph40.i.i.i ], [ %i.dw, %.critedge6.i.i.i ], [ %i.df, %bb.t ], [ %i.df, %.critedge2.i.i.i ], [ %i.df, %bb.s ] ; 2 uses
  %i.ea = phi ptr [ %i.dc, %.preheader.i.i.i ], [ %i.dg, %.critedge4.i.i.i ], [ %i.dg, %.lr.ph40.i.i.i ], [ %i.dv, %.critedge6.i.i.i ], [ %i.dg, %bb.t ], [ %i.dg, %.critedge2.i.i.i ], [ %i.dg, %bb.s ] ; 2 uses
  %.sroa.022.135.i.i.i = phi ptr [ %.sroa.022.049.i.i.i, %.preheader.i.i.i ], [ %.sroa.022.139.i.i.i, %.critedge4.i.i.i ], [ %.sroa.022.139.i.i.i, %.lr.ph40.i.i.i ], [ %i.du, %.critedge6.i.i.i ], [ %.sroa.022.139.i.i.i, %bb.t ], [ %.sroa.022.139.i.i.i, %.critedge2.i.i.i ], [ %.sroa.022.139.i.i.i, %bb.s ] ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dz ; 2 uses
  %i.ec = icmp eq ptr %.sroa.022.135.i.i.i, %i.eb
  br i1 %i.ec, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.critedge.i.i.i
  %i.ed = load i64, ptr %i.bj, align 8, !tbaa !21803
  %i.ee = add i64 %i.ed, 1
  store i64 %i.ee, ptr %i.bj, align 8, !tbaa !21803
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.022.135.i.i.i, i64 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.critedge.i.i.i
  %.sroa.022.4.i.i.i = phi ptr [ %.sroa.022.135.i.i.i, %.critedge.i.i.i ], [ %i.ef, %bb.u ] ; 2 uses
  %i.eg = icmp eq ptr %.sroa.022.4.i.i.i, %i.eb
  br i1 %i.eg, label %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i.i.i, !llvm.loop !665

_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store i64 79, ptr %i.bk, align 8, !tbaa !19287
  store i64 -1, ptr %i.bm, align 8, !tbaa !19288
  store i64 4, ptr %i.bl, align 8, !tbaa !19289
  %i.eh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Catch8TextFlowlsERSoRKNS0_6ColumnE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %6) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !9325
  %i.ei = load ptr, ptr %0, align 8, !tbaa !3603
  %i.ej = getelementptr i8, ptr %i.ei, i64 -24
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = getelementptr inbounds i8, ptr %0, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load i64, ptr %i.em, align 8, !tbaa !9346
  %.not.i33 = icmp eq i64 %i.en, 0
  br i1 %.not.i33, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.eo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit35

bb.x:                                             ; preds = %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ep = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit35

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit35: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.eq = load ptr, ptr %6, align 8, !tbaa !9326  ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.bf
  br i1 %i.er, label %_ZN5Catch8TextFlow6ColumnD2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit35
  %i.es = load i64, ptr %i.bf, align 8, !tbaa !9325
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #60
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit38

_ZN5Catch8TextFlow6ColumnD2Ev.exit38:             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36
  %i.eu = load ptr, ptr %7, align 8, !tbaa !9326  ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.bg
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit38
  %i.ew = load i64, ptr %i.bg, align 8, !tbaa !9325
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN5Catch8TextFlow6ColumnD2Ev.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bw, i64 80
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !19420
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bw, i64 88
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !19420
  %i.fc = icmp eq ptr %i.ez, %i.fb
  %or.cond.not = or i1 %i.bn, %i.fc
  br i1 %or.cond.not, label %_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit69, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #49
  call void @_ZNK5Catch12TestCaseInfo12tagsAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(121) %i.bw)
  store ptr %i.bo, ptr %8, align 8, !tbaa !9321
  %i.fd = load ptr, ptr %9, align 8, !tbaa !9326  ; 3 uses
  %i.fe = icmp eq ptr %i.fd, %i.bp
  br i1 %i.fe, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39

bb.aa:                                            ; preds = %bb.z
  %i.ff = load i64, ptr %i.bq, align 8, !tbaa !9324 ; 3 uses
  %i.fg = icmp ult i64 %i.ff, 16
  call void @llvm.assume(i1 %i.fg)
  %i.fh = add nuw nsw i64 %i.ff, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(1) %i.bp, i64 %i.fh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39: ; preds = %bb.z
  store ptr %i.fd, ptr %8, align 8, !tbaa !9326
  %i.fi = load i64, ptr %i.bp, align 8, !tbaa !9325
  store i64 %i.fi, ptr %i.bo, align 8, !tbaa !9325
  %.pre121 = load i64, ptr %i.bq, align 8, !tbaa !9324
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i40: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39, %bb.aa
  %i.fj = phi ptr [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39 ], [ %i.bo, %bb.aa ] ; 2 uses
  %i.fk = phi i64 [ %.pre121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39 ], [ %i.ff, %bb.aa ] ; 3 uses
  store i64 %i.fk, ptr %i.br, align 8, !tbaa !9324
  store ptr %i.bp, ptr %9, align 8, !tbaa !9326
  store i64 0, ptr %i.bq, align 8, !tbaa !9324
  store i8 0, ptr %i.bp, align 8, !tbaa !9325
  store i64 0, ptr %i.bs, align 8, !tbaa !21803
  %i.fl = icmp samesign eq i64 %i.fk, 0
  br i1 %i.fl, label %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit59, label %.preheader.i.i.i42

.preheader.i.i.i42:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i40, %bb.ae
  %i.fm = phi i64 [ %i.gk, %bb.ae ], [ %i.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i40 ] ; 3 uses
  %i.fn = phi ptr [ %i.gl, %bb.ae ], [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i40 ] ; 3 uses
  %.sroa.022.049.i.i.i43 = phi ptr [ %.sroa.022.4.i.i.i48, %bb.ae ], [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i40 ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fm ; 2 uses
  %i.fp = icmp eq ptr %.sroa.022.049.i.i.i43, %i.fo
  br i1 %i.fp, label %.critedge.i.i.i46, label %.lr.ph40.i.i.i44

.lr.ph40.i.i.i44:                                 ; preds = %.preheader.i.i.i42, %.critedge6.i.i.i57
  %i.fq = phi i64 [ %i.gh, %.critedge6.i.i.i57 ], [ %i.fm, %.preheader.i.i.i42 ] ; 5 uses
  %i.fr = phi ptr [ %i.gg, %.critedge6.i.i.i57 ], [ %i.fn, %.preheader.i.i.i42 ] ; 5 uses
  %i.fs = phi ptr [ %i.gi, %.critedge6.i.i.i57 ], [ %i.fo, %.preheader.i.i.i42 ] ; 3 uses
  %.sroa.022.139.i.i.i45 = phi ptr [ %i.gf, %.critedge6.i.i.i57 ], [ %.sroa.022.049.i.i.i43, %.preheader.i.i.i42 ] ; 8 uses
  %i.ft = load i8, ptr %.sroa.022.139.i.i.i45, align 1, !tbaa !9325
  %i.fu = icmp eq i8 %i.ft, 27
  br i1 %i.fu, label %bb.ab, label %.critedge.i.i.i46

bb.ab:                                            ; preds = %.lr.ph40.i.i.i44
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i.i.i45, i64 1 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.fs
  br i1 %i.fw, label %.critedge.i.i.i46, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fx = load i8, ptr %i.fv, align 1, !tbaa !9325
  %i.fy = icmp ne i8 %i.fx, 91
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i.i.i45, i64 2 ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.fs
  %or.cond51.i.i.i49 = select i1 %i.fy, i1 true, i1 %i.ga
  br i1 %or.cond51.i.i.i49, label %.critedge.i.i.i46, label %.lr.ph.i.i.i50

.lr.ph.i.i.i50:                                   ; preds = %bb.ac, %.critedge4.i.i.i58
  %.sroa.09.036.i.i.i51 = phi ptr [ %i.gd, %.critedge4.i.i.i58 ], [ %i.fz, %bb.ac ] ; 4 uses
  %i.gb = load i8, ptr %.sroa.09.036.i.i.i51, align 1, !tbaa !9325 ; 3 uses
  %13 = sext i8 %i.gb to i32
  %isdigittmp.i.i.i52 = add nsw i32 %13, -48
  %isdigit.i.i.i53 = icmp ult i32 %isdigittmp.i.i.i52, 10
  %i.gc = icmp eq i8 %i.gb, 59
  %or.cond.i.i.i54 = or i1 %i.gc, %isdigit.i.i.i53
  br i1 %or.cond.i.i.i54, label %.critedge4.i.i.i58, label %.critedge2.i.i.i55

.critedge4.i.i.i58:                               ; preds = %.lr.ph.i.i.i50
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i.i.i51, i64 1 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.fs
  br i1 %i.ge, label %.critedge.i.i.i46, label %.lr.ph.i.i.i50, !llvm.loop !664

.critedge2.i.i.i55:                               ; preds = %.lr.ph.i.i.i50
  %.not.i.i.i56 = icmp eq i8 %i.gb, 109
  br i1 %.not.i.i.i56, label %.critedge6.i.i.i57, label %.critedge.i.i.i46

.critedge6.i.i.i57:                               ; preds = %.critedge2.i.i.i55
  store i8 -1, ptr %.sroa.09.036.i.i.i51, align 1, !tbaa !9325
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i.i.i51, i64 1 ; 3 uses
  %i.gg = load ptr, ptr %8, align 8, !tbaa !9326  ; 3 uses
  %i.gh = load i64, ptr %i.br, align 8, !tbaa !9324 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gh ; 2 uses
  %i.gj = icmp eq ptr %i.gf, %i.gi
  br i1 %i.gj, label %.critedge.i.i.i46, label %.lr.ph40.i.i.i44

.critedge.i.i.i46:                                ; preds = %.critedge6.i.i.i57, %.critedge2.i.i.i55, %bb.ac, %bb.ab, %.lr.ph40.i.i.i44, %.critedge4.i.i.i58, %.preheader.i.i.i42
  %i.gk = phi i64 [ %i.fm, %.preheader.i.i.i42 ], [ %i.fq, %.critedge4.i.i.i58 ], [ %i.fq, %.lr.ph40.i.i.i44 ], [ %i.gh, %.critedge6.i.i.i57 ], [ %i.fq, %bb.ac ], [ %i.fq, %.critedge2.i.i.i55 ], [ %i.fq, %bb.ab ] ; 2 uses
  %i.gl = phi ptr [ %i.fn, %.preheader.i.i.i42 ], [ %i.fr, %.critedge4.i.i.i58 ], [ %i.fr, %.lr.ph40.i.i.i44 ], [ %i.gg, %.critedge6.i.i.i57 ], [ %i.fr, %bb.ac ], [ %i.fr, %.critedge2.i.i.i55 ], [ %i.fr, %bb.ab ] ; 2 uses
  %.sroa.022.135.i.i.i47 = phi ptr [ %.sroa.022.049.i.i.i43, %.preheader.i.i.i42 ], [ %.sroa.022.139.i.i.i45, %.critedge4.i.i.i58 ], [ %.sroa.022.139.i.i.i45, %.lr.ph40.i.i.i44 ], [ %i.gf, %.critedge6.i.i.i57 ], [ %.sroa.022.139.i.i.i45, %bb.ac ], [ %.sroa.022.139.i.i.i45, %.critedge2.i.i.i55 ], [ %.sroa.022.139.i.i.i45, %bb.ab ] ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gk ; 2 uses
  %i.gn = icmp eq ptr %.sroa.022.135.i.i.i47, %i.gm
  br i1 %i.gn, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.critedge.i.i.i46
  %i.go = load i64, ptr %i.bs, align 8, !tbaa !21803
  %i.gp = add i64 %i.go, 1
  store i64 %i.gp, ptr %i.bs, align 8, !tbaa !21803
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.022.135.i.i.i47, i64 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.critedge.i.i.i46
  %.sroa.022.4.i.i.i48 = phi ptr [ %.sroa.022.135.i.i.i47, %.critedge.i.i.i46 ], [ %i.gq, %bb.ad ] ; 2 uses
  %i.gr = icmp eq ptr %.sroa.022.4.i.i.i48, %i.gm
  br i1 %i.gr, label %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit59, label %.preheader.i.i.i42, !llvm.loop !665

_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit59: ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i40
  store i64 79, ptr %i.bt, align 8, !tbaa !19287
  store i64 -1, ptr %i.bv, align 8, !tbaa !19288
  store i64 6, ptr %i.bu, align 8, !tbaa !19289
  %i.gs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Catch8TextFlowlsERSoRKNS0_6ColumnE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %8) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !9325
  %i.gt = load ptr, ptr %0, align 8, !tbaa !3603
  %i.gu = getelementptr i8, ptr %i.gt, i64 -24
  %i.gv = load i64, ptr %i.gu, align 8
  %i.gw = getelementptr inbounds i8, ptr %0, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !9346
  %.not.i60 = icmp eq i64 %i.gy, 0
  br i1 %.not.i60, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit59
  %i.gz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit62

bb.ag:                                            ; preds = %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit59
  %i.ha = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit62

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit62: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hb = load ptr, ptr %8, align 8, !tbaa !9326  ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.bo
  br i1 %i.hc, label %_ZN5Catch8TextFlow6ColumnD2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i63: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit62
  %i.hd = load i64, ptr %i.bo, align 8, !tbaa !9325
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #60
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit65

_ZN5Catch8TextFlow6ColumnD2Ev.exit65:             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i63
  %i.hf = load ptr, ptr %9, align 8, !tbaa !9326  ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.bp
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit65
  %i.hh = load i64, ptr %i.bp, align 8, !tbaa !9325
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hi) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  br label %_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit69

_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit69:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %bb.y
  %i.hj = load ptr, ptr %1, align 8, !tbaa !3603
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) #49, !call_target !19207, !inline_history !19290
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.077.0100, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.ay
  br i1 %i.hn, label %._crit_edge, label %_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit

bb.ah:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #49
  %i.ho = load ptr, ptr %i.ax, align 8, !tbaa !23532
  %i.hp = load ptr, ptr %2, align 8, !tbaa !19413
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = ashr exact i64 %i.hs, 4
  store i64 %i.ht, ptr %10, align 8, !tbaa !22704
  %i.hu = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.331, ptr %i.hu, align 8, !tbaa !9357
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 18, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !9358
  %i.hv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5CatchlsERSoRKNS_9pluraliseE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %10) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #49
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #49
  %i.hw = load ptr, ptr %i.ax, align 8, !tbaa !23532
  %i.hx = load ptr, ptr %2, align 8, !tbaa !19413
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = ashr exact i64 %i.ia, 4
  store i64 %i.ib, ptr %11, align 8, !tbaa !22704
  %i.ic = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.332, ptr %i.ic, align 8, !tbaa !9357
  %.sroa.2.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 9, ptr %.sroa.2.0..sroa_idx.i70, align 8, !tbaa !9358
  %i.id = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5CatchlsERSoRKNS_9pluraliseE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %11) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #49
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ie = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.35, i64 noundef 2) #49 ; 0 uses
  br label %_ZN5Catch12_GLOBAL__N_117listTestNamesOnlyERSoRKSt6vectorINS_14TestCaseHandleESaIS3_EE.exit

_ZN5Catch12_GLOBAL__N_117listTestNamesOnlyERSoRKSt6vectorINS_14TestCaseHandleESaIS3_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16.i, %bb.b, %bb.aj
  %i.if = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #49 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch12ReporterBase8listTagsERKSt6vectorINS_7TagInfoESaIS2_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23624, !nonnull !4070, !align !19314
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19338 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3603
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #49, !call_target !3648
  tail call void @_ZN5Catch15defaultListTagsERSoRKSt6vectorINS_7TagInfoESaIS2_EEb(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %i.h)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch15defaultListTagsERSoRKSt6vectorINS_7TagInfoESaIS2_EEb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.Catch::TextFlow::Column", align 8 ; 10 uses
  %6 = alloca %"class.Catch::TextFlow::Column", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.Catch::pluralise", align 8  ; 6 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.326, i64 noundef 30) #49 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.327, i64 noundef 20) #49 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !23635  ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23635 ; 4 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.f
  br i1 %i.i, label %"_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKN5Catch7TagInfoESt6vectorIS3_SaIS3_EEEEZNS2_15defaultListTagsERSoRKS8_bE3$_0ET_SE_SE_T0_.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %i.j = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.h, %bb.e ] ; 3 uses
  %.sroa.02.010.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i.i ], [ %i.d, %bb.e ] ; 2 uses
  %.sroa.06.09.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.d, %bb.e ]
  %i.k = getelementptr i8, ptr %.sroa.02.010.i.i, i64 48
  %.val.i.i.i = load i64, ptr %i.k, align 8, !tbaa !19427
  %i.l = getelementptr i8, ptr %.sroa.06.09.i.i, i64 104
  %.val1.i.i.i = load i64, ptr %i.l, align 8, !tbaa !19427
  %i.m = icmp ult i64 %.val.i.i.i, %.val1.i.i.i
  %spec.select.i.i = select i1 %i.m, ptr %i.j, ptr %.sroa.02.010.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.f
  br i1 %i.o, label %"_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKN5Catch7TagInfoESt6vectorIS3_SaIS3_EEEEZNS2_15defaultListTagsERSoRKS8_bE3$_0ET_SE_SE_T0_.exit", label %.lr.ph.i.i, !llvm.loop !71326

"_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKN5Catch7TagInfoESt6vectorIS3_SaIS3_EEEEZNS2_15defaultListTagsERSoRKS8_bE3$_0ET_SE_SE_T0_.exit": ; preds = %.lr.ph.i.i, %bb.e
  %.sroa.02.2.i.i = phi ptr [ %i.d, %bb.e ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !19427 ; 2 uses
  %i.r = icmp ugt i64 %i.q, 99
  br i1 %i.r, label %bb.f, label %.lr.ph

bb.f:                                             ; preds = %"_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKN5Catch7TagInfoESt6vectorIS3_SaIS3_EEEEZNS2_15defaultListTagsERSoRKS8_bE3$_0ET_SE_SE_T0_.exit"
  %i.s = uitofp i64 %i.q to double
  %i.t = tail call noundef double @log10(double noundef %i.s) #49
  %i.u = tail call double @llvm.floor.f64(double %i.t)
  %i.v = fadd double %i.u, 1.000000e+00
  %i.w = fptoui double %i.v to i64
  %i.x = shl i64 %i.w, 32
  %i.y = ashr exact i64 %i.x, 32
  br label %.lr.ph

.lr.ph:                                           ; preds = %"_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKN5Catch7TagInfoESt6vectorIS3_SaIS3_EEEEZNS2_15defaultListTagsERSoRKS8_bE3$_0ET_SE_SE_T0_.exit", %bb.f
  %.1.ph = phi i64 [ 2, %"_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKN5Catch7TagInfoESt6vectorIS3_SaIS3_EEEEZNS2_15defaultListTagsERSoRKS8_bE3$_0ET_SE_SE_T0_.exit" ], [ %i.y, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 56
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %_ZN5Catch20ReusableStringStreamD2Ev.exit
  %.pre62 = load ptr, ptr %i.e, align 8, !tbaa !19418
  %.pre63 = load ptr, ptr %1, align 8, !tbaa !19417
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.loopexit
  %i.ap = phi ptr [ %.pre63, %._crit_edge.loopexit ], [ %i.d, %bb.d ]
  %i.aq = phi ptr [ %.pre62, %._crit_edge.loopexit ], [ %i.d, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = sdiv exact i64 %i.at, 56
  store i64 %i.au, ptr %8, align 8, !tbaa !22704
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.328, ptr %i.av, align 8, !tbaa !9357
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 3, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !9358
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5CatchlsERSoRKNS_9pluraliseE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %8) ; 0 uses
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.35, i64 noundef 2) #49 ; 0 uses
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #49 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  ret void

bb.g:                                             ; preds = %.lr.ph, %_ZN5Catch20ReusableStringStreamD2Ev.exit
  %.sroa.038.051 = phi ptr [ %i.d, %.lr.ph ], [ %i.fg, %_ZN5Catch20ReusableStringStreamD2Ev.exit ] ; 3 uses
  %i.az = call noundef ptr @_ZN5Catch9SingletonINS_13StringStreamsES1_S1_E11getInternalEv()
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = call { i64, ptr } @_ZN5Catch13StringStreams3addB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(425) %i.ba) ; 2 uses
  %i.bc = extractvalue { i64, ptr } %i.bb, 0
  %i.bd = extractvalue { i64, ptr } %i.bb, 1      ; 13 uses
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.84, i64 noundef 2) #49 ; 0 uses
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !3603
  %i.bg = getelementptr i8, ptr %i.bf, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %i.bd, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 %.1.ph, ptr %i.bj, align 8, !tbaa !9346
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.038.051, i64 48
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !9358
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, i64 noundef %i.bl) #49 ; 0 uses
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.84, i64 noundef 2) #49 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  call void @llvm.experimental.noalias.scope.decl(metadata !71333)
  call void @llvm.experimental.noalias.scope.decl(metadata !71334)
  store ptr %i.z, ptr %4, align 8, !tbaa !9321, !alias.scope !71335
  store i64 0, ptr %i.aa, align 8, !tbaa !9324, !alias.scope !71335
  store i8 0, ptr %i.z, align 8, !tbaa !9325, !alias.scope !71335
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !9334, !noalias !71336 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.bp, null
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !71336 ; 2 uses
  %i.bs = icmp ugt ptr %i.bp, %i.br
  %.08.i.i.i.i = select i1 %i.bs, ptr %i.bp, ptr %i.br ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not4.i.i.i
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !9335, !noalias !71336 ; 2 uses
  %i.bv = ptrtoint ptr %.08.i.i.i.i to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.bu, i64 noundef %i.bx) ; 0 uses
  br label %_ZNK5Catch20ReusableStringStream3strB5cxx11Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bz)
  br label %_ZNK5Catch20ReusableStringStream3strB5cxx11Ev.exit

_ZNK5Catch20ReusableStringStream3strB5cxx11Ev.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  call void @_ZNK5Catch7TagInfo3allB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.038.051)
  store ptr %i.ab, ptr %6, align 8, !tbaa !9321
  %i.ca = load ptr, ptr %7, align 8, !tbaa !9326  ; 3 uses
  %i.cb = icmp eq ptr %i.ca, %i.ac
  br i1 %i.cb, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.j:                                             ; preds = %_ZNK5Catch20ReusableStringStream3strB5cxx11Ev.exit
  %i.cc = load i64, ptr %i.ad, align 8, !tbaa !9324 ; 3 uses
  %i.cd = icmp ult i64 %i.cc, 16
  call void @llvm.assume(i1 %i.cd)
  %i.ce = add nuw nsw i64 %i.cc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ce, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNK5Catch20ReusableStringStream3strB5cxx11Ev.exit
  store ptr %i.ca, ptr %6, align 8, !tbaa !9326
  %i.cf = load i64, ptr %i.ac, align 8, !tbaa !9325
  store i64 %i.cf, ptr %i.ab, align 8, !tbaa !9325
  %.pre = load i64, ptr %i.ad, align 8, !tbaa !9324
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.j
  %i.cg = phi ptr [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ab, %bb.j ] ; 3 uses
  %i.ch = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.cc, %bb.j ] ; 3 uses
  store i64 %i.ch, ptr %i.ae, align 8, !tbaa !9324
  store ptr %i.ac, ptr %7, align 8, !tbaa !9326
  store i64 0, ptr %i.ad, align 8, !tbaa !9324
  store i8 0, ptr %i.ac, align 8, !tbaa !9325
  store i64 0, ptr %i.af, align 8, !tbaa !21803
  %i.ci = icmp samesign eq i64 %i.ch, 0
  br i1 %i.ci, label %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %bb.n
  %i.cj = phi i64 [ %i.dh, %bb.n ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ] ; 3 uses
  %i.ck = phi ptr [ %i.di, %bb.n ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ] ; 3 uses
  %.sroa.022.049.i.i.i = phi ptr [ %.sroa.022.4.i.i.i, %bb.n ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj ; 2 uses
  %i.cm = icmp eq ptr %.sroa.022.049.i.i.i, %i.cl
  br i1 %i.cm, label %.critedge.i.i.i, label %.lr.ph40.i.i.i

.lr.ph40.i.i.i:                                   ; preds = %.preheader.i.i.i, %.critedge6.i.i.i
  %i.cn = phi i64 [ %i.de, %.critedge6.i.i.i ], [ %i.cj, %.preheader.i.i.i ] ; 5 uses
  %i.co = phi ptr [ %i.dd, %.critedge6.i.i.i ], [ %i.ck, %.preheader.i.i.i ] ; 5 uses
  %i.cp = phi ptr [ %i.df, %.critedge6.i.i.i ], [ %i.cl, %.preheader.i.i.i ] ; 3 uses
  %.sroa.022.139.i.i.i = phi ptr [ %i.dc, %.critedge6.i.i.i ], [ %.sroa.022.049.i.i.i, %.preheader.i.i.i ] ; 8 uses
  %i.cq = load i8, ptr %.sroa.022.139.i.i.i, align 1, !tbaa !9325
  %i.cr = icmp eq i8 %i.cq, 27
  br i1 %i.cr, label %bb.k, label %.critedge.i.i.i

bb.k:                                             ; preds = %.lr.ph40.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i.i.i, i64 1 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.cp
  br i1 %i.ct, label %.critedge.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !9325
  %i.cv = icmp ne i8 %i.cu, 91
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i.i.i, i64 2 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.cp
  %or.cond51.i.i.i = select i1 %i.cv, i1 true, i1 %i.cx
  br i1 %or.cond51.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %.critedge4.i.i.i
  %.sroa.09.036.i.i.i = phi ptr [ %i.da, %.critedge4.i.i.i ], [ %i.cw, %bb.l ] ; 4 uses
  %i.cy = load i8, ptr %.sroa.09.036.i.i.i, align 1, !tbaa !9325 ; 3 uses
  %9 = sext i8 %i.cy to i32
  %isdigittmp.i.i.i = add nsw i32 %9, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  %i.cz = icmp eq i8 %i.cy, 59
  %or.cond.i.i.i = or i1 %i.cz, %isdigit.i.i.i
  br i1 %or.cond.i.i.i, label %.critedge4.i.i.i, label %.critedge2.i.i.i

.critedge4.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i.i.i, i64 1 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cp
  br i1 %i.db, label %.critedge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !664

.critedge2.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %.not.i.i.i20 = icmp eq i8 %i.cy, 109
  br i1 %.not.i.i.i20, label %.critedge6.i.i.i, label %.critedge.i.i.i

.critedge6.i.i.i:                                 ; preds = %.critedge2.i.i.i
  store i8 -1, ptr %.sroa.09.036.i.i.i, align 1, !tbaa !9325
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i.i.i, i64 1 ; 3 uses
  %i.dd = load ptr, ptr %6, align 8, !tbaa !9326  ; 3 uses
  %i.de = load i64, ptr %i.ae, align 8, !tbaa !9324 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.de ; 2 uses
  %i.dg = icmp eq ptr %i.dc, %i.df
  br i1 %i.dg, label %.critedge.i.i.i, label %.lr.ph40.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge6.i.i.i, %.critedge2.i.i.i, %bb.l, %bb.k, %.lr.ph40.i.i.i, %.critedge4.i.i.i, %.preheader.i.i.i
  %i.dh = phi i64 [ %i.cj, %.preheader.i.i.i ], [ %i.cn, %.critedge4.i.i.i ], [ %i.cn, %.lr.ph40.i.i.i ], [ %i.de, %.critedge6.i.i.i ], [ %i.cn, %bb.l ], [ %i.cn, %.critedge2.i.i.i ], [ %i.cn, %bb.k ] ; 3 uses
  %i.di = phi ptr [ %i.ck, %.preheader.i.i.i ], [ %i.co, %.critedge4.i.i.i ], [ %i.co, %.lr.ph40.i.i.i ], [ %i.dd, %.critedge6.i.i.i ], [ %i.co, %bb.l ], [ %i.co, %.critedge2.i.i.i ], [ %i.co, %bb.k ] ; 3 uses
  %.sroa.022.135.i.i.i = phi ptr [ %.sroa.022.049.i.i.i, %.preheader.i.i.i ], [ %.sroa.022.139.i.i.i, %.critedge4.i.i.i ], [ %.sroa.022.139.i.i.i, %.lr.ph40.i.i.i ], [ %i.dc, %.critedge6.i.i.i ], [ %.sroa.022.139.i.i.i, %bb.l ], [ %.sroa.022.139.i.i.i, %.critedge2.i.i.i ], [ %.sroa.022.139.i.i.i, %bb.k ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dh ; 2 uses
  %i.dk = icmp eq ptr %.sroa.022.135.i.i.i, %i.dj
  br i1 %i.dk, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge.i.i.i
  %i.dl = load i64, ptr %i.af, align 8, !tbaa !21803
  %i.dm = add i64 %i.dl, 1
  store i64 %i.dm, ptr %i.af, align 8, !tbaa !21803
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.022.135.i.i.i, i64 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge.i.i.i
  %.sroa.022.4.i.i.i = phi ptr [ %.sroa.022.135.i.i.i, %.critedge.i.i.i ], [ %i.dn, %bb.m ] ; 2 uses
  %i.do = icmp eq ptr %.sroa.022.4.i.i.i, %i.dj
  br i1 %i.do, label %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i.i.i, !llvm.loop !665

_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.dp = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ], [ %i.dh, %bb.n ] ; 3 uses
  %i.dq = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ], [ %i.di, %bb.n ] ; 2 uses
  store i64 0, ptr %i.ao, align 8
  %i.dr = load i64, ptr %i.aa, align 8, !tbaa !9324 ; 2 uses
  store i64 %i.dr, ptr %i.ah, align 8, !tbaa !19289
  store i64 70, ptr %i.ag, align 8, !tbaa !19287
  store ptr %i.ai, ptr %5, align 8, !tbaa !9321
  %i.ds = icmp eq ptr %i.dq, %i.ab
  br i1 %i.ds, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21

bb.o:                                             ; preds = %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.dt = icmp ult i64 %i.dp, 16
  call void @llvm.assume(i1 %i.dt)
  %i.du = add nuw nsw i64 %i.dp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.du, i1 false)
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21: ; preds = %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store ptr %i.dq, ptr %5, align 8, !tbaa !9326
  %i.dv = load i64, ptr %i.ab, align 8, !tbaa !9325
  store i64 %i.dv, ptr %i.ai, align 8, !tbaa !9325
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit

_ZN5Catch8TextFlow6ColumnD2Ev.exit:               ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21
  store i64 %i.dp, ptr %i.aj, align 8, !tbaa !9324
  store ptr %i.ab, ptr %6, align 8, !tbaa !9326
  store i64 0, ptr %i.ae, align 8, !tbaa !9324
  store i8 0, ptr %i.ab, align 8, !tbaa !9325
  %i.dw = load i64, ptr %i.af, align 8, !tbaa !21803
  store i64 %i.dw, ptr %i.ak, align 8, !tbaa !21803
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %i.dx = load ptr, ptr %7, align 8, !tbaa !9326  ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.ac
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit
  %i.dz = load i64, ptr %i.ac, align 8, !tbaa !9325
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #60
  %.pre61 = load i64, ptr %i.aa, align 8, !tbaa !9324
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.eb = phi i64 [ %.pre61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dr, %_ZN5Catch8TextFlow6ColumnD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %i.ec = load ptr, ptr %4, align 8, !tbaa !9326
  %i.ed = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ec, i64 noundef %i.eb) #49 ; 5 uses
  %i.ee = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Catch8TextFlowlsERSoRKNS0_6ColumnE(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef nonnull align 8 dereferenceable(64) %5) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !9325
  %i.ef = load ptr, ptr %i.ed, align 8, !tbaa !3603
  %i.eg = getelementptr i8, ptr %i.ef, i64 -24
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds i8, ptr %i.ed, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !9346
  %.not.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.el = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef nonnull %i.a, i64 noundef 1) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.em = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, i8 noundef signext 10) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.en = load ptr, ptr %5, align 8, !tbaa !9326  ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.ai
  br i1 %i.eo, label %_ZN5Catch8TextFlow6ColumnD2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.ep = load i64, ptr %i.ai, align 8, !tbaa !9325
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #60
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit24

_ZN5Catch8TextFlow6ColumnD2Ev.exit24:             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  %i.er = load ptr, ptr %4, align 8, !tbaa !9326  ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.z
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit24
  %i.et = load i64, ptr %i.z, align 8, !tbaa !9325
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  store ptr %i.am, ptr %3, align 8, !tbaa !9321
  store i64 0, ptr %i.an, align 8, !tbaa !9324
  store i8 0, ptr %i.am, align 8, !tbaa !9325
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.ev, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.ew = load ptr, ptr %3, align 8, !tbaa !9326  ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.am
  br i1 %i.ex, label %_ZN5Catch20ReusableStringStreamD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.ey = load i64, ptr %i.am, align 8, !tbaa !9325
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #60
  br label %_ZN5Catch20ReusableStringStreamD2Ev.exit

_ZN5Catch20ReusableStringStreamD2Ev.exit:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  %i.fa = load ptr, ptr %i.bd, align 8, !tbaa !3603
  %i.fb = getelementptr i8, ptr %i.fa, i64 -24
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds i8, ptr %i.bd, i64 %i.fc
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.fd, i32 noundef 0) #49
  %i.fe = call noundef ptr @_ZN5Catch9SingletonINS_13StringStreamsES1_S1_E11getInternalEv()
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  call void @_ZN5Catch13StringStreams7releaseEmPSo(ptr noundef nonnull align 8 dereferenceable(425) %i.ff, i64 noundef %i.bc, ptr noundef nonnull %i.bd)
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.038.051, i64 56 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.f
  br i1 %i.fh, label %._crit_edge.loopexit, label %bb.g
}

; Function Attrs: mustprogress nounwind memory(readwrite, argmem: write, target_mem: none) uwtable
define dso_local void @_ZN5Catch15CompactReporter14getDescriptionB5cxx11Ev(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__cxx11::basic_string") align 8 captures(none) initializes((0, 24)) %0) local_unnamed_addr #43 align 2 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noalias noundef nonnull dereferenceable(57) ptr @_Znwm(i64 noundef 57) #59 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !9326
  store i64 56, ptr %i.a, align 8, !tbaa !9325
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.b, ptr noundef nonnull align 1 dereferenceable(56) @.str.305, i64 56, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 56, ptr %i.c, align 8, !tbaa !9324
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 0, ptr %i.d, align 1, !tbaa !9325
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch15CompactReporter19noMatchingTestCasesENS_9StringRefE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0, ptr %1, i64 %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23624, !nonnull !4070, !align !19314 ; 2 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.306, i64 noundef 23) #49 ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %1, i64 noundef %2) #49
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.307, i64 noundef 2) #49 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch15CompactReporter15testRunStartingERKNS_11TestRunInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
end_hunk_5
begin_hunk_6_@_ZN5Catch15ConsoleReporter14assertionEndedERKNS_14AssertionStatsE:bb.a
  br label %_ZN5Catch12_GLOBAL__N_123ConsoleAssertionPrinterC2ERSoRKNS_14AssertionStatsEPNS_10ColourImplEb.exit

_ZN5Catch12_GLOBAL__N_123ConsoleAssertionPrinterC2ERSoRKNS_14AssertionStatsEPNS_10ColourImplEb.exit: ; preds = %bb.u, %bb.s, %bb.j, %bb.h, %bb.t, %bb.r, %bb.k, %bb.i, %bb.g, %_ZN5Catch15ConsoleReporter9lazyPrintEv.exit, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.v
  %.sroa.67.0 = phi i64 [ 0, %_ZN5Catch15ConsoleReporter9lazyPrintEv.exit ], [ 0, %bb.v ], [ 23, %bb.t ], [ 23, %bb.r ], [ 12, %bb.g ], [ %spec.select, %bb.h ], [ %spec.select30, %bb.u ], [ 41, %bb.m ], [ 12, %bb.i ], [ 40, %bb.l ], [ 30, %bb.n ], [ 54, %bb.o ], [ 4, %bb.p ], [ 7, %bb.q ], [ 33, %bb.k ], [ %spec.select26, %bb.j ], [ %spec.select28, %bb.s ] ; 2 uses
  %.sroa.50.0 = phi ptr [ @.str.15, %_ZN5Catch15ConsoleReporter9lazyPrintEv.exit ], [ @.str.15, %bb.v ], [ @.str.587, %bb.t ], [ @.str.587, %bb.r ], [ @.str.579, %bb.g ], [ %spec.select25, %bb.h ], [ %spec.select31, %bb.u ], [ @.str.584, %bb.m ], [ @.str.579, %bb.i ], [ @.str.583, %bb.l ], [ @.str.585, %bb.n ], [ @.str.586, %bb.o ], [ @.str.562, %bb.p ], [ @.str.563, %bb.q ], [ @.str.582, %bb.k ], [ %spec.select27, %bb.j ], [ %spec.select29, %bb.s ]
  %.sroa.39.0 = phi i64 [ 0, %_ZN5Catch15ConsoleReporter9lazyPrintEv.exit ], [ 20, %bb.v ], [ 7, %bb.t ], [ 6, %bb.r ], [ 6, %bb.g ], [ 6, %bb.h ], [ 7, %bb.u ], [ 6, %bb.m ], [ %.sink.i, %bb.i ], [ 6, %bb.l ], [ 6, %bb.n ], [ 6, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ 6, %bb.k ], [ %.sink.i, %bb.j ], [ 6, %bb.s ] ; 2 uses
  %.sroa.2920.0 = phi ptr [ @.str.15, %_ZN5Catch15ConsoleReporter9lazyPrintEv.exit ], [ @.str.565, %bb.v ], [ @.str.589, %bb.t ], [ @.str.397, %bb.r ], [ @.str.578, %bb.g ], [ @.str.578, %bb.h ], [ @.str.589, %bb.u ], [ @.str.397, %bb.m ], [ %.str.581.sink.i, %bb.i ], [ @.str.397, %bb.l ], [ @.str.397, %bb.n ], [ @.str.397, %bb.o ], [ @.str.15, %bb.p ], [ @.str.15, %bb.q ], [ @.str.397, %bb.k ], [ %.str.581.sink.i, %bb.j ], [ @.str.397, %bb.s ]
  %.sroa.19.0 = phi i32 [ 0, %_ZN5Catch15ConsoleReporter9lazyPrintEv.exit ], [ 18, %bb.v ], [ 23, %bb.t ], [ 18, %bb.r ], [ 3, %bb.g ], [ 3, %bb.h ], [ 23, %bb.u ], [ 18, %bb.m ], [ %.sink55.i, %bb.i ], [ 18, %bb.l ], [ 18, %bb.n ], [ 18, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ 18, %bb.k ], [ %.sink55.i, %bb.j ], [ 18, %bb.s ]
  %i.cf = load ptr, ptr %i.ah, align 8, !tbaa !3603
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i32 noundef 23) #49, !call_target !19207, !inline_history !71356
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ci, align 8, !tbaa !9357
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !9358
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %6, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %i.cj, align 8
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5CatchlsERSoRKNS_14SourceLineInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %6) ; 0 uses
  %i.cl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.322, i64 noundef 2) #49 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %i.cm = load ptr, ptr %i.ah, align 8, !tbaa !3603
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i32 noundef 0) #49, !call_target !19207, !inline_history !71357
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !22595
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !19411
  %i.ct = add i64 %i.cs, %i.cq
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !21379
  %i.cw = add i64 %i.ct, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !21378
  %i.cz = sub i64 0, %i.cy
  %.not.i8 = icmp eq i64 %i.cw, %i.cz
  br i1 %.not.i8, label %bb.ai, label %bb.w

bb.w:                                             ; preds = %_ZN5Catch12_GLOBAL__N_123ConsoleAssertionPrinterC2ERSoRKNS_14AssertionStatsEPNS_10ColourImplEb.exit
  %i.da = icmp eq i64 %.sroa.39.0, 0
  br i1 %i.da, label %_ZNK5Catch12_GLOBAL__N_123ConsoleAssertionPrinter15printResultTypeEv.exit.i, label %_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit.i.i

_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit.i.i:  ; preds = %bb.w
  %i.db = load ptr, ptr %i.ah, align 8, !tbaa !3603
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  tail call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i32 noundef %.sroa.19.0) #49, !call_target !19207, !inline_history !71358
  %i.de = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %.sroa.2920.0, i64 noundef %.sroa.39.0) #49
  %i.df = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull @.str.398, i64 noundef 2) #49 ; 0 uses
  %i.dg = load ptr, ptr %i.ah, align 8, !tbaa !3603
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  tail call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i32 noundef 0) #49, !call_target !19207, !inline_history !71359
  br label %_ZNK5Catch12_GLOBAL__N_123ConsoleAssertionPrinter15printResultTypeEv.exit.i

_ZNK5Catch12_GLOBAL__N_123ConsoleAssertionPrinter15printResultTypeEv.exit.i: ; preds = %_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit.i.i, %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !9367
  %.not.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not.i.i, label %_ZNK5Catch12_GLOBAL__N_123ConsoleAssertionPrinter23printOriginalExpressionEv.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNK5Catch12_GLOBAL__N_123ConsoleAssertionPrinter15printResultTypeEv.exit.i
  %i.dl = load ptr, ptr %i.ah, align 8, !tbaa !3603
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  tail call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i32 noundef 5) #49, !call_target !19207, !inline_history !71360
  %i.do = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.84, i64 noundef 2) #49 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  call void @_ZNK5Catch15AssertionResult20getExpressionInMacroB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.dp = load ptr, ptr %5, align 8, !tbaa !9326
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !9324
  %i.ds = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %i.dp, i64 noundef %i.dr) #49 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 10, ptr %i.g, align 1, !tbaa !9325
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !3603
  %i.du = getelementptr i8, ptr %i.dt, i64 -24
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds i8, ptr %i.ds, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !9346
  %.not.i.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef nonnull %i.g, i64 noundef 1) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.ea = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, i8 noundef signext 10) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.eb = load ptr, ptr %5, align 8, !tbaa !9326  ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit.i1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !9325
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #60
  br label %_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit.i1.i

_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit.i1.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  %i.eg = load ptr, ptr %i.ah, align 8, !tbaa !3603
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i32 noundef 0) #49, !call_target !19207, !inline_history !71361
  br label %_ZNK5Catch12_GLOBAL__N_123ConsoleAssertionPrinter23printOriginalExpressionEv.exit.i

_ZNK5Catch12_GLOBAL__N_123ConsoleAssertionPrinter23printOriginalExpressionEv.exit.i: ; preds = %_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit.i1.i, %_ZNK5Catch12_GLOBAL__N_123ConsoleAssertionPrinter15printResultTypeEv.exit.i
  %i.ej = call noundef zeroext i1 @_ZNK5Catch15AssertionResult21hasExpandedExpressionEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br i1 %i.ej, label %bb.aa, label %_ZNK5Catch12_GLOBAL__N_123ConsoleAssertionPrinter28printReconstructedExpressionEv.exit.i

bb.aa:                                            ; preds = %_ZNK5Catch12_GLOBAL__N_123ConsoleAssertionPrinter23printOriginalExpressionEv.exit.i
  %i.ek = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.399, i64 noundef 16) #49 ; 0 uses
  %i.el = load ptr, ptr %i.ah, align 8, !tbaa !3603
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i32 noundef 22) #49, !call_target !19207, !inline_history !71362
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  call void @_ZNK5Catch15AssertionResult21getExpandedExpressionB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.eo, ptr %3, align 8, !tbaa !9321
  %i.ep = load ptr, ptr %4, align 8, !tbaa !9326  ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.et = load i64, ptr %i.es, align 8, !tbaa !9324 ; 3 uses
  %i.eu = icmp ult i64 %i.et, 16
  call void @llvm.assume(i1 %i.eu)
  %i.ev = add nuw nsw i64 %i.et, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eo, ptr noundef nonnull align 8 dereferenceable(1) %i.eq, i64 %i.ev, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.aa
  store ptr %i.ep, ptr %3, align 8, !tbaa !9326
  %i.ew = load i64, ptr %i.eq, align 8, !tbaa !9325
  store i64 %i.ew, ptr %i.eo, align 8, !tbaa !9325
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !9324
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.ab
  %i.ex = phi ptr [ %i.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.eo, %bb.ab ] ; 2 uses
  %i.ey = phi i64 [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.et, %bb.ab ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.ey, ptr %i.fa, align 8, !tbaa !9324
  store ptr %i.eq, ptr %4, align 8, !tbaa !9326
  store i64 0, ptr %i.ez, align 8, !tbaa !9324
  store i8 0, ptr %i.eq, align 8, !tbaa !9325
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i64 0, ptr %i.fb, align 8, !tbaa !21803
  %i.fc = icmp samesign eq i64 %i.ey, 0
  br i1 %i.fc, label %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i, %bb.af
  %i.fd = phi i64 [ %i.gb, %bb.af ], [ %i.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i ] ; 3 uses
  %i.fe = phi ptr [ %i.gc, %bb.af ], [ %i.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i ] ; 3 uses
  %.sroa.022.049.i.i.i.i.i = phi ptr [ %.sroa.022.4.i.i.i.i.i, %bb.af ], [ %i.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i ] ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fd ; 2 uses
  %i.fg = icmp eq ptr %.sroa.022.049.i.i.i.i.i, %i.ff
  br i1 %i.fg, label %.critedge.i.i.i.i.i, label %.lr.ph40.i.i.i.i.i

.lr.ph40.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i, %.critedge6.i.i.i.i.i
  %i.fh = phi i64 [ %i.fy, %.critedge6.i.i.i.i.i ], [ %i.fd, %.preheader.i.i.i.i.i ] ; 5 uses
  %i.fi = phi ptr [ %i.fx, %.critedge6.i.i.i.i.i ], [ %i.fe, %.preheader.i.i.i.i.i ] ; 5 uses
  %i.fj = phi ptr [ %i.fz, %.critedge6.i.i.i.i.i ], [ %i.ff, %.preheader.i.i.i.i.i ] ; 3 uses
  %.sroa.022.139.i.i.i.i.i = phi ptr [ %i.fw, %.critedge6.i.i.i.i.i ], [ %.sroa.022.049.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 8 uses
  %i.fk = load i8, ptr %.sroa.022.139.i.i.i.i.i, align 1, !tbaa !9325
  %i.fl = icmp eq i8 %i.fk, 27
  br i1 %i.fl, label %bb.ac, label %.critedge.i.i.i.i.i

bb.ac:                                            ; preds = %.lr.ph40.i.i.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i.i.i.i.i, i64 1 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.fj
  br i1 %i.fn, label %.critedge.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fo = load i8, ptr %i.fm, align 1, !tbaa !9325
  %i.fp = icmp ne i8 %i.fo, 91
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i.i.i.i.i, i64 2 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.fj
  %or.cond51.i.i.i.i.i = select i1 %i.fp, i1 true, i1 %i.fr
  br i1 %or.cond51.i.i.i.i.i, label %.critedge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ad, %.critedge4.i.i.i.i.i
  %.sroa.09.036.i.i.i.i.i = phi ptr [ %i.fu, %.critedge4.i.i.i.i.i ], [ %i.fq, %bb.ad ] ; 4 uses
  %i.fs = load i8, ptr %.sroa.09.036.i.i.i.i.i, align 1, !tbaa !9325 ; 3 uses
  %7 = sext i8 %i.fs to i32
  %isdigittmp.i.i.i.i.i = add nsw i32 %7, -48
  %isdigit.i.i.i.i.i = icmp ult i32 %isdigittmp.i.i.i.i.i, 10
  %i.ft = icmp eq i8 %i.fs, 59
  %or.cond.i.i.i.i.i = or i1 %i.ft, %isdigit.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %.critedge4.i.i.i.i.i, label %.critedge2.i.i.i.i.i

.critedge4.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i.i.i.i.i, i64 1 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.fj
  br i1 %i.fv, label %.critedge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !664

.critedge2.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i8 %i.fs, 109
  br i1 %.not.i.i.i.i.i, label %.critedge6.i.i.i.i.i, label %.critedge.i.i.i.i.i

.critedge6.i.i.i.i.i:                             ; preds = %.critedge2.i.i.i.i.i
  store i8 -1, ptr %.sroa.09.036.i.i.i.i.i, align 1, !tbaa !9325
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i.i.i.i.i, i64 1 ; 3 uses
  %i.fx = load ptr, ptr %3, align 8, !tbaa !9326  ; 3 uses
  %i.fy = load i64, ptr %i.fa, align 8, !tbaa !9324 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fy ; 2 uses
  %i.ga = icmp eq ptr %i.fw, %i.fz
  br i1 %i.ga, label %.critedge.i.i.i.i.i, label %.lr.ph40.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.critedge6.i.i.i.i.i, %.critedge2.i.i.i.i.i, %bb.ad, %bb.ac, %.lr.ph40.i.i.i.i.i, %.critedge4.i.i.i.i.i, %.preheader.i.i.i.i.i
  %i.gb = phi i64 [ %i.fd, %.preheader.i.i.i.i.i ], [ %i.fh, %.critedge4.i.i.i.i.i ], [ %i.fh, %.lr.ph40.i.i.i.i.i ], [ %i.fy, %.critedge6.i.i.i.i.i ], [ %i.fh, %bb.ad ], [ %i.fh, %.critedge2.i.i.i.i.i ], [ %i.fh, %bb.ac ] ; 2 uses
  %i.gc = phi ptr [ %i.fe, %.preheader.i.i.i.i.i ], [ %i.fi, %.critedge4.i.i.i.i.i ], [ %i.fi, %.lr.ph40.i.i.i.i.i ], [ %i.fx, %.critedge6.i.i.i.i.i ], [ %i.fi, %bb.ad ], [ %i.fi, %.critedge2.i.i.i.i.i ], [ %i.fi, %bb.ac ] ; 2 uses
  %.sroa.022.135.i.i.i.i.i = phi ptr [ %.sroa.022.049.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.sroa.022.139.i.i.i.i.i, %.critedge4.i.i.i.i.i ], [ %.sroa.022.139.i.i.i.i.i, %.lr.ph40.i.i.i.i.i ], [ %i.fw, %.critedge6.i.i.i.i.i ], [ %.sroa.022.139.i.i.i.i.i, %bb.ad ], [ %.sroa.022.139.i.i.i.i.i, %.critedge2.i.i.i.i.i ], [ %.sroa.022.139.i.i.i.i.i, %bb.ac ] ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gb ; 2 uses
  %i.ge = icmp eq ptr %.sroa.022.135.i.i.i.i.i, %i.gd
  br i1 %i.ge, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.critedge.i.i.i.i.i
  %i.gf = load i64, ptr %i.fb, align 8, !tbaa !21803
  %i.gg = add i64 %i.gf, 1
  store i64 %i.gg, ptr %i.fb, align 8, !tbaa !21803
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.022.135.i.i.i.i.i, i64 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.critedge.i.i.i.i.i
  %.sroa.022.4.i.i.i.i.i = phi ptr [ %.sroa.022.135.i.i.i.i.i, %.critedge.i.i.i.i.i ], [ %i.gh, %bb.ae ] ; 2 uses
  %i.gi = icmp eq ptr %.sroa.022.4.i.i.i.i.i, %i.gd
  br i1 %i.gi, label %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !665

_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i: ; preds = %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 79, ptr %i.gj, align 8, !tbaa !19287
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 -1, ptr %i.gl, align 8, !tbaa !19288
  store i64 2, ptr %i.gk, align 8, !tbaa !19289
  %i.gm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Catch8TextFlowlsERSoRKNS0_6ColumnE(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull align 8 dereferenceable(64) %3) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 10, ptr %i.f, align 1, !tbaa !9325
  %i.gn = load ptr, ptr %i.af, align 8, !tbaa !3603
  %i.go = getelementptr i8, ptr %i.gn, i64 -24
  %i.gp = load i64, ptr %i.go, align 8
  %i.gq = getelementptr inbounds i8, ptr %i.af, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !9346
  %.not.i.i2.i = icmp eq i64 %i.gs, 0
  br i1 %.not.i.i2.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i
  %i.gt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %i.f, i64 noundef 1) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i3.i

bb.ah:                                            ; preds = %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i
  %i.gu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i8 noundef signext 10) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i3.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i3.i: ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.gv = load ptr, ptr %3, align 8, !tbaa !9326  ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.eo
  br i1 %i.gw, label %_ZN5Catch8TextFlow6ColumnD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i3.i
  %i.gx = load i64, ptr %i.eo, align 8, !tbaa !9325
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #60
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit.i.i

_ZN5Catch8TextFlow6ColumnD2Ev.exit.i.i:           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.gz = load ptr, ptr %4, align 8, !tbaa !9326  ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.eq
  br i1 %i.ha, label %_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit.i5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit.i.i
  %i.hb = load i64, ptr %i.eq, align 8, !tbaa !9325
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #60
  br label %_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit.i5.i

_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit.i5.i: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  %i.hd = load ptr, ptr %i.ah, align 8, !tbaa !3603
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i32 noundef 0) #49, !call_target !19207, !inline_history !71363
  br label %_ZNK5Catch12_GLOBAL__N_123ConsoleAssertionPrinter28printReconstructedExpressionEv.exit.i

bb.ai:                                            ; preds = %_ZN5Catch12_GLOBAL__N_123ConsoleAssertionPrinterC2ERSoRKNS_14AssertionStatsEPNS_10ColourImplEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 10, ptr %i.e, align 1, !tbaa !9325
  %i.hg = load ptr, ptr %i.af, align 8, !tbaa !3603
  %i.hh = getelementptr i8, ptr %i.hg, i64 -24
  %i.hi = load i64, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds i8, ptr %i.af, i64 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !9346
  %.not.i7.i = icmp eq i64 %i.hl, 0
  br i1 %.not.i7.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %i.e, i64 noundef 1) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.hn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i8 noundef signext 10) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_ZNK5Catch12_GLOBAL__N_123ConsoleAssertionPrinter28printReconstructedExpressionEv.exit.i

_ZNK5Catch12_GLOBAL__N_123ConsoleAssertionPrinter28printReconstructedExpressionEv.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i, %_ZN5Catch10ColourImpl11ColourGuardD2Ev.exit.i5.i, %_ZNK5Catch12_GLOBAL__N_123ConsoleAssertionPrinter23printOriginalExpressionEv.exit.i
  %i.ho = icmp eq i64 %.sroa.67.0, 0
  br i1 %i.ho, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %_ZNK5Catch12_GLOBAL__N_123ConsoleAssertionPrinter28printReconstructedExpressionEv.exit.i
  %i.hp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.67.0) #49 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 58, ptr %i.d, align 1, !tbaa !9325
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !3603
  %i.hr = getelementptr i8, ptr %i.hq, i64 -24
  %i.hs = load i64, ptr %i.hr, align 8
  %i.ht = getelementptr inbounds i8, ptr %i.hp, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !9346
  %.not.i.i9.i = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i9.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hp, ptr noundef nonnull %i.d, i64 noundef 1) #49
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i10.i

bb.an:                                            ; preds = %bb.al
  %i.hx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.hp, i8 noundef signext 58) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i10.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i10.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i = phi ptr [ %i.hw, %bb.am ], [ %i.hp, %bb.an ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !9325
  %i.hy = load ptr, ptr %.0.i.i.i, align 8, !tbaa !3603
  %i.hz = getelementptr i8, ptr %i.hy, i64 -24
  %i.ia = load i64, ptr %i.hz, align 8
  %i.ib = getelementptr inbounds i8, ptr %.0.i.i.i, i64 %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !9346
  %.not.i7.i.i = icmp eq i64 %i.id, 0
  br i1 %.not.i7.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i10.i
  %i.ie = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i, ptr noundef nonnull %i.c, i64 noundef 1) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit9.i.i

bb.ap:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i10.i
  %i.if = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i, i8 noundef signext 10) #49 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit9.i.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit9.i.i: ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.aq

bb.aq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit9.i.i, %_ZNK5Catch12_GLOBAL__N_123ConsoleAssertionPrinter28printReconstructedExpressionEv.exit.i
  %i.ig = load ptr, ptr %i.ai, align 8, !tbaa !16157 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !16157 ; 3 uses
  %i.ij = icmp eq ptr %i.ig, %i.ii
  br i1 %i.ij, label %_ZNK5Catch12_GLOBAL__N_123ConsoleAssertionPrinter5printEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aq
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br i1 %i.v, label %.lr.ph.i.i.split.us, label %.lr.ph.i.i.split

.lr.ph.i.i.split.us:                              ; preds = %.lr.ph.i.i, %_ZN5Catch8TextFlow6ColumnD2Ev.exit.i13.i.us
  %.sroa.013.016.i.i.us = phi ptr [ %i.jc, %_ZN5Catch8TextFlow6ColumnD2Ev.exit.i13.i.us ], [ %i.ig, %.lr.ph.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.013.016.i.i.us, i64 16
  call void @_ZN5Catch8TextFlow18AnsiSkippingStringC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.io)
  store i64 79, ptr %i.ik, align 8, !tbaa !19287
  store i64 -1, ptr %i.im, align 8, !tbaa !19288
  store i64 2, ptr %i.il, align 8, !tbaa !19289
  %i.ip = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Catch8TextFlowlsERSoRKNS0_6ColumnE(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull align 8 dereferenceable(64) %2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
end_hunk_6
begin_hunk_7_@_ZN5Catch15ConsoleReporter12sectionEndedERKNS_12SectionStatsE:bb.a
bb.q:                                             ; preds = %bb.p, %_ZN5Catch18shouldShowDurationERKNS_7IConfigEd.exit.thread16
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !23674 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -48 ; 2 uses
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !23674
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !9326 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 -32 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZN5Catch21StreamingReporterBase12sectionEndedERKNS_12SectionStatsE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.q
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !9325
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #60
  br label %_ZN5Catch21StreamingReporterBase12sectionEndedERKNS_12SectionStatsE.exit

_ZN5Catch21StreamingReporterBase12sectionEndedERKNS_12SectionStatsE.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch21StreamingReporterBase12sectionEndedERKNS_12SectionStatsE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(89) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23674 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -48 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !23674
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9326 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt6vectorIN5Catch11SectionInfoESaIS1_EE8pop_backEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !9325
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #60
  br label %_ZNSt6vectorIN5Catch11SectionInfoESaIS1_EE8pop_backEv.exit

_ZNSt6vectorIN5Catch11SectionInfoESaIS1_EE8pop_backEv.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch15ConsoleReporter18benchmarkPreparingENS_9StringRefE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0, ptr nofree readonly captures(address_is_null) %1, i64 %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.Catch::TextFlow::Column", align 8 ; 14 uses
  %4 = alloca %"class.Catch::TextFlow::Column", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.Catch::TextFlow::Column::const_iterator", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.b = load i8, ptr %i.a, align 1, !tbaa !23671, !range !16139, !noundef !4070
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5Catch15ConsoleReporter16lazyPrintRunInfoEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !23670, !range !16139, !noundef !4070
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN5Catch15ConsoleReporter37lazyPrintWithoutClosingBenchmarkTableEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5Catch15ConsoleReporter29printTestCaseAndSectionHeaderEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  store i8 1, ptr %i.d, align 8, !tbaa !23670
  br label %_ZN5Catch15ConsoleReporter37lazyPrintWithoutClosingBenchmarkTableEv.exit

_ZN5Catch15ConsoleReporter37lazyPrintWithoutClosingBenchmarkTableEv.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  store ptr %i.g, ptr %5, align 8, !tbaa !9321, !alias.scope !71374
  %i.h = icmp eq ptr %1, null
  %i.i = icmp ne i64 %2, 0
  %or.cond.i.i = and i1 %i.h, %i.i
  br i1 %or.cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5Catch15ConsoleReporter37lazyPrintWithoutClosingBenchmarkTableEv.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.504) #58
  unreachable

bb.f:                                             ; preds = %_ZN5Catch15ConsoleReporter37lazyPrintWithoutClosingBenchmarkTableEv.exit
  %i.j = icmp ugt i64 %2, 15
  br i1 %i.j, label %bb.g, label %._crit_edge.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.k = icmp slt i64 %2, 0
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.502) #58
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = add nuw i64 %2, 1                        ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !9356

bb.j:                                             ; preds = %bb.i
  call void @_ZSt17__throw_bad_allocv() #58
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.i
  %i.n = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #59 ; 2 uses
  store ptr %i.n, ptr %5, align 8, !tbaa !9326, !alias.scope !71374
  store i64 %2, ptr %i.g, align 8, !tbaa !9325, !alias.scope !71374
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.f
  %i.o = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.g, %bb.f ] ; 3 uses
  switch i64 %2, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNK5Catch9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %1, align 1, !tbaa !9325
  store i8 %i.p, ptr %i.o, align 1, !tbaa !9325
  br label %_ZNK5Catch9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.l:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZNK5Catch9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK5Catch9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %._crit_edge.i.i.i, %bb.k, %bb.l
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 %2, ptr %i.q, align 8, !tbaa !9324, !alias.scope !71374
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %2
  store i8 0, ptr %i.r, align 1, !tbaa !9325
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.s, ptr %4, align 8, !tbaa !9321
  %i.t = load ptr, ptr %5, align 8, !tbaa !9326   ; 3 uses
  %i.u = icmp eq ptr %i.t, %i.g
  br i1 %i.u, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.m:                                             ; preds = %_ZNK5Catch9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %i.v = load i64, ptr %i.q, align 8, !tbaa !9324 ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNK5Catch9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  store ptr %i.t, ptr %4, align 8, !tbaa !9326
  %i.y = load i64, ptr %i.g, align 8, !tbaa !9325
  store i64 %i.y, ptr %i.s, align 8, !tbaa !9325
  %.pr = load i64, ptr %i.q, align 8, !tbaa !9324
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.m
  %i.z = phi ptr [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.s, %bb.m ] ; 3 uses
  %i.aa = phi i64 [ %.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.v, %bb.m ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !9324
  store ptr %i.g, ptr %5, align 8, !tbaa !9326
  store i64 0, ptr %i.q, align 8, !tbaa !9324
  store i8 0, ptr %i.g, align 8, !tbaa !9325
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !21803
  %i.ad = icmp samesign eq i64 %i.aa, 0
  br i1 %i.ad, label %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %bb.q
  %i.ae = phi i64 [ %i.bc, %bb.q ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ] ; 3 uses
  %i.af = phi ptr [ %i.bd, %bb.q ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ] ; 3 uses
  %.sroa.022.049.i.i.i = phi ptr [ %.sroa.022.4.i.i.i, %bb.q ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae ; 2 uses
  %i.ah = icmp eq ptr %.sroa.022.049.i.i.i, %i.ag
  br i1 %i.ah, label %.critedge.i.i.i, label %.lr.ph40.i.i.i

.lr.ph40.i.i.i:                                   ; preds = %.preheader.i.i.i, %.critedge6.i.i.i
  %i.ai = phi i64 [ %i.az, %.critedge6.i.i.i ], [ %i.ae, %.preheader.i.i.i ] ; 5 uses
  %i.aj = phi ptr [ %i.ay, %.critedge6.i.i.i ], [ %i.af, %.preheader.i.i.i ] ; 5 uses
  %i.ak = phi ptr [ %i.ba, %.critedge6.i.i.i ], [ %i.ag, %.preheader.i.i.i ] ; 3 uses
  %.sroa.022.139.i.i.i = phi ptr [ %i.ax, %.critedge6.i.i.i ], [ %.sroa.022.049.i.i.i, %.preheader.i.i.i ] ; 8 uses
  %i.al = load i8, ptr %.sroa.022.139.i.i.i, align 1, !tbaa !9325
  %i.am = icmp eq i8 %i.al, 27
  br i1 %i.am, label %bb.n, label %.critedge.i.i.i

bb.n:                                             ; preds = %.lr.ph40.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i.i.i, i64 1 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ak
  br i1 %i.ao, label %.critedge.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !9325
  %i.aq = icmp ne i8 %i.ap, 91
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i.i.i, i64 2 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ak
  %or.cond51.i.i.i = select i1 %i.aq, i1 true, i1 %i.as
  br i1 %or.cond51.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %.critedge4.i.i.i
  %.sroa.09.036.i.i.i = phi ptr [ %i.av, %.critedge4.i.i.i ], [ %i.ar, %bb.o ] ; 4 uses
  %i.at = load i8, ptr %.sroa.09.036.i.i.i, align 1, !tbaa !9325 ; 3 uses
  %8 = sext i8 %i.at to i32
  %isdigittmp.i.i.i = add nsw i32 %8, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  %i.au = icmp eq i8 %i.at, 59
  %or.cond.i.i.i = or i1 %i.au, %isdigit.i.i.i
  br i1 %or.cond.i.i.i, label %.critedge4.i.i.i, label %.critedge2.i.i.i

.critedge4.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i.i.i, i64 1 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ak
  br i1 %i.aw, label %.critedge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !664

.critedge2.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i8 %i.at, 109
  br i1 %.not.i.i.i, label %.critedge6.i.i.i, label %.critedge.i.i.i

.critedge6.i.i.i:                                 ; preds = %.critedge2.i.i.i
  store i8 -1, ptr %.sroa.09.036.i.i.i, align 1, !tbaa !9325
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i.i.i, i64 1 ; 3 uses
  %i.ay = load ptr, ptr %4, align 8, !tbaa !9326  ; 3 uses
  %i.az = load i64, ptr %i.ab, align 8, !tbaa !9324 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.az ; 2 uses
  %i.bb = icmp eq ptr %i.ax, %i.ba
  br i1 %i.bb, label %.critedge.i.i.i, label %.lr.ph40.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge6.i.i.i, %.critedge2.i.i.i, %bb.o, %bb.n, %.lr.ph40.i.i.i, %.critedge4.i.i.i, %.preheader.i.i.i
  %i.bc = phi i64 [ %i.ae, %.preheader.i.i.i ], [ %i.ai, %.critedge4.i.i.i ], [ %i.ai, %.lr.ph40.i.i.i ], [ %i.az, %.critedge6.i.i.i ], [ %i.ai, %bb.o ], [ %i.ai, %.critedge2.i.i.i ], [ %i.ai, %bb.n ] ; 3 uses
  %i.bd = phi ptr [ %i.af, %.preheader.i.i.i ], [ %i.aj, %.critedge4.i.i.i ], [ %i.aj, %.lr.ph40.i.i.i ], [ %i.ay, %.critedge6.i.i.i ], [ %i.aj, %bb.o ], [ %i.aj, %.critedge2.i.i.i ], [ %i.aj, %bb.n ] ; 3 uses
  %.sroa.022.135.i.i.i = phi ptr [ %.sroa.022.049.i.i.i, %.preheader.i.i.i ], [ %.sroa.022.139.i.i.i, %.critedge4.i.i.i ], [ %.sroa.022.139.i.i.i, %.lr.ph40.i.i.i ], [ %i.ax, %.critedge6.i.i.i ], [ %.sroa.022.139.i.i.i, %bb.o ], [ %.sroa.022.139.i.i.i, %.critedge2.i.i.i ], [ %.sroa.022.139.i.i.i, %bb.n ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc ; 2 uses
  %i.bf = icmp eq ptr %.sroa.022.135.i.i.i, %i.be
  br i1 %i.bf, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge.i.i.i
  %i.bg = load i64, ptr %i.ac, align 8, !tbaa !21803
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.ac, align 8, !tbaa !21803
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.022.135.i.i.i, i64 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.critedge.i.i.i
  %.sroa.022.4.i.i.i = phi ptr [ %.sroa.022.135.i.i.i, %.critedge.i.i.i ], [ %i.bi, %bb.p ] ; 2 uses
  %i.bj = icmp eq ptr %.sroa.022.4.i.i.i, %i.be
  br i1 %i.bj, label %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i.i.i, !llvm.loop !665

_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.bk = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ], [ %i.bc, %bb.q ] ; 3 uses
  %i.bl = phi ptr [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ], [ %i.bd, %bb.q ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 0, ptr %i.bn, align 8, !tbaa !19289
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 -1, ptr %i.bo, align 8, !tbaa !19288
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !23668
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !23657
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !23653
  %i.bv = add i64 %i.bu, -2
  store i64 %i.bv, ptr %i.bm, align 8, !tbaa !19287
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.bw, ptr %3, align 8, !tbaa !9321
  %i.bx = icmp eq ptr %i.bl, %i.s
  br i1 %i.bx, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3

bb.r:                                             ; preds = %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.by = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.bz, i1 false)
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3: ; preds = %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store ptr %i.bl, ptr %3, align 8, !tbaa !9326
  %i.ca = load i64, ptr %i.s, align 8, !tbaa !9325
  store i64 %i.ca, ptr %i.bw, align 8, !tbaa !9325
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit

_ZN5Catch8TextFlow6ColumnD2Ev.exit:               ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.bk, ptr %i.cb, align 8, !tbaa !9324
  store ptr %i.s, ptr %4, align 8, !tbaa !9326
  store i64 0, ptr %i.ab, align 8, !tbaa !9324
  store i8 0, ptr %i.s, align 8, !tbaa !9325
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cd = load i64, ptr %i.ac, align 8, !tbaa !21803
  store i64 %i.cd, ptr %i.cc, align 8, !tbaa !21803
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  %i.cf = load ptr, ptr %5, align 8, !tbaa !9326  ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.g
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit
  %i.ch = load i64, ptr %i.g, align 8, !tbaa !9325
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  call void @_ZN5Catch8TextFlow6Column14const_iteratorC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(57) %6, ptr noundef nonnull align 8 dereferenceable(64) %3)
  %i.cj = load ptr, ptr %3, align 8, !tbaa !9326, !noalias !71375 ; 2 uses
  %i.ck = load i64, ptr %i.cb, align 8, !tbaa !9324, !noalias !71375
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !9357 ; 2 uses
  %i.co = icmp ne ptr %i.cn, %i.cl
  %i.cp = load ptr, ptr %6, align 8, !nonnull !4070, !align !19314
  %i.cq = icmp ne ptr %i.cp, %3
  %.not3.i20 = select i1 %i.co, i1 true, i1 %i.cq
  br i1 %.not3.i20, label %bb.s, label %._crit_edge

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  %.sroa.2.0.copyload.i.peel = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !9357, !noalias !71376
  call void @_ZNK5Catch8TextFlow6Column14const_iterator18addIndentAndSuffixB5cxx11ENS0_18AnsiSkippingString14const_iteratorES4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull readonly align 8 dereferenceable(57) %6, ptr poison, ptr %i.cn, ptr poison, ptr %.sroa.2.0.copyload.i.peel)
  %.pre = load ptr, ptr %i.bp, align 8, !tbaa !23668 ; 2 uses
  %.pre34 = load i64, ptr %i.cr, align 8, !tbaa !9324
  %.pre33 = load ptr, ptr %7, align 8, !tbaa !9326
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre32 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !9338
  %i.ct = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pre32, ptr noundef %.pre33, i64 noundef %.pre34) #49 ; 0 uses
  %i.cu = call fastcc noundef nonnull align 8 dereferenceable(53) ptr @_ZN5CatchlsERNS_12TablePrinterENS_12_GLOBAL__N_111ColumnBreakE(ptr noundef nonnull align 8 dereferenceable(53) %.pre) ; 0 uses
  %i.cv = load ptr, ptr %7, align 8, !tbaa !9326  ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.cs
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.peel: ; preds = %bb.s
  %i.cx = load i64, ptr %i.cs, align 8, !tbaa !9325
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.peel: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  %i.cz = call noundef nonnull align 8 dereferenceable(57) ptr @_ZN5Catch8TextFlow6Column14const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(57) %6) ; 0 uses
  %i.da = load ptr, ptr %i.cm, align 8, !tbaa !9357 ; 2 uses
  %i.db = icmp ne ptr %i.da, %i.cl
  %i.dc = load ptr, ptr %6, align 8, !nonnull !4070, !align !19314
  %i.dd = icmp ne ptr %i.dc, %3
  %.not3.i.peel = select i1 %i.db, i1 true, i1 %i.dd
  br i1 %.not3.i.peel, label %.peel.next, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.peel
  %.pre36 = load ptr, ptr %3, align 8, !tbaa !9326
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.de = phi ptr [ %.pre36, %._crit_edge.loopexit ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %i.df = icmp eq ptr %i.de, %i.bw
  br i1 %i.df, label %_ZN5Catch8TextFlow6ColumnD2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4: ; preds = %._crit_edge
  %i.dg = load i64, ptr %i.bw, align 8, !tbaa !9325
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #60
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit6

_ZN5Catch8TextFlow6ColumnD2Ev.exit6:              ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  ret void

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.di = phi ptr [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ], [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.peel ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !9357, !noalias !71376
  call void @_ZNK5Catch8TextFlow6Column14const_iterator18addIndentAndSuffixB5cxx11ENS0_18AnsiSkippingString14const_iteratorES4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull readonly align 8 dereferenceable(57) %6, ptr poison, ptr %i.di, ptr poison, ptr %.sroa.2.0.copyload.i)
  %i.dj = load ptr, ptr %i.bp, align 8, !tbaa !23668 ; 3 uses
  %i.dk = call fastcc noundef nonnull align 8 dereferenceable(53) ptr @_ZN5CatchlsERNS_12TablePrinterENS_12_GLOBAL__N_111ColumnBreakE(ptr noundef nonnull align 8 dereferenceable(53) %i.dj) ; 0 uses
  %i.dl = call fastcc noundef nonnull align 8 dereferenceable(53) ptr @_ZN5CatchlsERNS_12TablePrinterENS_12_GLOBAL__N_111ColumnBreakE(ptr noundef nonnull align 8 dereferenceable(53) %i.dj) ; 0 uses
  %i.dm = call fastcc noundef nonnull align 8 dereferenceable(53) ptr @_ZN5CatchlsERNS_12TablePrinterENS_12_GLOBAL__N_111ColumnBreakE(ptr noundef nonnull align 8 dereferenceable(53) %i.dj) ; 0 uses
  %i.dn = load ptr, ptr %i.bp, align 8, !tbaa !23668 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !9338
  %i.dq = load ptr, ptr %7, align 8, !tbaa !9326
  %i.dr = load i64, ptr %i.cr, align 8, !tbaa !9324
  %i.ds = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef %i.dq, i64 noundef %i.dr) #49 ; 0 uses
  %i.dt = call fastcc noundef nonnull align 8 dereferenceable(53) ptr @_ZN5CatchlsERNS_12TablePrinterENS_12_GLOBAL__N_111ColumnBreakE(ptr noundef nonnull align 8 dereferenceable(53) %i.dn) ; 0 uses
  %i.du = load ptr, ptr %7, align 8, !tbaa !9326  ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.cs
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %.peel.next
  %i.dw = load i64, ptr %i.cs, align 8, !tbaa !9325
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %.peel.next, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  %i.dy = call noundef nonnull align 8 dereferenceable(57) ptr @_ZN5Catch8TextFlow6Column14const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(57) %6) ; 0 uses
  %i.dz = load ptr, ptr %i.cm, align 8, !tbaa !9357 ; 2 uses
  %i.ea = icmp ne ptr %i.dz, %i.cl
  %i.eb = load ptr, ptr %6, align 8, !nonnull !4070, !align !19314
  %i.ec = icmp ne ptr %i.eb, %3
end_hunk_7
begin_hunk_8_@_ZN5Catch13JunitReporter14writeAssertionERKNS_14AssertionStatsE:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !9321
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !9324
  store i8 0, ptr %i.r, align 8, !tbaa !9325
  switch i32 %i.f, label %bb.g [
    i32 273, label %bb.d
    i32 528, label %bb.d
    i32 18, label %bb.e
    i32 17, label %bb.e
    i32 274, label %bb.e
    i32 272, label %bb.f
    i32 16, label %bb.f
    i32 -1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.t = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.392, i64 noundef 5) ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.u = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.393, i64 noundef 7) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.v = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.394, i64 noundef 13) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread, %bb.e, %bb.d, %bb.c
  %i.w = phi ptr [ %i.r, %bb.f ], [ %i.o, %.thread ], [ %i.r, %bb.e ], [ %i.r, %bb.d ], [ %i.r, %bb.c ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.y = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Catch9XmlWriter12startElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13XmlFormattingE(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef zeroext 3), !noalias !71704 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  call void @_ZNK5Catch15AssertionResult13getExpressionB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.z = load ptr, ptr %4, align 8, !tbaa !9326
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !9324
  %i.ac = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Catch9XmlWriter14writeAttributeENS_9StringRefES1_(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr nonnull @.str.390, i64 7, ptr %i.z, i64 %i.ab) ; 0 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !9326  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !9325
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !9357
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !9358
  %i.ai = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Catch9XmlWriter14writeAttributeENS_9StringRefES1_(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr nonnull @.str.395, i64 4, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) ; 0 uses
  %i.aj = call noundef ptr @_ZN5Catch9SingletonINS_13StringStreamsES1_S1_E11getInternalEv()
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = call { i64, ptr } @_ZN5Catch13StringStreams3addB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(425) %i.ak) ; 2 uses
  %i.am = extractvalue { i64, ptr } %i.al, 0
  %i.an = extractvalue { i64, ptr } %i.al, 1      ; 35 uses
  %i.ao = load i32, ptr %i.e, align 8, !tbaa !9366
  %i.ap = icmp eq i32 %i.ao, 4
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.396, i64 noundef 8) #49 ; 0 uses
  br label %bb.v

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.397, i64 noundef 6) #49 ; 0 uses
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.398, i64 noundef 2) #49 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load i64, ptr %i.at, align 8, !tbaa !9367
  %.not = icmp eq i64 %i.au, 0
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.84, i64 noundef 2) #49 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  call void @_ZNK5Catch15AssertionResult20getExpressionInMacroB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.aw = load ptr, ptr %5, align 8, !tbaa !9326
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !9324
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.aw, i64 noundef %i.ay) #49 ; 0 uses
  %i.ba = load ptr, ptr %5, align 8, !tbaa !9326  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.j
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !9325
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1, !tbaa !9325
  %i.bf = load ptr, ptr %i.an, align 8, !tbaa !3603
  %i.bg = getelementptr i8, ptr %i.bf, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %i.an, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !9346
  %.not.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull %i.d, i64 noundef 1) #49 ; 0 uses
  br label %_ZN5Catch20ReusableStringStreamlsIcEERS0_RKT_.exit

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i8 noundef signext 10) #49 ; 0 uses
  br label %_ZN5Catch20ReusableStringStreamlsIcEERS0_RKT_.exit

_ZN5Catch20ReusableStringStreamlsIcEERS0_RKT_.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

bb.m:                                             ; preds = %_ZN5Catch20ReusableStringStreamlsIcEERS0_RKT_.exit, %bb.i
  %i.bn = call noundef zeroext i1 @_ZNK5Catch15AssertionResult21hasExpandedExpressionEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br i1 %i.bn, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.bo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.399, i64 noundef 16) #49 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  call void @_ZNK5Catch15AssertionResult21getExpandedExpressionB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.bp, ptr %6, align 8, !tbaa !9321
  %i.bq = load ptr, ptr %7, align 8, !tbaa !9326  ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !9324 ; 3 uses
  %i.bv = icmp ult i64 %i.bu, 16
  call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.bu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.br, i64 %i.bw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  store ptr %i.bq, ptr %6, align 8, !tbaa !9326
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !9325
  store i64 %i.bx, ptr %i.bp, align 8, !tbaa !9325
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !9324
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.o
  %i.by = phi ptr [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bp, %bb.o ] ; 2 uses
  %i.bz = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bu, %bb.o ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.bz, ptr %i.cb, align 8, !tbaa !9324
  store ptr %i.br, ptr %7, align 8, !tbaa !9326
  store i64 0, ptr %i.ca, align 8, !tbaa !9324
  store i8 0, ptr %i.br, align 8, !tbaa !9325
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store i64 0, ptr %i.cc, align 8, !tbaa !21803
  %i.cd = icmp samesign eq i64 %i.bz, 0
  br i1 %i.cd, label %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %bb.s
  %i.ce = phi i64 [ %i.dc, %bb.s ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ] ; 3 uses
  %i.cf = phi ptr [ %i.dd, %bb.s ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ] ; 3 uses
  %.sroa.022.049.i.i.i = phi ptr [ %.sroa.022.4.i.i.i, %bb.s ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce ; 2 uses
  %i.ch = icmp eq ptr %.sroa.022.049.i.i.i, %i.cg
  br i1 %i.ch, label %.critedge.i.i.i, label %.lr.ph40.i.i.i

.lr.ph40.i.i.i:                                   ; preds = %.preheader.i.i.i, %.critedge6.i.i.i
  %i.ci = phi i64 [ %i.cz, %.critedge6.i.i.i ], [ %i.ce, %.preheader.i.i.i ] ; 5 uses
  %i.cj = phi ptr [ %i.cy, %.critedge6.i.i.i ], [ %i.cf, %.preheader.i.i.i ] ; 5 uses
  %i.ck = phi ptr [ %i.da, %.critedge6.i.i.i ], [ %i.cg, %.preheader.i.i.i ] ; 3 uses
  %.sroa.022.139.i.i.i = phi ptr [ %i.cx, %.critedge6.i.i.i ], [ %.sroa.022.049.i.i.i, %.preheader.i.i.i ] ; 8 uses
  %i.cl = load i8, ptr %.sroa.022.139.i.i.i, align 1, !tbaa !9325
  %i.cm = icmp eq i8 %i.cl, 27
  br i1 %i.cm, label %bb.p, label %.critedge.i.i.i

bb.p:                                             ; preds = %.lr.ph40.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i.i.i, i64 1 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ck
  br i1 %i.co, label %.critedge.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !9325
  %i.cq = icmp ne i8 %i.cp, 91
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.022.139.i.i.i, i64 2 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.ck
  %or.cond51.i.i.i = select i1 %i.cq, i1 true, i1 %i.cs
  br i1 %or.cond51.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q, %.critedge4.i.i.i
  %.sroa.09.036.i.i.i = phi ptr [ %i.cv, %.critedge4.i.i.i ], [ %i.cr, %bb.q ] ; 4 uses
  %i.ct = load i8, ptr %.sroa.09.036.i.i.i, align 1, !tbaa !9325 ; 3 uses
  %10 = sext i8 %i.ct to i32
  %isdigittmp.i.i.i = add nsw i32 %10, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  %i.cu = icmp eq i8 %i.ct, 59
  %or.cond.i.i.i = or i1 %i.cu, %isdigit.i.i.i
  br i1 %or.cond.i.i.i, label %.critedge4.i.i.i, label %.critedge2.i.i.i

.critedge4.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i.i.i, i64 1 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.ck
  br i1 %i.cw, label %.critedge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !664

.critedge2.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i8 %i.ct, 109
  br i1 %.not.i.i.i, label %.critedge6.i.i.i, label %.critedge.i.i.i

.critedge6.i.i.i:                                 ; preds = %.critedge2.i.i.i
  store i8 -1, ptr %.sroa.09.036.i.i.i, align 1, !tbaa !9325
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i.i.i, i64 1 ; 3 uses
  %i.cy = load ptr, ptr %6, align 8, !tbaa !9326  ; 3 uses
  %i.cz = load i64, ptr %i.cb, align 8, !tbaa !9324 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cz ; 2 uses
  %i.db = icmp eq ptr %i.cx, %i.da
  br i1 %i.db, label %.critedge.i.i.i, label %.lr.ph40.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge6.i.i.i, %.critedge2.i.i.i, %bb.q, %bb.p, %.lr.ph40.i.i.i, %.critedge4.i.i.i, %.preheader.i.i.i
  %i.dc = phi i64 [ %i.ce, %.preheader.i.i.i ], [ %i.ci, %.critedge4.i.i.i ], [ %i.ci, %.lr.ph40.i.i.i ], [ %i.cz, %.critedge6.i.i.i ], [ %i.ci, %bb.q ], [ %i.ci, %.critedge2.i.i.i ], [ %i.ci, %bb.p ] ; 2 uses
  %i.dd = phi ptr [ %i.cf, %.preheader.i.i.i ], [ %i.cj, %.critedge4.i.i.i ], [ %i.cj, %.lr.ph40.i.i.i ], [ %i.cy, %.critedge6.i.i.i ], [ %i.cj, %bb.q ], [ %i.cj, %.critedge2.i.i.i ], [ %i.cj, %bb.p ] ; 2 uses
  %.sroa.022.135.i.i.i = phi ptr [ %.sroa.022.049.i.i.i, %.preheader.i.i.i ], [ %.sroa.022.139.i.i.i, %.critedge4.i.i.i ], [ %.sroa.022.139.i.i.i, %.lr.ph40.i.i.i ], [ %i.cx, %.critedge6.i.i.i ], [ %.sroa.022.139.i.i.i, %bb.q ], [ %.sroa.022.139.i.i.i, %.critedge2.i.i.i ], [ %.sroa.022.139.i.i.i, %bb.p ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dc ; 2 uses
  %i.df = icmp eq ptr %.sroa.022.135.i.i.i, %i.de
  br i1 %i.df, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.critedge.i.i.i
  %i.dg = load i64, ptr %i.cc, align 8, !tbaa !21803
  %i.dh = add i64 %i.dg, 1
  store i64 %i.dh, ptr %i.cc, align 8, !tbaa !21803
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.022.135.i.i.i, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.critedge.i.i.i
  %.sroa.022.4.i.i.i = phi ptr [ %.sroa.022.135.i.i.i, %.critedge.i.i.i ], [ %i.di, %bb.r ] ; 2 uses
  %i.dj = icmp eq ptr %.sroa.022.4.i.i.i, %i.de
  br i1 %i.dj, label %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i.i.i, !llvm.loop !665

_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 79, ptr %i.dk, align 8, !tbaa !19287
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 -1, ptr %i.dm, align 8, !tbaa !19288
  store i64 2, ptr %i.dl, align 8, !tbaa !19289
  %i.dn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Catch8TextFlowlsERSoRKNS0_6ColumnE(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(64) %6) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !9325
  %i.do = load ptr, ptr %i.an, align 8, !tbaa !3603
  %i.dp = getelementptr i8, ptr %i.do, i64 -24
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds i8, ptr %i.an, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !9346
  %.not.i.i27 = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i27, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.du = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull %i.c, i64 noundef 1) #49 ; 0 uses
  br label %_ZN5Catch20ReusableStringStreamlsIcEERS0_RKT_.exit28

bb.u:                                             ; preds = %_ZN5Catch8TextFlow6ColumnC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.dv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i8 noundef signext 10) #49 ; 0 uses
  br label %_ZN5Catch20ReusableStringStreamlsIcEERS0_RKT_.exit28

_ZN5Catch20ReusableStringStreamlsIcEERS0_RKT_.exit28: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dw = load ptr, ptr %6, align 8, !tbaa !9326  ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.bp
  br i1 %i.dx, label %_ZN5Catch8TextFlow6ColumnD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN5Catch20ReusableStringStreamlsIcEERS0_RKT_.exit28
  %i.dy = load i64, ptr %i.bp, align 8, !tbaa !9325
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #60
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit

_ZN5Catch8TextFlow6ColumnD2Ev.exit:               ; preds = %_ZN5Catch20ReusableStringStreamlsIcEERS0_RKT_.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ea = load ptr, ptr %7, align 8, !tbaa !9326  ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.br
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit
  %i.ec = load i64, ptr %i.br, align 8, !tbaa !9325
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  br label %bb.v

bb.v:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %bb.h
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !9324 ; 2 uses
  %.not86 = icmp eq i64 %i.ef, 0
  br i1 %.not86, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !9326
  %i.ei = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.eh, i64 noundef %i.ef) #49 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !9325
  %i.ej = load ptr, ptr %i.an, align 8, !tbaa !3603
  %i.ek = getelementptr i8, ptr %i.ej, i64 -24
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = getelementptr inbounds i8, ptr %i.an, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !9346
  %.not.i.i37 = icmp eq i64 %i.eo, 0
  br i1 %.not.i.i37, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ep = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull %i.b, i64 noundef 1) #49 ; 0 uses
  br label %_ZN5Catch20ReusableStringStreamlsIcEERS0_RKT_.exit38

bb.y:                                             ; preds = %bb.w
  %i.eq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i8 noundef signext 10) #49 ; 0 uses
  br label %_ZN5Catch20ReusableStringStreamlsIcEERS0_RKT_.exit38

_ZN5Catch20ReusableStringStreamlsIcEERS0_RKT_.exit38: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.z

bb.z:                                             ; preds = %_ZN5Catch20ReusableStringStreamlsIcEERS0_RKT_.exit38, %bb.v
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !16157 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !16157 ; 2 uses
  %i.ev = icmp eq ptr %i.es, %i.eu
  br i1 %i.ev, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.af, %bb.z
  %i.ew = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.400, i64 noundef 3) #49 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i39 = load ptr, ptr %i.ex, align 8, !tbaa !9357
  %.sroa.2.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2.0.copyload.i41 = load i64, ptr %.sroa.2.0..sroa_idx.i40, align 8, !tbaa !9358
  store ptr %.sroa.0.0.copyload.i39, ptr %8, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.2.0.copyload.i41, ptr %i.ey, align 8
  %i.ez = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5CatchlsERSoRKNS_14SourceLineInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #49
  call void @llvm.experimental.noalias.scope.decl(metadata !71705)
  call void @llvm.experimental.noalias.scope.decl(metadata !71706)
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.fa, ptr %9, align 8, !tbaa !9321, !alias.scope !71707
  %i.fb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.fb, align 8, !tbaa !9324, !alias.scope !71707
  store i8 0, ptr %i.fa, align 8, !tbaa !9325, !alias.scope !71707
  %i.fc = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !9334, !noalias !71708 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.fd, null
  %i.fe = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !71708 ; 2 uses
  %i.fg = icmp ugt ptr %i.fd, %i.ff
  %.08.i.i.i.i = select i1 %i.fg, ptr %i.fd, ptr %i.ff ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i44 = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not4.i.i.i
  br i1 %.not.i.i.i44, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.fh = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !9335, !noalias !71708 ; 2 uses
  %i.fj = ptrtoint ptr %.08.i.i.i.i to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.fi, i64 noundef %i.fl) ; 0 uses
  br label %_ZNK5Catch20ReusableStringStream3strB5cxx11Ev.exit

bb.ab:                                            ; preds = %._crit_edge
  %i.fn = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.fn)
  br label %_ZNK5Catch20ReusableStringStream3strB5cxx11Ev.exit

_ZNK5Catch20ReusableStringStream3strB5cxx11Ev.exit: ; preds = %bb.aa, %bb.ab
  %i.fo = load ptr, ptr %9, align 8, !tbaa !9326
  %i.fp = load i64, ptr %i.fb, align 8, !tbaa !9324
  %i.fq = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Catch9XmlWriter9writeTextENS_9StringRefENS_13XmlFormattingE(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr %i.fo, i64 %i.fp, i8 noundef zeroext 2) ; 0 uses
  %i.fr = load ptr, ptr %9, align 8, !tbaa !9326  ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.fa
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNK5Catch20ReusableStringStream3strB5cxx11Ev.exit
  %i.ft = load i64, ptr %i.fa, align 8, !tbaa !9325
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNK5Catch20ReusableStringStream3strB5cxx11Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
end_hunk_8
