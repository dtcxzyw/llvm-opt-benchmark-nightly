Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/block_based_table_iterator?download=true
inline.NumInlined: 1909
inline.NumDeleted: 886
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7rocksdb23BlockBasedTableIterator7PrepareEPKNS_13MultiScanArgsE:bb.a
_ZN7rocksdb6StatusaSEOS0_.exit58:                 ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.do) #24
  %.pr139 = load ptr, ptr %i.dl, align 8, !tbaa !61 ; 2 uses
  %.not.i.i59 = icmp eq ptr %.pr139, null
  br i1 %.not.i.i59, label %_ZN7rocksdb6StatusD2Ev.exit61, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i60

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i60: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit58
  call void @_ZdaPv(ptr noundef nonnull %.pr139) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit61

_ZN7rocksdb6StatusD2Ev.exit61:                    ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit, %_ZN7rocksdb6StatusaSEOS0_.exit58, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.dp = load ptr, ptr %i.e, align 8, !tbaa !118
  %i.dq = invoke noundef ptr @_ZNK7rocksdb15BlockBasedTable13GetStatisticsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dp)
          to label %bb.x unwind label %bb.o       ; 2 uses

bb.x:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit61
  %.not.i62 = icmp eq ptr %i.dq, null
  br i1 %.not.i62, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit50, label %.invoke

.invoke:                                          ; preds = %bb.x, %bb.l
  %.sink = phi ptr [ %i.ce, %bb.l ], [ %i.dq, %bb.x ] ; 2 uses
  %i.dr = load ptr, ptr %.sink, align 8, !tbaa !37
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 176
  %i.dt = load ptr, ptr %i.ds, align 8
  invoke void %i.dt(ptr noundef nonnull align 8 dereferenceable(33) %.sink, i32 noundef 237, i64 noundef 1)
          to label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit50 unwind label %bb.o, !inline_history !0

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN7rocksdb7ReadSetELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.dj

bb.z:                                             ; preds = %bb.p
  %i.dv = load ptr, ptr %i.be, align 8, !tbaa !164 ; 2 uses
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !294
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !37
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 208
  %i.dz = load ptr, ptr %i.dy, align 8
  invoke void %i.dz(ptr noundef nonnull align 8 dereferenceable(40) %i.dv, ptr noundef %i.dw)
          to label %bb.aa unwind label %bb.o

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !294
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZN7rocksdb23BlockBasedTableIterator19CollectBlockHandlesERKSt6vectorINS_11ScanOptionsESaIS2_EEPS1_INS_11BlockHandleESaIS7_EEPS1_ISt5tupleIJmmEESaISC_EEPS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISL_EE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(1112) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %10)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 4 uses
  %i.ed = load <4 x i8>, ptr %12, align 8, !tbaa !55
  store <4 x i8> %i.ed, ptr %i.ec, align 8, !tbaa !55
  store <4 x i8> zeroinitializer, ptr %12, align 8, !tbaa !55
  %i.ee = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 4, !tbaa !56, !range !57, !noundef !58
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1060 ; 2 uses
  store i8 %i.ef, ptr %i.eg, align 4, !tbaa !59
  store i8 0, ptr %i.ee, align 4, !tbaa !59
  %i.eh = getelementptr inbounds nuw i8, ptr %12, i64 5 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !55
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 1061 ; 2 uses
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !60
  store i8 0, ptr %i.eh, align 1, !tbaa !60
  %i.ek = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 4 uses
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !61
  store ptr null, ptr %i.ek, align 8, !tbaa !61
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !61 ; 2 uses
  store ptr %i.em, ptr %i.el, align 8, !tbaa !61
  %.not.i.i.i.i.i66 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i.i66, label %_ZN7rocksdb6StatusaSEOS0_.exit68.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit68

