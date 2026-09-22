Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ClangAttrEmitter?download=true
inline.NumInlined: 11978
inline.NumDeleted: 3623
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5clang30EmitClangAttrSpellingListIndexERKN4llvm12RecordKeeperERNS0_11raw_ostreamE:bb.a
  %i.ai = icmp ult i64 %i.ah, 33
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit78
  %i.aj = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.103, i64 noundef 33) #25 ; 0 uses
  %.pre250 = load ptr, ptr %i.c, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit81

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.ad, ptr noundef nonnull align 1 dereferenceable(33) @.str.103, i64 33, i1 false)
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 33 ; 2 uses
  store ptr %i.al, ptr %i.c, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit81

_ZN4llvm11raw_ostreamlsEPKc.exit81:               ; preds = %bb.h, %bb.i
  %i.am = phi ptr [ %.pre250, %bb.h ], [ %i.al, %bb.i ] ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp ult i64 %i.aq, 62
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit81
  %i.as = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.104, i64 noundef 62) #25 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit84

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit81
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(62) %i.am, ptr noundef nonnull align 1 dereferenceable(62) @.str.104, i64 62, i1 false)
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 62
  store ptr %i.au, ptr %i.c, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit84

_ZN4llvm11raw_ostreamlsEPKc.exit84:               ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call fastcc void @_ZL17getParsedAttrListRKN4llvm12RecordKeeperEPSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_6RecordEESaISE_EEb(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef null)
  %i.av = load ptr, ptr %2, align 8, !tbaa !147   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !147 ; 2 uses
  %.not243 = icmp eq ptr %i.av, %i.ax
  br i1 %.not243, label %._crit_edge246, label %.lr.ph245

.lr.ph245:                                        ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit84
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.q

._crit_edge246:                                   ; preds = %_ZNSt6vectorIN12_GLOBAL__N_117FlattenedSpellingESaIS1_EED2Ev.exit, %_ZN4llvm11raw_ostreamlsEPKc.exit84
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !51  ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = icmp ult i64 %i.bl, 4
  br i1 %i.bm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge246
  %i.bn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.47, i64 noundef 4) #25 ; 2 uses
  %.phi.trans.insert269 = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %.pre270 = load ptr, ptr %.phi.trans.insert269, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit87

bb.m:                                             ; preds = %._crit_edge246
  store i32 175972384, ptr %i.bi, align 1
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  store ptr %i.bp, ptr %i.c, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit87

_ZN4llvm11raw_ostreamlsEPKc.exit87:               ; preds = %bb.l, %bb.m
  %i.bq = phi ptr [ %.pre270, %bb.l ], [ %i.bp, %bb.m ] ; 2 uses
  %.0.i.i86 = phi ptr [ %i.bn, %bb.l ], [ %1, %bb.m ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i86, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !50
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = icmp ult i64 %i.bv, 12
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit87
  %i.bx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i86, ptr noundef nonnull @.str.95, i64 noundef 12) #25 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit90

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit87
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i86, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bq, ptr noundef nonnull align 1 dereferenceable(12) @.str.95, i64 12, i1 false)
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !51
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit90

_ZN4llvm11raw_ostreamlsEPKc.exit90:               ; preds = %bb.n, %bb.o
  %i.cb = load ptr, ptr %2, align 8, !tbaa !55    ; 3 uses
  %i.cc = load ptr, ptr %i.aw, align 8, !tbaa !56 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cb, %i.cc
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4llvm6RecordEEEvT_SD_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit90, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4llvm6RecordEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ci, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4llvm6RecordEEEvPT_.exit.i.i.i ], [ %i.cb, %_ZN4llvm11raw_ostreamlsEPKc.exit90 ] ; 3 uses
  %i.cd = load ptr, ptr %.05.i.i.i, align 8, !tbaa !59 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4llvm6RecordEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !60
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #26
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4llvm6RecordEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4llvm6RecordEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ci, %i.cc
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4llvm6RecordEEEvT_SD_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4llvm6RecordEEEvT_SD_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4llvm6RecordEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4llvm6RecordEEEvT_SD_.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4llvm6RecordEEEvT_SD_.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4llvm6RecordEEEvT_SD_.exitthread-pre-split.i, %_ZN4llvm11raw_ostreamlsEPKc.exit90
  %i.cj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4llvm6RecordEEEvT_SD_.exitthread-pre-split.i ], [ %i.cb, %_ZN4llvm11raw_ostreamlsEPKc.exit90 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4llvm6RecordEESaISB_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4llvm6RecordEEEvT_SD_.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !62
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #26
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4llvm6RecordEESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4llvm6RecordEESaISB_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4llvm6RecordEEEvT_SD_.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.q:                                             ; preds = %.lr.ph245, %_ZNSt6vectorIN12_GLOBAL__N_117FlattenedSpellingESaIS1_EED2Ev.exit
  %.sroa.0205.0244 = phi ptr [ %i.av, %.lr.ph245 ], [ %i.oz, %_ZNSt6vectorIN12_GLOBAL__N_117FlattenedSpellingESaIS1_EED2Ev.exit ] ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0205.0244, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call fastcc void @_ZL21GetFlattenedSpellingsRKN4llvm6RecordE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(192) %i.cq)
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !51  ; 2 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = icmp ult i64 %i.cv, 10
  br i1 %i.cw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.105, i64 noundef 10) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit93

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.cs, ptr noundef nonnull align 1 dereferenceable(10) @.str.105, i64 10, i1 false)
  %i.cy = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 10
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit93

