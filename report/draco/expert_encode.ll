Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/expert_encode?download=true
inline.NumInlined: 855
inline.NumDeleted: 363
begin_hunk_0_@_ZN5draco13ExpertEncoder24EncodePointCloudToBufferERKNS_10PointCloudEPNS_13EncoderBufferE:._crit_edge.i.i
._crit_edge:                                      ; preds = %.thread141, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.br = call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #21 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.br, i8 0, i64 112, i1 false)
  invoke void @_ZN5draco17PointCloudEncoderC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.br)
          to label %_ZNSt10unique_ptrIN5draco17PointCloudEncoderESt14default_deleteIS1_EE5resetEPS1_.exit98 unwind label %bb.k

_ZNSt10unique_ptrIN5draco17PointCloudEncoderESt14default_deleteIS1_EE5resetEPS1_.exit98: ; preds = %._crit_edge
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN5draco23PointCloudKdTreeEncoderE, i64 16), ptr %i.br, align 16, !tbaa !11
  br label %.thread147

bb.k:                                             ; preds = %._crit_edge
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef 112) #19
  br label %_ZNSt10unique_ptrIN5draco17PointCloudEncoderESt14default_deleteIS1_EED2Ev.exit117

.thread140:                                       ; preds = %bb.h, %.critedge69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.bt = icmp eq i32 %i.i, 1
  br i1 %i.bt, label %.noexc.i100, label %bb.p

.noexc.i100:                                      ; preds = %.thread140
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.bu, ptr %6, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 24, ptr %i.b, align 8, !tbaa !40
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc101 unwind label %bb.n  ; 2 uses

.noexc101:                                        ; preds = %.noexc.i100
  store ptr %i.bv, ptr %6, align 8, !tbaa !42
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !40  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bv, ptr noundef nonnull align 1 dereferenceable(24) @.str.3, i64 24, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !44
  %i.by = load ptr, ptr %6, align 8, !tbaa !42
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bw
  store i8 0, ptr %i.bz, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  store i32 -1, ptr %0, align 8, !tbaa !47
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !39
  %i.cc = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.cd = load i64, ptr %i.bx, align 8, !tbaa !44 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !40
  %i.ce = icmp ugt i64 %i.cd, 15
  br i1 %i.ce, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc101
  %i.cf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc103 unwind label %bb.o  ; 2 uses

.noexc103:                                        ; preds = %.noexc.i.i
  store ptr %i.cf, ptr %i.ca, align 8, !tbaa !42
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !40
  store i64 %i.cg, ptr %i.cb, align 8, !tbaa !43
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc103, %.noexc101
  %i.ch = phi ptr [ %i.cf, %.noexc103 ], [ %i.cb, %.noexc101 ] ; 2 uses
  switch i64 %i.cd, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %.critedge72
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.ci = load i8, ptr %i.cc, align 1, !tbaa !43
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !43
  br label %.critedge72

bb.m:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ch, ptr align 1 %i.cc, i64 %i.cd, i1 false)
  br label %.critedge72

.critedge72:                                      ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !44
  %i.cl = load ptr, ptr %i.ca, align 8, !tbaa !42
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cj
  store i8 0, ptr %i.cm, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.cn = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.bu
  br i1 %i.co, label %.critedge74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %.critedge72
  %i.cp = load i64, ptr %i.bu, align 8, !tbaa !43
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #19
  br label %.critedge74

bb.n:                                             ; preds = %.noexc.i100
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

bb.o:                                             ; preds = %.noexc.i.i
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bu
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.o
  %i.cv = load i64, ptr %i.bu, align 8, !tbaa !43
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %bb.n
  %.pn62 = phi { ptr, i32 } [ %i.cr, %bb.n ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %i.cs, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZNSt10unique_ptrIN5draco17PointCloudEncoderESt14default_deleteIS1_EED2Ev.exit117

bb.p:                                             ; preds = %.thread140
  %i.cx = call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #21 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.cx, i8 0, i64 112, i1 false)
  invoke void @_ZN5draco17PointCloudEncoderC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.cx)
          to label %_ZNSt10unique_ptrIN5draco17PointCloudEncoderESt14default_deleteIS1_EE5resetEPS1_.exit114 unwind label %bb.q