_ZN7rocksdb6StatusaSEOS0_.exit68:                 ; preds = %bb.ab
  call void @_ZdaPv(ptr noundef nonnull %i.en) #24
  %.pr141 = load ptr, ptr %i.ek, align 8, !tbaa !61 ; 2 uses
  %.not.i.i69 = icmp eq ptr %.pr141, null
  br i1 %.not.i.i69, label %_ZN7rocksdb6StatusaSEOS0_.exit68.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i70

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i70: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit68
  call void @_ZdaPv(ptr noundef nonnull %.pr141) #24
  br label %_ZN7rocksdb6StatusaSEOS0_.exit68.thread

_ZN7rocksdb6StatusaSEOS0_.exit68.thread:          ; preds = %bb.ab, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i70, %_ZN7rocksdb6StatusaSEOS0_.exit68
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.eo = load i8, ptr %i.ec, align 8, !tbaa !49
  %i.ep = icmp eq i8 %i.eo, 0
  br i1 %i.ep, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit68.thread
  %i.eq = load ptr, ptr %i.e, align 8, !tbaa !118
  %i.er = invoke noundef ptr @_ZNK7rocksdb15BlockBasedTable13GetStatisticsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.eq)
          to label %bb.ad unwind label %bb.af     ; 3 uses

bb.ad:                                            ; preds = %bb.ac
  %.not.i72 = icmp eq ptr %i.er, null
  br i1 %.not.i72, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit74, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !37
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 176
  %i.eu = load ptr, ptr %i.et, align 8
  invoke void %i.eu(ptr noundef nonnull align 8 dereferenceable(33) %i.er, i32 noundef 237, i64 noundef 1)
          to label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit74 unwind label %bb.af, !inline_history !0

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.ag:                                            ; preds = %bb.aa
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.dg

bb.ah:                                            ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit68.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !310 ; 2 uses
  %i.ez = load ptr, ptr %9, align 8, !tbaa !311   ; 5 uses
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = ashr exact i64 %i.fc, 4                 ; 8 uses
  store i64 %i.fd, ptr %i.c, align 8, !tbaa !176
  %i.fe = load ptr, ptr %i.a, align 8, !tbaa !294 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !572 ; 3 uses
  %.not = icmp eq i64 %i.fg, 0
  br i1 %.not, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 17
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !272, !range !57, !noundef !58
  %i.fj = trunc nuw i8 %i.fi to i1
  %.not32226 = icmp eq ptr %i.ey, %i.ez           ; 2 uses
  br i1 %i.fj, label %.critedge.preheader, label %.preheader

.critedge.preheader:                              ; preds = %bb.ai
  br i1 %.not32226, label %.loopexit, label %.lr.ph229

.preheader:                                       ; preds = %bb.ai
  br i1 %.not32226, label %.loopexit, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph229
  %.not32 = icmp eq i64 %i.fk, 0
  br i1 %.not32, label %.loopexit, label %.lr.ph229, !llvm.loop !418

.lr.ph229:                                        ; preds = %.critedge.preheader, %.critedge
  %.026228 = phi i64 [ %i.fk, %.critedge ], [ %i.fd, %.critedge.preheader ] ; 3 uses
  %.027227 = phi i64 [ %i.fp, %.critedge ], [ 0, %.critedge.preheader ]
  %i.fk = add i64 %.026228, -1                    ; 3 uses
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !287
  %i.fo = add i64 %.027227, 5
  %i.fp = add i64 %i.fo, %i.fn                    ; 2 uses
  %.not33 = icmp ugt i64 %i.fp, %i.fg
  br i1 %.not33, label %bb.aj, label %.critedge, !llvm.loop !418

bb.aj:                                            ; preds = %.lr.ph229
  store i64 %.026228, ptr %i.b, align 8, !tbaa !176
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.al
  %.025167 = phi i64 [ %i.fw, %bb.al ], [ 0, %.preheader ] ; 4 uses
  %.128166 = phi i64 [ %i.fu, %bb.al ], [ 0, %.preheader ]
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %.025167
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !287
  %i.ft = add i64 %.128166, 5
  %i.fu = add i64 %i.ft, %i.fs                    ; 2 uses
  %i.fv = icmp ugt i64 %i.fu, %i.fg
  br i1 %i.fv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph
  store i64 %.025167, ptr %i.c, align 8, !tbaa !176
  br label %.loopexit