_ZN4llvm11raw_ostreamlsEPKc.exit93:               ; preds = %bb.r, %bb.s
  %.0.i.i92 = phi ptr [ %i.cx, %bb.r ], [ %1, %bb.s ]
  %i.da = load ptr, ptr %.sroa.0205.0244, align 8, !tbaa !59
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0205.0244, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !71
  %i.dd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i92, ptr noundef %i.da, i64 noundef %i.dc) #25 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !50
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 32 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !51 ; 2 uses
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = icmp ult i64 %i.dk, 4
  br i1 %i.dl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit93
  %i.dm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dd, ptr noundef nonnull @.str.26, i64 noundef 4) #25 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit96

bb.u:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit93
  store i32 175841338, ptr %i.dh, align 1
  %i.dn = load ptr, ptr %i.dg, align 8, !tbaa !51
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store ptr %i.do, ptr %i.dg, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit96

_ZN4llvm11raw_ostreamlsEPKc.exit96:               ; preds = %bb.t, %bb.u
  %.val = load ptr, ptr %3, align 8, !tbaa !141   ; 2 uses
  %.val45 = load ptr, ptr %i.ay, align 8, !tbaa !142 ; 2 uses
  %i.dp = ptrtoint ptr %.val45 to i64
  %i.dq = ptrtoint ptr %.val to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = icmp ult i64 %i.dr, 65
  br i1 %i.ds, label %bb.v, label %.lr.ph.i.i

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit96
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.du = load ptr, ptr %i.c, align 8, !tbaa !51  ; 2 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = icmp ult i64 %i.dx, 14
  br i1 %i.dy, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.106, i64 noundef 14) #25 ; 2 uses
  %.phi.trans.insert265 = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %.pre266 = load ptr, ptr %.phi.trans.insert265, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit99

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.du, ptr noundef nonnull align 1 dereferenceable(14) @.str.106, i64 14, i1 false)
  %i.ea = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 14 ; 2 uses
  store ptr %i.eb, ptr %i.c, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit99

_ZN4llvm11raw_ostreamlsEPKc.exit99:               ; preds = %bb.w, %bb.x
  %i.ec = phi ptr [ %.pre266, %bb.w ], [ %i.eb, %bb.x ] ; 2 uses
  %.0.i.i98 = phi ptr [ %i.dz, %bb.w ], [ %1, %bb.x ] ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i.i98, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !50
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.ec to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = icmp ult i64 %i.eh, 11
  br i1 %i.ei, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit99
  %i.ej = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i98, ptr noundef nonnull @.str.46, i64 noundef 11) #25 ; 2 uses
  %.phi.trans.insert267 = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %.pre268 = load ptr, ptr %.phi.trans.insert267, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit102

bb.z:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit99
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i.i98, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ec, ptr noundef nonnull align 1 dereferenceable(11) @.str.46, i64 11, i1 false)
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !51
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 11 ; 2 uses
  store ptr %i.em, ptr %i.ek, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit102

_ZN4llvm11raw_ostreamlsEPKc.exit102:              ; preds = %bb.y, %bb.z
  %i.en = phi ptr [ %.pre268, %bb.y ], [ %i.em, %bb.z ] ; 2 uses
  %.0.i.i101 = phi ptr [ %i.ej, %bb.y ], [ %.0.i.i98, %bb.z ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i.i101, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !50
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = icmp ult i64 %i.es, 4
  br i1 %i.et, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit102
  %i.eu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i101, ptr noundef nonnull @.str.47, i64 noundef 4) #25 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit105

bb.ab:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit102
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i.i101, i64 32 ; 2 uses
  store i32 175972384, ptr %i.en, align 1
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !51
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit105

.lr.ph.i.i:                                       ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit96, %_ZNSt20back_insert_iteratorISt6vectorIN4llvm9StringRefESaIS2_EEEaSEOS2_.exit.i.i
  %.sroa.22.0 = phi ptr [ %.sroa.22.1, %_ZNSt20back_insert_iteratorISt6vectorIN4llvm9StringRefESaIS2_EEEaSEOS2_.exit.i.i ], [ null, %_ZN4llvm11raw_ostreamlsEPKc.exit96 ] ; 2 uses
  %.sroa.0192.0 = phi ptr [ %.sroa.0192.1, %_ZNSt20back_insert_iteratorISt6vectorIN4llvm9StringRefESaIS2_EEEaSEOS2_.exit.i.i ], [ null, %_ZN4llvm11raw_ostreamlsEPKc.exit96 ] ; 6 uses
  %i.ey = phi ptr [ %i.ft, %_ZNSt20back_insert_iteratorISt6vectorIN4llvm9StringRefESaIS2_EEEaSEOS2_.exit.i.i ], [ null, %_ZN4llvm11raw_ostreamlsEPKc.exit96 ] ; 5 uses
  %i.ez = phi ptr [ %.sroa.11.0, %_ZNSt20back_insert_iteratorISt6vectorIN4llvm9StringRefESaIS2_EEEaSEOS2_.exit.i.i ], [ null, %_ZN4llvm11raw_ostreamlsEPKc.exit96 ] ; 4 uses
  %.sroa.011.013.i.i = phi ptr [ %i.fu, %_ZNSt20back_insert_iteratorISt6vectorIN4llvm9StringRefESaIS2_EEEaSEOS2_.exit.i.i ], [ %.val, %_ZN4llvm11raw_ostreamlsEPKc.exit96 ] ; 3 uses
  %i.fa = getelementptr i8, ptr %.sroa.011.013.i.i, i64 16
  %.val3.i.i = load ptr, ptr %i.fa, align 8, !tbaa !112 ; 2 uses
  %i.fb = getelementptr i8, ptr %.sroa.011.013.i.i, i64 24
  %.val4.i.i = load i64, ptr %i.fb, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ez, %i.ey
  br i1 %.not.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i
  store ptr %.val3.i.i, ptr %i.ez, align 8, !tbaa !112
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i64 %.val4.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !113
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4llvm9StringRefESaIS2_EEEaSEOS2_.exit.i.i

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.fc = ptrtoint ptr %i.ey to i64
  %i.fd = ptrtoint ptr %.sroa.0192.0 to i64       ; 2 uses
  %i.fe = sub i64 %i.fc, %i.fd                    ; 3 uses
  %i.ff = icmp eq i64 %i.fe, 9223372036854775792
  br i1 %i.ff, label %bb.ae, label %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.534) #27
  unreachable

