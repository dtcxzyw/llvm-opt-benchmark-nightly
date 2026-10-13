Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/metadata_internal?download=true
inline.NumInlined: 4741
inline.NumDeleted: 2175
loop-unroll.NumRuntimeUnrolled: 71
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor9GetResultERKSt10shared_ptrINS_5FieldEEPN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEE:_ZN5arrow6StatusD2Ev.exit
  store i32 %i.au, ptr %i.aw, align 4, !tbaa !24, !noalias !880
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !136, !noalias !880 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !137, !noalias !880
  %i.ba = getelementptr [4 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.bb = getelementptr i8, ptr %i.ba, i64 -12
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !24, !noalias !880
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !136, !noalias !880 ; 2 uses
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !137, !noalias !880
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next.i.3
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !24, !noalias !880
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !136, !noalias !880
  %i.bh = icmp sgt i64 %indvars.iv.i, 4
  br i1 %i.bh, label %.lr.ph.i.new, label %_ZNK5arrow3ipc8internal13FieldPosition4pathEv.exit, !llvm.loop !14

_ZNK5arrow3ipc8internal13FieldPosition4pathEv.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.e
  invoke void @_ZNK5arrow3ipc21DictionaryFieldMapper10GetFieldIdESt6vectorIiSaIiEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.158") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %6)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNK5arrow3ipc8internal13FieldPosition4pathEv.exit
  %i.bi = load ptr, ptr %6, align 8, !tbaa !214   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !215
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bo = load ptr, ptr %5, align 8, !tbaa !41
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.m, label %bb.i, !prof !45

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %0, align 8, !tbaa !41
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.critedge unwind label %bb.l

bb.j:                                             ; preds = %_ZNK5arrow3ipc8internal13FieldPosition4pathEv.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %6, align 8, !tbaa !214   ; 3 uses
  %.not.i.i.i69 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorIiSaIiEED2Ev.exit70, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !215
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit70

bb.l:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !185
  %i.ca = load ptr, ptr %1, align 8, !tbaa !242, !nonnull !59, !align !236 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.048, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !30, !noalias !881 ; 4 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !37, !noalias !881
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !881
  %i.cg = invoke noundef i32 %i.cf(ptr noundef nonnull align 8 dereferenceable(72) %i.cc)
          to label %.noexc unwind label %bb.n, !inline_history !869

.noexc:                                           ; preds = %bb.m
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !37, !noalias !881
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 80
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !881
  %i.ck = invoke noundef zeroext i1 %i.cj(ptr noundef nonnull align 8 dereferenceable(72) %i.cc)
          to label %.noexc71 unwind label %bb.n, !inline_history !869

.noexc71:                                         ; preds = %.noexc
  %i.cl = invoke i32 @_ZN3org6apache5arrow7flatbuf9CreateIntERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEEib(ptr noundef nonnull align 8 dereferenceable(128) %i.ca, i32 noundef %i.cg, i1 noundef zeroext %i.ck)
          to label %.noexc72 unwind label %bb.n

.noexc72:                                         ; preds = %.noexc71
  %i.cm = getelementptr inbounds nuw i8, ptr %.048, i64 104
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !883, !range !58, !noalias !881, !noundef !59
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = invoke i32 @_ZN3org6apache5arrow7flatbuf24CreateDictionaryEncodingERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEElNS4_6OffsetINS2_3IntEEEbNS2_14DictionaryKindE(ptr noundef nonnull align 8 dereferenceable(128) %i.ca, i64 noundef %i.bz, i32 %i.cl, i1 noundef zeroext %i.co, i16 noundef signext 0)
          to label %_ZN5arrow6StatusD2Ev.exit75 unwind label %bb.n

_ZN5arrow6StatusD2Ev.exit75:                      ; preds = %.noexc72
  store ptr null, ptr %0, align 8, !tbaa !41
  %i.cq = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %.not.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultIlED2Ev.exit, label %bb.o, !prof !45

bb.n:                                             ; preds = %.noexc72, %.noexc71, %.noexc, %bb.m
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit75
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !57, !range !58, !noundef !59
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %_ZN5arrow6ResultIlED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  br label %_ZN5arrow6ResultIlED2Ev.exit

_ZN5arrow6ResultIlED2Ev.exit:                     ; preds = %_ZN5arrow6StatusD2Ev.exit75, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %.pre118 = load ptr, ptr %2, align 8, !tbaa !71
  br label %bb.t

bb.q:                                             ; preds = %bb.n, %bb.l
  %.pn52 = phi { ptr, i32 } [ %i.bx, %bb.l ], [ %i.cr, %bb.n ]
  %i.cv = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i80, label %_ZN5arrow6ResultIlED2Ev.exit81, label %bb.r, !prof !45

bb.r:                                             ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !57, !range !58, !noundef !59
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %_ZN5arrow6ResultIlED2Ev.exit81, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  br label %_ZN5arrow6ResultIlED2Ev.exit81

_ZN5arrow6ResultIlED2Ev.exit81:                   ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit70

bb.t:                                             ; preds = %_ZN5arrow6ResultIlED2Ev.exit, %bb.c
  %i.cz = phi ptr [ %.pre118, %_ZN5arrow6ResultIlED2Ev.exit ], [ %i.f, %bb.c ] ; 2 uses
  %.sroa.0108.0 = phi i32 [ %i.cp, %_ZN5arrow6ResultIlED2Ev.exit ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !884)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 80
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !162, !noalias !884 ; 3 uses
  store ptr %i.db, ptr %7, align 8, !tbaa !162, !alias.scope !884
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 88
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !31, !noalias !884 ; 3 uses
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !31, !alias.scope !884
  %.not.i.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i, label %_ZNK5arrow5Field8metadataEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 3 uses
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32, !noalias !884
  %.not.i.i.i.i.i82 = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i.i.i82, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !24, !noalias !884
  %i.di = add nsw i32 %i.dh, 1
  store i32 %i.di, ptr %i.df, align 4, !tbaa !24, !noalias !884
  br label %_ZNK5arrow5Field8metadataEv.exit

bb.w:                                             ; preds = %bb.u
  %i.dj = atomicrmw volatile add ptr %i.df, i32 1 acq_rel, align 4, !noalias !884 ; 0 uses
  %.pre119 = load ptr, ptr %7, align 8, !tbaa !162
  br label %_ZNK5arrow5Field8metadataEv.exit

_ZNK5arrow5Field8metadataEv.exit:                 ; preds = %bb.t, %bb.v, %bb.w
  %i.dk = phi ptr [ %i.db, %bb.t ], [ %i.db, %bb.v ], [ %.pre119, %bb.w ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %.not.i83 = icmp eq ptr %i.dk, null
  br i1 %.not.i83, label %bb.z, label %bb.x

bb.x:                                             ; preds = %_ZNK5arrow5Field8metadataEv.exit
  %i.dl = load ptr, ptr %1, align 8, !tbaa !242, !nonnull !59, !align !236
  invoke fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_122AppendKeyValueMetadataERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNS_16KeyValueMetadataEPSt6vectorINS4_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISI_EE(ptr noundef nonnull align 8 dereferenceable(128) %i.dl, ptr noundef nonnull align 8 dereferenceable(48) %i.dk, ptr noundef %8)
          to label %._crit_edge120 unwind label %bb.y

._crit_edge120:                                   ; preds = %bb.x
  %.promoted.pre = load ptr, ptr %8, align 8
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

bb.z:                                             ; preds = %._crit_edge120, %_ZNK5arrow5Field8metadataEv.exit
  %.promoted = phi ptr [ %.promoted.pre, %._crit_edge120 ], [ null, %_ZNK5arrow5Field8metadataEv.exit ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.0104.0112 = load ptr, ptr %i.dn, align 8, !tbaa !157 ; 2 uses
  %i.do = icmp eq ptr %.sroa.0104.0112, null
  %.phi.trans.insert122 = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  br i1 %i.do, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.z
  %.pre123 = load ptr, ptr %.phi.trans.insert122, align 8, !tbaa !244
  br label %._crit_edge.a

.lr.ph:                                           ; preds = %bb.z
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %.promoted114 = load ptr, ptr %.phi.trans.insert122, align 8
  %.promoted118 = load ptr, ptr %i.dp, align 8
  br label %bb.aa

._crit_edge:                                      ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit
  store ptr %12, ptr %.phi.trans.insert122, align 8
  store ptr %11, ptr %i.dp, align 8
  br label %._crit_edge.a

._crit_edge.a:                                    ; preds = %.._crit_edge_crit_edge, %._crit_edge
  %i.dq = phi ptr [ %12, %._crit_edge ], [ %.pre123, %.._crit_edge_crit_edge ] ; 2 uses
  %.lcssa109 = phi ptr [ %i.fi, %._crit_edge ], [ %.promoted, %.._crit_edge_crit_edge ] ; 6 uses
  store ptr %.lcssa109, ptr %8, align 8
  %i.dr = ptrtoint ptr %.lcssa109 to i64          ; 2 uses
  %.not = icmp eq ptr %i.dq, %.lcssa109
  br i1 %.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit, label %bb.af

bb.aa:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit
  %9 = phi ptr [ %.promoted118, %.lr.ph ], [ %11, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit ] ; 7 uses
  %10 = phi ptr [ %.promoted114, %.lr.ph ], [ %12, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit ] ; 5 uses
  %.sroa.0104.0113 = phi ptr [ %.sroa.0104.0112, %.lr.ph ], [ %.sroa.0104.0, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit ] ; 5 uses
  %i.ds = phi ptr [ %.promoted, %.lr.ph ], [ %i.fi, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit ] ; 12 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0104.0113, i64 8
  %i.du = load ptr, ptr %1, align 8, !tbaa !242, !nonnull !59, !align !236 ; 4 uses
  %.val = load ptr, ptr %i.dt, align 8, !tbaa !64
  %i.dv = getelementptr i8, ptr %.sroa.0104.0113, i64 16
  %.val64 = load i64, ptr %i.dv, align 8, !tbaa !63
  invoke void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE16CreateStringImplEPKcm(ptr noundef nonnull align 8 dereferenceable(128) %i.du, ptr noundef %.val, i64 noundef %.val64)
          to label %.noexc84 unwind label %.loopexit

.noexc84:                                         ; preds = %bb.aa
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0104.0113, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 48 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !110
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !64
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0104.0113, i64 48
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !63
  invoke void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE16CreateStringImplEPKcm(ptr noundef nonnull align 8 dereferenceable(128) %i.du, ptr noundef %i.dz, i64 noundef %i.eb)
          to label %.noexc85 unwind label %.loopexit

.noexc85:                                         ; preds = %.noexc84
  %i.ec = load i32, ptr %i.dx, align 8, !tbaa !110
  %i.ed = invoke i32 @_ZN3org6apache5arrow7flatbuf14CreateKeyValueERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS4_6OffsetINS4_6StringEEESA_(ptr noundef nonnull align 8 dereferenceable(128) %i.du, i32 %i.dy, i32 %i.ec)
          to label %_ZN5arrow3ipc8internal12_GLOBAL__N_114AppendKeyValueERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_.exit unwind label %.loopexit ; 2 uses

_ZN5arrow3ipc8internal12_GLOBAL__N_114AppendKeyValueERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_.exit: ; preds = %.noexc85
  %.not.i.i87 = icmp eq ptr %10, %9
  br i1 %.not.i.i87, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN5arrow3ipc8internal12_GLOBAL__N_114AppendKeyValueERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_.exit
  store i32 %i.ed, ptr %10, align 4, !tbaa !24
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit

bb.ac:                                            ; preds = %_ZN5arrow3ipc8internal12_GLOBAL__N_114AppendKeyValueERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_.exit
  %i.ee = ptrtoint ptr %9 to i64                  ; 2 uses
  %i.ef = ptrtoint ptr %i.ds to i64               ; 3 uses
  %i.eg = sub i64 %i.ee, %i.ef                    ; 4 uses
  %i.eh = icmp eq i64 %i.eg, 9223372036854775804
  br i1 %i.eh, label %bb.ad, label %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  store ptr %10, ptr %.phi.trans.insert122, align 8
  store ptr %9, ptr %i.dp, align 8
  store ptr %i.ds, ptr %8, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
          to label %.noexc89 unwind label %.loopexit.split-lp

.noexc89:                                         ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.ei = ashr exact i64 %i.eg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ei, i64 1)
  %i.ej = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ei ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %i.ei
  %i.el = call i64 @llvm.umin.i64(i64 %i.ej, i64 2305843009213693951)
  %i.em = select i1 %i.ek, i64 2305843009213693951, i64 %i.el ; 3 uses
  %.not.i.i.i.i88 = icmp ne i64 %i.em, 0
  call void @llvm.assume(i1 %.not.i.i.i.i88)
  %i.en = shl nuw nsw i64 %i.em, 2
  %i.eo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #23
          to label %.noexc90 unwind label %.loopexit ; 8 uses

.noexc90:                                         ; preds = %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.eg
  store i32 %i.ed, ptr %i.ep, align 4, !tbaa !24
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ds, %9
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc90
  %i.eq = ptrtoaddr ptr %i.eo to i64
  %i.er = add i64 %i.ee, -4
  %i.es = sub i64 %i.er, %i.ef                    ; 2 uses
  %i.et = lshr i64 %i.es, 2
  %i.eu = add nuw nsw i64 %i.et, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.es, 28
  %i.ev = sub i64 %i.ef, %i.eq
  %diff.check = icmp ugt i64 %i.ev, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader153, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.eu, 9223372036854775800     ; 3 uses
  %i.ew = shl i64 %n.vec, 2                       ; 2 uses
  %i.ex = getelementptr i8, ptr %i.eo, i64 %i.ew  ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ds, i64 %i.ew
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ez = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.eo, i64 %i.ez ; 2 uses
  %next.gep150 = getelementptr i8, ptr %i.ds, i64 %i.ez ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !885)
  call void @llvm.experimental.noalias.scope.decl(metadata !886)
  %i.fa = getelementptr i8, ptr %next.gep150, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep150, align 4, !tbaa !24, !alias.scope !886, !noalias !885
  %wide.load151 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !24, !alias.scope !886, !noalias !885
  %i.fb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !24, !alias.scope !885, !noalias !886
  store <4 x i32> %wide.load151, ptr %i.fb, align 4, !tbaa !24, !alias.scope !885, !noalias !886
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !875

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eu, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader153

.lr.ph.i.i.i.i.i.i.preheader153:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ex, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ey, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader153, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader153 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader153 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !885)
  call void @llvm.experimental.noalias.scope.decl(metadata !886)
  %i.fd = load i32, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !24, !alias.scope !886, !noalias !885
  store i32 %i.fd, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !24, !alias.scope !885, !noalias !886
  %i.fe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fe, %9
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !876

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc90
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.eo, %.noexc90 ], [ %i.ex, %middle.block ], [ %i.ff, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.eg) #24
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i: ; preds = %bb.ae, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.em
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit: ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, %bb.ab
  %11 = phi ptr [ %i.fg, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ], [ %9, %bb.ab ] ; 2 uses
  %i.fh = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ], [ %10, %bb.ab ]
  %i.fi = phi ptr [ %i.eo, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ], [ %i.ds, %bb.ab ] ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.fh, i64 4 ; 3 uses
  %.sroa.0104.0 = load ptr, ptr %.sroa.0104.0113, align 8, !tbaa !157 ; 2 uses
  %i.fj = icmp eq ptr %.sroa.0104.0, null
  br i1 %i.fj, label %._crit_edge, label %bb.aa