_ZNSt10unique_ptrIN5draco17PointCloudEncoderESt14default_deleteIS1_EE5resetEPS1_.exit114: ; preds = %bb.p
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN5draco27PointCloudSequentialEncoderE, i64 16), ptr %i.cx, align 16, !tbaa !11
  br label %.thread147

bb.q:                                             ; preds = %bb.p
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef 112) #19
  br label %_ZNSt10unique_ptrIN5draco17PointCloudEncoderESt14default_deleteIS1_EED2Ev.exit117

.thread147:                                       ; preds = %_ZNSt10unique_ptrIN5draco17PointCloudEncoderESt14default_deleteIS1_EE5resetEPS1_.exit84, %_ZNSt10unique_ptrIN5draco17PointCloudEncoderESt14default_deleteIS1_EE5resetEPS1_.exit, %_ZNSt10unique_ptrIN5draco17PointCloudEncoderESt14default_deleteIS1_EE5resetEPS1_.exit98, %_ZNSt10unique_ptrIN5draco17PointCloudEncoderESt14default_deleteIS1_EE5resetEPS1_.exit114
  %.sroa.0120.2 = phi ptr [ %i.cx, %_ZNSt10unique_ptrIN5draco17PointCloudEncoderESt14default_deleteIS1_EE5resetEPS1_.exit114 ], [ %i.w, %_ZNSt10unique_ptrIN5draco17PointCloudEncoderESt14default_deleteIS1_EE5resetEPS1_.exit84 ], [ %i.n, %_ZNSt10unique_ptrIN5draco17PointCloudEncoderESt14default_deleteIS1_EE5resetEPS1_.exit ], [ %i.br, %_ZNSt10unique_ptrIN5draco17PointCloudEncoderESt14default_deleteIS1_EE5resetEPS1_.exit98 ] ; 7 uses
  invoke void @_ZN5draco17PointCloudEncoder13SetPointCloudERKNS_10PointCloudE(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.0120.2, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.r unwind label %_ZNKSt14default_deleteIN5draco17PointCloudEncoderEEclEPS1_.exit.i116

bb.r:                                             ; preds = %.thread147
  invoke void @_ZN5draco17PointCloudEncoder6EncodeERKNS_18EncoderOptionsBaseIiEEPNS_13EncoderBufferE(ptr dead_on_unwind writable sret(%"class.draco::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.0120.2, ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef %3)
          to label %bb.s unwind label %_ZNKSt14default_deleteIN5draco17PointCloudEncoderEEclEPS1_.exit.i116

bb.s:                                             ; preds = %bb.r
  %i.cz = load i32, ptr %0, align 8, !tbaa !47
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.t, label %_ZNKSt14default_deleteIN5draco17PointCloudEncoderEEclEPS1_.exit.i

bb.t:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !42 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZN5draco6StatusD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.t
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !43
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #19
  br label %_ZN5draco6StatusD2Ev.exit

_ZN5draco6StatusD2Ev.exit:                        ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0120.2, i64 104
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !74
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !75
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 0, ptr %i.dk, align 8, !tbaa !76
  store i32 0, ptr %0, align 8, !tbaa !47, !alias.scope !118
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !39, !alias.scope !118
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dl, align 8, !tbaa !44, !alias.scope !118
  store i8 0, ptr %i.dd, align 8, !tbaa !43, !alias.scope !118
  br label %_ZNKSt14default_deleteIN5draco17PointCloudEncoderEEclEPS1_.exit.i

.critedge74:                                      ; preds = %.critedge72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZNSt10unique_ptrIN5draco17PointCloudEncoderESt14default_deleteIS1_EED2Ev.exit

_ZNKSt14default_deleteIN5draco17PointCloudEncoderEEclEPS1_.exit.i: ; preds = %_ZN5draco6StatusD2Ev.exit, %bb.s
  %i.dm = load ptr, ptr %.sroa.0120.2, align 8, !tbaa !11
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.0120.2) #18, !inline_history !115
  br label %_ZNSt10unique_ptrIN5draco17PointCloudEncoderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5draco17PointCloudEncoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %.critedge74, %_ZNKSt14default_deleteIN5draco17PointCloudEncoderEEclEPS1_.exit.i
  ret void

_ZNKSt14default_deleteIN5draco17PointCloudEncoderEEclEPS1_.exit.i116: ; preds = %bb.r, %.thread147
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.dp = load ptr, ptr %.sroa.0120.2, align 8, !tbaa !11
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.0120.2) #18, !inline_history !115
  br label %_ZNSt10unique_ptrIN5draco17PointCloudEncoderESt14default_deleteIS1_EED2Ev.exit117

_ZNSt10unique_ptrIN5draco17PointCloudEncoderESt14default_deleteIS1_EED2Ev.exit117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %bb.f, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %bb.k, %bb.q, %_ZNKSt14default_deleteIN5draco17PointCloudEncoderEEclEPS1_.exit.i116
  %.pn66157 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %_ZNKSt14default_deleteIN5draco17PointCloudEncoderEEclEPS1_.exit.i116 ], [ %i.cy, %bb.q ], [ %.pn60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %.pn62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %i.t, %bb.c ], [ %i.bs, %bb.k ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %i.x, %bb.f ]
  resume { ptr, i32 } %.pn66157
}

