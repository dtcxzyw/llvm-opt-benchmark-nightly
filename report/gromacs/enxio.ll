Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/enxio?download=true
inline.NumInlined: 229
inline.NumDeleted: 101
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Z8comp_enxRKNSt10filesystem7__cxx114pathES3_ffPKc:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.ay = load ptr, ptr %8, align 8, !tbaa !66    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.q
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load i64, ptr %i.q, align 8, !tbaa !67
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.bc = call noundef ptr @_Z8open_enxRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.71) ; 3 uses
  %i.bd = call noundef ptr @_Z8open_enxRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.71) ; 3 uses
  call void @_Z9do_enxnmsP9ener_filePiPP11gmx_enxnm_t(ptr noundef %i.bc, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k)
  call void @_Z9do_enxnmsP9ener_filePiPP11gmx_enxnm_t(ptr noundef %i.bd, ptr noundef nonnull %i.j, ptr noundef nonnull %i.l)
  %i.be = load i32, ptr %i.i, align 4, !tbaa !57  ; 3 uses
  %i.bf = load i32, ptr %i.j, align 4, !tbaa !57  ; 2 uses
  %.not86 = icmp eq i32 %i.be, %i.bf
  %i.bg = load ptr, ptr @stdout, align 8, !tbaa !72 ; 2 uses
  br i1 %.not86, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.bh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bg, ptr noundef nonnull @.str.112, i32 noundef %i.be, i32 noundef %i.bf) #22 ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %.noexc.i.i.i95, %.noexc.i96
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.bj = load ptr, ptr %8, align 8, !tbaa !66    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.q
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.j
  %i.bl = load i64, ptr %i.q, align 8, !tbaa !67
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ck

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.bn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bg, ptr noundef nonnull @.str.113, i32 noundef %i.be) #22 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.bo = load i32, ptr %i.i, align 4, !tbaa !57
  %i.bp = sext i32 %i.bo to i64
  %i.bq = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.9, i32 noundef 1544, i64 noundef range(i64 -2147483648, 2147483648) %i.bp, i64 noundef 4) ; 7 uses
  %i.br = load i32, ptr %i.j, align 4, !tbaa !57
  %i.bs = sext i32 %i.br to i64
  %i.bt = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.9, i32 noundef 1545, i64 noundef range(i64 -2147483648, 2147483648) %i.bs, i64 noundef 4) ; 4 uses
  %i.bu = load i32, ptr %i.j, align 4, !tbaa !57
  %i.bv = sext i32 %i.bu to i64
  %i.bw = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.9, i32 noundef 1546, i64 noundef range(i64 -2147483648, 2147483648) %i.bv, i64 noundef 4) ; 2 uses
  %i.bx = load i32, ptr %i.i, align 4, !tbaa !57
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.preheader187.lr.ph, label %.preheader186

.preheader187.lr.ph:                              ; preds = %bb.l
  %i.bz = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ca = load ptr, ptr %i.l, align 8
  br label %.preheader187

.preheader187:                                    ; preds = %.preheader187.lr.ph, %bb.u
  %indvars.iv218 = phi i64 [ 0, %.preheader187.lr.ph ], [ %indvars.iv.next219, %bb.u ] ; 6 uses
  %.080201 = phi i32 [ 0, %.preheader187.lr.ph ], [ %.181, %bb.u ] ; 4 uses
  %i.cb = load i32, ptr %i.j, align 4, !tbaa !57  ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph, label %.loopexit188

.lr.ph:                                           ; preds = %.preheader187
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %indvars.iv218
  br label %bb.m

.preheader186:                                    ; preds = %bb.u, %bb.l
  %.080.lcssa = phi i32 [ 0, %bb.l ], [ %.181, %bb.u ] ; 10 uses
  %i.ce = load i32, ptr %i.j, align 4, !tbaa !57  ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph204, label %.preheader

.lr.ph204:                                        ; preds = %.preheader186
  %i.cg = load ptr, ptr %i.l, align 8
  br label %bb.v

bb.m:                                             ; preds = %.lr.ph, %_ZL12enernm_equalPKcS0_.exit.thread
  %i.ch = phi i32 [ %i.cb, %.lr.ph ], [ %i.dn, %_ZL12enernm_equalPKcS0_.exit.thread ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZL12enernm_equalPKcS0_.exit.thread ] ; 4 uses
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !75 ; 3 uses
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %indvars.iv
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !75 ; 3 uses
  %i.cl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ci) #27 ; 2 uses
  %i.cm = trunc i64 %i.cl to i32                  ; 4 uses
  %i.cn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ck) #27 ; 2 uses
  %i.co = trunc i64 %i.cn to i32                  ; 4 uses
  %i.cp = icmp sgt i32 %i.cm, 6
  br i1 %i.cp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cq = and i64 %i.cl, 2147483647
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cq
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -6
  %i.ct = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cs, ptr noundef nonnull dereferenceable(7) @.str.127) #27
  %i.cu = icmp eq i32 %i.ct, 0
  %i.cv = add nsw i32 %i.cm, -6
  %spec.select.i = select i1 %i.cu, i32 %i.cv, i32 %i.cm
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.014.i = phi i32 [ %i.cm, %bb.m ], [ %spec.select.i, %bb.n ] ; 2 uses
  %i.cw = icmp sgt i32 %i.co, 6
  br i1 %i.cw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cx = and i64 %i.cn, 2147483647
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cx
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -6
  %i.da = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cz, ptr noundef nonnull dereferenceable(7) @.str.127) #27
  %i.db = icmp eq i32 %i.da, 0
  %i.dc = add nsw i32 %i.co, -6
  %spec.select18.i = select i1 %i.db, i32 %i.dc, i32 %i.co
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i = phi i32 [ %i.co, %bb.o ], [ %spec.select18.i, %bb.p ]
  %i.dd = icmp eq i32 %.014.i, %.0.i
  br i1 %i.dd, label %_ZL12enernm_equalPKcS0_.exit, label %_ZL12enernm_equalPKcS0_.exit.thread

_ZL12enernm_equalPKcS0_.exit:                     ; preds = %bb.q
  %i.de = call noundef i32 @_Z15gmx_strncasecmpPKcS0_i(ptr noundef nonnull %i.ci, ptr noundef nonnull %i.ck, i32 noundef %.014.i)
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.r, label %_ZL12enernm_equalPKcS0_.exit._ZL12enernm_equalPKcS0_.exit.thread_crit_edge

_ZL12enernm_equalPKcS0_.exit._ZL12enernm_equalPKcS0_.exit.thread_crit_edge: ; preds = %_ZL12enernm_equalPKcS0_.exit
  %.pre = load i32, ptr %i.j, align 4, !tbaa !57
  br label %_ZL12enernm_equalPKcS0_.exit.thread