bb.al:                                            ; preds = %.lr.ph
  %i.fw = add nuw i64 %.025167, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fw, %i.fd
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !419

.loopexit:                                        ; preds = %bb.al, %.critedge, %.critedge.preheader, %.preheader, %bb.aj, %bb.ak, %bb.ah
  %i.fx = phi i64 [ %i.fd, %.critedge.preheader ], [ %i.fd, %bb.ah ], [ 0, %.preheader ], [ %i.fd, %bb.aj ], [ %.025167, %bb.ak ], [ %i.fd, %.critedge ], [ %i.fd, %bb.al ] ; 2 uses
  %i.fy = phi i64 [ 0, %.critedge.preheader ], [ 0, %bb.ah ], [ 0, %.preheader ], [ %.026228, %bb.aj ], [ 0, %bb.ak ], [ 0, %.critedge ], [ 0, %bb.al ] ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %i.fx
  br i1 %i.fz, label %bb.am, label %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE6assignIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEvEEvT_S9_.exit

bb.am:                                            ; preds = %.loopexit
  %.idx160 = shl nsw i64 %i.fy, 4                 ; 3 uses
  %i.ga = getelementptr inbounds i8, ptr %i.ez, i64 %.idx160
  %.idx = shl nsw i64 %i.fx, 4                    ; 2 uses
  %gepdiff = sub nsw i64 %.idx, %.idx160          ; 4 uses
  %i.gb = icmp ugt i64 %gepdiff, 9223372036854775792
  br i1 %i.gb, label %bb.an, label %_ZNSt12_Vector_baseIN7rocksdb11BlockHandleESaIS1_EE11_M_allocateEm.exit.i.i

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
          to label %.noexc123 unwind label %.thread

.noexc123:                                        ; preds = %bb.an
  unreachable

_ZNSt12_Vector_baseIN7rocksdb11BlockHandleESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %bb.am
  %i.gc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %gepdiff) #25
          to label %.noexc124 unwind label %.thread ; 3 uses

.noexc124:                                        ; preds = %_ZNSt12_Vector_baseIN7rocksdb11BlockHandleESaIS1_EE11_M_allocateEm.exit.i.i
  %18 = icmp eq i64 %.idx160, %.idx
  br i1 %18, label %_ZNSt12_Vector_baseIN7rocksdb11BlockHandleESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %.noexc124
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gc, ptr align 8 %i.ga, i64 %gepdiff, i1 false)
  br label %_ZNSt12_Vector_baseIN7rocksdb11BlockHandleESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN7rocksdb11BlockHandleESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %.noexc124, %.lr.ph.i.i.i.i.preheader.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %gepdiff
  br label %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE6assignIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEvEEvT_S9_.exit

.thread:                                          ; preds = %bb.an, %_ZNSt12_Vector_baseIN7rocksdb11BlockHandleESaIS1_EE11_M_allocateEm.exit.i.i
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EED2Ev.exit116

