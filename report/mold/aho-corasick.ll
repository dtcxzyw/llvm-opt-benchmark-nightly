Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/aho-corasick?download=true
inline.NumInlined: 234
inline.NumDeleted: 133
begin_hunk_0_@_ZN4mold11AhoCorasick7compileEv:bb.a
  store i32 %storemerge1259, ptr %i.ck, align 4, !tbaa !15
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit26

bb.j:                                             ; preds = %_ZNK4mold11AhoCorasick10find_childEih.exit24.thread38
  %i.co = load ptr, ptr %i.q, align 8, !tbaa !45  ; 3 uses
  %i.cp = load ptr, ptr %i.l, align 8, !tbaa !45  ; 6 uses
  %i.cq = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cr = ptrtoint ptr %i.cp to i64               ; 3 uses
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 3                 ; 3 uses
  %i.cu = icmp ne ptr %i.co, null
  %.neg.i.i.i = sext i1 %i.cu to i64
  %i.cv = add nsw i64 %i.ct, %.neg.i.i.i
  %i.cw = shl nsw i64 %i.cv, 7
  %i.cx = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.cy = ptrtoint ptr %i.ck to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 2
  %i.dc = add nsw i64 %i.cw, %i.db
  %i.dd = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.de = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = ashr exact i64 %i.dh, 2
  %i.dj = add nsw i64 %i.dc, %i.di
  %i.dk = icmp eq i64 %i.dj, 4611686018427387903
  br i1 %i.dk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #15
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.dl = load i64, ptr %i.g, align 8, !tbaa !38  ; 5 uses
  %i.dm = load ptr, ptr %1, align 8, !tbaa !43    ; 2 uses
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = sub i64 %i.cq, %i.dn
  %i.dp = ashr exact i64 %i.do, 3
  %i.dq = sub i64 %i.dl, %i.dp
  %i.dr = icmp ult i64 %i.dq, 2
  br i1 %i.dr, label %bb.m, label %_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_.exit

bb.m:                                             ; preds = %bb.l
  %i.ds = add nsw i64 %i.ct, 1                    ; 2 uses
  %i.dt = add nsw i64 %i.ct, 2                    ; 3 uses
  %i.du = shl nsw i64 %i.dt, 1
  %i.dv = icmp ugt i64 %i.dl, %i.du
  br i1 %i.dv, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.dw = sub i64 %i.dl, %i.dt
  %i.dx = lshr i64 %i.dw, 1
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dx ; 10 uses
  %i.dz = icmp ult ptr %i.dy, %i.cp
  %i.ea = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  br i1 %i.dz, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = sub i64 %i.eb, %i.cr                    ; 3 uses
  %i.ed = icmp sgt i64 %i.ec, 8
  br i1 %i.ed, label %bb.p, label %bb.q, !prof !59

bb.p:                                             ; preds = %bb.o
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dy, ptr nonnull align 8 %i.cp, i64 %i.ec, i1 false)
  br label %_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb.exit

bb.q:                                             ; preds = %bb.o
  %i.ee = icmp eq i64 %i.ec, 8
  br i1 %i.ee, label %bb.r, label %_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb.exit

bb.r:                                             ; preds = %bb.q
  %i.ef = load ptr, ptr %i.cp, align 8, !tbaa !44
  store ptr %i.ef, ptr %i.dy, align 8, !tbaa !44
  br label %_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb.exit

bb.s:                                             ; preds = %bb.n
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.ds ; 2 uses
  %i.eh = ptrtoint ptr %i.ea to i64
  %i.ei = sub i64 %i.eh, %i.cr                    ; 3 uses
  %i.ej = ashr exact i64 %i.ei, 3                 ; 2 uses
  %i.ek = icmp sgt i64 %i.ej, 1
  br i1 %i.ek, label %bb.t, label %bb.u, !prof !59

bb.t:                                             ; preds = %bb.s
  %i.el = sub nsw i64 0, %i.ej
  %i.em = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.el
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.em, ptr align 8 %i.cp, i64 %i.ei, i1 false)
  br label %_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb.exit

bb.u:                                             ; preds = %bb.s
  %i.en = icmp eq i64 %i.ei, 8
  br i1 %i.en, label %bb.v, label %_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb.exit

bb.v:                                             ; preds = %bb.u
  %i.eo = getelementptr inbounds i8, ptr %i.eg, i64 -8
  %i.ep = load ptr, ptr %i.cp, align 8, !tbaa !44
  store ptr %i.ep, ptr %i.eo, align 8, !tbaa !44
  br label %_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb.exit

bb.w:                                             ; preds = %bb.m
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.dl, i64 1)
  %i.eq = add i64 %i.dl, 2
  %i.er = add i64 %i.eq, %.sroa.speculated.i      ; 5 uses
  %i.es = icmp ugt i64 %i.er, 1152921504606846975
  br i1 %i.es, label %bb.x, label %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit.i, !prof !60

