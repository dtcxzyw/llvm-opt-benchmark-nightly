inline.NumInlined: 2217
inline.NumDeleted: 424
begin_hunk_0_@_ZN4pugi4impl12_GLOBAL__N_111node_outputERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcjj:bb.a
bb.at:                                            ; preds = %bb.as
  %i.ec = load ptr, ptr %i.j, align 8, !nonnull !22, !align !120 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  tail call void %i.ef(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull %i.dw, i64 noundef %i.dy), !inline_history !121
  %.pr = load i64, ptr %i.f, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc.exit

.lr.ph.i.i:                                       ; preds = %bb.as, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i
  %.019.i.i = phi ptr [ %i.eo, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i ], [ %i.dw, %bb.as ] ; 6 uses
  %.01418.i.i = phi i64 [ %i.ep, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i ], [ %i.dy, %bb.as ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2047
  %i.eh = load i8, ptr %i.eg, align 1
  %.not.i.i.i = icmp slt i8 %i.eh, -64
  br i1 %.not.i.i.i, label %.preheader.1.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i

.preheader.1.i.i.i:                               ; preds = %.lr.ph.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2046
  %i.ej = load i8, ptr %i.ei, align 1
  %.not.1.i.i.i = icmp slt i8 %i.ej, -64
  br i1 %.not.1.i.i.i, label %.preheader.2.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i

.preheader.2.i.i.i:                               ; preds = %.preheader.1.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2045
  %i.el = load i8, ptr %i.ek, align 1
  %.not.2.i.i.i = icmp slt i8 %i.el, -64
  br i1 %.not.2.i.i.i, label %.preheader.3.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i

.preheader.3.i.i.i:                               ; preds = %.preheader.2.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2044
  %i.en = load i8, ptr %i.em, align 1
  %.not.3.i.i.i = icmp slt i8 %i.en, -64
  %spec.select.i.i.i = select i1 %.not.3.i.i.i, i64 2048, i64 2044
  br label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i

_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i: ; preds = %.preheader.3.i.i.i, %.preheader.2.i.i.i, %.preheader.1.i.i.i, %.lr.ph.i.i
  %.3.i.i.i = phi i64 [ %spec.select.i.i.i, %.preheader.3.i.i.i ], [ 2047, %.lr.ph.i.i ], [ 2045, %.preheader.2.i.i.i ], [ 2046, %.preheader.1.i.i.i ] ; 3 uses
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %.019.i.i, i64 noundef %.3.i.i.i)
  %i.eo = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 %.3.i.i.i ; 2 uses
  %i.ep = sub nuw i64 %.01418.i.i, %.3.i.i.i      ; 3 uses
  %i.eq = icmp ugt i64 %i.ep, 2048
  br i1 %i.eq, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !122

._crit_edge.i.i:                                  ; preds = %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i
  store i64 0, ptr %i.f, align 8
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge.i.i, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i
  %.115.i.i = phi i64 [ %i.ep, %._crit_edge.i.i ], [ %i.dy, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i ] ; 2 uses
  %.1.i.i = phi ptr [ %i.eo, %._crit_edge.i.i ], [ %i.dw, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(10260) %0, ptr nonnull align 1 %.1.i.i, i64 %.115.i.i, i1 false)
  %i.er = load i64, ptr %i.f, align 8
  %i.es = add i64 %i.er, %.115.i.i                ; 2 uses
  store i64 %i.es, ptr %i.f, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc.exit

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc.exit: ; preds = %bb.aq, %bb.at, %bb.au
  %i.et = phi i64 [ %.017.lcssa.i, %bb.aq ], [ %.pr, %bb.at ], [ %i.es, %bb.au ] ; 3 uses
  %i.eu = icmp ugt i64 %i.et, 2047
  br i1 %i.eu, label %bb.av, label %_ZN4pugi4impl12_GLOBAL__N_115node_output_endERNS1_19xml_buffered_writerEPNS_15xml_node_structE.exit

bb.av:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc.exit
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.et)
  br label %_ZN4pugi4impl12_GLOBAL__N_115node_output_endERNS1_19xml_buffered_writerEPNS_15xml_node_structE.exit