bb.r:                                             ; preds = %_ZL12enernm_equalPKcS0_.exit
  %i.dg = trunc nuw nsw i64 %indvars.iv to i32
  %i.dh = sext i32 %.080201 to i64                ; 2 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.dh
  %i.dj = trunc nuw nsw i64 %indvars.iv218 to i32
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !57
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.dh
  store i32 %i.dg, ptr %i.dk, align 4, !tbaa !57
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv
  store i32 1, ptr %i.dl, align 4, !tbaa !57
  %i.dm = add nsw i32 %.080201, 1
  br label %.loopexit188

_ZL12enernm_equalPKcS0_.exit.thread:              ; preds = %_ZL12enernm_equalPKcS0_.exit._ZL12enernm_equalPKcS0_.exit.thread_crit_edge, %bb.q
  %i.dn = phi i32 [ %.pre, %_ZL12enernm_equalPKcS0_.exit._ZL12enernm_equalPKcS0_.exit.thread_crit_edge ], [ %i.ch, %bb.q ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp slt i64 %indvars.iv.next, %i.do
  br i1 %i.dp, label %bb.m, label %.loopexit188, !llvm.loop !333

.loopexit188:                                     ; preds = %_ZL12enernm_equalPKcS0_.exit.thread, %.preheader187, %bb.r
  %.181 = phi i32 [ %i.dm, %bb.r ], [ %.080201, %.preheader187 ], [ %.080201, %_ZL12enernm_equalPKcS0_.exit.thread ] ; 4 uses
  %i.dq = icmp eq i32 %.181, 0
  br i1 %i.dq, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.loopexit188
  %i.dr = sext i32 %.181 to i64
  %i.ds = getelementptr [4 x i8], ptr %i.bq, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 -4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !57
  %i.dv = zext i32 %i.du to i64
  %.not92 = icmp eq i64 %indvars.iv218, %i.dv
  br i1 %.not92, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit188
  %i.dw = load ptr, ptr @stdout, align 8, !tbaa !72
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %indvars.iv218
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !75
  %i.dz = trunc nuw nsw i64 %indvars.iv218 to i32
  call void @_Z7cmp_strP8_IO_FILEPKciS2_S2_(ptr noundef %i.dw, ptr noundef nonnull @.str.117, i32 noundef %i.dz, ptr noundef %i.dy, ptr noundef nonnull @.str.118)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %i.ea = load i32, ptr %i.i, align 4, !tbaa !57
  %i.eb = sext i32 %i.ea to i64
  %i.ec = icmp slt i64 %indvars.iv.next219, %i.eb
  br i1 %i.ec, label %.preheader187, label %.preheader186, !llvm.loop !334

.preheader:                                       ; preds = %bb.x, %.preheader186
  %i.ed = icmp sgt i32 %.080.lcssa, 0             ; 2 uses
  br i1 %i.ed, label %.lr.ph206, label %.loopexit185.thread271

.loopexit185.thread271:                           ; preds = %.preheader
  %i.ee = load ptr, ptr @stdout, align 8, !tbaa !72
  %i.ef = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ee, ptr noundef nonnull @.str.119, i32 noundef %.080.lcssa) #22 ; 0 uses
  br label %.loopexit185.._crit_edge_crit_edge

.lr.ph206:                                        ; preds = %.preheader
  %.not87 = icmp eq ptr %4, null
  %i.eg = load ptr, ptr %i.k, align 8
  br i1 %.not87, label %.loopexit185.thread, label %.lr.ph206.split.preheader

.loopexit185.thread:                              ; preds = %.lr.ph206
  %14 = load ptr, ptr @stdout, align 8, !tbaa !72
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.119, i32 noundef %.080.lcssa) #22 ; 0 uses
  br label %.lr.ph208

.lr.ph206.split.preheader:                        ; preds = %.lr.ph206
  %wide.trip.count = zext nneg i32 %.080.lcssa to i64
  br label %.lr.ph206.split

bb.v:                                             ; preds = %.lr.ph204, %bb.x
  %i.eh = phi i32 [ %i.ce, %.lr.ph204 ], [ %i.ep, %bb.x ]
  %indvars.iv221 = phi i64 [ 0, %.lr.ph204 ], [ %indvars.iv.next222, %bb.x ] ; 4 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv221
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !57
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.el = load ptr, ptr @stdout, align 8, !tbaa !72
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %indvars.iv221
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !75
  %i.eo = trunc nuw nsw i64 %indvars.iv221 to i32
  call void @_Z7cmp_strP8_IO_FILEPKciS2_S2_(ptr noundef %i.el, ptr noundef nonnull @.str.117, i32 noundef %i.eo, ptr noundef nonnull @.str.118, ptr noundef %i.en)
  %.pre232 = load i32, ptr %i.j, align 4, !tbaa !57
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ep = phi i32 [ %i.eh, %bb.v ], [ %.pre232, %bb.w ] ; 2 uses
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %i.eq = sext i32 %i.ep to i64
  %i.er = icmp slt i64 %indvars.iv.next222, %i.eq
  br i1 %i.er, label %bb.v, label %.preheader, !llvm.loop !335

.lr.ph206.split:                                  ; preds = %.lr.ph206.split.preheader, %bb.z
  %indvars.iv224 = phi i64 [ 0, %.lr.ph206.split.preheader ], [ %indvars.iv.next225, %bb.z ] ; 3 uses
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %indvars.iv224
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !75
  %i.eu = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.et, ptr noundef nonnull dereferenceable(1) %4) #27
  %.not88 = icmp eq ptr %i.eu, null
  br i1 %.not88, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph206.split
  %i.ev = trunc nuw nsw i64 %indvars.iv224 to i32
  %i.ew = add nuw nsw i32 %i.ev, 1
  br label %.loopexit185

bb.z:                                             ; preds = %.lr.ph206.split
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit185, label %.lr.ph206.split, !llvm.loop !336

.loopexit185:                                     ; preds = %bb.z, %bb.y
  %.077 = phi i32 [ %i.ew, %bb.y ], [ %.080.lcssa, %bb.z ] ; 4 uses
  %16 = load ptr, ptr @stdout, align 8, !tbaa !72
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.119, i32 noundef %.077) #22 ; 0 uses
  %18 = icmp sgt i32 %.077, 0
  br i1 %18, label %.lr.ph208, label %.loopexit185.._crit_edge_crit_edge

.loopexit185.._crit_edge_crit_edge:               ; preds = %.loopexit185.thread271, %.loopexit185
  %.077273 = phi i32 [ %.080.lcssa, %.loopexit185.thread271 ], [ %.077, %.loopexit185 ] ; 2 uses
  %.pre233 = zext nneg i32 %.077273 to i64
  br label %._crit_edge