_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.ad
  %i.fg = ashr exact i64 %i.fe, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fg, i64 1)
  %i.fh = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fg ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fg
  %i.fj = call i64 @llvm.umin.i64(i64 %i.fh, i64 576460752303423487)
  %i.fk = select i1 %i.fi, i64 576460752303423487, i64 %i.fj ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.fl = shl nuw nsw i64 %i.fk, 4
  %i.fm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #28 ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fe ; 2 uses
  store ptr %.val3.i.i, ptr %i.fn, align 8, !tbaa !112
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i64 %.val4.i.i, ptr %.sroa.5.0..sroa_idx7.i.i, align 8, !tbaa !113
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0192.0, %i.ey
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.fm, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.0192.0, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !179, !alias.scope !683
  %i.fo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fo, %i.ey
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !8

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fm, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.fp, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %.sroa.0192.0, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i.i
  %i.fq = ptrtoint ptr %.sroa.22.0 to i64
  %i.fr = sub i64 %i.fq, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0192.0, i64 noundef %i.fr) #26
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i.i
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %i.fk ; 2 uses
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4llvm9StringRefESaIS2_EEEaSEOS2_.exit.i.i

_ZNSt20back_insert_iteratorISt6vectorIN4llvm9StringRefESaIS2_EEEaSEOS2_.exit.i.i: ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i, %bb.ac
  %.sroa.22.1 = phi ptr [ %i.fs, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i ], [ %.sroa.22.0, %bb.ac ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i ], [ %i.ez, %bb.ac ] ; 6 uses
  %.sroa.0192.1 = phi ptr [ %i.fm, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i ], [ %.sroa.0192.0, %bb.ac ] ; 16 uses
  %i.ft = phi ptr [ %i.fs, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i ], [ %i.ey, %bb.ac ]
  %.sroa.11.0 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.pn, i64 16 ; 13 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fu, %.val45
  br i1 %.not.i.i, label %"_ZN4llvm9transformIRSt6vectorIN12_GLOBAL__N_117FlattenedSpellingESaIS3_EESt20back_insert_iteratorIS1_INS_9StringRefESaIS8_EEEZN5clang30EmitClangAttrSpellingListIndexERKNS_12RecordKeeperERNS_11raw_ostreamEE3$_0EET0_OT_SJ_T1_.exit", label %.lr.ph.i.i, !llvm.loop !676

"_ZN4llvm9transformIRSt6vectorIN12_GLOBAL__N_117FlattenedSpellingESaIS3_EESt20back_insert_iteratorIS1_INS_9StringRefESaIS8_EEEZN5clang30EmitClangAttrSpellingListIndexERKNS_12RecordKeeperERNS_11raw_ostreamEE3$_0EET0_OT_SJ_T1_.exit": ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN4llvm9StringRefESaIS2_EEEaSEOS2_.exit.i.i
  %.not.i.i.i.i = icmp eq ptr %.sroa.0192.1, %.sroa.11.0
  br i1 %.not.i.i.i.i, label %"_ZN4llvm9transformIRSt6vectorIN12_GLOBAL__N_117FlattenedSpellingESaIS3_EESt20back_insert_iteratorIS1_INS_9StringRefESaIS8_EEEZN5clang30EmitClangAttrSpellingListIndexERKNS_12RecordKeeperERNS_11raw_ostreamEE3$_0EET0_OT_SJ_T1_.exit._ZN4llvm6uniqueIRSt6vectorINS_9StringRefESaIS2_EEEEDaOT_.exit.thread_crit_edge", label %bb.ag

"_ZN4llvm9transformIRSt6vectorIN12_GLOBAL__N_117FlattenedSpellingESaIS3_EESt20back_insert_iteratorIS1_INS_9StringRefESaIS8_EEEZN5clang30EmitClangAttrSpellingListIndexERKNS_12RecordKeeperERNS_11raw_ostreamEE3$_0EET0_OT_SJ_T1_.exit._ZN4llvm6uniqueIRSt6vectorINS_9StringRefESaIS2_EEEEDaOT_.exit.thread_crit_edge": ; preds = %"_ZN4llvm9transformIRSt6vectorIN12_GLOBAL__N_117FlattenedSpellingESaIS3_EESt20back_insert_iteratorIS1_INS_9StringRefESaIS8_EEEZN5clang30EmitClangAttrSpellingListIndexERKNS_12RecordKeeperERNS_11raw_ostreamEE3$_0EET0_OT_SJ_T1_.exit"
  %.pre271 = ptrtoint ptr %.sroa.0192.1 to i64
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit

bb.ag:                                            ; preds = %"_ZN4llvm9transformIRSt6vectorIN12_GLOBAL__N_117FlattenedSpellingESaIS3_EESt20back_insert_iteratorIS1_INS_9StringRefESaIS8_EEEZN5clang30EmitClangAttrSpellingListIndexERKNS_12RecordKeeperERNS_11raw_ostreamEE3$_0EET0_OT_SJ_T1_.exit"
  %i.fv = ptrtoint ptr %.sroa.11.0 to i64
  %i.fw = ptrtoint ptr %.sroa.0192.1 to i64       ; 6 uses
  %i.fx = sub i64 %i.fv, %i.fw                    ; 2 uses
  %i.fy = ashr exact i64 %i.fx, 4
  %i.fz = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fy, i1 true)
  %i.ga = shl nuw nsw i64 %i.fz, 1
  %i.gb = xor i64 %i.ga, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %.sroa.0192.1, ptr nonnull %.sroa.11.0, i64 noundef %i.gb)
  %i.gc = icmp sgt i64 %i.fx, 256
  br i1 %i.gc, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0192.1, i64 256 ; 3 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %.sroa.0192.1, ptr nonnull %i.gd)
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.gd, %.sroa.11.0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN4llvm4sortIRSt6vectorINS_9StringRefESaIS2_EEEEvOT_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ah, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i.i = phi ptr [ %i.gi, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i ], [ %i.gd, %bb.ah ] ; 5 uses
  %.sroa.03.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.05.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !113 ; 3 uses
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread11.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.07.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread11.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.i.i.i.i.i, i64 -16 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.i.i.i.i.i, i64 -8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !113 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i) ; 2 uses
  %i.ge = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ge, label %.thread.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ai
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !tbaa !112
  %i.gf = call i32 @memcmp(ptr noundef %.sroa.03.0.copyload.i.i.i.i.i.i.i, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i) #29
  %.fr.i.i.i.i.i.i.i.i.i.i = freeze i32 %i.gf     ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i:                      ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.ai
  %i.gg = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.gg, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread11.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  %i.gh = icmp slt i32 %.fr.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gh, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread11.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread11.i.i.i.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !179
  br label %bb.ai, !llvm.loop !9

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i
  store ptr %.sroa.03.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.07.0.i.i.i.i.i.i.i, align 8, !tbaa !112
  %.sroa.5.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i.i.i, align 8, !tbaa !113
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.0.05.i.i.i.i.i.i, %.0.lcssa.i.i.i.i.i.i.i.i.i.pn
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm4sortIRSt6vectorINS_9StringRefESaIS2_EEEEvOT_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !677

bb.aj:                                            ; preds = %bb.ag
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %.sroa.0192.1, ptr nonnull %.sroa.11.0)
  br label %_ZN4llvm4sortIRSt6vectorINS_9StringRefESaIS2_EEEEvOT_.exit

_ZN4llvm4sortIRSt6vectorINS_9StringRefESaIS2_EEEEvOT_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i, %bb.ah, %bb.aj
  %.not12.i.i.i.i = icmp eq ptr %.sroa.0192.1, %.0.lcssa.i.i.i.i.i.i.i.i.i.pn
  br i1 %.not12.i.i.i.i, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4llvm4sortIRSt6vectorINS_9StringRefESaIS2_EEEEvOT_.exit
  %.sroa.01.0.copyload.i.pre.i.i.i.i = load ptr, ptr %.sroa.0192.1, align 8, !tbaa !112
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread10.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.sroa.01.0.copyload.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread10.i.i.i.i ], [ %.sroa.01.0.copyload.i.pre.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.gj, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread10.i.i.i.i ], [ %.sroa.0192.1, %.lr.ph.preheader.i.i.i.i ] ; 7 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 16 ; 4 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !113 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.gj, align 8, !tbaa !112 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 24
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !113
  %.not.i.i.i.i.i.i106 = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i106, label %bb.ak, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread10.i.i.i.i

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i
  %i.gk = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i.i, 0
  br i1 %i.gk, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i.i

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i.i: ; preds = %bb.ak
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %.sroa.01.0.copyload.i.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.22.0.copyload.i.i.i.i.i)
  %i.gl = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.gl, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread10.i.i.i.i

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread10.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.not.i.i.i.i107 = icmp eq ptr %i.gj, %.0.lcssa.i.i.i.i.i.i.i.i.i.pn
  br i1 %.not.i.i.i.i107, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !678

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i.i, %bb.ak
  %i.gm = icmp eq ptr %.sroa.08.013.i.i.i.i, %.sroa.11.0
  br i1 %i.gm, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %bb.al

bb.al:                                            ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 32 ; 2 uses
  %.not21.i.i.i = icmp eq ptr %i.gn, %.sroa.11.0
  br i1 %.not21.i.i.i, label %_ZN4llvm6uniqueIRSt6vectorINS_9StringRefESaIS2_EEEEDaOT_.exit, label %.lr.ph.i.i.i108

