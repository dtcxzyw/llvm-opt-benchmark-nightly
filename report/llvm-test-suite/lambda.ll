inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@main:bb.a
  %.6138 = select i1 %.not152, i32 %.5137, i32 %i.aj ; 8 uses
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke noundef i32 %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ao = icmp eq i32 %i.an, 3                    ; 3 uses
  %i.ap = load i32, ptr @step_lambda, align 4, !tbaa !4
  %.not153 = icmp eq i32 %i.ap, 0
  br i1 %.not153, label %bb.ag, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef ptr %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef %i.aq, i32 noundef %.6138, ptr noundef nonnull %i.c)
          to label %.preheader237 unwind label %bb.u ; 2 uses

.preheader237:                                    ; preds = %bb.s
  %.not166249 = icmp eq ptr %i.au, null
  br i1 %.not166249, label %.thread225, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader237
  %i.av = and i32 %.6138, -9
  br label %.thread233

.thread233:                                       ; preds = %.thread233.backedge, %.lr.ph
  %.0110251 = phi ptr [ %i.au, %.lr.ph ], [ %.1111, %.thread233.backedge ] ; 10 uses
  %.0118250 = phi ptr [ %i.j, %.lr.ph ], [ %.1119, %.thread233.backedge ] ; 4 uses
  %i.aw = load i32, ptr %i.c, align 4, !tbaa !4   ; 2 uses
  %i.ax = and i32 %i.aw, 2
  %.not167 = icmp eq i32 %i.ax, 0
  %i.ay = and i32 %i.aw, 4
  %.not168 = icmp eq i32 %i.ay, 0
  %.str.7..str.6 = select i1 %.not168, ptr @.str.7, ptr @.str.6
  %.0109 = select i1 %.not167, ptr @.str.5, ptr %.str.7..str.6
  %i.az = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %.0109) ; 0 uses
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  br i1 %i.ao, label %bb.v, label %bb.x

bb.t:                                             ; preds = %bb.q
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.u:                                             ; preds = %bb.s
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.v:                                             ; preds = %.thread233
  %i.bd = load ptr, ptr %.0110251, align 8, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %.0110251, ptr noundef %i.ba, i32 noundef %i.av)
          to label %bb.y unwind label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.x:                                             ; preds = %.thread233
  invoke void @_ZNK8exp_node14symbolic_printEPK9alst_nodei(ptr noundef nonnull align 8 dereferenceable(16) %.0110251, ptr noundef %i.ba, i32 noundef %.6138)
          to label %bb.y unwind label %bb.w

bb.y:                                             ; preds = %bb.x, %bb.v
  %putchar169 = call i32 @putchar(i32 10)         ; 0 uses
  %i.bh = load i32, ptr %i.c, align 4, !tbaa !4   ; 2 uses
  %i.bi = and i32 %i.bh, 2
  %.not170 = icmp eq i32 %i.bi, 0
  br i1 %.not170, label %.thread214, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bj = and i32 %i.bh, -7
  store i32 %i.bj, ptr %i.c, align 4, !tbaa !4
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.bl = load ptr, ptr %.0110251, align 8, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 104
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = invoke noundef ptr %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %.0110251, ptr noundef %i.bk, i32 noundef %.6138, ptr noundef nonnull %i.c)
          to label %bb.aa unwind label %bb.ac     ; 3 uses

bb.aa:                                            ; preds = %bb.z
  %.not171 = icmp eq ptr %i.bo, null
  %.not172 = icmp eq ptr %.0110251, %i.bo
  %or.cond191 = or i1 %.not171, %.not172
  br i1 %or.cond191, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load ptr, ptr %.0110251, align 8, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %.0110251) #7
  %i.bs = icmp eq ptr %.0110251, %.0118250
  %spec.store.select = select i1 %i.bs, ptr null, ptr %.0118250
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %.1119 = phi ptr [ %spec.store.select, %bb.ab ], [ %.0118250, %bb.aa ] ; 3 uses
  %.1111 = phi ptr [ %i.bo, %bb.ab ], [ %.0110251, %bb.aa ]
  %i.bu = load i32, ptr %i.c, align 4, !tbaa !4
  %i.bv = and i32 %i.bu, 2
  %.not173 = icmp eq i32 %i.bv, 0
  br i1 %.not173, label %.thread214, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9) ; 0 uses
  %i.bx = load ptr, ptr @stdin, align 8, !tbaa !13
  %i.by = call i32 @getc(ptr noundef %i.bx), !inline_history !15 ; 2 uses
  %.not174 = icmp eq i32 %i.by, 10
  br i1 %.not174, label %.thread233.backedge, label %.preheader

.thread233.backedge:                              ; preds = %bb.ae, %bb.af
  br label %.thread233, !llvm.loop !16