.loopexit:                                        ; preds = %bb.aa, %.noexc84, %.noexc85, %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %10, ptr %.phi.trans.insert122, align 8
  store ptr %9, ptr %i.dp, align 8
  store ptr %i.ds, ptr %8, align 8
  br label %bb.au

.loopexit.split-lp:                               ; preds = %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.af:                                            ; preds = %._crit_edge.a
  %i.fk = ptrtoint ptr %i.dq to i64
  %i.fl = sub i64 %i.fk, %i.dr
  %i.fm = ashr exact i64 %i.fl, 2
  %i.fn = load ptr, ptr %1, align 8, !tbaa !242, !nonnull !59, !align !236
  %i.fo = invoke i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIN3org6apache5arrow7flatbuf8KeyValueEEENS0_6OffsetINS0_6VectorINS9_IT_EEjEEEEPKSC_m(ptr noundef nonnull align 8 dereferenceable(128) %i.fn, ptr noundef %.lcssa109, i64 noundef %i.fm)
          to label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit: ; preds = %bb.af, %._crit_edge.a
  %.sroa.0107.0 = phi i32 [ 0, %._crit_edge.a ], [ %i.fo, %bb.af ]
  %i.fq = load ptr, ptr %1, align 8, !tbaa !242, !nonnull !59, !align !236 ; 2 uses
  %i.fr = load ptr, ptr %2, align 8, !tbaa !71    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !63
  invoke void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE16CreateStringImplEPKcm(ptr noundef nonnull align 8 dereferenceable(128) %i.fq, ptr noundef %i.ft, i64 noundef %i.fv)
          to label %bb.ah unwind label %bb.ar