_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE6assignIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEvEEvT_S9_.exit: ; preds = %_ZNSt12_Vector_baseIN7rocksdb11BlockHandleESaIS1_EE13_M_deallocateEPS1_m.exit.i, %.loopexit
  %.sroa.0126.0 = phi ptr [ null, %.loopexit ], [ %i.gc, %_ZNSt12_Vector_baseIN7rocksdb11BlockHandleESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 4 uses
  %.sroa.18.0 = phi ptr [ null, %.loopexit ], [ %i.gd, %_ZNSt12_Vector_baseIN7rocksdb11BlockHandleESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.gf = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.gg = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #25
          to label %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EEaSEOS3_.exit unwind label %bb.de ; 26 uses

_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EEaSEOS3_.exit: ; preds = %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE6assignIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEvEEvT_S9_.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i32 1, ptr %i.gh, align 8, !tbaa !276, !noalias !573
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  store i32 1, ptr %i.gi, align 4, !tbaa !277, !noalias !573
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb5IOJobESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.gg, align 8, !tbaa !37, !noalias !573
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.gk, i8 0, i64 144, i1 false), !noalias !573
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 56
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.gl, i8 0, i64 44, i1 false), !noalias !573
  store i32 4, ptr %i.gm, align 4, !tbaa !574, !noalias !573
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gg, i64 104
  store i64 -1, ptr %i.gn, align 8, !tbaa !575, !noalias !573
  %i.go = getelementptr inbounds nuw i8, ptr %i.gg, i64 128
  store i8 1, ptr %i.go, align 8, !tbaa !576, !noalias !573
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gg, i64 129
  store i8 1, ptr %i.gp, align 1, !tbaa !577, !noalias !573
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gg, i64 132
  store i8 1, ptr %i.gq, align 4, !tbaa !578, !noalias !573
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gg, i64 136
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gg, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gs, i8 0, i64 32, i1 false), !noalias !573
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gg, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(39) %i.gr, i8 0, i64 39, i1 false), !noalias !573
  store i8 1, ptr %i.gt, align 8, !tbaa !143, !noalias !573
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gg, i64 216
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gg, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, i8 0, i64 16, i1 false), !noalias !573
  store i8 -1, ptr %i.gv, align 8, !tbaa !579, !noalias !573
  store ptr %i.gg, ptr %i.gf, align 8, !tbaa !274, !alias.scope !573
  store ptr %i.gj, ptr %13, align 8, !tbaa !581, !alias.scope !573
  %i.gw = load ptr, ptr %i.e, align 8, !tbaa !118
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !584
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  store ptr %.sroa.0126.0, ptr %i.gj, align 8, !tbaa !311
  store ptr %.sroa.18.0, ptr %i.gy, align 8, !tbaa !310
  store ptr %.sroa.18.0, ptr %i.gz, align 8, !tbaa !312
  %i.ha = load ptr, ptr %i.a, align 8, !tbaa !294
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !585
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gg, i64 48
  store i64 %i.hb, ptr %i.hc, align 8, !tbaa !586
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !120, !nonnull !58, !align !121 ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gg, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.hf, ptr noundef nonnull align 8 dereferenceable(192) %i.he, i64 119, i1 false)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gg, i64 176 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !192 ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFbRKN7rocksdb15TablePropertiesEEEC2ERKS5_.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EEaSEOS3_.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 120
  %i.hl = invoke noundef zeroext i1 %i.hj(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.hk, i32 noundef 2)
          to label %bb.ap unwind label %bb.aq     ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  %i.hm = load <2 x ptr>, ptr %i.hi, align 8, !tbaa !188
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.gg, i64 192
  %i.hn = load <2 x ptr>, ptr %.phi.trans.insert, align 8, !tbaa !188
  br label %_ZNSt8functionIFbRKN7rocksdb15TablePropertiesEEEC2ERKS5_.exit.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.ho = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hp = load ptr, ptr %i.hh, align 16, !tbaa !192 ; 2 uses
  %.not.i.i.i.i78 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i.i78, label %.thread154, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hq = invoke noundef zeroext i1 %i.hp(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %.thread154 unwind label %bb.as ; 0 uses

bb.as:                                            ; preds = %bb.ar
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  call void @__clang_call_terminate(ptr %i.hs) #26
  unreachable

_ZNSt8functionIFbRKN7rocksdb15TablePropertiesEEEC2ERKS5_.exit.i.i: ; preds = %bb.ap, %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EEaSEOS3_.exit
  %i.ht = phi <2 x ptr> [ splat (ptr null), %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EEaSEOS3_.exit ], [ %i.hn, %bb.ap ] ; 2 uses
  %i.hu = phi <2 x ptr> [ splat (ptr null), %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EEaSEOS3_.exit ], [ %i.hm, %bb.ap ]
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.hg, i64 16, i1 false), !tbaa.struct !187
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.hg, align 8, !tbaa !55
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gg, i64 192
  store <2 x ptr> %i.ht, ptr %i.hh, align 16, !tbaa !188
  store <2 x ptr> %i.hu, ptr %i.hv, align 8, !tbaa !188
  %i.hw = extractelement <2 x ptr> %i.ht, i64 0   ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i79, label %bb.av, label %bb.at