.lr.ph.i.i.i108:                                  ; preds = %bb.al, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i
  %i.go = phi ptr [ %i.gs, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i ], [ %i.gn, %bb.al ] ; 5 uses
  %.sroa.0.023.i.i.i = phi ptr [ %.sroa.0.1.i.i.i, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i ], [ %.sroa.08.013.i.i.i.i, %bb.al ] ; 5 uses
  %.sroa.011.022.i.i.i = phi ptr [ %i.go, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i ], [ %i.gj, %bb.al ]
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr %.sroa.0.023.i.i.i, align 8, !tbaa !112
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !113 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.go, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.022.i.i.i, i64 24
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !113
  %.not.i.i.i.i.i109 = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i
  br i1 %.not.i.i.i.i.i109, label %bb.am, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread18.i.i.i

bb.am:                                            ; preds = %.lr.ph.i.i.i108
  %i.gp = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i, 0
  br i1 %i.gp, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i: ; preds = %bb.am
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %.sroa.01.0.copyload.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.22.0.copyload.i.i.i.i)
  %i.gq = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.gq, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread18.i.i.i

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread18.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i, %.lr.ph.i.i.i108
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.i.i, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull align 8 dereferenceable(16) %i.go, i64 16, i1 false), !tbaa.struct !179
  br label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread18.i.i.i, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i, %bb.am
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0.023.i.i.i, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i ], [ %i.gr, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread18.i.i.i ], [ %.sroa.0.023.i.i.i, %bb.am ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %.not.i.i.i110 = icmp eq ptr %i.go, %.0.lcssa.i.i.i.i.i.i.i.i.i.pn
  br i1 %.not.i.i.i110, label %_ZN4llvm6uniqueIRSt6vectorINS_9StringRefESaIS2_EEEEDaOT_.exit, label %.lr.ph.i.i.i108, !llvm.loop !679

_ZN4llvm6uniqueIRSt6vectorINS_9StringRefESaIS2_EEEEDaOT_.exit: ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i, %bb.al
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %.sroa.08.013.i.i.i.i, %bb.al ], [ %.sroa.0.1.i.i.i, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i, i64 16
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = sub i64 %i.gu, %i.fw
  %i.gw = getelementptr inbounds i8, ptr %.sroa.0192.1, i64 %i.gv
  %.not.i.i.i112 = icmp eq ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.pn, %.sroa.0.0.lcssa.i.i.i
  %spec.select = select i1 %.not.i.i.i112, ptr %.sroa.11.0, ptr %i.gw
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit: ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread10.i.i.i.i, %_ZN4llvm4sortIRSt6vectorINS_9StringRefESaIS2_EEEEvOT_.exit, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i, %"_ZN4llvm9transformIRSt6vectorIN12_GLOBAL__N_117FlattenedSpellingESaIS3_EESt20back_insert_iteratorIS1_INS_9StringRefESaIS8_EEEZN5clang30EmitClangAttrSpellingListIndexERKNS_12RecordKeeperERNS_11raw_ostreamEE3$_0EET0_OT_SJ_T1_.exit._ZN4llvm6uniqueIRSt6vectorINS_9StringRefESaIS2_EEEEDaOT_.exit.thread_crit_edge", %_ZN4llvm6uniqueIRSt6vectorINS_9StringRefESaIS2_EEEEDaOT_.exit
  %8 = phi i64 [ %i.fw, %_ZN4llvm6uniqueIRSt6vectorINS_9StringRefESaIS2_EEEEDaOT_.exit ], [ %.pre271, %"_ZN4llvm9transformIRSt6vectorIN12_GLOBAL__N_117FlattenedSpellingESaIS3_EESt20back_insert_iteratorIS1_INS_9StringRefESaIS8_EEEZN5clang30EmitClangAttrSpellingListIndexERKNS_12RecordKeeperERNS_11raw_ostreamEE3$_0EET0_OT_SJ_T1_.exit._ZN4llvm6uniqueIRSt6vectorINS_9StringRefESaIS2_EEEEDaOT_.exit.thread_crit_edge" ], [ %i.fw, %_ZN4llvm4sortIRSt6vectorINS_9StringRefESaIS2_EEEEvOT_.exit ], [ %i.fw, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i ], [ %i.fw, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread10.i.i.i.i ] ; 2 uses
  %.sroa.11.2 = phi ptr [ %spec.select, %_ZN4llvm6uniqueIRSt6vectorINS_9StringRefESaIS2_EEEEDaOT_.exit ], [ %.sroa.11.0, %"_ZN4llvm9transformIRSt6vectorIN12_GLOBAL__N_117FlattenedSpellingESaIS3_EESt20back_insert_iteratorIS1_INS_9StringRefESaIS8_EEEZN5clang30EmitClangAttrSpellingListIndexERKNS_12RecordKeeperERNS_11raw_ostreamEE3$_0EET0_OT_SJ_T1_.exit._ZN4llvm6uniqueIRSt6vectorINS_9StringRefESaIS2_EEEEDaOT_.exit.thread_crit_edge" ], [ %.sroa.11.0, %_ZN4llvm4sortIRSt6vectorINS_9StringRefESaIS2_EEEEvOT_.exit ], [ %.sroa.11.0, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i ], [ %.sroa.11.0, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPN4llvm9StringRefESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread10.i.i.i.i ] ; 3 uses
  %.val60.val = load ptr, ptr %3, align 8, !tbaa !183 ; 2 uses
  %.val61.val = load ptr, ptr %i.ay, align 8, !tbaa !183 ; 2 uses
  %.not238240 = icmp eq ptr %.val60.val, %.val61.val
  br i1 %.not238240, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit
  %i.gx = ptrtoint ptr %.sroa.11.2 to i64
  %i.gy = sub i64 %i.gx, %8
  %i.gz = icmp ugt i64 %i.gy, 16
  %.not8.i.i = icmp eq ptr %.sroa.0192.1, %.sroa.11.2
  br label %bb.as

._crit_edge:                                      ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit177, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit
  %i.ha = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.hb = load ptr, ptr %i.c, align 8, !tbaa !51  ; 2 uses
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = icmp ult i64 %i.he, 11
  br i1 %i.hf, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %._crit_edge
  %i.hg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.46, i64 noundef 11) #25 ; 2 uses
  %.phi.trans.insert263 = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %.pre264 = load ptr, ptr %.phi.trans.insert263, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit115