_ZN4pugi4impl12_GLOBAL__N_115node_output_endERNS1_19xml_buffered_writerEPNS_15xml_node_structE.exit: ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc.exit, %bb.av
  %.0.i7.i = phi i64 [ 0, %bb.av ], [ %i.et, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc.exit ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i7.i
  store i8 62, ptr %i.ev, align 1
  %i.ew = add nuw nsw i64 %.0.i7.i, 1
  store i64 %i.ew, ptr %i.f, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_115node_output_endERNS1_19xml_buffered_writerEPNS_15xml_node_structE.exit, %bb.ai
  %.264 = phi i32 [ %i.cf, %_ZN4pugi4impl12_GLOBAL__N_115node_output_endERNS1_19xml_buffered_writerEPNS_15xml_node_structE.exit ], [ %.163107, %bb.ai ] ; 2 uses
  %.4 = phi i32 [ 3, %_ZN4pugi4impl12_GLOBAL__N_115node_output_endERNS1_19xml_buffered_writerEPNS_15xml_node_structE.exit ], [ %.3108, %bb.ai ] ; 2 uses
  %.not75 = icmp eq ptr %i.cb, %1
  br i1 %.not75, label %.loopexit, label %.lr.ph, !llvm.loop !123

.loopexit:                                        ; preds = %bb.aw, %.lr.ph, %bb.ah, %bb.af, %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit.thread
  %.365 = phi i32 [ %.062, %bb.af ], [ %i.bv, %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit.thread ], [ %.062, %bb.ah ], [ %.264, %bb.aw ], [ %.163107, %.lr.ph ]
  %.5 = phi i32 [ 2, %bb.af ], [ %spec.select, %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit.thread ], [ %.261, %bb.ah ], [ %.4, %bb.aw ], [ %.3108, %.lr.ph ] ; 2 uses
  %.2 = phi ptr [ %i.bx, %bb.af ], [ %i.bt, %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit.thread ], [ %.0, %bb.ah ], [ %i.cb, %bb.aw ], [ %i.bz, %.lr.ph ] ; 2 uses
  %.not78 = icmp eq ptr %.2, %1
  br i1 %.not78, label %bb.ax, label %bb.d, !llvm.loop !124

bb.ax:                                            ; preds = %.loopexit
  %.not79 = trunc i32 %.5 to i1
  %or.cond87 = and i1 %i.c, %.not79
  br i1 %or.cond87, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ex = load i64, ptr %i.f, align 8             ; 3 uses
  %i.ey = icmp ugt i64 %i.ex, 2047
  br i1 %i.ey, label %bb.az, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit97

bb.az:                                            ; preds = %bb.ay
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.ex)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit97

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit97: ; preds = %bb.ay, %bb.az
  %.0.i96 = phi i64 [ 0, %bb.az ], [ %i.ex, %bb.ay ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i96
  store i8 10, ptr %i.ez, align 1
  %i.fa = add nuw nsw i64 %.0.i96, 1
  store i64 %i.fa, ptr %i.f, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit97, %bb.ax
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4pugi8xml_node5printERSoPKcjNS_12xml_encodingEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.pugi::impl::(anonymous namespace)::xml_buffered_writer", align 8 ; 8 uses
  %7 = alloca %"class.pugi::xml_writer_stream", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  call void @_ZN4pugi17xml_writer_streamC1ERSo(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK4pugi8xml_node5printERNS_10xml_writerEPKcjNS_12xml_encodingEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 10240
  store ptr %7, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 10248 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %i.d = icmp ult i32 %4, 9
  %switch.maskindex = trunc i32 %4 to i16
  %switch.shifted = lshr i16 401, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.d, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit.i

switch.lookup:                                    ; preds = %bb.b
  %i.e = zext nneg i32 %4 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4pugi12xml_document4saveERNS_10xml_writerEPKcjNS_12xml_encodingE, i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit.i: ; preds = %switch.lookup, %bb.b
  %.0.i.i.i = phi i32 [ %switch.ext, %switch.lookup ], [ %4, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 10256
  store i32 %.0.i.i.i, ptr %i.f, align 8
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111node_outputERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcjj(ptr noundef nonnull align 8 dereferenceable(10260) %6, ptr noundef nonnull %i.a, ptr noundef %2, i32 noundef %3, i32 noundef %5)
  %i.g = load i64, ptr %i.c, align 8
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %6, ptr noundef nonnull align 8 dereferenceable(10260) %6, i64 noundef %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  br label %_ZNK4pugi8xml_node5printERNS_10xml_writerEPKcjNS_12xml_encodingEj.exit

_ZNK4pugi8xml_node5printERNS_10xml_writerEPKcjNS_12xml_encodingEj.exit: ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4pugi8xml_node5printERSt13basic_ostreamIwSt11char_traitsIwEEPKcjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.pugi::impl::(anonymous namespace)::xml_buffered_writer", align 8 ; 8 uses
  %6 = alloca %"class.pugi::xml_writer_stream", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  call void @_ZN4pugi17xml_writer_streamC1ERSt13basic_ostreamIwSt11char_traitsIwEE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK4pugi8xml_node5printERNS_10xml_writerEPKcjNS_12xml_encodingEj.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 10240
  store ptr %6, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 10248 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 10256
  store i32 5, ptr %i.d, align 8
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111node_outputERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcjj(ptr noundef nonnull align 8 dereferenceable(10260) %5, ptr noundef nonnull %i.a, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %i.e = load i64, ptr %i.c, align 8
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %5, ptr noundef nonnull align 8 dereferenceable(10260) %5, i64 noundef %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br label %_ZNK4pugi8xml_node5printERNS_10xml_writerEPKcjNS_12xml_encodingEj.exit

_ZNK4pugi8xml_node5printERNS_10xml_writerEPKcjNS_12xml_encodingEj.exit: ; preds = %.noexc, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK4pugi8xml_node12offset_debugEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = lshr i64 %i.b, 8
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not8.a = icmp eq ptr %i.h, null
  br i1 %.not8.a, label %bb.h, label %1

1:                                                ; preds = %bb.b
  %2 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %3 = load ptr, ptr %2, align 8
  %.not9 = icmp eq ptr %3, null
  br i1 %.not9, label %_ZNK4pugi8xml_node4typeEv.exit, label %bb.h

_ZNK4pugi8xml_node4typeEv.exit:                   ; preds = %1
  %i.i = trunc i64 %i.b to i32
  %i.j = and i32 %i.i, 15
  switch i32 %i.j, label %bb.g [
    i32 1, label %bb.h
    i32 2, label %bb.c
    i32 7, label %bb.c
    i32 6, label %bb.c
    i32 3, label %bb.e
    i32 4, label %bb.e
    i32 5, label %bb.e
    i32 8, label %bb.e
  ]

bb.c:                                             ; preds = %_ZNK4pugi8xml_node4typeEv.exit, %_ZNK4pugi8xml_node4typeEv.exit, %_ZNK4pugi8xml_node4typeEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not11 = icmp ne ptr %i.l, null
  %i.m = and i64 %i.b, 96
  %i.n = icmp eq i64 %i.m, 0
  %or.cond.a = and i1 %i.n, %.not11
  br i1 %or.cond.a, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.h to i64
  %i.q = sub i64 %i.o, %i.p
  br label %bb.h

bb.e:                                             ; preds = %_ZNK4pugi8xml_node4typeEv.exit, %_ZNK4pugi8xml_node4typeEv.exit, %_ZNK4pugi8xml_node4typeEv.exit, %_ZNK4pugi8xml_node4typeEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not10 = icmp ne ptr %i.s, null
  %i.t = and i64 %i.b, 80
  %i.u = icmp eq i64 %i.t, 0
  %or.cond14 = and i1 %i.u, %.not10
  br i1 %or.cond14, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.h to i64
  %i.x = sub i64 %i.v, %i.w
  br label %bb.h

bb.g:                                             ; preds = %_ZNK4pugi8xml_node4typeEv.exit
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %1, %bb.b, %_ZNK4pugi8xml_node4typeEv.exit, %bb.c, %bb.d, %bb.e, %bb.f, %bb.a
  %.1 = phi i64 [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.g ], [ -1, %bb.b ], [ 0, %_ZNK4pugi8xml_node4typeEv.exit ], [ -1, %1 ], [ %i.q, %bb.d ], [ -1, %bb.e ], [ %i.x, %bb.f ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4pugi8xml_textC2EPNS_15xml_node_structE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK4pugi8xml_text5_dataEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.b = trunc i64 %.val to i32
  %i.c = and i32 %i.b, 15
  %i.d = add nsw i32 %i.c, -3
  %i.e = icmp ult i32 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %.val, 15
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %.not9 = icmp eq ptr %i.i, null
  br i1 %.not9, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.0612 = load ptr, ptr %i.j, align 8            ; 2 uses
  %.not1013 = icmp eq ptr %.0612, null
  br i1 %.not1013, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.0614 = phi ptr [ %.06, %bb.f ], [ %.0612, %bb.e ] ; 3 uses
  %.06.val = load i64, ptr %.0614, align 8
  %i.k = trunc i64 %.06.val to i32
  %i.l = and i32 %i.k, 15
  %i.m = add nsw i32 %i.l, -3
  %i.n = icmp ult i32 %i.m, 2
  br i1 %i.n, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.0614, i64 48
  %.06 = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not10 = icmp eq ptr %.06, null
  br i1 %.not10, label %.loopexit, label %.lr.ph, !llvm.loop !125

.loopexit:                                        ; preds = %bb.f, %.lr.ph, %bb.e, %bb.a, %bb.b, %bb.d
  %.1 = phi ptr [ %i.a, %bb.d ], [ null, %bb.a ], [ %i.a, %bb.b ], [ null, %bb.e ], [ null, %bb.f ], [ %.0614, %.lr.ph ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4pugi8xml_text9_data_newEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8           ; 2 uses
  %i.b = trunc i64 %.val.i to i32
  %i.c = and i32 %i.b, 15
  %i.d = add nsw i32 %i.c, -3
  %i.e = icmp ult i32 %i.d, 2
  br i1 %i.e, label %_ZNK4pugi8xml_text5_dataEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %.val.i, 15
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %.not9.i = icmp eq ptr %i.i, null
  br i1 %.not9.i, label %bb.e, label %_ZNK4pugi8xml_text5_dataEv.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.0612.i = load ptr, ptr %i.j, align 8          ; 2 uses
  %.not1013.i = icmp eq ptr %.0612.i, null
  br i1 %.not1013.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.0614.i = phi ptr [ %.06.i, %bb.f ], [ %.0612.i, %bb.e ] ; 3 uses
  %.06.val.i = load i64, ptr %.0614.i, align 8
  %i.k = trunc i64 %.06.val.i to i32
  %i.l = and i32 %i.k, 15
  %i.m = add nsw i32 %i.l, -3
  %i.n = icmp ult i32 %i.m, 2
  br i1 %i.n, label %_ZNK4pugi8xml_text5_dataEv.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0614.i, i64 48
  %.06.i = load ptr, ptr %i.o, align 8            ; 2 uses
  %.not10.i = icmp eq ptr %.06.i, null
  br i1 %.not10.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !125

.loopexit:                                        ; preds = %bb.f, %bb.a, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.a)
  %i.p = call ptr @_ZN4pugi8xml_node12append_childENS_13xml_node_typeE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  br label %_ZNK4pugi8xml_text5_dataEv.exit

_ZNK4pugi8xml_text5_dataEv.exit:                  ; preds = %.lr.ph.i, %bb.d, %bb.b, %.loopexit
  %.0 = phi ptr [ %i.p, %.loopexit ], [ %i.a, %bb.d ], [ %i.a, %bb.b ], [ %.0614.i, %.lr.ph.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4pugi8xml_textC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK4pugi8xml_textcvPFvPPPS0_EEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK4pugi8xml_text5_dataEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8           ; 2 uses
  %i.b = trunc i64 %.val.i to i32
  %i.c = and i32 %i.b, 15
  %i.d = add nsw i32 %i.c, -3
  %i.e = icmp ult i32 %i.d, 2
  br i1 %i.e, label %_ZNK4pugi8xml_text5_dataEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %.val.i, 15
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %.not9.i = icmp eq ptr %i.i, null
  br i1 %.not9.i, label %bb.e, label %_ZNK4pugi8xml_text5_dataEv.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.0612.i = load ptr, ptr %i.j, align 8          ; 2 uses
  %.not1013.i = icmp eq ptr %.0612.i, null
  br i1 %.not1013.i, label %_ZNK4pugi8xml_text5_dataEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.0614.i = phi ptr [ %.06.i, %bb.f ], [ %.0612.i, %bb.e ] ; 2 uses
  %.06.val.i = load i64, ptr %.0614.i, align 8
  %i.k = trunc i64 %.06.val.i to i32
  %i.l = and i32 %i.k, 15
  %i.m = add nsw i32 %i.l, -3
  %i.n = icmp ult i32 %i.m, 2
  br i1 %i.n, label %_ZNK4pugi8xml_text5_dataEv.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0614.i, i64 48
  %.06.i = load ptr, ptr %i.o, align 8            ; 2 uses
  %.not10.i = icmp eq ptr %.06.i, null
  br i1 %.not10.i, label %_ZNK4pugi8xml_text5_dataEv.exit, label %.lr.ph.i, !llvm.loop !125

_ZNK4pugi8xml_text5_dataEv.exit:                  ; preds = %.lr.ph.i, %bb.f, %bb.a, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ @_ZN4pugiL25unspecified_bool_xml_textEPPPNS_8xml_textE, %bb.d ], [ null, %bb.a ], [ @_ZN4pugiL25unspecified_bool_xml_textEPPPNS_8xml_textE, %bb.b ], [ null, %bb.e ], [ @_ZN4pugiL25unspecified_bool_xml_textEPPPNS_8xml_textE, %.lr.ph.i ], [ null, %bb.f ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4pugiL25unspecified_bool_xml_textEPPPNS_8xml_textE(ptr nofree readnone captures(none) %0) #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK4pugi8xml_textntEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK4pugi8xml_text5_dataEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8           ; 2 uses
  %i.b = trunc i64 %.val.i to i32
  %i.c = and i32 %i.b, 15
  %i.d = add nsw i32 %i.c, -3
  %i.e = icmp ult i32 %i.d, 2
end_hunk_0