bb.x:                                             ; preds = %bb.w
  %i.et = icmp ugt i64 %i.er, 2305843009213693951
  br i1 %i.et, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

bb.z:                                             ; preds = %bb.x
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit.i: ; preds = %bb.w
  %i.eu = shl nuw nsw i64 %i.er, 3
  %i.ev = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #16 ; 2 uses
  %i.ew = sub nsw i64 %i.er, %i.dt
  %i.ex = lshr i64 %i.ew, 1
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ex ; 3 uses
  %i.ez = load ptr, ptr %i.l, align 8, !tbaa !57  ; 3 uses
  %i.fa = load ptr, ptr %i.q, align 8, !tbaa !61
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.ez to i64
  %i.fe = sub i64 %i.fc, %i.fd                    ; 3 uses
  %i.ff = icmp sgt i64 %i.fe, 8
  br i1 %i.ff, label %bb.aa, label %bb.ab, !prof !59

bb.aa:                                            ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ey, ptr align 8 %i.ez, i64 %i.fe, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24.i

bb.ab:                                            ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit.i
  %i.fg = icmp eq i64 %i.fe, 8
  br i1 %i.fg, label %bb.ac, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24.i

bb.ac:                                            ; preds = %bb.ab
  %i.fh = load ptr, ptr %i.ez, align 8, !tbaa !44
  store ptr %i.fh, ptr %i.ey, align 8, !tbaa !44
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24.i

_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24.i:            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.fi = load ptr, ptr %1, align 8, !tbaa !43
  %i.fj = load i64, ptr %i.g, align 8, !tbaa !38
  %i.fk = shl i64 %i.fj, 3
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fk) #14
  store ptr %i.ev, ptr %1, align 8, !tbaa !43
  store i64 %i.er, ptr %i.g, align 8, !tbaa !38
  br label %_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb.exit

_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb.exit:   ; preds = %bb.p, %bb.q, %bb.r, %bb.t, %bb.u, %bb.v, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24.i
  %.0.i = phi ptr [ %i.ey, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24.i ], [ %i.dy, %bb.r ], [ %i.dy, %bb.p ], [ %i.dy, %bb.q ], [ %i.dy, %bb.t ], [ %i.dy, %bb.u ], [ %i.dy, %bb.v ] ; 3 uses
  store ptr %.0.i, ptr %i.l, align 8, !tbaa !45
  %i.fl = load ptr, ptr %.0.i, align 8, !tbaa !44 ; 2 uses
  store ptr %i.fl, ptr %i.m, align 8, !tbaa !46
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 512
  store ptr %i.fm, ptr %i.o, align 8, !tbaa !47
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ds
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -8 ; 2 uses
  store ptr %i.fo, ptr %i.q, align 8, !tbaa !45
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !44 ; 2 uses
  store ptr %i.fp, ptr %i.r, align 8, !tbaa !46
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 512
  store ptr %i.fq, ptr %i.s, align 8, !tbaa !47
  br label %_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_.exit

_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_.exit: ; preds = %bb.l, %_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb.exit
  %i.fr = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #16 ; 4 uses
  %i.fs = load ptr, ptr %i.q, align 8, !tbaa !61
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  store ptr %i.fr, ptr %i.ft, align 8, !tbaa !44
  %i.fu = load ptr, ptr %i.p, align 8, !tbaa !49
  store i32 %storemerge1259, ptr %i.fu, align 4, !tbaa !15
  store ptr %i.ft, ptr %i.q, align 8, !tbaa !45
  store ptr %i.fr, ptr %i.r, align 8, !tbaa !46
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 512
  store ptr %i.fv, ptr %i.s, align 8, !tbaa !47
  %.pre72 = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit26

_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit26:   ; preds = %bb.i, %_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_.exit
  %i.fw = phi ptr [ %i.bg, %bb.i ], [ %.pre72, %_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_.exit ] ; 5 uses
  %storemerge44 = phi ptr [ %i.cn, %bb.i ], [ %i.fr, %_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_.exit ] ; 2 uses
  store ptr %storemerge44, ptr %i.p, align 8, !tbaa !49
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %i.fw, i64 %.phi.trans.insert
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %storemerge12 = load i32, ptr %i.fy, align 4, !tbaa !15 ; 2 uses
  %.not13 = icmp eq i32 %storemerge12, -1
  br i1 %.not13, label %.loopexit45.loopexit, label %.lr.ph60, !llvm.loop !62