.preheader:                                       ; preds = %bb.ae, %.preheader
  %i.bz = load ptr, ptr @stdin, align 8, !tbaa !13
  %i.ca = call i32 @getc(ptr noundef %i.bz), !inline_history !15
  %.not177 = icmp eq i32 %i.ca, 10
  br i1 %.not177, label %bb.af, label %.preheader, !llvm.loop !18

bb.af:                                            ; preds = %.preheader
  %i.cb = and i32 %i.by, -33
  %or.cond = icmp eq i32 %i.cb, 78
  br i1 %or.cond, label %.thread214, label %.thread233.backedge

bb.ag:                                            ; preds = %bb.r
  %i.cc = load i32, ptr @step_thru, align 4, !tbaa !4
  %.not154 = icmp eq i32 %i.cc, 0
  br i1 %.not154, label %bb.as, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cd = or i32 %.6138, 1                        ; 4 uses
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.cf = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 104
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = invoke noundef ptr %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef %i.ce, i32 noundef %i.cd, ptr noundef nonnull %i.c)
          to label %.preheader236 unwind label %bb.am

.preheader236:                                    ; preds = %bb.ah, %bb.ao
  %.6124 = phi ptr [ %.7125, %bb.ao ], [ %i.j, %bb.ah ] ; 5 uses
  %.0 = phi ptr [ %.1, %bb.ao ], [ %i.ci, %bb.ah ] ; 9 uses
  %.not157 = icmp eq ptr %.0, null
  br i1 %.not157, label %.thread214, label %bb.ai

bb.ai:                                            ; preds = %.preheader236
  %i.cj = load i32, ptr %i.c, align 4, !tbaa !4   ; 2 uses
  %i.ck = and i32 %i.cj, 2
  %.not158 = icmp eq i32 %i.ck, 0
  br i1 %.not158, label %select.unfold204, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cl = and i32 %i.cj, -3
  store i32 %i.cl, ptr %i.c, align 4, !tbaa !4
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.cn = load ptr, ptr %.0, align 8, !tbaa !11
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 104
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = invoke noundef ptr %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %.0, ptr noundef %i.cm, i32 noundef %i.cd, ptr noundef nonnull %i.c)
          to label %bb.ak unwind label %bb.an     ; 3 uses

bb.ak:                                            ; preds = %bb.aj
  %.not159 = icmp eq ptr %i.cq, null
  %.not160 = icmp eq ptr %.0, %i.cq
  %or.cond192 = or i1 %.not159, %.not160
  br i1 %or.cond192, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cr = load ptr, ptr %.0, align 8, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %.0) #7
  %i.cu = icmp eq ptr %.0, %.6124
  %spec.store.select5 = select i1 %i.cu, ptr null, ptr %.6124
  br label %bb.ao

bb.am:                                            ; preds = %bb.aq, %bb.ap, %bb.ah
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.an:                                            ; preds = %bb.aj
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ao:                                            ; preds = %bb.al, %bb.ak
  %.7125 = phi ptr [ %spec.store.select5, %bb.al ], [ %.6124, %bb.ak ] ; 2 uses
  %.1 = phi ptr [ %i.cq, %bb.al ], [ %.0, %bb.ak ] ; 2 uses
  %i.cx = load i32, ptr %i.c, align 4, !tbaa !4
  %i.cy = and i32 %i.cx, 2
  %.not161 = icmp eq i32 %i.cy, 0
  br i1 %.not161, label %select.unfold204, label %.preheader236, !llvm.loop !19

select.unfold204:                                 ; preds = %bb.ao, %bb.ai
  %.8126.ph = phi ptr [ %.6124, %bb.ai ], [ %.7125, %bb.ao ] ; 2 uses
  %.2.ph = phi ptr [ %.0, %bb.ai ], [ %.1, %bb.ao ] ; 6 uses
  %i.cz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  %i.da = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  br i1 %i.ao, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %select.unfold204
  %i.db = and i32 %i.cd, -9
  %i.dc = load ptr, ptr %.2.ph, align 8, !tbaa !11
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 112
  %i.de = load ptr, ptr %i.dd, align 8
  invoke void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %.2.ph, ptr noundef %i.da, i32 noundef %i.db)
          to label %bb.ar unwind label %bb.am

bb.aq:                                            ; preds = %select.unfold204
  invoke void @_ZNK8exp_node14symbolic_printEPK9alst_nodei(ptr noundef nonnull align 8 dereferenceable(16) %.2.ph, ptr noundef %i.da, i32 noundef %i.cd)
          to label %bb.ar unwind label %bb.am

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %putchar165 = call i32 @putchar(i32 10)         ; 0 uses
  %i.df = load ptr, ptr %.2.ph, align 8, !tbaa !11
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %.2.ph) #7
  %i.di = icmp eq ptr %.2.ph, %.8126.ph
  br i1 %i.di, label %.sink.split, label %.thread214

bb.as:                                            ; preds = %bb.ag
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.dk = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 104
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = invoke noundef ptr %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef %i.dj, i32 noundef %.6138, ptr noundef nonnull %i.c)
          to label %bb.at unwind label %bb.aw     ; 7 uses