bb.at:                                            ; preds = %_ZNSt8functionIFbRKN7rocksdb15TablePropertiesEEEC2ERKS5_.exit.i.i
  %i.hx = invoke noundef zeroext i1 %i.hw(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.av unwind label %bb.au     ; 0 uses

bb.au:                                            ; preds = %bb.at
  %i.hy = landingpad { ptr, i32 }
          catch ptr null
  %i.hz = extractvalue { ptr, i32 } %i.hy, 0
  call void @__clang_call_terminate(ptr %i.hz) #26
  unreachable

bb.av:                                            ; preds = %bb.at, %_ZNSt8functionIFbRKN7rocksdb15TablePropertiesEEEC2ERKS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gg, i64 208
  %i.ib = getelementptr inbounds nuw i8, ptr %i.he, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ia, ptr noundef nonnull align 8 dereferenceable(40) %i.ib, i64 40, i1 false)
  %i.ic = load ptr, ptr %i.a, align 8, !tbaa !294 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load i8, ptr %i.id, align 8, !tbaa !587, !range !57, !noundef !58
  %i.if = load ptr, ptr %13, align 8, !tbaa !589  ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 115
  store i8 %i.ie, ptr %i.ig, align 1, !tbaa !590
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 232
  store i8 1, ptr %i.ih, align 8, !tbaa !591
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !592 ; 3 uses
  store ptr %i.ij, ptr %15, align 8, !tbaa !592
  %i.ik = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !274 ; 3 uses
  store ptr %i.im, ptr %i.ik, align 8, !tbaa !274
  %.not.i.i.i80 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i80, label %_ZNSt10shared_ptrIN7rocksdb12IODispatcherEEC2ERKS2_.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 3 uses
  %i.io = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i81 = icmp eq i8 %i.io, 0
  br i1 %.not.i.i.i.i81, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ip = load i32, ptr %i.in, align 4, !tbaa !278
  %i.iq = add nsw i32 %i.ip, 1
  store i32 %i.iq, ptr %i.in, align 4, !tbaa !278
  br label %_ZNSt10shared_ptrIN7rocksdb12IODispatcherEEC2ERKS2_.exit

bb.ay:                                            ; preds = %bb.aw
  %i.ir = atomicrmw volatile add ptr %i.in, i32 1 acq_rel, align 4 ; 0 uses
  %.pre174 = load ptr, ptr %15, align 8, !tbaa !592
  br label %_ZNSt10shared_ptrIN7rocksdb12IODispatcherEEC2ERKS2_.exit

_ZNSt10shared_ptrIN7rocksdb12IODispatcherEEC2ERKS2_.exit: ; preds = %bb.av, %bb.ax, %bb.ay
  %i.is = phi ptr [ %i.ij, %bb.av ], [ %i.ij, %bb.ax ], [ %.pre174, %bb.ay ] ; 2 uses
  %.not162 = icmp eq ptr %i.is, null
  br i1 %.not162, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %_ZNSt10shared_ptrIN7rocksdb12IODispatcherEEC2ERKS2_.exit
  %i.it = invoke noundef ptr @_ZN7rocksdb15NewIODispatcherEv()
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZNSt12__shared_ptrIN7rocksdb12IODispatcherELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef %i.it)
          to label %._crit_edge unwind label %bb.bb

._crit_edge:                                      ; preds = %bb.ba
  %.pre175 = load ptr, ptr %15, align 8, !tbaa !592
  br label %bb.bc

bb.bb:                                            ; preds = %bb.bk, %bb.bg, %bb.bi, %bb.be, %bb.ba, %bb.az
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.bc:                                            ; preds = %._crit_edge, %_ZNSt10shared_ptrIN7rocksdb12IODispatcherEEC2ERKS2_.exit
  %i.iv = phi ptr [ %.pre175, %._crit_edge ], [ %i.is, %_ZNSt10shared_ptrIN7rocksdb12IODispatcherEEC2ERKS2_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !37
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8
  invoke void %i.iy(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.iv, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %14)
end_hunk_0