; Function Attrs: mustprogress uwtable
define void @_ZN5draco13ExpertEncoder18EncodeMeshToBufferERKNS_4MeshEPNS_13EncoderBufferE(ptr dead_on_unwind noalias writable sret(%"class.draco::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(216) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, ptr noundef nonnull align 1 dereferenceable(15) @.str.1, i64 15, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 15, ptr %i.c, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 31
  store i8 0, ptr %i.d, align 1, !tbaa !43
  %i.e = invoke noundef i32 @_ZNK5draco7Options6GetIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef -1)
          to label %_ZNK5draco12DracoOptionsIiE12GetGlobalIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit unwind label %bb.b

_ZNK5draco12DracoOptionsIiE12GetGlobalIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit: ; preds = %._crit_edge.i.i
  %i.f = load ptr, ptr %4, align 8, !tbaa !42     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK5draco12DracoOptionsIiE12GetGlobalIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit
  %i.h = load i64, ptr %i.b, align 8, !tbaa !43
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK5draco12DracoOptionsIiE12GetGlobalIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  switch i32 %i.e, label %.thread52 [
    i32 -1, label %bb.a
    i32 1, label %.thread
  ]

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = call noundef i32 @_ZNK5draco18EncoderOptionsBaseIiE8GetSpeedEv(ptr noundef nonnull align 8 dereferenceable(144) %i.a)
  %i.k = icmp eq i32 %i.j, 10
  br i1 %i.k, label %.thread52, label %.thread

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !42     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.b
  %i.o = load i64, ptr %i.b, align 8, !tbaa !43
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZNSt10unique_ptrIN5draco11MeshEncoderESt14default_deleteIS1_EED2Ev.exit38

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.q = call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #21 ; 3 uses
  invoke void @_ZN5draco22MeshEdgebreakerEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(136) %i.q)
          to label %_ZNSt10unique_ptrIN5draco11MeshEncoderESt14default_deleteIS1_EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.thread
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 136) #19
  br label %_ZNSt10unique_ptrIN5draco11MeshEncoderESt14default_deleteIS1_EED2Ev.exit38

.thread52:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.s = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #21 ; 3 uses
  invoke void @_ZN5draco21MeshSequentialEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.s)
          to label %_ZNSt10unique_ptrIN5draco11MeshEncoderESt14default_deleteIS1_EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %.thread52
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 128) #19
  br label %_ZNSt10unique_ptrIN5draco11MeshEncoderESt14default_deleteIS1_EED2Ev.exit38