bb.ao:                                            ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.hb, ptr noundef nonnull align 1 dereferenceable(11) @.str.46, i64 11, i1 false)
  %i.hh = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 11 ; 2 uses
  store ptr %i.hi, ptr %i.c, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit115

_ZN4llvm11raw_ostreamlsEPKc.exit115:              ; preds = %bb.an, %bb.ao
  %i.hj = phi ptr [ %.pre264, %bb.an ], [ %i.hi, %bb.ao ] ; 2 uses
  %.0.i.i114 = phi ptr [ %i.hg, %bb.an ], [ %1, %bb.ao ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.i.i114, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !50
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = ptrtoint ptr %i.hj to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = icmp ult i64 %i.ho, 4
  br i1 %i.hp, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit115
  %i.hq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i114, ptr noundef nonnull @.str.47, i64 noundef 4) #25 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit118

bb.aq:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit115
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.i.i114, i64 32 ; 2 uses
  store i32 175972384, ptr %i.hj, align 1
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !51
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  store ptr %i.ht, ptr %i.hr, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit118

_ZN4llvm11raw_ostreamlsEPKc.exit118:              ; preds = %bb.ap, %bb.aq
  %.not.i.i.i119 = icmp eq ptr %.sroa.0192.1, null
  br i1 %.not.i.i.i119, label %_ZN4llvm11raw_ostreamlsEPKc.exit105, label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit118
  %i.hu = ptrtoint ptr %.sroa.22.1 to i64
  %i.hv = sub i64 %i.hu, %8
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0192.1, i64 noundef %i.hv) #26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit105

bb.as:                                            ; preds = %.lr.ph, %_ZN4llvm11raw_ostreamlsEPKc.exit177
  %.sroa.0185.0242 = phi ptr [ %.val60.val, %.lr.ph ], [ %i.ov, %_ZN4llvm11raw_ostreamlsEPKc.exit177 ] ; 7 uses
  %.sroa.7.0241 = phi i64 [ 0, %.lr.ph ], [ %i.ou, %_ZN4llvm11raw_ostreamlsEPKc.exit177 ] ; 2 uses
  %i.hw = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.hx = load ptr, ptr %i.c, align 8, !tbaa !51  ; 2 uses
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = icmp ult i64 %i.ia, 8
  br i1 %i.ib, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ic = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.107, i64 noundef 8) #25 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit122

bb.au:                                            ; preds = %bb.as
  store i64 2891423562468433952, ptr %i.hx, align 1
  %i.id = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store ptr %i.ie, ptr %i.c, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit122

_ZN4llvm11raw_ostreamlsEPKc.exit122:              ; preds = %bb.at, %bb.au
  br i1 %i.gz, label %bb.av, label %bb.bo

bb.av:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit122
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.az, ptr %4, align 8, !tbaa !121
  store i32 0, ptr %i.ba, align 8, !tbaa !120
  store i32 6, ptr %i.bb, align 4, !tbaa !257
  %i.if = getelementptr i8, ptr %.sroa.0185.0242, i64 16
  %i.ig = getelementptr i8, ptr %.sroa.0185.0242, i64 24 ; 3 uses
  %.val51 = load i64, ptr %i.ig, align 8, !tbaa !113 ; 3 uses
  br i1 %.not8.i.i, label %"_ZN4llvm7copy_ifIRSt6vectorINS_9StringRefESaIS2_EESt20back_insert_iteratorINS_11SmallVectorIS2_Lj6EEEEZN5clang30EmitClangAttrSpellingListIndexERKNS_12RecordKeeperERNS_11raw_ostreamEE3$_1EET0_OT_SH_T1_.exit.thread", label %.lr.ph.i.i123

.lr.ph.i.i123:                                    ; preds = %bb.av, %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorINS0_9StringRefELj6EEEEaSERKS2_.exit.i.i
  %.sroa.04.09.i.i = phi ptr [ %i.ip, %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorINS0_9StringRefELj6EEEEaSERKS2_.exit.i.i ], [ %.sroa.0192.1, %bb.av ] ; 3 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !113
  %i.ih = icmp eq i64 %.sroa.2.0.copyload.i.i, %.val51
  br i1 %i.ih, label %bb.aw, label %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorINS0_9StringRefELj6EEEEaSERKS2_.exit.i.i