bb.ah:                                            ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !110
  %i.fy = load ptr, ptr %1, align 8, !tbaa !242, !nonnull !59, !align !236
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !160 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !245
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.ga to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = ashr exact i64 %i.gf, 2
  %i.gh = invoke i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIN3org6apache5arrow7flatbuf5FieldEEENS0_6OffsetINS0_6VectorINS9_IT_EEjEEEEPKSC_m(ptr noundef nonnull align 8 dereferenceable(128) %i.fy, ptr noundef %i.ga, i64 noundef %i.gg)
          to label %bb.ai unwind label %bb.as

bb.ai:                                            ; preds = %bb.ah
  %i.gi = load ptr, ptr %1, align 8, !tbaa !242, !nonnull !59, !align !236
  %i.gj = load ptr, ptr %2, align 8, !tbaa !71
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 72
  %i.gl = load i8, ptr %i.gk, align 8, !tbaa !81, !range !58, !noundef !59
  %i.gm = trunc nuw i8 %i.gl to i1
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.go = load i8, ptr %i.gn, align 8, !tbaa !246
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.04.0.copyload = load i32, ptr %i.gp, align 4, !tbaa !24
  %i.gq = invoke i32 @_ZN3org6apache5arrow7flatbuf11CreateFieldERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS4_6OffsetINS4_6StringEEEbNS2_4TypeENS8_IvEENS8_INS2_18DictionaryEncodingEEENS8_INS4_6VectorINS8_INS2_5FieldEEEjEEEENS8_INSF_INS8_INS2_8KeyValueEEEjEEEE(ptr noundef nonnull align 8 dereferenceable(128) %i.gi, i32 %i.fx, i1 noundef zeroext %i.gm, i8 noundef zeroext %i.go, i32 %.sroa.04.0.copyload, i32 %.sroa.0108.0, i32 %i.gh, i32 %.sroa.0107.0)
          to label %bb.aj unwind label %bb.at

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.gq, ptr %3, align 4, !tbaa !24
  store ptr null, ptr %0, align 8, !tbaa !41, !alias.scope !887
  %.not.i.i.i93 = icmp eq ptr %.lcssa109, null
  br i1 %.not.i.i.i93, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gr = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !167
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = sub i64 %i.gt, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa109, i64 noundef %i.gu) #24
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EED2Ev.exit

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EED2Ev.exit: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.gv = load ptr, ptr %i.dc, align 8, !tbaa !31 ; 8 uses
  %.not.i.i94 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i94, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EED2Ev.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 4 uses
  %i.gx = load atomic i64, ptr %i.gw acquire, align 8 ; 2 uses
  %i.gy = icmp eq i64 %i.gx, 4294967297
  %i.gz = trunc i64 %i.gx to i32                  ; 2 uses
  br i1 %i.gy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.gw, align 8, !tbaa !34
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  store i32 0, ptr %i.ha, align 4, !tbaa !35
  %i.hb = load ptr, ptr %i.gv, align 8, !tbaa !37
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #22, !inline_history !9
  %i.he = load ptr, ptr %i.gv, align 8, !tbaa !37
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #22, !inline_history !9
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.an:                                            ; preds = %bb.al
  %i.hh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i95 = icmp eq i8 %i.hh, 0
  br i1 %.not.i.i.i95, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hi = add nsw i32 %i.gz, -1
  store i32 %i.hi, ptr %i.gw, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.hj = atomicrmw volatile add ptr %i.gw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i = phi i32 [ %i.gz, %bb.ao ], [ %i.hj, %bb.ap ]
  %i.hk = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.hk, label %bb.aq, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !38

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #22
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EED2Ev.exit, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ay