._crit_edge63:                                    ; preds = %.loopexit45, %._crit_edge.thread, %._crit_edge
  %i.fz = load ptr, ptr %1, align 8, !tbaa !43    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i, label %_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge63
  %i.ga = load ptr, ptr %i.l, align 8, !tbaa !57  ; 2 uses
  %2 = load ptr, ptr %i.q, align 8, !tbaa !61     ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gc = icmp ult ptr %i.ga, %i.gb
  br i1 %i.gc, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ad, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ge, %.lr.ph.i.i.i.i ], [ %i.ga, %bb.ad ] ; 3 uses
  %i.gd = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !44
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef 512) #14
  %i.ge = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.gf = icmp ult ptr %.06.i.i.i.i, %2
  br i1 %i.gf, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i.i, !llvm.loop !63

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !43
  br label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i.i

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i.i, %bb.ad
  %i.gg = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i.i ], [ %i.fz, %bb.ad ]
  %i.gh = load i64, ptr %i.g, align 8, !tbaa !38
  %i.gi = shl i64 %i.gh, 3
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gi) #14
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev.exit

_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev.exit:          ; preds = %._crit_edge63, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev.exit
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 4611686018427387903
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !38
  %i.ag = load ptr, ptr %0, align 8, !tbaa !43
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #16 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !44
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.aq = load i32, ptr %1, align 4, !tbaa !15
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !15
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !45
  store ptr %i.am, ptr %i.o, align 8, !tbaa !46
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !47
  store ptr %i.am, ptr %i.a, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !38   ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !43
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !59

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !44
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !44
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !59

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !44
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !44
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit, !prof !60

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #15
  unreachable

_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #16 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !57  ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.o, label %bb.p, !prof !59

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.q, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

bb.q:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !44
  store ptr %i.be, ptr %i.av, align 8, !tbaa !44
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24:              ; preds = %bb.o, %bb.p, %bb.q
  %i.bf = load ptr, ptr %0, align 8, !tbaa !43
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !38
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #14
  store ptr %i.aq, ptr %0, align 8, !tbaa !43
  store i64 %i.am, ptr %i.k, align 8, !tbaa !38
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit:                ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !45
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !44   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !46
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !47
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !45
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !44 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !46
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !47
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #11

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt12_Vector_baseIPN4mold7CounterESaIS2_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"p2 _ZTSN4mold7CounterE", !11, i64 0}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!9, !10, i64 16}
!14 = !{!6, !6, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIN4mold11AhoCorasick8TrieNodeESaIS2_EE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!18 = !{!"p1 _ZTSN4mold11AhoCorasick8TrieNodeE", !12, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!22, !6, i64 20}
!22 = !{!"_ZTSN4mold11AhoCorasick8TrieNodeE", !23, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 20}
!23 = !{!"long", !6, i64 0}
!24 = !{!17, !18, i64 8}
!25 = !{!22, !5, i64 12}
!26 = !{!17, !18, i64 16}
!27 = !{i64 0, i64 8, !28, i64 8, i64 4, !15, i64 12, i64 4, !15, i64 16, i64 4, !15, i64 20, i64 1, !14}
!28 = !{!23, !23, i64 0}
!29 = !{!30, !32}
!30 = distinct !{!30, !31, !"_ZSt19__relocate_object_aIN4mold11AhoCorasick8TrieNodeES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!31 = distinct !{!31, !"_ZSt19__relocate_object_aIN4mold11AhoCorasick8TrieNodeES2_SaIS2_EEvPT_PT0_RT1_"}
!32 = distinct !{!32, !31, !"_ZSt19__relocate_object_aIN4mold11AhoCorasick8TrieNodeES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!33 = distinct !{!33, !20}
!34 = !{!22, !5, i64 16}
!35 = !{!18, !18, i64 0}
!36 = distinct !{!36, !20}
!37 = !{!22, !23, i64 0}
!38 = !{!39, !23, i64 8}
!39 = !{!"_ZTSNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataE", !40, i64 0, !23, i64 8, !41, i64 16, !41, i64 48}
!40 = !{!"p2 int", !11, i64 0}
!41 = !{!"_ZTSSt15_Deque_iteratorIiRiPiE", !42, i64 0, !42, i64 8, !42, i64 16, !40, i64 24}
!42 = !{!"p1 int", !12, i64 0}
!43 = !{!39, !40, i64 0}
!44 = !{!42, !42, i64 0}
!45 = !{!41, !40, i64 24}
!46 = !{!41, !42, i64 8}
!47 = !{!41, !42, i64 16}
!48 = !{!39, !42, i64 16}
!49 = !{!39, !42, i64 48}
!50 = !{!41, !42, i64 0}
!51 = !{!22, !5, i64 8}
!52 = !{!39, !42, i64 64}
!53 = distinct !{!53, !20}
!54 = distinct !{!54, !20}
!55 = !{!39, !42, i64 32}
!56 = !{!39, !42, i64 24}
!57 = !{!39, !40, i64 40}
!58 = distinct !{!58, !20}
!59 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!60 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!61 = !{!39, !40, i64 72}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !20}
end_hunk_0