bb.aw:                                            ; preds = %.lr.ph.i.i123
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !112 ; 2 uses
  %i.ii = load i32, ptr %i.ba, align 8, !tbaa !120 ; 2 uses
  %i.ij = load i32, ptr %i.bb, align 4, !tbaa !257
  %.not.i.i.i.i125 = icmp ult i32 %i.ii, %i.ij
  br i1 %.not.i.i.i.i125, label %bb.ay, label %bb.ax, !prof !178

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %.sroa.0.0.copyload.i.i.i, i64 %.val51)
  br label %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorINS0_9StringRefELj6EEEEaSERKS2_.exit.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.ik = zext i32 %i.ii to i64
  %i.il = load ptr, ptr %4, align 8, !tbaa !121
  %i.im = getelementptr inbounds nuw [16 x i8], ptr %i.il, i64 %i.ik ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.im, align 1
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store i64 %.val51, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 1
  %i.in = load i32, ptr %i.ba, align 8, !tbaa !120
  %i.io = add i32 %i.in, 1
  store i32 %i.io, ptr %i.ba, align 8, !tbaa !120
  br label %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorINS0_9StringRefELj6EEEEaSERKS2_.exit.i.i

_ZNSt20back_insert_iteratorIN4llvm11SmallVectorINS0_9StringRefELj6EEEEaSERKS2_.exit.i.i: ; preds = %bb.ay, %bb.ax, %.lr.ph.i.i123
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 16 ; 2 uses
  %.not.i.i124 = icmp eq ptr %i.ip, %.sroa.11.2
  br i1 %.not.i.i124, label %"_ZN4llvm7copy_ifIRSt6vectorINS_9StringRefESaIS2_EESt20back_insert_iteratorINS_11SmallVectorIS2_Lj6EEEEZN5clang30EmitClangAttrSpellingListIndexERKNS_12RecordKeeperERNS_11raw_ostreamEE3$_1EET0_OT_SH_T1_.exit", label %.lr.ph.i.i123, !llvm.loop !680

"_ZN4llvm7copy_ifIRSt6vectorINS_9StringRefESaIS2_EESt20back_insert_iteratorINS_11SmallVectorIS2_Lj6EEEEZN5clang30EmitClangAttrSpellingListIndexERKNS_12RecordKeeperERNS_11raw_ostreamEE3$_1EET0_OT_SH_T1_.exit": ; preds = %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorINS0_9StringRefELj6EEEEaSERKS2_.exit.i.i
  %.pre251 = load i32, ptr %i.ba, align 8, !tbaa !120
  %i.iq = icmp eq i32 %.pre251, 1
  br i1 %i.iq, label %bb.az, label %"_ZN4llvm7copy_ifIRSt6vectorINS_9StringRefESaIS2_EESt20back_insert_iteratorINS_11SmallVectorIS2_Lj6EEEEZN5clang30EmitClangAttrSpellingListIndexERKNS_12RecordKeeperERNS_11raw_ostreamEE3$_1EET0_OT_SH_T1_.exit.thread"

bb.az:                                            ; preds = %"_ZN4llvm7copy_ifIRSt6vectorINS_9StringRefESaIS2_EESt20back_insert_iteratorINS_11SmallVectorIS2_Lj6EEEEZN5clang30EmitClangAttrSpellingListIndexERKNS_12RecordKeeperERNS_11raw_ostreamEE3$_1EET0_OT_SH_T1_.exit"
  %i.ir = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.is = load ptr, ptr %i.c, align 8, !tbaa !51  ; 2 uses
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = icmp ult i64 %i.iv, 15
  br i1 %i.iw, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ix = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.108, i64 noundef 15) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit128

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.is, ptr noundef nonnull align 1 dereferenceable(15) @.str.108, i64 15, i1 false)
  %i.iy = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 15
  store ptr %i.iz, ptr %i.c, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit128

_ZN4llvm11raw_ostreamlsEPKc.exit128:              ; preds = %bb.ba, %bb.bb
  %.0.i.i127 = phi ptr [ %i.ix, %bb.ba ], [ %1, %bb.bb ]
  %.val49 = load i64, ptr %i.ig, align 8, !tbaa !113
  %i.ja = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i127, i64 noundef %.val49) #25 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !50
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 32 ; 3 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !51 ; 2 uses
  %i.jf = ptrtoint ptr %i.jc to i64
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = sub i64 %i.jf, %i.jg
  %i.ji = icmp ult i64 %i.jh, 4
  br i1 %i.ji, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit128
  %i.jj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ja, ptr noundef nonnull @.str.109, i64 noundef 4) #25 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit133

bb.bd:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit128
  store i32 539371040, ptr %i.je, align 1
  %i.jk = load ptr, ptr %i.jd, align 8, !tbaa !51
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  store ptr %i.jl, ptr %i.jd, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit133

"_ZN4llvm7copy_ifIRSt6vectorINS_9StringRefESaIS2_EESt20back_insert_iteratorINS_11SmallVectorIS2_Lj6EEEEZN5clang30EmitClangAttrSpellingListIndexERKNS_12RecordKeeperERNS_11raw_ostreamEE3$_1EET0_OT_SH_T1_.exit.thread": ; preds = %bb.av, %"_ZN4llvm7copy_ifIRSt6vectorINS_9StringRefESaIS2_EESt20back_insert_iteratorINS_11SmallVectorIS2_Lj6EEEEZN5clang30EmitClangAttrSpellingListIndexERKNS_12RecordKeeperERNS_11raw_ostreamEE3$_1EET0_OT_SH_T1_.exit"
  %i.jm = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.jn = load ptr, ptr %i.c, align 8, !tbaa !51  ; 2 uses
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = sub i64 %i.jo, %i.jp
  %i.jr = icmp ult i64 %i.jq, 9
  br i1 %i.jr, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %"_ZN4llvm7copy_ifIRSt6vectorINS_9StringRefESaIS2_EESt20back_insert_iteratorINS_11SmallVectorIS2_Lj6EEEEZN5clang30EmitClangAttrSpellingListIndexERKNS_12RecordKeeperERNS_11raw_ostreamEE3$_1EET0_OT_SH_T1_.exit.thread"
  %i.js = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.110, i64 noundef 9) #25 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  %.pre252 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit136