.lr.ph208:                                        ; preds = %.loopexit185.thread, %.loopexit185
  %.077270 = phi i32 [ %.080.lcssa, %.loopexit185.thread ], [ %.077, %.loopexit185 ] ; 2 uses
  %i.ex = load ptr, ptr %i.k, align 8, !tbaa !73
  %i.ey = load ptr, ptr %i.l, align 8, !tbaa !73
  %wide.trip.count230 = zext nneg i32 %.077270 to i64 ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph208, %bb.aa
  %indvars.iv227 = phi i64 [ 0, %.lr.ph208 ], [ %indvars.iv.next228, %bb.aa ] ; 4 uses
  %i.ez = load ptr, ptr @stdout, align 8, !tbaa !72
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv227
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !57
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [16 x i8], ptr %i.ex, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !76
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv227
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !57
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [16 x i8], ptr %i.ey, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !76
  %i.fm = trunc nuw nsw i64 %indvars.iv227 to i32
  call void @_Z7cmp_strP8_IO_FILEPKciS2_S2_(ptr noundef %i.ez, ptr noundef nonnull @.str.120, i32 noundef %i.fm, ptr noundef %i.ff, ptr noundef %i.fl)
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond231.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count230
  br i1 %exitcond231.not, label %._crit_edge, label %bb.aa, !llvm.loop !337

._crit_edge:                                      ; preds = %bb.aa, %.loopexit185.._crit_edge_crit_edge
  %19 = phi i1 [ false, %.loopexit185.._crit_edge_crit_edge ], [ true, %bb.aa ]
  %.077269 = phi i32 [ %.077273, %.loopexit185.._crit_edge_crit_edge ], [ %.077270, %bb.aa ]
  %wide.trip.count.i.pre-phi = phi i64 [ %.pre233, %.loopexit185.._crit_edge_crit_edge ], [ %wide.trip.count230, %bb.aa ] ; 2 uses
  %i.fn = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.9, i32 noundef 1591, i64 noundef 1, i64 noundef 80) ; 9 uses
  %i.fo = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.9, i32 noundef 1592, i64 noundef 1, i64 noundef 80) ; 9 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 36
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 36
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  %i.fz = sext i32 %.077269 to i64
  %wide.trip.count.i.i = zext nneg i32 %.080.lcssa to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fn, i64 56 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fo, i64 56 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fn, i64 64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  %i.ge = fpext float %2 to double
  %i.gf = fpext float %3 to double
  %i.gg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ci, %._crit_edge
  %i.gk = call noundef zeroext i1 @_Z6do_enxP9ener_fileP10t_enxframe(ptr noundef %i.bc, ptr noundef %i.fn) ; 3 uses
  %i.gl = call noundef zeroext i1 @_Z6do_enxP9ener_fileP10t_enxframe(ptr noundef %i.bd, ptr noundef %i.fo) ; 4 uses
  %.not = xor i1 %i.gk, true                      ; 2 uses
  %or.cond = or i1 %i.gl, %.not
  br i1 %or.cond, label %bb.al, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gm = load ptr, ptr @stdout, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.gn = load ptr, ptr %1, align 8, !tbaa !66, !noalias !374 ; 3 uses
  %i.go = load i64, ptr %i.ae, align 8, !tbaa !79, !noalias !374 ; 5 uses
  store ptr %i.fp, ptr %10, align 8, !tbaa !77, !alias.scope !374
  %i.gp = icmp eq ptr %i.gn, null
  %i.gq = icmp ne i64 %i.go, 0
  %or.cond.i.i.i105 = and i1 %i.gp, %i.gq
  br i1 %or.cond.i.i.i105, label %.noexc.i108, label %bb.ad

.noexc.i108:                                      ; preds = %bb.ac
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.25) #23
  unreachable

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22, !noalias !374
  store i64 %i.go, ptr %i.f, align 8, !tbaa !78, !noalias !374
  %i.gr = icmp ugt i64 %i.go, 15
  br i1 %i.gr, label %.noexc.i.i.i107, label %._crit_edge.i.i.i.i106

.noexc.i.i.i107:                                  ; preds = %bb.ad
  %i.gs = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 2 uses
  store ptr %i.gs, ptr %10, align 8, !tbaa !66, !alias.scope !374
  %i.gt = load i64, ptr %i.f, align 8, !tbaa !78, !noalias !374
  store i64 %i.gt, ptr %i.fp, align 8, !tbaa !67, !alias.scope !374
  br label %._crit_edge.i.i.i.i106

._crit_edge.i.i.i.i106:                           ; preds = %.noexc.i.i.i107, %bb.ad
  %i.gu = phi ptr [ %i.gs, %.noexc.i.i.i107 ], [ %i.fp, %bb.ad ] ; 2 uses
  switch i64 %i.go, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %_ZNKSt10filesystem7__cxx114path6stringEv.exit109
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i106
  %i.gv = load i8, ptr %i.gn, align 1, !tbaa !67
  store i8 %i.gv, ptr %i.gu, align 1, !tbaa !67
  br label %_ZNKSt10filesystem7__cxx114path6stringEv.exit109

bb.af:                                            ; preds = %._crit_edge.i.i.i.i106
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gu, ptr align 1 %i.gn, i64 %i.go, i1 false)
  br label %_ZNKSt10filesystem7__cxx114path6stringEv.exit109

_ZNKSt10filesystem7__cxx114path6stringEv.exit109: ; preds = %._crit_edge.i.i.i.i106, %bb.ae, %bb.af
  %i.gw = load i64, ptr %i.f, align 8, !tbaa !78, !noalias !374 ; 2 uses
  store i64 %i.gw, ptr %i.fq, align 8, !tbaa !79, !alias.scope !374
  %i.gx = load ptr, ptr %10, align 8, !tbaa !66, !alias.scope !374
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gw
  store i8 0, ptr %i.gy, align 1, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22, !noalias !374
  %i.gz = load ptr, ptr %10, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.ha = load ptr, ptr %0, align 8, !tbaa !66, !noalias !377 ; 3 uses
  %i.hb = load i64, ptr %i.o, align 8, !tbaa !79, !noalias !377 ; 5 uses
  store ptr %i.fr, ptr %11, align 8, !tbaa !77, !alias.scope !377
  %i.hc = icmp eq ptr %i.ha, null
  %i.hd = icmp ne i64 %i.hb, 0
  %or.cond.i.i.i110 = and i1 %i.hc, %i.hd
  br i1 %or.cond.i.i.i110, label %.noexc.i113, label %bb.ag