_ZNSt10unique_ptrIN5draco11MeshEncoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %.thread52, %.thread
  %.sroa.043.1 = phi ptr [ %i.q, %.thread ], [ %i.s, %.thread52 ] ; 8 uses
  invoke void @_ZN5draco11MeshEncoder7SetMeshERKNS_4MeshE(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.043.1, ptr noundef nonnull align 8 dereferenceable(216) %2)
          to label %bb.e unwind label %_ZNKSt14default_deleteIN5draco11MeshEncoderEEclEPS1_.exit.i37

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN5draco11MeshEncoderESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN5draco17PointCloudEncoder6EncodeERKNS_18EncoderOptionsBaseIiEEPNS_13EncoderBufferE(ptr dead_on_unwind writable sret(%"class.draco::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.043.1, ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef %3)
          to label %bb.f unwind label %_ZNKSt14default_deleteIN5draco11MeshEncoderEEclEPS1_.exit.i37

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %0, align 8, !tbaa !47
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %_ZNSt10unique_ptrIN5draco11MeshEncoderESt14default_deleteIS1_EED2Ev.exit35

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !42   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN5draco6StatusD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !43
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #19
  br label %_ZN5draco6StatusD2Ev.exit

_ZN5draco6StatusD2Ev.exit:                        ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.043.1, i64 104
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !74
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !75
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.043.1, i64 120
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !123
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !76
  store i32 0, ptr %0, align 8, !tbaa !47, !alias.scope !124
  store ptr %i.y, ptr %i.w, align 8, !tbaa !39, !alias.scope !124
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ai, align 8, !tbaa !44, !alias.scope !124
  store i8 0, ptr %i.y, align 8, !tbaa !43, !alias.scope !124
  br label %_ZNSt10unique_ptrIN5draco11MeshEncoderESt14default_deleteIS1_EED2Ev.exit35

_ZNSt10unique_ptrIN5draco11MeshEncoderESt14default_deleteIS1_EED2Ev.exit35: ; preds = %_ZN5draco6StatusD2Ev.exit, %bb.f
  %i.aj = load ptr, ptr %.sroa.043.1, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.043.1) #18, !inline_history !121
  ret void

_ZNKSt14default_deleteIN5draco11MeshEncoderEEclEPS1_.exit.i37: ; preds = %bb.e, %_ZNSt10unique_ptrIN5draco11MeshEncoderESt14default_deleteIS1_EED2Ev.exit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %.sroa.043.1, align 8, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.043.1) #18, !inline_history !121
  br label %_ZNSt10unique_ptrIN5draco11MeshEncoderESt14default_deleteIS1_EED2Ev.exit38

_ZNSt10unique_ptrIN5draco11MeshEncoderESt14default_deleteIS1_EED2Ev.exit38: ; preds = %bb.d, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt14default_deleteIN5draco11MeshEncoderEEclEPS1_.exit.i37
  %.pn2158 = phi { ptr, i32 } [ %lpad.thr_comm, %_ZNKSt14default_deleteIN5draco11MeshEncoderEEclEPS1_.exit.i37 ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.r, %bb.c ], [ %i.t, %bb.d ]
  resume { ptr, i32 } %.pn2158
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK5draco18EncoderOptionsBaseIiE8GetSpeedEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.11, i64 14, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 14, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i8 0, ptr %i.c, align 2, !tbaa !43
  %i.d = invoke noundef i32 @_ZNK5draco7Options6GetIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef -1)
          to label %_ZNK5draco12DracoOptionsIiE12GetGlobalIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit unwind label %bb.a

_ZNK5draco12DracoOptionsIiE12GetGlobalIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit: ; preds = %._crit_edge.i.i
  %i.e = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK5draco12DracoOptionsIiE12GetGlobalIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit
  %i.g = load i64, ptr %i.a, align 8, !tbaa !43
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK5draco12DracoOptionsIiE12GetGlobalIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.i, ptr noundef nonnull align 1 dereferenceable(14) @.str.12, i64 14, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 14, ptr %i.j, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 30
  store i8 0, ptr %i.k, align 2, !tbaa !43
  %i.l = invoke noundef i32 @_ZNK5draco7Options6GetIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef -1)
          to label %_ZNK5draco12DracoOptionsIiE12GetGlobalIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit20 unwind label %bb.b

_ZNK5draco12DracoOptionsIiE12GetGlobalIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.m = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.i
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

end_hunk_0