bb.bf:                                            ; preds = %"_ZN4llvm7copy_ifIRSt6vectorINS_9StringRefESaIS2_EESt20back_insert_iteratorINS_11SmallVectorIS2_Lj6EEEEZN5clang30EmitClangAttrSpellingListIndexERKNS_12RecordKeeperERNS_11raw_ostreamEE3$_1EET0_OT_SH_T1_.exit.thread"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.jn, ptr noundef nonnull align 1 dereferenceable(9) @.str.110, i64 9, i1 false)
  %i.jt = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 9 ; 2 uses
  store ptr %i.ju, ptr %i.c, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit136

_ZN4llvm11raw_ostreamlsEPKc.exit136:              ; preds = %bb.be, %bb.bf
  %i.jv = phi ptr [ %.pre252, %bb.be ], [ %i.ju, %bb.bf ] ; 3 uses
  %.0.i.i135 = phi ptr [ %i.js, %bb.be ], [ %1, %bb.bf ] ; 5 uses
  %.val46 = load ptr, ptr %i.if, align 8, !tbaa !112 ; 2 uses
  %.val47 = load i64, ptr %i.ig, align 8, !tbaa !113 ; 5 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.0.i.i135, i64 24
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !50
  %i.jy = getelementptr inbounds nuw i8, ptr %.0.i.i135, i64 32 ; 2 uses
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = ptrtoint ptr %i.jv to i64
  %i.kb = sub i64 %i.jz, %i.ka
  %i.kc = icmp ugt i64 %.val47, %i.kb
  br i1 %i.kc, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit136
  %i.kd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i135, ptr noundef %.val46, i64 noundef %.val47) #25 ; 2 uses
  %.phi.trans.insert253 = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  %.pre254 = load ptr, ptr %.phi.trans.insert253, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.bh:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit136
  %.not.i = icmp eq i64 %.val47, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jv, ptr align 1 %.val46, i64 %.val47, i1 false)
  %i.ke = load ptr, ptr %i.jy, align 8, !tbaa !51
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 %.val47 ; 2 uses
  store ptr %i.kf, ptr %i.jy, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.bg, %bb.bh, %bb.bi
  %i.kg = phi ptr [ %.pre254, %bb.bg ], [ %i.kf, %bb.bi ], [ %i.jv, %bb.bh ] ; 2 uses
  %.0.i = phi ptr [ %i.kd, %bb.bg ], [ %.0.i.i135, %bb.bi ], [ %.0.i.i135, %bb.bh ] ; 4 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !50
  %i.kj = icmp eq ptr %i.ki, %i.kg
  br i1 %i.kj, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.kk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.111, i64 noundef 1) #25 ; 2 uses
  %.phi.trans.insert255 = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %.pre256 = load ptr, ptr %.phi.trans.insert255, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit141

bb.bk:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.kl = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  store i8 34, ptr %i.kg, align 1
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !51
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 1 ; 2 uses
  store ptr %i.kn, ptr %i.kl, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit141

_ZN4llvm11raw_ostreamlsEPKc.exit141:              ; preds = %bb.bj, %bb.bk
  %i.ko = phi ptr [ %.pre256, %bb.bj ], [ %i.kn, %bb.bk ] ; 2 uses
  %.0.i.i140 = phi ptr [ %i.kk, %bb.bj ], [ %.0.i, %bb.bk ] ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.i.i140, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !50
  %i.kr = ptrtoint ptr %i.kq to i64
  %i.ks = ptrtoint ptr %i.ko to i64
  %i.kt = sub i64 %i.kr, %i.ks
  %i.ku = icmp ult i64 %i.kt, 4
  br i1 %i.ku, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit141
  %i.kv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i140, ptr noundef nonnull @.str.109, i64 noundef 4) #25 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit133

bb.bm:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit141
  %i.kw = getelementptr inbounds nuw i8, ptr %.0.i.i140, i64 32 ; 2 uses
  store i32 539371040, ptr %i.ko, align 1
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !51
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  store ptr %i.ky, ptr %i.kw, align 8, !tbaa !51
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit133

_ZN4llvm11raw_ostreamlsEPKc.exit133:              ; preds = %bb.bm, %bb.bl, %bb.bd, %bb.bc
  %i.kz = load ptr, ptr %4, align 8, !tbaa !121   ; 2 uses
  %i.la = icmp eq ptr %i.kz, %i.az
  br i1 %i.la, label %_ZN4llvm11SmallVectorINS_9StringRefELj6EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit133
  call void @free(ptr noundef %i.kz) #25
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj6EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj6EED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit133, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj6EED2Ev.exit, %_ZN4llvm11raw_ostreamlsEPKc.exit122
  %i.lb = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.lc = load ptr, ptr %i.c, align 8, !tbaa !51  ; 2 uses
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = sub i64 %i.ld, %i.le
end_hunk_0