.noexc.i113:                                      ; preds = %_ZNKSt10filesystem7__cxx114path6stringEv.exit109
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.25) #23
          to label %.noexc114 unwind label %.loopexit.split-lp

.noexc114:                                        ; preds = %.noexc.i113
  unreachable

bb.ag:                                            ; preds = %_ZNKSt10filesystem7__cxx114path6stringEv.exit109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22, !noalias !377
  store i64 %i.hb, ptr %i.e, align 8, !tbaa !78, !noalias !377
  %i.he = icmp ugt i64 %i.hb, 15
  br i1 %i.he, label %.noexc.i.i.i112, label %._crit_edge.i.i.i.i111

.noexc.i.i.i112:                                  ; preds = %bb.ag
  %i.hf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc115 unwind label %.loopexit ; 2 uses

.noexc115:                                        ; preds = %.noexc.i.i.i112
  store ptr %i.hf, ptr %11, align 8, !tbaa !66, !alias.scope !377
  %i.hg = load i64, ptr %i.e, align 8, !tbaa !78, !noalias !377
  store i64 %i.hg, ptr %i.fr, align 8, !tbaa !67, !alias.scope !377
  br label %._crit_edge.i.i.i.i111

._crit_edge.i.i.i.i111:                           ; preds = %.noexc115, %bb.ag
  %i.hh = phi ptr [ %i.hf, %.noexc115 ], [ %i.fr, %bb.ag ] ; 2 uses
  switch i64 %i.hb, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %bb.aj
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i.i.i111
  %i.hi = load i8, ptr %i.ha, align 1, !tbaa !67
  store i8 %i.hi, ptr %i.hh, align 1, !tbaa !67
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i111
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hh, ptr align 1 %i.ha, i64 %i.hb, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i.i.i111
  %i.hj = load i64, ptr %i.e, align 8, !tbaa !78, !noalias !377 ; 2 uses
  store i64 %i.hj, ptr %i.fs, align 8, !tbaa !79, !alias.scope !377
  %i.hk = load ptr, ptr %11, align 8, !tbaa !66, !alias.scope !377
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hj
  store i8 0, ptr %i.hl, align 1, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22, !noalias !377
  %i.hm = load ptr, ptr %11, align 8, !tbaa !66
  %i.hn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gm, ptr noundef nonnull @.str.123, ptr noundef %i.gz, ptr noundef %i.hm) #22 ; 0 uses
  %i.ho = load ptr, ptr %11, align 8, !tbaa !66   ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.fr
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.aj
  %i.hq = load i64, ptr %i.fr, align 8, !tbaa !67
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.hs = load ptr, ptr %10, align 8, !tbaa !66   ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.fp
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %i.hu = load i64, ptr %i.fp, align 8, !tbaa !67
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ci

.loopexit:                                        ; preds = %.noexc.i.i.i112
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %.noexc.i113
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.hw = load ptr, ptr %10, align 8, !tbaa !66   ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.fp
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %bb.ak
  %i.hy = load i64, ptr %i.fp, align 8, !tbaa !67
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.hz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ck

bb.al:                                            ; preds = %bb.ab
end_hunk_0
begin_hunk_1_@_Z8comp_enxRKNSt10filesystem7__cxx114pathES3_ffPKc:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.ib = load ptr, ptr %0, align 8, !tbaa !66, !noalias !380 ; 3 uses
  %i.ic = load i64, ptr %i.o, align 8, !tbaa !79, !noalias !380 ; 5 uses
  store ptr %i.gg, ptr %12, align 8, !tbaa !77, !alias.scope !380
  %i.id = icmp eq ptr %i.ib, null
  %i.ie = icmp ne i64 %i.ic, 0
  %or.cond.i.i.i126 = and i1 %i.id, %i.ie
  br i1 %or.cond.i.i.i126, label %.noexc.i129, label %bb.an

.noexc.i129:                                      ; preds = %bb.am
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.25) #23
  unreachable

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22, !noalias !380
  store i64 %i.ic, ptr %i.d, align 8, !tbaa !78, !noalias !380
  %i.if = icmp ugt i64 %i.ic, 15
  br i1 %i.if, label %.noexc.i.i.i128, label %._crit_edge.i.i.i.i127

.noexc.i.i.i128:                                  ; preds = %bb.an
  %i.ig = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.ig, ptr %12, align 8, !tbaa !66, !alias.scope !380
  %i.ih = load i64, ptr %i.d, align 8, !tbaa !78, !noalias !380
  store i64 %i.ih, ptr %i.gg, align 8, !tbaa !67, !alias.scope !380
  br label %._crit_edge.i.i.i.i127

._crit_edge.i.i.i.i127:                           ; preds = %.noexc.i.i.i128, %bb.an
  %i.ii = phi ptr [ %i.ig, %.noexc.i.i.i128 ], [ %i.gg, %bb.an ] ; 2 uses
  switch i64 %i.ic, label %bb.ap [
    i64 1, label %bb.ao
    i64 0, label %_ZNKSt10filesystem7__cxx114path6stringEv.exit130
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i127
  %i.ij = load i8, ptr %i.ib, align 1, !tbaa !67
  store i8 %i.ij, ptr %i.ii, align 1, !tbaa !67
  br label %_ZNKSt10filesystem7__cxx114path6stringEv.exit130

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i127
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ii, ptr align 1 %i.ib, i64 %i.ic, i1 false)
  br label %_ZNKSt10filesystem7__cxx114path6stringEv.exit130

_ZNKSt10filesystem7__cxx114path6stringEv.exit130: ; preds = %._crit_edge.i.i.i.i127, %bb.ao, %bb.ap
  %i.ik = load i64, ptr %i.d, align 8, !tbaa !78, !noalias !380 ; 2 uses
  store i64 %i.ik, ptr %i.gh, align 8, !tbaa !79, !alias.scope !380
  %i.il = load ptr, ptr %12, align 8, !tbaa !66, !alias.scope !380
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ik
  store i8 0, ptr %i.im, align 1, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22, !noalias !380
  %i.in = load ptr, ptr %12, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.io = load ptr, ptr %1, align 8, !tbaa !66, !noalias !383 ; 3 uses
  %i.ip = load i64, ptr %i.ae, align 8, !tbaa !79, !noalias !383 ; 5 uses
  store ptr %i.gi, ptr %13, align 8, !tbaa !77, !alias.scope !383
  %i.iq = icmp eq ptr %i.io, null
  %i.ir = icmp ne i64 %i.ip, 0
  %or.cond.i.i.i131 = and i1 %i.iq, %i.ir
  br i1 %or.cond.i.i.i131, label %.noexc.i134, label %bb.aq