bb.ar:                                            ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

bb.as:                                            ; preds = %bb.ah
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

bb.at:                                            ; preds = %bb.ai
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.y, %bb.ag, %bb.as, %bb.at, %bb.ar
  %.pn58.ph = phi { ptr, i32 } [ %i.hn, %bb.at ], [ %i.hl, %bb.ar ], [ %i.fp, %bb.ag ], [ %i.dm, %bb.y ], [ %i.hm, %bb.as ]
  %.pr = load ptr, ptr %8, align 8, !tbaa !166
  br label %bb.au

bb.au:                                            ; preds = %thread-pre-split, %.loopexit, %.loopexit.split-lp
  %i.ho = phi ptr [ %.pr, %thread-pre-split ], [ %i.ds, %.loopexit ], [ %i.ds, %.loopexit.split-lp ] ; 3 uses
  %.pn58 = phi { ptr, i32 } [ %.pn58.ph, %thread-pre-split ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i96 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i96, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EED2Ev.exit97, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hp = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !167
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = ptrtoint ptr %i.ho to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %i.ho, i64 noundef %i.ht) #24
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EED2Ev.exit97

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EED2Ev.exit97: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit70

.critedge:                                        ; preds = %bb.i
  %i.hu = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %.not.i.i98 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i98, label %_ZN5arrow6ResultIlED2Ev.exit99, label %bb.aw, !prof !45

bb.aw:                                            ; preds = %.critedge
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 1
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !57, !range !58, !noundef !59
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %_ZN5arrow6ResultIlED2Ev.exit99, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  br label %_ZN5arrow6ResultIlED2Ev.exit99

_ZN5arrow6ResultIlED2Ev.exit99:                   ; preds = %.critedge, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6ResultIlED2Ev.exit99, %_ZN5arrow6StatusD2Ev.exit
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit70:                  ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EED2Ev.exit97, %_ZN5arrow6ResultIlED2Ev.exit81, %bb.j, %bb.k
  %.pn58.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %.pn58, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EED2Ev.exit97 ], [ %.pn52, %_ZN5arrow6ResultIlED2Ev.exit81 ], [ %i.bq, %bb.j ]
  resume { ptr, i32 } %.pn58.pn.pn
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