bb.at:                                            ; preds = %bb.as
  %.not155 = icmp eq ptr %i.dn, null
  br i1 %.not155, label %.thread225, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  %i.dp = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  br i1 %i.ao, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.dq = and i32 %.6138, -9
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !11
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 112
  %i.dt = load ptr, ptr %i.ds, align 8
  invoke void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef %i.dp, i32 noundef %i.dq)
          to label %bb.ay unwind label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %bb.av, %bb.as
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ax:                                            ; preds = %bb.au
  invoke void @_ZNK8exp_node14symbolic_printEPK9alst_nodei(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef %i.dp, i32 noundef %.6138)
          to label %bb.ay unwind label %bb.aw

bb.ay:                                            ; preds = %bb.ax, %bb.av
  %putchar156 = call i32 @putchar(i32 10)         ; 0 uses
  %i.dv = load ptr, ptr %i.dn, align 8, !tbaa !11
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #7
  %i.dy = icmp eq ptr %i.dn, %i.j
  br i1 %i.dy, label %.sink.split, label %.thread225

.thread214:                                       ; preds = %bb.af, %bb.y, %bb.ad, %.preheader236, %bb.ar
  %.13 = phi ptr [ %.8126.ph, %bb.ar ], [ %.6124, %.preheader236 ], [ %.1119, %bb.af ], [ %.0118250, %bb.y ], [ %.1119, %bb.ad ] ; 2 uses
  %.not185 = icmp eq ptr %.13, null
  br i1 %.not185, label %.sink.split, label %.thread225

.thread225:                                       ; preds = %.preheader237, %bb.ay, %bb.at, %.thread214
  %.13228 = phi ptr [ %.13, %.thread214 ], [ %i.j, %bb.at ], [ %i.j, %bb.ay ], [ %i.j, %.preheader237 ] ; 2 uses
  %i.dz = load ptr, ptr %.13228, align 8, !tbaa !11
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %.13228) #7
  br label %.sink.split

bb.az:                                            ; preds = %bb.t, %bb.aw, %bb.ac, %bb.w, %bb.u, %bb.an, %bb.am, %bb.n
  %.pn179.pn.pn = phi { ptr, i32 } [ %i.s, %bb.n ], [ %i.bb, %bb.t ], [ %i.bt, %bb.ac ], [ %i.du, %bb.aw ], [ %i.bc, %bb.u ], [ %i.bg, %bb.w ], [ %i.cw, %bb.an ], [ %i.cv, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.bc

.sink.split:                                      ; preds = %.thread225, %.thread214, %bb.ar, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %.backedge

.backedge:                                        ; preds = %.sink.split, %bb.g
  br label %bb.f

bb.ba:                                            ; preds = %bb.i
  %i.ec = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  invoke void @_ZN12token_stream5closeEv(ptr noundef nonnull align 8 dereferenceable(8756) %2)
          to label %bb.bb unwind label %bb.l

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @_ZN24lambda_expression_parserD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @_ZN12token_streamD1Ev(ptr noundef nonnull align 8 dead_on_return(8756) dereferenceable(8756) %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 0

bb.bc:                                            ; preds = %bb.m, %bb.az, %bb.l
  %.pn187 = phi { ptr, i32 } [ %i.q, %bb.l ], [ %.pn179.pn.pn, %bb.az ], [ %i.r, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @_ZN24lambda_expression_parserD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %3) #7
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.k
  %.pn187.pn = phi { ptr, i32 } [ %.pn187, %bb.bc ], [ %i.p, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.j
  %.pn187.pn.pn = phi { ptr, i32 } [ %.pn187.pn, %bb.bd ], [ %i.o, %bb.j ]
  call void @_ZN12token_streamD1Ev(ptr noundef nonnull align 8 dead_on_return(8756) dereferenceable(8756) %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  resume { ptr, i32 } %.pn187.pn.pn
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZN12token_streamC1EPKc(ptr noundef nonnull align 8 dereferenceable(8756), ptr noundef) unnamed_addr #4

declare noundef signext i16 @_ZN12token_stream4openEPKc(ptr noundef nonnull align 8 dereferenceable(8756), ptr noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

declare void @_ZN24lambda_expression_parserC1EP12token_stream(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #4

declare noundef ptr @_ZN24lambda_expression_parser10expressionEPP11arglst_node(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

declare void @_ZN4node5resetEv() local_unnamed_addr #4

declare void @_ZNK8exp_node14symbolic_printEPK9alst_nodei(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN12token_stream5closeEv(ptr noundef nonnull align 8 dereferenceable(8756)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN24lambda_expression_parserD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN12token_streamD1Ev(ptr noundef nonnull align 8 dead_on_return(8756) dereferenceable(8756)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS11arglst_node", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!15 = distinct !{null}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
end_hunk_0