.noexc.i134:                                      ; preds = %_ZNKSt10filesystem7__cxx114path6stringEv.exit130
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.25) #23
          to label %.noexc135 unwind label %.loopexit.split-lp181

.noexc135:                                        ; preds = %.noexc.i134
  unreachable

bb.aq:                                            ; preds = %_ZNKSt10filesystem7__cxx114path6stringEv.exit130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22, !noalias !383
  store i64 %i.ip, ptr %i.c, align 8, !tbaa !78, !noalias !383
  %i.is = icmp ugt i64 %i.ip, 15
  br i1 %i.is, label %.noexc.i.i.i133, label %._crit_edge.i.i.i.i132

.noexc.i.i.i133:                                  ; preds = %bb.aq
  %i.it = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc136 unwind label %.loopexit180 ; 2 uses

.noexc136:                                        ; preds = %.noexc.i.i.i133
  store ptr %i.it, ptr %13, align 8, !tbaa !66, !alias.scope !383
  %i.iu = load i64, ptr %i.c, align 8, !tbaa !78, !noalias !383
  store i64 %i.iu, ptr %i.gi, align 8, !tbaa !67, !alias.scope !383
  br label %._crit_edge.i.i.i.i132

._crit_edge.i.i.i.i132:                           ; preds = %.noexc136, %bb.aq
  %i.iv = phi ptr [ %i.it, %.noexc136 ], [ %i.gi, %bb.aq ] ; 2 uses
  switch i64 %i.ip, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %bb.at
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i.i.i132
  %i.iw = load i8, ptr %i.io, align 1, !tbaa !67
  store i8 %i.iw, ptr %i.iv, align 1, !tbaa !67
  br label %bb.at

bb.as:                                            ; preds = %._crit_edge.i.i.i.i132
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iv, ptr align 1 %i.io, i64 %i.ip, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %._crit_edge.i.i.i.i132
  %i.ix = load i64, ptr %i.c, align 8, !tbaa !78, !noalias !383 ; 2 uses
  store i64 %i.ix, ptr %i.gj, align 8, !tbaa !79, !alias.scope !383
  %i.iy = load ptr, ptr %13, align 8, !tbaa !66, !alias.scope !383
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.ix
  store i8 0, ptr %i.iz, align 1, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22, !noalias !383
  %i.ja = load ptr, ptr %13, align 8, !tbaa !66
  %i.jb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ia, ptr noundef nonnull @.str.123, ptr noundef %i.in, ptr noundef %i.ja) #22 ; 0 uses
  %i.jc = load ptr, ptr %13, align 8, !tbaa !66   ; 2 uses
  %i.jd = icmp eq ptr %i.jc, %i.gi
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %bb.at
  %i.je = load i64, ptr %i.gi, align 8, !tbaa !67
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.jg = load ptr, ptr %12, align 8, !tbaa !66   ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.gg
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.ji = load i64, ptr %i.gg, align 8, !tbaa !67
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.ci

.loopexit180:                                     ; preds = %.noexc.i.i.i133
  %lpad.loopexit182 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp181:                            ; preds = %.noexc.i134
  %lpad.loopexit.split-lp183 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.au:                                            ; preds = %.loopexit.split-lp181, %.loopexit180
  %lpad.phi184 = phi { ptr, i32 } [ %lpad.loopexit182, %.loopexit180 ], [ %lpad.loopexit.split-lp183, %.loopexit.split-lp181 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.jk = load ptr, ptr %12, align 8, !tbaa !66   ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.gg
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %bb.au
  %i.jm = load i64, ptr %i.gg, align 8, !tbaa !67
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.ck

bb.av:                                            ; preds = %bb.al
  %or.cond6 = or i1 %i.gk, %i.gl
  %i.jo = load ptr, ptr @stdout, align 8, !tbaa !72 ; 2 uses
  br i1 %or.cond6, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %fwrite = call i64 @fwrite(ptr nonnull @.str.124, i64 25, i64 1, ptr %i.jo) ; 0 uses
  br label %bb.ci

bb.ax:                                            ; preds = %bb.av
  %i.jp = load double, ptr %i.fn, align 8, !tbaa !90
  %i.jq = fptrunc double %i.jp to float
  %i.jr = load double, ptr %i.fo, align 8, !tbaa !90
  %i.js = fptrunc double %i.jr to float
  call void @_Z8cmp_realP8_IO_FILEPKciffff(ptr noundef %i.jo, ptr noundef nonnull @.str.125, i32 noundef -1, float noundef %i.jq, float noundef %i.js, float noundef %2, float noundef %3)
  %i.jt = load ptr, ptr @stdout, align 8, !tbaa !72
  %i.ju = load i64, ptr %i.ft, align 8, !tbaa !91
  %i.jv = trunc i64 %i.ju to i32
  %i.jw = load i64, ptr %i.fu, align 8, !tbaa !91
  %i.jx = trunc i64 %i.jw to i32
  call void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %i.jt, ptr noundef nonnull @.str.126, i32 noundef -1, i32 noundef %i.jv, i32 noundef %i.jx)
  %i.jy = load i32, ptr %i.fv, align 4, !tbaa !86
  %.not89 = icmp slt i32 %i.jy, %.080.lcssa
  br i1 %.not89, label %bb.br, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jz = load i32, ptr %i.fw, align 4, !tbaa !86
  %.not90 = icmp slt i32 %i.jz, %.080.lcssa
  br i1 %.not90, label %bb.br, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ka = load ptr, ptr @stdout, align 8, !tbaa !72
  %i.kb = load i64, ptr %i.ft, align 8, !tbaa !91
  %i.kc = trunc i64 %i.kb to i32                  ; 2 uses
  %i.kd = load ptr, ptr %i.fx, align 8, !tbaa !21 ; 4 uses
  %i.ke = load ptr, ptr %i.fy, align 8, !tbaa !21 ; 3 uses
  %i.kf = load ptr, ptr %i.k, align 8, !tbaa !73  ; 5 uses
  %i.kg = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.9, i32 noundef 1352, i64 noundef range(i64 -2147483648, 2147483648) %i.fz, i64 noundef 4) ; 4 uses
  br i1 %19, label %.lr.ph.i, label %_ZL12cmp_energiesP8_IO_FILEiiP8t_energyS2_P11gmx_enxnm_tffiPiS5_i.exit

.lr.ph.i:                                         ; preds = %bb.az, %bb.bd
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bd ], [ 0, %bb.az ] ; 3 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !57
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv.i ; 2 uses
  store i32 -1, ptr %i.kj, align 4, !tbaa !57
  %i.kk = sext i32 %i.ki to i64
  %i.kl = getelementptr inbounds [16 x i8], ptr %i.kf, i64 %i.kk
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !75 ; 4 uses
  %i.kn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.km) #27 ; 4 uses
  %i.ko = trunc i64 %i.kn to i32
  %i.kp = icmp sgt i32 %i.ko, 3
  br i1 %i.kp, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %.lr.ph.i
  %i.kq = add i64 %i.kn, 4294967293
  %i.kr = and i64 %i.kq, 4294967295
  %i.ks = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !67
  %i.ku = icmp eq i8 %i.kt, 45
  br i1 %i.ku, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.kv = add i64 %i.kn, 4294967294
  %i.kw = and i64 %i.kv, 4294967295
  %i.kx = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kw
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !67  ; 2 uses
  %i.kz = add i64 %i.kn, 4294967295
  %i.la = and i64 %i.kz, 4294967295
  %i.lb = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.la
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !67  ; 2 uses
  %i.ld = add i8 %i.ky, -88
  %or.cond.i = icmp ult i8 %i.ld, 3
  %i.le = add i8 %i.lc, -88
  %i.lf = icmp ult i8 %i.le, 3
  %or.cond5.i = select i1 %or.cond.i, i1 %i.lf, i1 false
  br i1 %or.cond5.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.lg = zext nneg i8 %i.lc to i32
  %i.lh = zext nneg i8 %i.ky to i32
  %i.li = mul nuw nsw i32 %i.lh, 3
  %i.lj = or disjoint i32 %i.lg, -352
  %i.lk = add nsw i32 %i.lj, %i.li
  store i32 %i.lk, ptr %i.kj, align 4, !tbaa !57
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i.pre-phi
  br i1 %exitcond.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !354

.preheader.i:                                     ; preds = %bb.bd, %bb.bq
  %indvars.iv96.i = phi i64 [ %indvars.iv.next97.i, %bb.bq ], [ 0, %bb.bd ] ; 7 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv96.i
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !57
  %.fr.i = freeze i32 %i.lm                       ; 4 uses
  %i.ln = icmp slt i32 %.fr.i, 0
  br i1 %i.ln, label %bb.bo, label %switch.early.test.i

switch.early.test.i:                              ; preds = %.preheader.i
  switch i32 %.fr.i, label %20 [
    i32 8, label %bb.bo
    i32 4, label %bb.bo
    i32 0, label %bb.bo
  ]

20:                                               ; preds = %switch.early.test.i
  %21 = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv96.i
  %22 = load i32, ptr %21, align 4, !tbaa !57
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [16 x i8], ptr %i.kf, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !75     ; 2 uses
  %26 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %25) #27 ; 2 uses
  br i1 %i.ed, label %.lr.ph.i.i, label %_ZL16ener_tensor_diagiPKiS0_P11gmx_enxnm_tS0_iP8t_energyS4_.exit.i

.lr.ph.i.i:                                       ; preds = %20
  %i.lo = udiv i32 %.fr.i, 3                      ; 2 uses
  %.neg.i.i = mul i32 %i.lo, 1073741821
  %i.lp = add i32 %.neg.i.i, %.fr.i
  %i.lq = add i64 %26, -2
  %i.lr = shl nuw nsw i32 %i.lo, 2
  %i.ls = shl i32 %i.lp, 2
  br label %bb.be

bb.be:                                            ; preds = %bb.bj, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.bj ] ; 4 uses
  %.056.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.bj ] ; 5 uses
  %i.lt = phi <2 x float> [ splat (float 1.000000e+00), %.lr.ph.i.i ], [ %i.mu, %bb.bj ] ; 5 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv.i.i
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !57 ; 3 uses
  %i.lw = icmp sgt i32 %i.lv, -1
  br i1 %i.lw, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i.i
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !57
  %i.lz = sext i32 %i.ly to i64                   ; 2 uses
  %i.ma = getelementptr inbounds [16 x i8], ptr %i.kf, i64 %i.lz
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !75 ; 2 uses
  %i.mc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mb) #27
  %i.md = icmp eq i64 %i.mc, %26
  br i1 %i.md, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.me = call i32 @strncmp(ptr noundef nonnull %25, ptr noundef nonnull %i.mb, i64 noundef %i.lq) #27
  %i.mf = icmp eq i32 %i.me, 0
  br i1 %i.mf, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.mg = icmp eq i32 %i.lv, %i.lr
  %i.mh = icmp eq i32 %i.lv, %i.ls
  %or.cond.i.i = or i1 %i.mg, %i.mh
  br i1 %or.cond.i.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.mi = getelementptr inbounds [24 x i8], ptr %i.kd, i64 %i.lz
  %i.mj = load float, ptr %i.mi, align 8, !tbaa !94
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.i.i
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !57
  %i.mm = sext i32 %i.ml to i64
  %i.mn = getelementptr inbounds [24 x i8], ptr %i.ke, i64 %i.mm
  %i.mo = load float, ptr %i.mn, align 8, !tbaa !94
  %i.mp = insertelement <2 x float> poison, float %i.mj, i64 0
  %i.mq = insertelement <2 x float> %i.mp, float %i.mo, i64 1
  %i.mr = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mq)
  %i.ms = fmul <2 x float> %i.lt, %i.mr
  %i.mt = add nsw i32 %.056.i.i, 1
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be
  %.1.i.i = phi i32 [ %i.mt, %bb.bi ], [ %.056.i.i, %bb.bh ], [ %.056.i.i, %bb.bg ], [ %.056.i.i, %bb.bf ], [ %.056.i.i, %bb.be ] ; 2 uses
  %i.mu = phi <2 x float> [ %i.ms, %bb.bi ], [ %i.lt, %bb.bh ], [ %i.lt, %bb.bg ], [ %i.lt, %bb.bf ], [ %i.lt, %bb.be ] ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.be, !llvm.loop !355

._crit_edge.i.i:                                  ; preds = %bb.bj
  %i.mv = icmp eq i32 %.1.i.i, 2
  br i1 %i.mv, label %bb.bk, label %_ZL16ener_tensor_diagiPKiS0_P11gmx_enxnm_tS0_iP8t_energyS4_.exit.i

bb.bk:                                            ; preds = %._crit_edge.i.i
  %i.mw = extractelement <2 x float> %i.mu, i64 0
  %i.mx = call noundef float @sqrtf(float noundef %i.mw) #22
  %i.my = extractelement <2 x float> %i.mu, i64 1
  %i.mz = call noundef float @sqrtf(float noundef %i.my) #22
  %i.na = fadd float %i.mx, %i.mz
  %i.nb = fmul float %i.na, 5.000000e-01
  br label %_ZL16ener_tensor_diagiPKiS0_P11gmx_enxnm_tS0_iP8t_energyS4_.exit.i

_ZL16ener_tensor_diagiPKiS0_P11gmx_enxnm_tS0_iP8t_energyS4_.exit.i: ; preds = %bb.bk, %._crit_edge.i.i, %20
  %.049.i.i = phi float [ %i.nb, %bb.bk ], [ 0.000000e+00, %._crit_edge.i.i ], [ 0.000000e+00, %20 ]
  %i.nc = fmul float %2, %.049.i.i                ; 4 uses
  %i.nd = load ptr, ptr @debug, align 8, !tbaa !72 ; 2 uses
  %.not79.i = icmp eq ptr %i.nd, null
  br i1 %.not79.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZL16ener_tensor_diagiPKiS0_P11gmx_enxnm_tS0_iP8t_energyS4_.exit.i
  %i.ne = getelementptr inbounds nuw [16 x i8], ptr %i.kf, i64 %indvars.iv96.i
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !75
  %i.ng = getelementptr inbounds nuw [24 x i8], ptr %i.kd, i64 %indvars.iv96.i
  %i.nh = load float, ptr %i.ng, align 8, !tbaa !94
  %i.ni = fpext float %i.nh to double
  %i.nj = fdiv float %i.nc, %2
  %i.nk = fpext float %i.nj to double
  %i.nl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.nd, ptr noundef nonnull @.str.129, ptr noundef %i.nf, double noundef %i.ni, double noundef %i.nk) #22 ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %_ZL16ener_tensor_diagiPKiS0_P11gmx_enxnm_tS0_iP8t_energyS4_.exit.i
  %i.nm = fcmp ogt float %i.nc, 0.000000e+00
  br i1 %i.nm, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.nn = fcmp olt float %3, %i.nc
  %.sroa.speculated.i = select i1 %i.nn, float %3, float %i.nc
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %.preheader.i
  %.091.i = phi float [ %3, %bb.bm ], [ %.sroa.speculated.i, %bb.bn ], [ %3, %switch.early.test.i ], [ %3, %switch.early.test.i ], [ %3, %switch.early.test.i ], [ %3, %.preheader.i ]
  %.0.i147 = phi float [ 5.000000e+00, %bb.bm ], [ 5.000000e+00, %bb.bn ], [ %2, %switch.early.test.i ], [ %2, %switch.early.test.i ], [ %2, %switch.early.test.i ], [ %2, %.preheader.i ]
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv96.i ; 2 uses
  %i.np = load i32, ptr %i.no, align 4, !tbaa !57
  %i.nq = sext i32 %i.np to i64
  %i.nr = getelementptr inbounds [24 x i8], ptr %i.kd, i64 %i.nq
  %i.ns = load float, ptr %i.nr, align 8, !tbaa !94
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv96.i ; 2 uses
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !57
  %i.nv = sext i32 %i.nu to i64
  %i.nw = getelementptr inbounds [24 x i8], ptr %i.ke, i64 %i.nv
  %i.nx = load float, ptr %i.nw, align 8, !tbaa !94
  %i.ny = call noundef zeroext i1 @_Z10equal_realffff(float noundef %i.ns, float noundef %i.nx, float noundef %.0.i147, float noundef %.091.i)
  br i1 %i.ny, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nz = load i32, ptr %i.no, align 4, !tbaa !57
  %i.oa = sext i32 %i.nz to i64                   ; 2 uses
  %i.ob = getelementptr inbounds [16 x i8], ptr %i.kf, i64 %i.oa
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !75
  %i.od = getelementptr inbounds [24 x i8], ptr %i.kd, i64 %i.oa
  %i.oe = load float, ptr %i.od, align 8, !tbaa !94
  %i.of = fpext float %i.oe to double
  %i.og = load i32, ptr %i.nt, align 4, !tbaa !57
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds [24 x i8], ptr %i.ke, i64 %i.oh
  %i.oj = load float, ptr %i.oi, align 8, !tbaa !94
  %i.ok = fpext float %i.oj to double
  %i.ol = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ka, ptr noundef nonnull @.str.130, ptr noundef %i.oc, i32 noundef %i.kc, double noundef %i.of, i32 noundef %i.kc, double noundef %i.ok) #22 ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 2 uses
  %exitcond100.not.i = icmp eq i64 %indvars.iv.next97.i, %wide.trip.count.i.pre-phi
  br i1 %exitcond100.not.i, label %_ZL12cmp_energiesP8_IO_FILEiiP8t_energyS2_P11gmx_enxnm_tffiPiS5_i.exit, label %.preheader.i, !llvm.loop !356

_ZL12cmp_energiesP8_IO_FILEiiP8t_energyS2_P11gmx_enxnm_tffiPiS5_i.exit: ; preds = %bb.bq, %bb.az
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.9, i32 noundef 1413, ptr noundef %i.kg)
  br label %bb.br

bb.br:                                            ; preds = %_ZL12cmp_energiesP8_IO_FILEiiP8t_energyS2_P11gmx_enxnm_tffiPiS5_i.exit, %bb.ay, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.om = load ptr, ptr @stdout, align 8, !tbaa !72
  %i.on = load i32, ptr %i.ga, align 8, !tbaa !49
  %i.oo = load i32, ptr %i.gb, align 8, !tbaa !49
  call void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %i.om, ptr noundef nonnull @.str.131, i32 noundef -1, i32 noundef %i.on, i32 noundef %i.oo)
  %i.op = load i32, ptr %i.ga, align 8, !tbaa !49 ; 2 uses
  %i.oq = load i32, ptr %i.gb, align 8, !tbaa !49
  %i.or = icmp eq i32 %i.op, %i.oq
  %i.os = icmp sgt i32 %i.op, 0
  %or.cond.i148 = and i1 %i.os, %i.or
  br i1 %or.cond.i148, label %.lr.ph129.i, label %_ZL11cmp_eblocksP10t_enxframeS0_ff.exit

.lr.ph129.i:                                      ; preds = %bb.br, %.loopexit111.i
  %indvars.iv154.i = phi i64 [ %indvars.iv.next155.i, %.loopexit111.i ], [ 0, %bb.br ] ; 4 uses
  %i.ot = load ptr, ptr %i.gc, align 8, !tbaa !19
  %i.ou = getelementptr inbounds nuw [24 x i8], ptr %i.ot, i64 %indvars.iv154.i ; 4 uses
  %i.ov = load ptr, ptr %i.gd, align 8, !tbaa !19
  %i.ow = getelementptr inbounds nuw [24 x i8], ptr %i.ov, i64 %indvars.iv154.i ; 4 uses
  %i.ox = load i64, ptr %i.ft, align 8, !tbaa !91
  %i.oy = call noundef ptr @_Z12gmx_step_strlPc(i64 noundef %i.ox, ptr noundef nonnull %i.b)
  %i.oz = trunc nuw nsw i64 %indvars.iv154.i to i32
  %i.pa = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.132, ptr noundef %i.oy, i32 noundef %i.oz) #22 ; 0 uses
  %i.pb = load ptr, ptr @stdout, align 8, !tbaa !72
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ou, i64 4 ; 3 uses
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !52
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ow, i64 4 ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !52
  call void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %i.pb, ptr noundef nonnull %i.a, i32 noundef -1, i32 noundef %i.pd, i32 noundef %i.pf)
  %i.pg = load ptr, ptr @stdout, align 8, !tbaa !72
  %i.ph = load i32, ptr %i.ou, align 8, !tbaa !51
  %i.pi = load i32, ptr %i.ow, align 8, !tbaa !51
  call void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %i.pg, ptr noundef nonnull %i.a, i32 noundef -1, i32 noundef %i.ph, i32 noundef %i.pi)
  %i.pj = load i32, ptr %i.pc, align 4, !tbaa !52 ; 2 uses
  %i.pk = load i32, ptr %i.pe, align 4, !tbaa !52
  %i.pl = icmp eq i32 %i.pj, %i.pk
  br i1 %i.pl, label %bb.bs, label %.loopexit111.i

bb.bs:                                            ; preds = %.lr.ph129.i
  %i.pm = load i32, ptr %i.ou, align 8, !tbaa !51
  %i.pn = load i32, ptr %i.ow, align 8, !tbaa !51
  %i.po = icmp eq i32 %i.pm, %i.pn
  %i.pp = icmp sgt i32 %i.pj, 0
  %or.cond166.i = and i1 %i.pp, %i.po
  br i1 %or.cond166.i, label %.lr.ph127.i, label %.loopexit111.i

.lr.ph127.i:                                      ; preds = %bb.bs
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit.i, %.lr.ph127.i
  %indvars.iv151.i = phi i64 [ 0, %.lr.ph127.i ], [ %indvars.iv.next152.i, %.loopexit.i ] ; 8 uses
  %i.ps = load ptr, ptr %i.pq, align 8, !tbaa !25
  %i.pt = getelementptr inbounds nuw [80 x i8], ptr %i.ps, i64 %indvars.iv151.i ; 15 uses
  %i.pu = load ptr, ptr %i.pr, align 8, !tbaa !25
  %i.pv = getelementptr inbounds nuw [80 x i8], ptr %i.pu, i64 %indvars.iv151.i ; 9 uses
  %i.pw = load ptr, ptr @stdout, align 8, !tbaa !72
  %i.px = getelementptr inbounds nuw i8, ptr %i.pt, i64 4 ; 2 uses
  %i.py = load i32, ptr %i.px, align 4, !tbaa !55
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pv, i64 4 ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !55
  call void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %i.pw, ptr noundef nonnull %i.a, i32 noundef -1, i32 noundef %i.py, i32 noundef %i.qa)
  %i.qb = load ptr, ptr @stdout, align 8, !tbaa !72
  %i.qc = load i32, ptr %i.pt, align 8, !tbaa !54
  %i.qd = sext i32 %i.qc to i64
  %i.qe = load i32, ptr %i.pv, align 8, !tbaa !54
  %i.qf = sext i32 %i.qe to i64
  call void @_Z9cmp_int64P8_IO_FILEPKcll(ptr noundef %i.qb, ptr noundef nonnull %i.a, i64 noundef %i.qd, i64 noundef %i.qf)
  %i.qg = load i32, ptr %i.px, align 4, !tbaa !55 ; 2 uses
  %i.qh = load i32, ptr %i.pz, align 4, !tbaa !55
  %i.qi = icmp eq i32 %i.qg, %i.qh
  br i1 %i.qi, label %bb.bu, label %.loopexit.i

bb.bu:                                            ; preds = %bb.bt
  %i.qj = load i32, ptr %i.pt, align 8, !tbaa !54 ; 7 uses
  %i.qk = load i32, ptr %i.pv, align 8, !tbaa !54
  %i.ql = icmp eq i32 %i.qj, %i.qk
  br i1 %i.ql, label %bb.bv, label %.loopexit.i

bb.bv:                                            ; preds = %bb.bu
  switch i32 %i.qg, label %bb.cc [
    i32 1, label %.preheader.i152
    i32 2, label %.preheader100.i
    i32 0, label %.preheader102.i
    i32 3, label %.preheader104.i
    i32 4, label %.preheader106.i
    i32 5, label %.preheader108.i
  ]

.preheader108.i:                                  ; preds = %bb.bv
  %i.qm = icmp sgt i32 %i.qj, 0
  br i1 %i.qm, label %.lr.ph.i149, label %.loopexit.i

.lr.ph.i149:                                      ; preds = %.preheader108.i
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pt, i64 48
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pv, i64 48
  %i.qp = trunc nuw nsw i64 %indvars.iv151.i to i32
  br label %bb.cb

.preheader106.i:                                  ; preds = %bb.bv
  %i.qq = icmp sgt i32 %i.qj, 0
  br i1 %i.qq, label %.lr.ph116.i, label %.loopexit.i

.lr.ph116.i:                                      ; preds = %.preheader106.i
  %i.qr = getelementptr inbounds nuw i8, ptr %i.pt, i64 40
  %i.qs = getelementptr inbounds nuw i8, ptr %i.pv, i64 40
  %i.qt = trunc nuw nsw i64 %indvars.iv151.i to i32
  br label %bb.ca

.preheader104.i:                                  ; preds = %bb.bv
  %i.qu = icmp sgt i32 %i.qj, 0
  br i1 %i.qu, label %.lr.ph118.i, label %.loopexit.i

.lr.ph118.i:                                      ; preds = %.preheader104.i
  %i.qv = getelementptr inbounds nuw i8, ptr %i.pt, i64 32
  %i.qw = getelementptr inbounds nuw i8, ptr %i.pv, i64 32
  br label %bb.bz

.preheader102.i:                                  ; preds = %bb.bv
  %i.qx = icmp sgt i32 %i.qj, 0
  br i1 %i.qx, label %.lr.ph120.i, label %.loopexit.i

.lr.ph120.i:                                      ; preds = %.preheader102.i
  %i.qy = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  %i.qz = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  %i.ra = trunc nuw nsw i64 %indvars.iv151.i to i32
  br label %bb.by

.preheader100.i:                                  ; preds = %bb.bv
  %i.rb = icmp sgt i32 %i.qj, 0
  br i1 %i.rb, label %.lr.ph122.i, label %.loopexit.i

end_hunk_1
