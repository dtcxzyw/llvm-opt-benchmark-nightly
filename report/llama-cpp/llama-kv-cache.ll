Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-kv-cache?download=true
inline.NumInlined: 4945
inline.NumDeleted: 2050
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZN14llama_kv_cache6seq_cpEiiii:bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.91, i64 noundef %i.o, i64 noundef 256) #29
  unreachable

bb.o:                                             ; preds = %_ZNK14llama_kv_cells7seq_hasEji.exit, %_ZN14llama_kv_cells7seq_addEji.exit, %.lr.ph110.split.split
  %i.cm = phi ptr [ %i.bw, %_ZNK14llama_kv_cells7seq_hasEji.exit ], [ %.pre137, %_ZN14llama_kv_cells7seq_addEji.exit ], [ %i.bw, %.lr.ph110.split.split ] ; 2 uses
  %i.cn = phi ptr [ %i.bx, %_ZNK14llama_kv_cells7seq_hasEji.exit ], [ %.pre136.a, %_ZN14llama_kv_cells7seq_addEji.exit ], [ %i.bx, %.lr.ph110.split.split ] ; 2 uses
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = lshr exact i64 %i.cq, 2
  %i.cs = and i64 %i.cr, 4294967295
  %i.ct = icmp samesign ult i64 %indvars.iv.next125, %i.cs
  br i1 %i.ct, label %.lr.ph110.split.split, label %.loopexit, !llvm.loop !499

bb.p:                                             ; preds = %bb.h
  %i.cu = icmp sgt i32 %3, 0
  br i1 %i.cu, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.cv = add nuw nsw i32 %3, 1
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !117, !nonnull !118, !align !119
  %i.cy = load i32, ptr %i.h, align 4, !tbaa !110
  %i.cz = zext i32 %i.cy to i64
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !123
  %i.db = getelementptr inbounds nuw [12440 x i8], ptr %i.da, i64 %i.cz ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !125
  %i.df = load ptr, ptr %i.dc, align 8, !tbaa !126
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = lshr exact i64 %i.di, 2
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = icmp sge i32 %i.cv, %i.dk               ; 2 uses
  %i.dm = icmp sgt i32 %4, 0
  br i1 %i.dm, label %.split, label %bb.r

.thread:                                          ; preds = %bb.p
  %i.dn = icmp sgt i32 %4, 0
  br i1 %i.dn, label %.split, label %.thread162

.split:                                           ; preds = %.thread, %bb.q
  %.051161 = phi i1 [ true, %.thread ], [ %i.dl, %bb.q ]
  %i.do = add nuw nsw i32 %4, 1
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !117, !nonnull !118, !align !119
  %i.dr = load i32, ptr %i.h, align 4, !tbaa !110
  %i.ds = zext i32 %i.dr to i64
  %i.dt = load ptr, ptr %i.dq, align 8, !tbaa !123
  %i.du = getelementptr inbounds nuw [12440 x i8], ptr %i.dt, i64 %i.ds ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !125
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !126
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = lshr exact i64 %i.eb, 2
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = icmp sge i32 %i.do, %i.ed
  %spec.select64 = select i1 %i.ee, i1 %.051161, i1 false
  br i1 %spec.select64, label %.thread162, label %bb.s

bb.r:                                             ; preds = %bb.q
  br i1 %i.dl, label %.thread162, label %bb.s

bb.s:                                             ; preds = %.split, %bb.r
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 506, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.30) #29
  unreachable

.thread162:                                       ; preds = %.thread, %.split, %bb.r
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !152 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !275
  %.not.i66 = icmp eq ptr %i.eh, %i.ej
  br i1 %.not.i66, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread162
  store i32 %i.r, ptr %i.eh, align 4, !tbaa !110
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  store ptr %i.ek, ptr %i.eg, align 8, !tbaa !152
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.u:                                             ; preds = %.thread162
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !120 ; 4 uses
  %i.em = ptrtoint ptr %i.eh to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en                    ; 6 uses
  %i.ep = icmp eq i64 %i.eo, 9223372036854775804
  br i1 %i.ep, label %bb.v, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #29
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.u
  %i.eq = ashr exact i64 %i.eo, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.eq, i64 1)
  %i.er = add nsw i64 %.sroa.speculated.i.i.i, %i.eq ; 2 uses
  %i.es = icmp ult i64 %i.er, %i.eq
  %i.et = tail call i64 @llvm.umin.i64(i64 %i.er, i64 2305843009213693951)
  %i.eu = select i1 %i.es, i64 2305843009213693951, i64 %i.et ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.eu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ev = shl nuw nsw i64 %i.eu, 2
  %i.ew = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ev) #28 ; 4 uses
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 %i.eo ; 2 uses
  store i32 %i.r, ptr %i.ex, align 4, !tbaa !110
  %i.ey = icmp sgt i64 %i.eo, 0
  br i1 %i.ey, label %bb.w, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.w:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ew, ptr align 4 %i.el, i64 %i.eo, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.w, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %.not.i17.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef %i.eo) #31
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.ew, ptr %i.ef, align 8, !tbaa !120
  store ptr %i.ez, ptr %i.eg, align 8, !tbaa !152
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.eu
  store ptr %i.fa, ptr %i.ei, align 8, !tbaa !275
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.t, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !152 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !275
  %.not.i67 = icmp eq ptr %i.fd, %i.ff
  br i1 %.not.i67, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  store i32 %i.t, ptr %i.fd, align 4, !tbaa !110
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store ptr %i.fg, ptr %i.fc, align 8, !tbaa !152
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit74

bb.z:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !120 ; 4 uses
  %i.fi = ptrtoint ptr %i.fd to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj                    ; 6 uses
  %i.fl = icmp eq i64 %i.fk, 9223372036854775804
  br i1 %i.fl, label %bb.aa, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i68

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #29
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i68: ; preds = %bb.z
  %i.fm = ashr exact i64 %i.fk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i69 = tail call i64 @llvm.umax.i64(i64 %i.fm, i64 1)
  %i.fn = add nsw i64 %.sroa.speculated.i.i.i69, %i.fm ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.fm
  %i.fp = tail call i64 @llvm.umin.i64(i64 %i.fn, i64 2305843009213693951)
  %i.fq = select i1 %i.fo, i64 2305843009213693951, i64 %i.fp ; 3 uses
  %.not.i.i.i70 = icmp ne i64 %i.fq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i70)
  %i.fr = shl nuw nsw i64 %i.fq, 2
  %i.fs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #28 ; 4 uses
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 %i.fk ; 2 uses
  store i32 %i.t, ptr %i.ft, align 4, !tbaa !110
  %i.fu = icmp sgt i64 %i.fk, 0
  br i1 %i.fu, label %bb.ab, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i71

bb.ab:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i68
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fs, ptr align 4 %i.fh, i64 %i.fk, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i71

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i71: ; preds = %bb.ab, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i68
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %.not.i17.i.i72 = icmp eq ptr %i.fh, null
  br i1 %.not.i17.i.i72, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i73, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i71
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fk) #31
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i73

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i73: ; preds = %bb.ac, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i71
  store ptr %i.fs, ptr %i.fb, align 8, !tbaa !120
  store ptr %i.fv, ptr %i.fc, align 8, !tbaa !152
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fq
  store ptr %i.fw, ptr %i.fe, align 8, !tbaa !275
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit74

_ZNSt6vectorIjSaIjEE9push_backERKj.exit74:        ; preds = %bb.y, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i73
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 6 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !117, !nonnull !118, !align !119
  %i.fz = zext i32 %i.t to i64                    ; 6 uses
  %i.ga = load ptr, ptr %i.fy, align 8, !tbaa !123
  %i.gb = getelementptr inbounds nuw [12440 x i8], ptr %i.ga, i64 %i.fz
  tail call void @_ZN14llama_kv_cells5resetEv(ptr noundef nonnull align 8 dereferenceable(12440) %i.gb)
  %i.gc = zext i32 %i.r to i64                    ; 3 uses
  %i.gd = load ptr, ptr %i.fx, align 8, !tbaa !117, !nonnull !118, !align !119
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !123 ; 2 uses
  %i.gf = getelementptr inbounds nuw [12440 x i8], ptr %i.ge, i64 %i.gc ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 56
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 64
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !125
  %i.gj = load ptr, ptr %i.gg, align 8, !tbaa !126 ; 2 uses
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = and i64 %i.gm, 17179869180
  %.not118 = icmp eq i64 %i.gn, 0
  br i1 %.not118, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit74
  %i.go = icmp samesign ugt i32 %1, 255
  %i.gp = lshr i64 %i.d, 6
  %i.gq = and i64 %i.d, 63
  %i.gr = shl nuw i64 1, %i.gq
  %i.gs = icmp samesign ugt i32 %2, 255
  %i.gt = and i64 %i.o, 63
  %i.gu = shl nuw i64 1, %i.gt
  %i.gv = lshr i64 %i.o, 6
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 4
  br i1 %i.go, label %bb.ad, label %_ZNK14llama_kv_cells7seq_hasEji.exit75

._crit_edge:                                      ; preds = %bb.al, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit74
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !120 ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.gc
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !110
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.fz
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !110
  br label %.loopexit

_ZNK14llama_kv_cells7seq_hasEji.exit75:           ; preds = %.lr.ph, %bb.al
  %i.hc = phi ptr [ %i.jx, %bb.al ], [ %i.ge, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.al ], [ 0, %.lr.ph ] ; 14 uses
  %i.hd = phi ptr [ %i.kc, %bb.al ], [ %i.gj, %.lr.ph ]
  %i.he = phi ptr [ %i.jy, %bb.al ], [ %i.gf, %.lr.ph ] ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 128
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !283
  %i.hh = getelementptr inbounds nuw [32 x i8], ptr %i.hg, i64 %indvars.iv
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.gp
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !180
  %i.hk = and i64 %i.hj, %i.gr
  %.not94 = icmp eq i64 %i.hk, 0
  br i1 %.not94, label %bb.al, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.88, i64 noundef %i.d, i64 noundef 256) #29
  unreachable

bb.ae:                                            ; preds = %_ZNK14llama_kv_cells7seq_hasEji.exit75
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !110
  %i.hn = getelementptr inbounds nuw i8, ptr %i.he, i64 104
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !126
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !110 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.he, i64 80
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !279
  %i.ht = getelementptr inbounds nuw [12 x i8], ptr %i.hs, i64 %indvars.iv ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.ht, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !110
  %.not63 = icmp eq i32 %i.hq, 0
  %i.hu = sub nsw i32 %i.hm, %i.hq
  %i.hv = getelementptr inbounds nuw [12440 x i8], ptr %i.hc, i64 %i.fz ; 5 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 56
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !126
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv
  store i32 %i.hu, ptr %i.hy, align 4, !tbaa !110
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 16 ; 3 uses
  %.02022.i.i.i.i = load ptr, ptr %i.hz, align 8, !tbaa !179 ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %.02022.i.i.i.i, null
  br i1 %.not23.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ae, %.lr.ph.i.i.i.i
  %.02024.i.i.i.i = phi ptr [ %.020.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.02022.i.i.i.i, %bb.ae ] ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 32
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !110
  %i.id = zext i32 %i.ic to i64                   ; 2 uses
  %i.ie = icmp samesign ult i64 %indvars.iv, %i.id ; 2 uses
  %.in.v.i.i.i.i = select i1 %i.ie, i64 16, i64 24
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 %.in.v.i.i.i.i
  %.020.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !179 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.020.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !19

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  br i1 %i.ie, label %._crit_edge.thread.i.i.i.i, label %bb.ag

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %bb.ae
  %.019.lcssa29.i.i.i.i = phi ptr [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.ia, %bb.ae ] ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !149
  %i.ih = icmp eq ptr %.019.lcssa29.i.i.i.i, %i.ig
  br i1 %i.ih, label %select.unfold.i.i.i, label %bb.af

bb.af:                                            ; preds = %._crit_edge.thread.i.i.i.i
  %i.ii = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i) #32
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !110
  %.pre138 = zext i32 %.pre.i.i.i to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge.i.i.i.i
  %.pre-phi = phi i64 [ %.pre138, %bb.af ], [ %i.id, %._crit_edge.i.i.i.i ]
  %.019.lcssa28.i.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %bb.af ], [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.ij = icmp samesign ult i64 %.pre-phi, %indvars.iv
  br i1 %i.ij, label %select.unfold.i.i.i, label %_ZN14llama_kv_cells7pos_setEji.exit

select.unfold.i.i.i:                              ; preds = %bb.ag, %._crit_edge.thread.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.019.lcssa28.i.i.i.i, %bb.ag ] ; 3 uses
  %i.ik = icmp eq ptr %.sroa.4.0.i.ph.i.i.i, %i.ia
  br i1 %i.ik, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %select.unfold.i.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 32
  %i.im = load i32, ptr %i.il, align 4, !tbaa !110
  %i.in = zext i32 %i.im to i64
  %i.io = icmp samesign ult i64 %indvars.iv, %i.in
  br label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i: ; preds = %bb.ah, %select.unfold.i.i.i
  %i.ip = phi i1 [ %i.io, %bb.ah ], [ true, %select.unfold.i.i.i ]
  %i.iq = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.is = trunc nuw i64 %indvars.iv to i32
  store i32 %i.is, ptr %i.ir, align 4, !tbaa !110
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ip, ptr noundef nonnull %i.iq, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ia) #30
  %i.it = getelementptr inbounds nuw i8, ptr %i.hv, i64 48 ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !151
  %i.iv = add i64 %i.iu, 1
  store i64 %i.iv, ptr %i.it, align 8, !tbaa !151
  br label %_ZN14llama_kv_cells7pos_setEji.exit

_ZN14llama_kv_cells7pos_setEji.exit:              ; preds = %bb.ag, %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i
  br i1 %i.gs, label %bb.ai, label %_ZN14llama_kv_cells7seq_addEji.exit76

bb.ai:                                            ; preds = %_ZN14llama_kv_cells7pos_setEji.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.91, i64 noundef %i.o, i64 noundef 256) #29
  unreachable

_ZN14llama_kv_cells7seq_addEji.exit76:            ; preds = %_ZN14llama_kv_cells7pos_setEji.exit
  %i.iw = load ptr, ptr %i.fx, align 8, !tbaa !117, !nonnull !118, !align !119
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !123
  %i.iy = getelementptr inbounds nuw [12440 x i8], ptr %i.ix, i64 %i.fz ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 128
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !283
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.ja, i64 %indvars.iv
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.gv ; 2 uses
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !180
  %i.je = or i64 %i.jd, %i.gu
  store i64 %i.je, ptr %i.jc, align 8, !tbaa !180
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iy, i64 152
  %i.jg = getelementptr inbounds nuw [48 x i8], ptr %i.jf, i64 %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iy, i64 56
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !126
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %indvars.iv
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !110
  store i32 %i.jk, ptr %5, align 4, !tbaa !303
  %i.jl = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  store i32 %i.jl, ptr %i.gw, align 4, !tbaa !304
  %i.jm = call { ptr, i8 } @_ZNSt8_Rb_treeISt4pairIijES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIS1_EES0_ISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.jg, ptr noundef nonnull align 4 dereferenceable(8) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.not63, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZN14llama_kv_cells7seq_addEji.exit76
  %i.jn = load ptr, ptr %i.fx, align 8, !tbaa !117, !nonnull !118, !align !119
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !123
  %i.jp = getelementptr inbounds nuw [12440 x i8], ptr %i.jo, i64 %i.fz
  %i.jq = call noundef zeroext i1 @_ZN14llama_kv_cells7pos_addEji(ptr noundef nonnull align 8 dereferenceable(12440) %i.jp, i32 noundef %i.jl, i32 noundef %i.hq) ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN14llama_kv_cells7seq_addEji.exit76
  %i.jr = load ptr, ptr %i.fx, align 8, !tbaa !117, !nonnull !118, !align !119
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !123
  %i.jt = getelementptr inbounds nuw [12440 x i8], ptr %i.js, i64 %i.fz
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 80
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !279
  %i.jw = getelementptr inbounds nuw [12 x i8], ptr %i.jv, i64 %indvars.iv ; 2 uses
  store i64 %.sroa.03.0.copyload, ptr %i.jw, align 4
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  store i32 %.sroa.4.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !110
  %.pre = load ptr, ptr %i.fx, align 8, !tbaa !117
  %.pre135 = load ptr, ptr %.pre, align 8, !tbaa !123
  br label %bb.al

bb.al:                                            ; preds = %_ZNK14llama_kv_cells7seq_hasEji.exit75, %bb.ak
  %i.jx = phi ptr [ %i.hc, %_ZNK14llama_kv_cells7seq_hasEji.exit75 ], [ %.pre135, %bb.ak ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jy = getelementptr inbounds nuw [12440 x i8], ptr %i.jx, i64 %i.gc ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 56
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 64
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !125
  %i.kc = load ptr, ptr %i.jz, align 8, !tbaa !126 ; 2 uses
  %i.kd = ptrtoint ptr %i.kb to i64
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = sub i64 %i.kd, %i.ke
  %i.kg = lshr exact i64 %i.kf, 2
  %i.kh = and i64 %i.kg, 4294967295
  %i.ki = icmp samesign ult i64 %indvars.iv.next, %i.kh
  br i1 %i.ki, label %_ZNK14llama_kv_cells7seq_hasEji.exit75, label %._crit_edge, !llvm.loop !500

.loopexit:                                        ; preds = %bb.o, %bb.n, %bb.l, %bb.m, %bb.k, %bb.j, %._crit_edge, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN14llama_kv_cells7pos_addEji(ptr noundef nonnull align 8 dereferenceable(12440) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.455", align 4    ; 5 uses
  %4 = alloca %"struct.std::pair.455", align 4    ; 5 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !110
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.c = zext i32 %1 to i64                       ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %_ZNKSt6bitsetILm256EE4testEm.exit.i

_ZNKSt6bitsetILm256EE4testEm.exit.i:              ; preds = %bb.c, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.c ] ; 4 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !283
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.c
  %i.i = lshr i64 %indvars.iv.i, 6
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !180
  %i.l = and i64 %indvars.iv.i, 63
  %i.m = shl nuw i64 1, %i.l
  %i.n = and i64 %i.k, %i.m
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNKSt6bitsetILm256EE4testEm.exit.i
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %indvars.iv.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !126
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.c
  %i.r = load i32, ptr %i.q, align 4, !tbaa !110
  store i32 %i.r, ptr %4, align 4, !tbaa !303
  store i32 %1, ptr %i.f, align 4, !tbaa !304
  %i.s = call noundef i64 @_ZNSt8_Rb_treeISt4pairIijES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 4 dereferenceable(8) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNKSt6bitsetILm256EE4testEm.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %_ZN14llama_kv_cells10seq_pos_rmEj.exit, label %_ZNKSt6bitsetILm256EE4testEm.exit.i, !llvm.loop !14

_ZN14llama_kv_cells10seq_pos_rmEj.exit:           ; preds = %bb.c
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !126
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.c ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !110
  %i.w = add nsw i32 %i.v, %2
  store i32 %i.w, ptr %i.u, align 4, !tbaa !110
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !126
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.c ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !110
  %i.ab = add nsw i32 %i.aa, %2
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !110
  store i8 1, ptr %0, align 8, !tbaa !300
  %i.ac = load i32, ptr %i.u, align 4, !tbaa !110
  %i.ad = icmp slt i32 %i.ac, 0                   ; 2 uses
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN14llama_kv_cells10seq_pos_rmEj.exit
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !283
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i8 0, i64 32, i1 false)
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !126
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.c
  store i32 -1, ptr %i.ah, align 4, !tbaa !110
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !126
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.c
  store i32 0, ptr %i.aj, align 4, !tbaa !110
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = call noundef i64 @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE5eraseERKj(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  br label %_ZN14llama_kv_cells11seq_pos_addEj.exit

bb.e:                                             ; preds = %_ZN14llama_kv_cells10seq_pos_rmEj.exit
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %_ZNKSt6bitsetILm256EE4testEm.exit.i3

_ZNKSt6bitsetILm256EE4testEm.exit.i3:             ; preds = %bb.g, %bb.e
  %indvars.iv.i4 = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i6, %bb.g ] ; 4 uses
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !283
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %i.c
  %i.ap = lshr i64 %indvars.iv.i4, 6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !180
  %i.as = and i64 %indvars.iv.i4, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.ar, %i.at
  %.not.i5 = icmp eq i64 %i.au, 0
  br i1 %.not.i5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt6bitsetILm256EE4testEm.exit.i3
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %indvars.iv.i4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !126
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.c
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !110
  store i32 %i.ay, ptr %3, align 4, !tbaa !303
  store i32 %1, ptr %i.am, align 4, !tbaa !304
  %i.az = call { ptr, i8 } @_ZNSt8_Rb_treeISt4pairIijES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIS1_EES0_ISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull align 4 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNKSt6bitsetILm256EE4testEm.exit.i3
  %indvars.iv.next.i6 = add nuw nsw i64 %indvars.iv.i4, 1 ; 2 uses
  %exitcond.not.i7 = icmp eq i64 %indvars.iv.next.i6, 256
  br i1 %exitcond.not.i7, label %_ZN14llama_kv_cells11seq_pos_addEj.exit, label %_ZNKSt6bitsetILm256EE4testEm.exit.i3, !llvm.loop !20

_ZN14llama_kv_cells11seq_pos_addEj.exit:          ; preds = %bb.g, %bb.d
  ret i1 %i.ad
}

; Function Attrs: mustprogress uwtable
define void @_ZN14llama_kv_cache8seq_keepEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %._crit_edge.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %1, -1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i32 %1 to i64                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !120  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2
  %i.m = icmp ugt i64 %i.l, %i.d
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 549, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.31) #29
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !117, !nonnull !118, !align !119
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.d
  %i.q = load i32, ptr %i.p, align 4, !tbaa !110
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !123
  %i.t = getelementptr inbounds nuw [12440 x i8], ptr %i.s, i64 %i.r ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !120
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.r ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !125
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !126
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = lshr exact i64 %i.ad, 2
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %.not27 = icmp eq i32 %i.af, 0
  br i1 %.not27, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.ag = icmp eq i32 %.1, %i.am
  br i1 %i.ag, label %._crit_edge.thread, label %bb.f

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.025 = phi i32 [ %i.ap, %.lr.ph ], [ 0, %bb.e ] ; 3 uses
  %.02024 = phi i32 [ %.1, %.lr.ph ], [ %i.af, %bb.e ] ; 2 uses
  %i.ah = tail call noundef zeroext i1 @_ZN14llama_kv_cells8seq_keepEji(ptr noundef nonnull align 8 dereferenceable(12440) %i.t, i32 noundef %.025, i32 noundef %1)
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !125
  %.pre29 = load ptr, ptr %i.x, align 8, !tbaa !126
  %i.ai = ptrtoint ptr %.pre to i64
  %i.aj = ptrtoint ptr %.pre29 to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = lshr exact i64 %i.ak, 2
  %i.am = trunc i64 %i.al to i32                  ; 3 uses
  %i.an = icmp eq i32 %.02024, %i.am
  %i.ao = select i1 %i.ah, i1 %i.an, i1 false
end_hunk_0
begin_hunk_1_@_ZN14llama_kv_cache12apply_ubatchERKNS_9slot_infoERK12llama_ubatch:bb.a
  %i.fp = icmp ult i32 %i.bp, %i.fo               ; 2 uses
  %.19.i28.i.i = select i1 %i.fp, ptr %.012.i26.i.i, ptr %.0811.i27.i.i ; 2 uses
  %.1.in.v.i29.i.i = select i1 %i.fp, i64 16, i64 24
  %.1.in.i30.i.i = getelementptr inbounds nuw i8, ptr %.012.i26.i.i, i64 %.1.in.v.i29.i.i
  %.1.i31.i.i = load ptr, ptr %.1.in.i30.i.i, align 8, !tbaa !179 ; 2 uses
  %.not.i32.i.i = icmp eq ptr %.1.i31.i.i, null
  br i1 %.not.i32.i.i, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE11equal_rangeERKj.exit.i, label %.lr.ph.i25.i.i, !llvm.loop !16

bb.o:                                             ; preds = %bb.m, %.lr.ph.i.i
  %.sink.i.i = phi i64 [ 24, %.lr.ph.i.i ], [ 16, %bb.m ]
  %.123.i.i = phi ptr [ %.02243.i.i, %.lr.ph.i.i ], [ %.044.i.i, %bb.m ] ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 %.sink.i.i
  %.0.i.i = load ptr, ptr %i.fq, align 8, !tbaa !179 ; 2 uses
  %.not.i.i102 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i102, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE11equal_rangeERKj.exit.i, label %.lr.ph.i.i, !llvm.loop !17

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE11equal_rangeERKj.exit.i: ; preds = %bb.o, %.lr.ph.i25.i.i, %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE14_M_lower_boundEPSt13_Rb_tree_nodeIjEPSt18_Rb_tree_node_baseRKj.exit.i.i, %_ZN14llama_kv_cells2rmEj.exit
  %.sroa.037.0.i.i = phi ptr [ %.08.lcssa.i.i.i, %.lr.ph.i25.i.i ], [ %.08.lcssa.i.i.i, %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE14_M_lower_boundEPSt13_Rb_tree_nodeIjEPSt18_Rb_tree_node_baseRKj.exit.i.i ], [ %i.fb, %_ZN14llama_kv_cells2rmEj.exit ], [ %.123.i.i, %bb.o ] ; 3 uses
  %.sroa.3.0.i.i = phi ptr [ %.19.i28.i.i, %.lr.ph.i25.i.i ], [ %.02243.i.i, %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE14_M_lower_boundEPSt13_Rb_tree_nodeIjEPSt18_Rb_tree_node_baseRKj.exit.i.i ], [ %i.fb, %_ZN14llama_kv_cells2rmEj.exit ], [ %.123.i.i, %bb.o ] ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !149
  %i.fu = icmp eq ptr %.sroa.037.0.i.i, %i.ft
  %i.fv = icmp eq ptr %.sroa.3.0.i.i, %i.fb
  %or.cond.i = select i1 %i.fu, i1 %i.fv, i1 false
  br i1 %or.cond.i, label %bb.p, label %.critedge.i.i

bb.p:                                             ; preds = %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE11equal_rangeERKj.exit.i
  invoke void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %i.ez, ptr noundef %.041.i.i)
          to label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE5clearEv.exit.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  tail call void @__clang_call_terminate(ptr %i.fx) #33
  unreachable

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE5clearEv.exit.i.i: ; preds = %bb.p
  store ptr null, ptr %i.fa, align 8, !tbaa !148
  store ptr %i.fb, ptr %i.fs, align 8, !tbaa !149
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store ptr %i.fb, ptr %i.fy, align 8, !tbaa !150
  store i64 0, ptr %i.fr, align 8, !tbaa !151
  br label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE5eraseERKj.exit

.critedge.i.i:                                    ; preds = %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE11equal_rangeERKj.exit.i
  %.not8.i.i = icmp eq ptr %.sroa.037.0.i.i, %.sroa.3.0.i.i
  br i1 %.not8.i.i, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE5eraseERKj.exit, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.critedge.i.i, %.lr.ph.i2.i
  %.sroa.06.09.i.i = phi ptr [ %i.fz, %.lr.ph.i2.i ], [ %.sroa.037.0.i.i, %.critedge.i.i ] ; 2 uses
  %i.fz = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i.i) #32 ; 2 uses
  %i.ga = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.fb) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef 40) #31
  %i.gb = load i64, ptr %i.fr, align 8, !tbaa !151
  %i.gc = add i64 %i.gb, -1
  store i64 %i.gc, ptr %i.fr, align 8, !tbaa !151
  %.not.i3.i = icmp eq ptr %i.fz, %.sroa.3.0.i.i
  br i1 %.not.i3.i, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE5eraseERKj.exit, label %.lr.ph.i2.i, !llvm.loop !18

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE5eraseERKj.exit: ; preds = %.lr.ph.i2.i, %.critedge.i.i, %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE5clearEv.exit.i.i, %_ZNK14llama_kv_cache9slot_info4sizeEv.exit97
  %i.gd = load ptr, ptr %i.k, align 8, !tbaa !366
  %i.ge = zext i32 %i.bf to i64                   ; 5 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !110
  %i.gh = load ptr, ptr %i.bq, align 8, !tbaa !126
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.br
  store i32 %i.gg, ptr %i.gi, align 4, !tbaa !110
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 3 uses
  %.02022.i.i.i.i = load ptr, ptr %i.gj, align 8, !tbaa !179 ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %.02022.i.i.i.i, null
  br i1 %.not23.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE5eraseERKj.exit, %.lr.ph.i.i.i.i
  %.02024.i.i.i.i = phi ptr [ %.020.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.02022.i.i.i.i, %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE5eraseERKj.exit ] ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 32
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !110 ; 2 uses
  %i.gn = icmp ult i32 %i.bp, %i.gm               ; 2 uses
  %.in.v.i.i.i.i = select i1 %i.gn, i64 16, i64 24
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 %.in.v.i.i.i.i
  %.020.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !179 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.020.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !19

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  br i1 %i.gn, label %._crit_edge.thread.i.i.i.i, label %bb.s

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE5eraseERKj.exit
  %.019.lcssa29.i.i.i.i = phi ptr [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.gk, %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE5eraseERKj.exit ] ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !149
  %i.gq = icmp eq ptr %.019.lcssa29.i.i.i.i, %i.gp
  br i1 %i.gq, label %select.unfold.i.i.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread.i.i.i.i
  %i.gr = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i) #32
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !110
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i.i
  %i.gs = phi i32 [ %.pre.i.i.i, %bb.r ], [ %i.gm, %._crit_edge.i.i.i.i ]
  %.019.lcssa28.i.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %bb.r ], [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.gt = icmp ult i32 %i.gs, %i.bp
  br i1 %i.gt, label %select.unfold.i.i.i, label %_ZN14llama_kv_cells7pos_setEji.exit

select.unfold.i.i.i:                              ; preds = %bb.s, %._crit_edge.thread.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.019.lcssa28.i.i.i.i, %bb.s ] ; 3 uses
  %i.gu = icmp eq ptr %.sroa.4.0.i.ph.i.i.i, %i.gk
  br i1 %i.gu, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %select.unfold.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 32
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !110
  %i.gx = icmp ult i32 %i.bp, %i.gw
  br label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i: ; preds = %bb.t, %select.unfold.i.i.i
  %i.gy = phi i1 [ %i.gx, %bb.t ], [ true, %select.unfold.i.i.i ]
  %i.gz = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  store i32 %i.bp, ptr %i.ha, align 4, !tbaa !110
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gy, ptr noundef nonnull %i.gz, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.gk) #30
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !151
  %i.hd = add i64 %i.hc, 1
  store i64 %i.hd, ptr %i.hb, align 8, !tbaa !151
  br label %_ZN14llama_kv_cells7pos_setEji.exit

_ZN14llama_kv_cells7pos_setEji.exit:              ; preds = %bb.s, %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i
  %i.he = load i32, ptr %i.l, align 4, !tbaa !367
  %i.hf = icmp ugt i32 %i.he, 2
  br i1 %i.hf, label %.thread, label %bb.u

bb.u:                                             ; preds = %_ZN14llama_kv_cells7pos_setEji.exit
  %i.hg = load ptr, ptr %i.m, align 8, !tbaa !368 ; 2 uses
  %.not92 = icmp eq ptr %i.hg, null
  br i1 %.not92, label %bb.v, label %.thread.thread241

bb.v:                                             ; preds = %bb.u
  %i.hh = load ptr, ptr %i.n, align 8, !tbaa !306, !nonnull !118, !align !119
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 29224
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !369
  %.not93 = icmp eq i32 %i.hj, 0
  br i1 %.not93, label %bb.z, label %.thread.thread

.thread:                                          ; preds = %_ZN14llama_kv_cells7pos_setEji.exit
  %i.hk = load ptr, ptr %i.k, align 8, !tbaa !366 ; 2 uses
  %i.hl = load i32, ptr %i.o, align 4, !tbaa !312 ; 2 uses
  %i.hm = shl i32 %i.hl, 1
  %i.hn = add i32 %i.hm, %i.bf
  %i.ho = zext i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !110
  %.sroa.0.0.insert.ext = zext i32 %i.hq to i64
  %i.hr = add i32 %i.hl, %i.bf
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !110
  %.sroa.0.4.insert.ext = zext i32 %i.hu to i64
  %.sroa.0.4.insert.shift = shl nuw i64 %.sroa.0.4.insert.ext, 32
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.4.insert.shift, %.sroa.0.0.insert.ext ; 2 uses
  %.pre203 = load ptr, ptr %i.m, align 8, !tbaa !368 ; 2 uses
  %.not94 = icmp eq ptr %.pre203, null
  br i1 %.not94, label %.thread.thread, label %.thread.thread241

.thread.thread241:                                ; preds = %bb.u, %.thread
  %.sroa.0.0244 = phi i64 [ %.sroa.0.4.insert.insert, %.thread ], [ 0, %bb.u ]
  %i.hv = phi ptr [ %.pre203, %.thread ], [ %i.hg, %bb.u ]
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.ge
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !110
  br label %bb.y

.thread.thread:                                   ; preds = %bb.v, %.thread
  %.sroa.0.0240 = phi i64 [ %.sroa.0.4.insert.insert, %.thread ], [ 0, %bb.v ] ; 3 uses
  %i.hy = load ptr, ptr %i.n, align 8, !tbaa !306, !nonnull !118, !align !119 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 29224
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !369
  %.not95 = icmp eq i32 %i.ia, 0
  br i1 %.not95, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.thread.thread
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 29236
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !569 ; 2 uses
  %.not96 = icmp eq i32 %i.ic, 0
  br i1 %.not96, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 29232
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !570
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.thread.thread, %.thread.thread241
  %.sroa.0.0239 = phi i64 [ %.sroa.0.0240, %.thread.thread ], [ %.sroa.0.0244, %.thread.thread241 ], [ %.sroa.0.0240, %bb.x ], [ %.sroa.0.0240, %bb.w ]
  %.sroa.7.0 = phi i32 [ -1, %.thread.thread ], [ %i.hx, %.thread.thread241 ], [ %i.ie, %bb.x ], [ %i.ic, %bb.w ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.bl, i64 80
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !279
  %i.ih = getelementptr inbounds nuw [12 x i8], ptr %i.ig, i64 %i.br ; 2 uses
  store i64 %.sroa.0.0239, ptr %i.ih, align 4
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store i32 %.sroa.7.0, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !110
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %i.ii = load ptr, ptr %i.p, align 8, !tbaa !362 ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.ge
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !110
  %i.il = icmp sgt i32 %i.ik, 0
  br i1 %i.il, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.z
  %i.im = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  %i.in = getelementptr inbounds nuw i8, ptr %i.bl, i64 152
  %.sroa.7136.0.insert.shift = shl nuw i64 %i.br, 32
  br label %bb.aa

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeISt4pairIijES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIS1_EES0_ISt17_Rb_tree_iteratorIS1_EbEOT_.exit, %bb.z
  %i.io = add i32 %.084170, 1                     ; 2 uses
  %i.ip = zext i32 %i.io to i64
  %i.iq = load ptr, ptr %i.i, align 8, !tbaa !353 ; 2 uses
  %i.ir = load ptr, ptr %i.h, align 8, !tbaa !343 ; 2 uses
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = sub i64 %i.is, %i.it
  %i.iv = sdiv exact i64 %i.iu, 24
  %i.iw = load ptr, ptr %i.e, align 8, !tbaa !125 ; 2 uses
  %i.ix = load ptr, ptr %i.d, align 8, !tbaa !126 ; 2 uses
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = sub i64 %i.iy, %i.iz
  %i.jb = ashr exact i64 %i.ja, 2
  %i.jc = icmp eq i64 %i.iv, %i.jb
  br i1 %i.jc, label %.lr.ph171, label %.preheader145._crit_edge, !llvm.loop !565

bb.aa:                                            ; preds = %.lr.ph, %_ZNSt8_Rb_treeISt4pairIijES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIS1_EES0_ISt17_Rb_tree_iteratorIS1_EbEOT_.exit
  %i.jd = phi ptr [ %i.ii, %.lr.ph ], [ %i.lg, %_ZNSt8_Rb_treeISt4pairIijES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIS1_EES0_ISt17_Rb_tree_iteratorIS1_EbEOT_.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt8_Rb_treeISt4pairIijES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIS1_EES0_ISt17_Rb_tree_iteratorIS1_EbEOT_.exit ] ; 2 uses
  %i.je = load ptr, ptr %i.q, align 8, !tbaa !363
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.ge
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !336
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !110 ; 2 uses
  %i.jj = sext i32 %i.ji to i64                   ; 4 uses
  %i.jk = icmp ugt i32 %i.ji, 255
  br i1 %i.jk, label %bb.ab, label %_ZN14llama_kv_cells7seq_addEji.exit

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.91, i64 noundef %i.jj, i64 noundef 256) #29
  unreachable

_ZN14llama_kv_cells7seq_addEji.exit:              ; preds = %bb.aa
  %i.jl = load ptr, ptr %i.im, align 8, !tbaa !283
  %i.jm = getelementptr inbounds nuw [32 x i8], ptr %i.jl, i64 %i.br
  %i.jn = and i64 %i.jj, 63
  %i.jo = shl nuw i64 1, %i.jn
  %i.jp = lshr i64 %i.jj, 6
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jp ; 2 uses
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !180
  %i.js = or i64 %i.jr, %i.jo
  store i64 %i.js, ptr %i.jq, align 8, !tbaa !180
  %i.jt = getelementptr inbounds nuw [48 x i8], ptr %i.in, i64 %i.jj ; 4 uses
  %i.ju = load ptr, ptr %i.bq, align 8, !tbaa !126
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.br
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !110 ; 7 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 8 ; 3 uses
  %.02124.i.i = load ptr, ptr %i.jx, align 8, !tbaa !179 ; 2 uses
  %.not25.i.i = icmp eq ptr %.02124.i.i, null
  br i1 %.not25.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i120

.lr.ph.i.i120:                                    ; preds = %_ZN14llama_kv_cells7seq_addEji.exit, %.lr.ph.i.i120.backedge
  %.02126.i.i = phi ptr [ %.02126.i.i.be, %.lr.ph.i.i120.backedge ], [ %.02124.i.i, %_ZN14llama_kv_cells7seq_addEji.exit ] ; 7 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.02126.i.i, i64 32
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !303 ; 3 uses
  %i.kb = icmp slt i32 %i.jw, %i.ka
  br i1 %i.kb, label %_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit.thread.i.i122, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i120
  %i.kc = icmp slt i32 %i.ka, %i.jw
  br i1 %i.kc, label %_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit.thread.i.thread.i, label %_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit.i.i121

_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit.i.i121:  ; preds = %bb.ac
  %i.kd = getelementptr inbounds nuw i8, ptr %.02126.i.i, i64 36
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !304
  %i.kf = icmp ult i32 %i.bp, %i.ke
  br i1 %i.kf, label %_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit.thread.i.i122, label %_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit.thread.i.thread.i

_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit.thread.i.i122: ; preds = %_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit.i.i121, %.lr.ph.i.i120
  %i.kg = getelementptr inbounds nuw i8, ptr %.02126.i.i, i64 16
  %.021.i.i = load ptr, ptr %i.kg, align 8, !tbaa !179 ; 2 uses
  %.not.i.i123 = icmp eq ptr %.021.i.i, null
  br i1 %.not.i.i123, label %._crit_edge.thread.i.i, label %.lr.ph.i.i120.backedge

_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit.thread.i.thread.i: ; preds = %_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit.i.i121, %bb.ac
  %i.kh = getelementptr inbounds nuw i8, ptr %.02126.i.i, i64 24
  %.021.i13.i = load ptr, ptr %i.kh, align 8, !tbaa !179 ; 2 uses
  %.not.i14.i = icmp eq ptr %.021.i13.i, null
  br i1 %.not.i14.i, label %._crit_edge.i.thread.i, label %.lr.ph.i.i120.backedge

.lr.ph.i.i120.backedge:                           ; preds = %_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit.thread.i.thread.i, %_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit.thread.i.i122
  %.02126.i.i.be = phi ptr [ %.021.i13.i, %_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit.thread.i.thread.i ], [ %.021.i.i, %_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit.thread.i.i122 ]
  br label %.lr.ph.i.i120, !llvm.loop !30

._crit_edge.thread.i.i:                           ; preds = %_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit.thread.i.i122, %_ZN14llama_kv_cells7seq_addEji.exit
  %.020.lcssa34.i.i = phi ptr [ %i.jy, %_ZN14llama_kv_cells7seq_addEji.exit ], [ %.02126.i.i, %_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit.thread.i.i122 ] ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !149
  %i.kk = icmp eq ptr %.020.lcssa34.i.i, %i.kj
  br i1 %i.kk, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.thread.i.i
  %i.kl = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa34.i.i) #32 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !303
  br label %._crit_edge.i.thread.i

._crit_edge.i.thread.i:                           ; preds = %_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit.thread.i.thread.i, %bb.ad
  %i.km = phi i32 [ %.pre.i, %bb.ad ], [ %i.ka, %_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit.thread.i.thread.i ] ; 2 uses
  %.020.lcssa33.i.i = phi ptr [ %.020.lcssa34.i.i, %bb.ad ], [ %.02126.i.i, %_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit.thread.i.thread.i ] ; 2 uses
  %.sroa.06.0.i.i = phi ptr [ %i.kl, %bb.ad ], [ %.02126.i.i, %_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit.thread.i.thread.i ]
  %i.kn = icmp slt i32 %i.km, %i.jw
  br i1 %i.kn, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i.thread.i
  %i.ko = icmp slt i32 %i.jw, %i.km
  br i1 %i.ko, label %_ZNSt8_Rb_treeISt4pairIijES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIS1_EES0_ISt17_Rb_tree_iteratorIS1_EbEOT_.exit, label %_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit5.i.i

_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit5.i.i:    ; preds = %bb.ae
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 36
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !304
  %i.kr = icmp ult i32 %i.kq, %i.bp
  br i1 %i.kr, label %bb.af, label %_ZNSt8_Rb_treeISt4pairIijES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIS1_EES0_ISt17_Rb_tree_iteratorIS1_EbEOT_.exit

bb.af:                                            ; preds = %_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit5.i.i, %._crit_edge.i.thread.i, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.020.lcssa33.i.i, %._crit_edge.i.thread.i ], [ %.020.lcssa33.i.i, %_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit5.i.i ], [ %.020.lcssa34.i.i, %._crit_edge.thread.i.i ] ; 4 uses
  %i.ks = icmp eq ptr %.sroa.4.0.i.ph.i, %i.jy
  br i1 %i.ks, label %_ZNSt8_Rb_treeISt4pairIijES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !303 ; 2 uses
  %i.kv = icmp slt i32 %i.jw, %i.ku
  br i1 %i.kv, label %_ZNSt8_Rb_treeISt4pairIijES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kw = icmp slt i32 %i.ku, %i.jw
  br i1 %i.kw, label %_ZNSt8_Rb_treeISt4pairIijES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 36
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !304
  %i.kz = icmp ult i32 %i.bp, %i.ky
  br label %_ZNSt8_Rb_treeISt4pairIijES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i

_ZNSt8_Rb_treeISt4pairIijES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.la = phi i1 [ %i.kz, %bb.ai ], [ true, %bb.af ], [ true, %bb.ag ], [ false, %bb.ah ]
  %i.lb = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 32
  %.sroa.0133.0.insert.ext = zext i32 %i.jw to i64
  %.sroa.0133.0.insert.insert = or disjoint i64 %.sroa.7136.0.insert.shift, %.sroa.0133.0.insert.ext
  store i64 %.sroa.0133.0.insert.insert, ptr %i.lc, align 4
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.la, ptr noundef nonnull %i.lb, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.jy) #30
  %i.ld = getelementptr inbounds nuw i8, ptr %i.jt, i64 40 ; 2 uses
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !151
  %i.lf = add i64 %i.le, 1
  store i64 %i.lf, ptr %i.ld, align 8, !tbaa !151
  %.pre204 = load ptr, ptr %i.p, align 8, !tbaa !362
  br label %_ZNSt8_Rb_treeISt4pairIijES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIS1_EES0_ISt17_Rb_tree_iteratorIS1_EbEOT_.exit

_ZNSt8_Rb_treeISt4pairIijES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIS1_EES0_ISt17_Rb_tree_iteratorIS1_EbEOT_.exit: ; preds = %bb.ae, %_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit5.i.i, %_ZNSt8_Rb_treeISt4pairIijES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i
  %i.lg = phi ptr [ %i.jd, %bb.ae ], [ %i.jd, %_ZNKSt4lessISt4pairIijEEclERKS1_S4_.exit5.i.i ], [ %.pre204, %_ZNSt8_Rb_treeISt4pairIijES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.ge
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !110
  %i.lj = sext i32 %i.li to i64
  %i.lk = icmp slt i64 %indvars.iv.next, %i.lj
  br i1 %i.lk, label %bb.aa, label %._crit_edge, !llvm.loop !566

.preheader:                                       ; preds = %bb.ao
  %i.ll = load ptr, ptr %i.e, align 8, !tbaa !125 ; 2 uses
  %i.lm = load ptr, ptr %i.d, align 8, !tbaa !126 ; 3 uses
  %i.ln = ptrtoint ptr %i.ll to i64
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = sub i64 %i.ln, %i.lo
  %i.lq = ashr exact i64 %i.lp, 2
  %.not180 = icmp eq ptr %i.ll, %i.lm
  br i1 %.not180, label %._crit_edge178, label %.lr.ph177

.lr.ph177:                                        ; preds = %.preheader
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !120
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !343
  br label %bb.ap

bb.aj:                                            ; preds = %.preheader142, %bb.ao
  %indvars.iv196 = phi i64 [ 0, %.preheader142 ], [ %indvars.iv.next197, %bb.ao ] ; 6 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv196
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !110 ; 5 uses
end_hunk_1
begin_hunk_2_@_ZN14llama_kv_cache15state_read_metaER15llama_io_read_ijjRNS_9slot_infoEiPKS2_:bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !125
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !126
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %.not172 = icmp eq i64 %i.dv, 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !152
  %i.dy = load ptr, ptr %i.dl, align 8, !tbaa !120
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea                    ; 2 uses
  br i1 %.not172, label %bb.w, label %._crit_edge308

bb.w:                                             ; preds = %bb.v
  %i.ec = ashr exact i64 %i.eb, 2
  %i.ed = zext i32 %3 to i64                      ; 2 uses
  %.not173 = icmp eq i64 %i.ec, %i.ed
  br i1 %.not173, label %bb.y, label %._crit_edge308

._crit_edge308:                                   ; preds = %bb.v, %bb.w
  %i.ee = lshr exact i64 %i.eb, 2
  %i.ef = trunc i64 %i.ee to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %._crit_edge308
  %i.eg = phi i32 [ %i.ef, %._crit_edge308 ], [ 0, %bb.u ]
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 4, ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__._ZN14llama_kv_cache15state_read_metaER15llama_io_read_ijjRNS_9slot_infoEiPKS2_, i32 noundef %i.eg, i32 noundef %3)
          to label %.critedge183 unwind label %bb.e

bb.y:                                             ; preds = %bb.w
  %i.eh = load i64, ptr %6, align 8
  store i64 %i.eh, ptr %4, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ej = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %.noexc193 unwind label %bb.e  ; 0 uses

.noexc193:                                        ; preds = %bb.y
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.el = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IjSaIjEESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %i.dk)
          to label %_ZN14llama_kv_cache9slot_infoaSERKS0_.exit unwind label %bb.e ; 0 uses

_ZN14llama_kv_cache9slot_infoaSERKS0_.exit:       ; preds = %.noexc193
  store i32 %2, ptr %4, align 8, !tbaa !361
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %2, ptr %i.em, align 4, !tbaa !364
  %i.en = load ptr, ptr %i.ei, align 8, !tbaa !126
  store i32 %2, ptr %i.en, align 4, !tbaa !110
  br i1 %.not170246.not370, label %.critedge181, label %.lr.ph250

.lr.ph250:                                        ; preds = %_ZN14llama_kv_cache9slot_infoaSERKS0_.exit
  %i.eo = load ptr, ptr %i.ek, align 8, !tbaa !343
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !120
  %i.eq = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.er = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !125
  %i.et = load ptr, ptr %i.eq, align 8, !tbaa !126 ; 2 uses
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = lshr exact i64 %i.ew, 2
  %i.ey = trunc i64 %i.ex to i32
  br label %bb.aa

bb.z:                                             ; preds = %bb.ab
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %i.ed
  br i1 %exitcond287.not, label %.critedge181, label %bb.aa, !llvm.loop !666

bb.aa:                                            ; preds = %.lr.ph250, %bb.z
  %indvars.iv283 = phi i64 [ 0, %.lr.ph250 ], [ %indvars.iv.next284, %bb.z ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv283
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !110 ; 3 uses
  %.not174 = icmp ult i32 %i.fa, %i.ey
  br i1 %.not174, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !110
  %i.fe = icmp eq i32 %i.fd, -1
  br i1 %i.fe, label %bb.z, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 4, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__._ZN14llama_kv_cache15state_read_metaER15llama_io_read_ijjRNS_9slot_infoEiPKS2_, i32 noundef %i.fa)
          to label %.critedge183 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ae:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  invoke void @_ZNK14llama_kv_cache9find_slotERK12llama_ubatchb(ptr dead_on_unwind nonnull writable sret(%"struct.llama_kv_cache::slot_info") align 8 %11, ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(104) %9, i1 noundef zeroext false)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.fg = load i64, ptr %11, align 8
  store i64 %i.fg, ptr %4, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.fj = load ptr, ptr %i.fh, align 8, !tbaa !126 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !337
  %i.fm = load <2 x ptr>, ptr %i.fi, align 8, !tbaa !336
  store <2 x ptr> %i.fm, ptr %i.fh, align 8, !tbaa !336
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !337
  store ptr %i.fo, ptr %i.fk, align 8, !tbaa !337
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fj, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fp = ptrtoint ptr %i.fl to i64
  %i.fq = ptrtoint ptr %i.fj to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.fr) #31
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i

_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i:               ; preds = %bb.ag, %bb.af
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !343 ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !353 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !339
  %i.fz = load <2 x ptr>, ptr %i.ft, align 8, !tbaa !329
  store <2 x ptr> %i.fz, ptr %i.fs, align 8, !tbaa !329
  %i.ga = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !339
  store ptr %i.gb, ptr %i.fx, align 8, !tbaa !339
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.fu, %i.fw
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.gi, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i.i.i ], [ %i.fu, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i ] ; 3 uses
  %i.gc = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !275
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %i.gc to i64
  %i.gh = sub i64 %i.gf, %i.gg
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gh) #31
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.ah, %.lr.ph.i.i.i.i.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i4.i = icmp eq ptr %i.gi, %i.fw
  br i1 %.not.i.i.i.i.i4.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !26

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i.i.i, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN14llama_kv_cache9slot_infoaSEOS0_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.gj = ptrtoint ptr %i.fy to i64
  %i.gk = ptrtoint ptr %i.fu to i64
  %i.gl = sub i64 %i.gj, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %i.fu, i64 noundef %i.gl) #31
  br label %_ZN14llama_kv_cache9slot_infoaSEOS0_.exit

_ZN14llama_kv_cache9slot_infoaSEOS0_.exit:        ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.gm = load ptr, ptr %i.fs, align 8, !tbaa !329
  %i.gn = load ptr, ptr %i.fv, align 8, !tbaa !329
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %bb.aj, label %.critedge181

bb.aj:                                            ; preds = %_ZN14llama_kv_cache9slot_infoaSEOS0_.exit
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 4, ptr noundef nonnull @.str.70, ptr noundef nonnull @__func__._ZN14llama_kv_cache15state_read_metaER15llama_io_read_ijjRNS_9slot_infoEiPKS2_, i32 noundef %3)
          to label %.critedge183 unwind label %bb.e

bb.ak:                                            ; preds = %bb.ae
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.ay

.critedge181:                                     ; preds = %bb.z, %_ZN14llama_kv_cache9slot_infoaSERKS0_.exit, %_ZN14llama_kv_cache9slot_infoaSEOS0_.exit
  invoke void @_ZN14llama_kv_cache12apply_ubatchERKNS_9slot_infoERK12llama_ubatch(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(104) %9)
          to label %.preheader237 unwind label %bb.e

.preheader237:                                    ; preds = %.critedge181
  %i.gq = ptrtoint ptr %.sroa.14.0366 to i64
  %i.gr = ptrtoint ptr %.sroa.0.1364 to i64
  %i.gs = sub i64 %i.gq, %i.gr                    ; 2 uses
  %i.gt = sdiv exact i64 %i.gs, 12                ; 5 uses
  %i.gu = and i64 %i.gt, 4294967295
  %.not270 = icmp eq i64 %i.gu, 0
  br i1 %.not270, label %._crit_edge, label %.lr.ph252

.lr.ph252:                                        ; preds = %.preheader237
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 3 uses
  %wide.trip.count291 = and i64 %i.gt, 4294967295
  %xtraiter414 = and i64 %i.gt, 1
  %i.gx = icmp eq i64 %wide.trip.count291, 1
  br i1 %i.gx, label %.epil.preheader, label %.lr.ph252.new

.lr.ph252.new:                                    ; preds = %.lr.ph252
  %unroll_iter = and i64 %i.gt, 4294967294
  br label %bb.al

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.al
  %lcmp.mod415.not = icmp eq i64 %xtraiter414, 0
  br i1 %lcmp.mod415.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph252
  %indvars.iv288.epil.init = phi i64 [ 0, %.lr.ph252 ], [ %indvars.iv.next289.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod416 = trunc i64 %i.gt to i1
  call void @llvm.assume(i1 %lcmp.mod416)
  %13 = load ptr, ptr %i.gv, align 8, !tbaa !343
  %14 = load ptr, ptr %13, align 8, !tbaa !120
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %indvars.iv288.epil.init
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !110
  %i.ha = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.1364, i64 %indvars.iv288.epil.init ; 2 uses
  %.sroa.029.0.copyload.epil = load i64, ptr %i.ha, align 4
  %.sroa.230.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %.sroa.230.0.copyload.epil = load i32, ptr %.sroa.230.0..sroa_idx.epil, align 4, !tbaa !110
  %i.hb = zext i32 %i.gz to i64
  %15 = load ptr, ptr %i.gw, align 8, !tbaa !279
  %i.hc = getelementptr inbounds nuw [12 x i8], ptr %15, i64 %i.hb ; 2 uses
  store i64 %.sroa.029.0.copyload.epil, ptr %i.hc, align 4
  %.sroa.22.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store i32 %.sroa.230.0.copyload.epil, ptr %.sroa.22.0..sroa_idx.i.epil, align 4, !tbaa !110
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader237
  %i.hd = load i32, ptr %i.a, align 4, !tbaa !110
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 1, ptr noundef nonnull @.str.71, ptr noundef nonnull @__func__._ZN14llama_kv_cache15state_read_metaER15llama_io_read_ijjRNS_9slot_infoEiPKS2_, i32 noundef %3, i32 noundef %i.hd)
          to label %bb.am unwind label %bb.e

bb.al:                                            ; preds = %bb.al, %.lr.ph252.new
  %indvars.iv288 = phi i64 [ 0, %.lr.ph252.new ], [ %indvars.iv.next289.1, %bb.al ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph252.new ], [ %niter.next.1, %bb.al ]
  %16 = load ptr, ptr %i.gv, align 8, !tbaa !343
  %17 = load ptr, ptr %16, align 8, !tbaa !120
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %indvars.iv288
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !110
  %i.hg = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.1364, i64 %indvars.iv288 ; 2 uses
  %.sroa.029.0.copyload = load i64, ptr %i.hg, align 4
  %.sroa.230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %.sroa.230.0.copyload = load i32, ptr %.sroa.230.0..sroa_idx, align 4, !tbaa !110
  %i.hh = zext i32 %i.hf to i64
  %18 = load ptr, ptr %i.gw, align 8, !tbaa !279
  %i.hi = getelementptr inbounds nuw [12 x i8], ptr %18, i64 %i.hh ; 2 uses
  store i64 %.sroa.029.0.copyload, ptr %i.hi, align 4
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store i32 %.sroa.230.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !110
  %indvars.iv.next289 = or disjoint i64 %indvars.iv288, 1 ; 2 uses
  %19 = load ptr, ptr %i.gv, align 8, !tbaa !343
  %20 = load ptr, ptr %19, align 8, !tbaa !120
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %indvars.iv.next289
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !110
  %i.hl = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.1364, i64 %indvars.iv.next289 ; 2 uses
  %.sroa.029.0.copyload.1 = load i64, ptr %i.hl, align 4
  %.sroa.230.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %.sroa.230.0.copyload.1 = load i32, ptr %.sroa.230.0..sroa_idx.1, align 4, !tbaa !110
  %i.hm = zext i32 %i.hk to i64
  %21 = load ptr, ptr %i.gw, align 8, !tbaa !279
  %i.hn = getelementptr inbounds nuw [12 x i8], ptr %21, i64 %i.hm ; 2 uses
  store i64 %.sroa.029.0.copyload.1, ptr %i.hn, align 4
  %.sroa.22.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store i32 %.sroa.230.0.copyload.1, ptr %.sroa.22.0..sroa_idx.i.1, align 4, !tbaa !110
  %indvars.iv.next289.1 = add nuw nsw i64 %indvars.iv288, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.al, !llvm.loop !667

bb.am:                                            ; preds = %._crit_edge
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !125
  %i.hr = load ptr, ptr %i.ho, align 8, !tbaa !126
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = icmp eq i64 %i.hu, 4
  br i1 %i.hv, label %bb.an, label %.invoke

bb.an:                                            ; preds = %bb.am
  %i.hw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !343 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !152
  %i.ia = load ptr, ptr %i.hx, align 8, !tbaa !120 ; 3 uses
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = sub i64 %i.ib, %i.ic
  %i.ie = ashr exact i64 %i.id, 2
  %i.if = zext i32 %3 to i64                      ; 2 uses
  %i.ig = icmp eq i64 %i.ie, %i.if
  br i1 %i.ig, label %.preheader, label %.invoke

.preheader:                                       ; preds = %bb.an
  br i1 %.not170246.not370, label %._crit_edge255, label %.lr.ph254

.lr.ph254:                                        ; preds = %.preheader
  %i.ih = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !126 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !366 ; 2 uses
  %i.il = load i32, ptr %i.a, align 4
  %.fr272 = freeze i32 %i.il                      ; 2 uses
  %i.im = sext i32 %.fr272 to i64                 ; 3 uses
  %i.in = icmp ugt i32 %.fr272, 255
  %i.io = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.ip = lshr i64 %i.im, 6
  %i.iq = and i64 %i.im, 63
  %i.ir = shl nuw i64 1, %i.iq
  br i1 %i.in, label %.lr.ph254.split.us, label %.lr.ph254.split

.lr.ph254.split.us:                               ; preds = %.lr.ph254
  %i.is = load i32, ptr %i.ia, align 4, !tbaa !110
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !110
  %i.iw = load i32, ptr %i.ik, align 4, !tbaa !110
  %i.ix = icmp eq i32 %i.iv, %i.iw
  br i1 %i.ix, label %.split257.us, label %.invoke388

.invoke:                                          ; preds = %bb.an, %bb.am
  %i.iy = phi i32 [ 2442, %bb.am ], [ 2443, %bb.an ]
  %i.iz = phi ptr [ @.str.72, %bb.am ], [ @.str.73, %bb.an ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef %i.iy, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.iz) #29
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

bb.ao:                                            ; preds = %bb.aq
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %exitcond297.not = icmp eq i64 %indvars.iv.next294, %i.if
  br i1 %exitcond297.not, label %._crit_edge255, label %.lr.ph254.split, !llvm.loop !668

.lr.ph254.split:                                  ; preds = %.lr.ph254, %bb.ao
  %indvars.iv293 = phi i64 [ %indvars.iv.next294, %bb.ao ], [ 0, %.lr.ph254 ] ; 3 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv293
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !110
  %i.jc = zext i32 %i.jb to i64                   ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !110
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv293
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !110
  %i.jh = icmp eq i32 %i.je, %i.jg
  br i1 %i.jh, label %bb.aq, label %.invoke388

bb.ap:                                            ; preds = %.invoke388, %.split257.us
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.aq:                                            ; preds = %.lr.ph254.split
  %i.jj = load ptr, ptr %i.io, align 8, !tbaa !283
  %i.jk = getelementptr inbounds nuw [32 x i8], ptr %i.jj, i64 %i.jc
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.ip
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !180
  %i.jn = and i64 %i.jm, %i.ir
  %.not234 = icmp eq i64 %i.jn, 0
  br i1 %.not234, label %.invoke388, label %bb.ao

.split257.us:                                     ; preds = %.lr.ph254.split.us
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.88, i64 noundef %i.im, i64 noundef 256) #29
          to label %.noexc195 unwind label %bb.ap

.noexc195:                                        ; preds = %.split257.us
  unreachable

.invoke388:                                       ; preds = %.lr.ph254.split, %bb.aq, %.lr.ph254.split.us
  %i.jo = phi i32 [ 2446, %.lr.ph254.split.us ], [ 2447, %bb.aq ], [ 2446, %.lr.ph254.split ]
  %i.jp = phi ptr [ @.str.74, %.lr.ph254.split.us ], [ @.str.75, %bb.aq ], [ @.str.74, %.lr.ph254.split ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef %i.jo, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.jp) #29
          to label %.cont389 unwind label %bb.ap

.cont389:                                         ; preds = %.invoke388
  unreachable

._crit_edge255:                                   ; preds = %bb.ao, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.0.1364, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI17llama_kv_cell_extSaIS0_EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge255
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1364, i64 noundef %i.gs) #31
  br label %_ZNSt6vectorI17llama_kv_cell_extSaIS0_EED2Ev.exit

_ZNSt6vectorI17llama_kv_cell_extSaIS0_EED2Ev.exit: ; preds = %._crit_edge255, %bb.ar
  %i.jq = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !108 ; 8 uses
  %.not.i.i.i196 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i196, label %_ZN12llama_ubatchD2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorI17llama_kv_cell_extSaIS0_EED2Ev.exit
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 4 uses
  %i.jt = load atomic i64, ptr %i.js acquire, align 8 ; 2 uses
  %i.ju = icmp eq i64 %i.jt, 4294967297
  %i.jv = trunc i64 %i.jt to i32                  ; 2 uses
  br i1 %i.ju, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.js, align 8, !tbaa !112
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 12
  store i32 0, ptr %i.jw, align 4, !tbaa !113
  %i.jx = load ptr, ptr %i.jr, align 8, !tbaa !54
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #30, !inline_history !21
  %i.ka = load ptr, ptr %i.jr, align 8, !tbaa !54
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #30, !inline_history !21
  br label %_ZN12llama_ubatchD2Ev.exit

bb.au:                                            ; preds = %bb.as
  %i.kd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !109
  %.not.i.i.i.i197 = icmp eq i8 %i.kd, 0
  br i1 %.not.i.i.i.i197, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ke = add nsw i32 %i.jv, -1
  store i32 %i.ke, ptr %i.js, align 8, !tbaa !110
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.kf = atomicrmw volatile add ptr %i.js, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i = phi i32 [ %i.jv, %bb.av ], [ %i.kf, %bb.aw ]
  %i.kg = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.kg, label %bb.ax, label %_ZN12llama_ubatchD2Ev.exit, !prof !193

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #30
  br label %_ZN12llama_ubatchD2Ev.exit

_ZN12llama_ubatchD2Ev.exit:                       ; preds = %_ZNSt6vectorI17llama_kv_cell_extSaIS0_EED2Ev.exit, %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @_ZN18llama_batch_allocrD2Ev(ptr noundef nonnull align 8 dead_on_return(444) dereferenceable(444) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.ch

bb.ay:                                            ; preds = %bb.ap, %bb.ak, %bb.ad, %bb.s, %bb.e
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %bb.e ], [ %.sroa.0.1364, %bb.ap ], [ %.sroa.0.1364, %bb.ak ], [ %.sroa.0.1364, %bb.ad ], [ %.sroa.0.1375, %bb.s ] ; 3 uses
  %.sroa.20.2 = phi ptr [ %.sroa.20.0, %bb.e ], [ %.sroa.14.0366, %bb.ap ], [ %.sroa.14.0366, %bb.ak ], [ %.sroa.14.0366, %bb.ad ], [ %.sroa.14.0376, %bb.s ]
  %.pn176 = phi { ptr, i32 } [ %i.bf, %bb.e ], [ %i.ji, %bb.ap ], [ %i.gp, %bb.ak ], [ %i.ff, %bb.ad ], [ %.pn, %bb.s ]
  %.not.i.i.i198 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i198, label %_ZNSt6vectorI17llama_kv_cell_extSaIS0_EED2Ev.exit199, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kh = ptrtoint ptr %.sroa.20.2 to i64
  %i.ki = ptrtoint ptr %.sroa.0.2 to i64
  %i.kj = sub i64 %i.kh, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.kj) #31
  br label %_ZNSt6vectorI17llama_kv_cell_extSaIS0_EED2Ev.exit199

_ZNSt6vectorI17llama_kv_cell_extSaIS0_EED2Ev.exit199: ; preds = %bb.ay, %bb.az
  call void @_ZN12llama_ubatchD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %9) #30
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorI17llama_kv_cell_extSaIS0_EED2Ev.exit199, %bb.d
  %.pn176.pn = phi { ptr, i32 } [ %.pn176, %_ZNSt6vectorI17llama_kv_cell_extSaIS0_EED2Ev.exit199 ], [ %i.be, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @_ZN18llama_batch_allocrD2Ev(ptr noundef nonnull align 8 dead_on_return(444) dereferenceable(444) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  resume { ptr, i32 } %.pn176.pn

bb.bb:                                            ; preds = %bb.a
  %i.kk = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !125
  %i.kn = load ptr, ptr %i.kk, align 8, !tbaa !126
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = sub i64 %i.ko, %i.kp
  %i.kr = lshr exact i64 %i.kq, 2
  %i.ks = trunc i64 %i.kr to i32
  %i.kt = icmp ugt i32 %3, %i.ks
  br i1 %i.kt, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  tail call void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 4, ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__._ZN14llama_kv_cache15state_read_metaER15llama_io_read_ijjRNS_9slot_infoEiPKS2_)
  br label %bb.ch

bb.bd:                                            ; preds = %bb.bb
  %.not162 = icmp eq ptr %6, null
  br i1 %.not162, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ku = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !329 ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !329
  %i.ky = icmp eq ptr %i.kv, %i.kx
  br i1 %i.ky, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kz = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !125
  %i.lc = load ptr, ptr %i.kz, align 8, !tbaa !126
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = sub i64 %i.ld, %i.le
  %.not163 = icmp eq i64 %i.lf, 4
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !152
  %i.li = load ptr, ptr %i.kv, align 8, !tbaa !120
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = sub i64 %i.lj, %i.lk                    ; 2 uses
  %i.lm = ashr exact i64 %i.ll, 2
  %i.ln = zext i32 %3 to i64
  %.not164 = icmp eq i64 %i.lm, %i.ln
  %or.cond = select i1 %.not163, i1 %.not164, i1 false
  br i1 %or.cond, label %bb.bh, label %._crit_edge310

._crit_edge310:                                   ; preds = %bb.bf
  %i.lo = lshr exact i64 %i.ll, 2
  %i.lp = trunc i64 %i.lo to i32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %._crit_edge310
  %i.lq = phi i32 [ %i.lp, %._crit_edge310 ], [ 0, %bb.be ]
  tail call void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 4, ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__._ZN14llama_kv_cache15state_read_metaER15llama_io_read_ijjRNS_9slot_infoEiPKS2_, i32 noundef %i.lq, i32 noundef %3)
  br label %bb.ch

bb.bh:                                            ; preds = %bb.bf, %bb.bd
  %.not167263.not = icmp eq i32 %3, 0             ; 2 uses
  br i1 %.not167263.not, label %.critedge189, label %.lr.ph266

.lr.ph266:                                        ; preds = %bb.bh
  %i.lr = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ls = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.lu = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.lx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ma = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.mb = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.mc = getelementptr inbounds nuw i8, ptr %7, i64 4
  %wide.trip.count301 = zext i32 %3 to i64
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph266, %._crit_edge262
  %indvars.iv298 = phi i64 [ 0, %.lr.ph266 ], [ %indvars.iv.next299, %._crit_edge262 ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %i.md = load ptr, ptr %1, align 8, !tbaa !54
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mf = load ptr, ptr %i.me, align 8
  call void %i.mf(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.e, i64 noundef 4)
  %i.mg = load ptr, ptr %1, align 8, !tbaa !54
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8
  call void %i.mi(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.f, i64 noundef 4)
  %i.mj = load i32, ptr %i.e, align 4, !tbaa !110
  %i.mk = load ptr, ptr %i.kk, align 8, !tbaa !126
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv298
  store i32 %i.mj, ptr %i.ml, align 4, !tbaa !110
  %.02022.i.i.i.i = load ptr, ptr %i.lr, align 8, !tbaa !179 ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %.02022.i.i.i.i, null
  br i1 %.not23.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i200

.lr.ph.i.i.i.i200:                                ; preds = %bb.bi, %.lr.ph.i.i.i.i200
  %.02024.i.i.i.i = phi ptr [ %.020.i.i.i.i, %.lr.ph.i.i.i.i200 ], [ %.02022.i.i.i.i, %bb.bi ] ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 32
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !110
  %i.mo = zext i32 %i.mn to i64                   ; 2 uses
  %i.mp = icmp samesign ult i64 %indvars.iv298, %i.mo ; 2 uses
  %.in.v.i.i.i.i = select i1 %i.mp, i64 16, i64 24
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 %.in.v.i.i.i.i
  %.020.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !179 ; 2 uses
  %.not.i.i.i.i201 = icmp eq ptr %.020.i.i.i.i, null
  br i1 %.not.i.i.i.i201, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i200, !llvm.loop !19

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i200
  br i1 %i.mp, label %._crit_edge.thread.i.i.i.i, label %bb.bk

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %bb.bi
  %.019.lcssa29.i.i.i.i = phi ptr [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.ls, %bb.bi ] ; 4 uses
  %i.mq = load ptr, ptr %i.lt, align 8, !tbaa !149
  %i.mr = icmp eq ptr %.019.lcssa29.i.i.i.i, %i.mq
  br i1 %i.mr, label %select.unfold.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge.thread.i.i.i.i
  %i.ms = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i) #32
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !110
  %.pre315 = zext i32 %.pre.i.i.i to i64
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %._crit_edge.i.i.i.i
  %.pre-phi = phi i64 [ %.pre315, %bb.bj ], [ %i.mo, %._crit_edge.i.i.i.i ]
  %.019.lcssa28.i.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %bb.bj ], [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.mt = icmp samesign ult i64 %.pre-phi, %indvars.iv298
  br i1 %i.mt, label %select.unfold.i.i.i, label %_ZN14llama_kv_cells7pos_setEji.exit

select.unfold.i.i.i:                              ; preds = %bb.bk, %._crit_edge.thread.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.019.lcssa28.i.i.i.i, %bb.bk ] ; 3 uses
  %i.mu = icmp eq ptr %.sroa.4.0.i.ph.i.i.i, %i.ls
  br i1 %i.mu, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %select.unfold.i.i.i
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 32
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !110
  %i.mx = zext i32 %i.mw to i64
  %i.my = icmp samesign ult i64 %indvars.iv298, %i.mx
  br label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i: ; preds = %bb.bl, %select.unfold.i.i.i
  %i.mz = phi i1 [ %i.my, %bb.bl ], [ true, %select.unfold.i.i.i ]
  %i.na = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  %i.nc = trunc nuw i64 %indvars.iv298 to i32
  store i32 %i.nc, ptr %i.nb, align 4, !tbaa !110
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.mz, ptr noundef nonnull %i.na, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ls) #30
  %i.nd = load i64, ptr %i.lu, align 8, !tbaa !151
  %i.ne = add i64 %i.nd, 1
  store i64 %i.ne, ptr %i.lu, align 8, !tbaa !151
  br label %_ZN14llama_kv_cells7pos_setEji.exit

_ZN14llama_kv_cells7pos_setEji.exit:              ; preds = %bb.bk, %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i
  %i.nf = load ptr, ptr %i.lv, align 8, !tbaa !306, !nonnull !118, !align !119
  %i.ng = call noundef i32 @_ZNK13llama_hparams14n_pos_per_embdEv(ptr noundef nonnull align 8 dereferenceable(36056) %i.nf)
  %i.nh = icmp ugt i32 %i.ng, 1
  br i1 %i.nh, label %_ZNK14llama_kv_cache12has_cell_extEv.exit202.thread, label %_ZNK14llama_kv_cache12has_cell_extEv.exit202

_ZNK14llama_kv_cache12has_cell_extEv.exit202:     ; preds = %_ZN14llama_kv_cells7pos_setEji.exit
  %i.ni = load ptr, ptr %i.lv, align 8, !tbaa !306, !nonnull !118, !align !119
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 29224
  %i.nk = load i32, ptr %i.nj, align 8, !tbaa !369
  %.not236 = icmp eq i32 %i.nk, 0
  br i1 %.not236, label %bb.bm, label %_ZNK14llama_kv_cache12has_cell_extEv.exit202.thread

_ZNK14llama_kv_cache12has_cell_extEv.exit202.thread: ; preds = %_ZN14llama_kv_cells7pos_setEji.exit, %_ZNK14llama_kv_cache12has_cell_extEv.exit202
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  store i32 0, ptr %12, align 8, !tbaa !414
  store i32 0, ptr %i.lw, align 4, !tbaa !415
  store i32 -1, ptr %i.lx, align 8, !tbaa !345
  %i.nl = load ptr, ptr %1, align 8, !tbaa !54
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8
  call void %i.nn(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %12, i64 noundef 12)
  %.sroa.014.0.copyload = load i64, ptr %12, align 8
  %.sroa.215.0.copyload = load i32, ptr %i.lx, align 8, !tbaa !110
  %i.no = load ptr, ptr %i.ly, align 8, !tbaa !279
  %i.np = getelementptr inbounds nuw [12 x i8], ptr %i.no, i64 %indvars.iv298 ; 2 uses
  store i64 %.sroa.014.0.copyload, ptr %i.np, align 4
  %.sroa.22.0..sroa_idx.i203 = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  store i32 %.sroa.215.0.copyload, ptr %.sroa.22.0..sroa_idx.i203, align 4, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNK14llama_kv_cache12has_cell_extEv.exit202.thread, %_ZNK14llama_kv_cache12has_cell_extEv.exit202
  %i.nq = load i32, ptr %i.f, align 4, !tbaa !110
  %.not166258.not = icmp eq i32 %i.nq, 0
  br i1 %.not166258.not, label %._crit_edge262, label %.lr.ph261.preheader

.lr.ph261.preheader:                              ; preds = %bb.bm
  %i.nr = trunc nuw i64 %indvars.iv298 to i32
  br label %.lr.ph261

.lr.ph261:                                        ; preds = %.lr.ph261.preheader, %_ZN14llama_kv_cells7seq_addEji.exit
  %.0135259 = phi i32 [ %i.om, %_ZN14llama_kv_cells7seq_addEji.exit ], [ 0, %.lr.ph261.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.ns = load ptr, ptr %1, align 8, !tbaa !54
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nu = load ptr, ptr %i.nt, align 8
  call void %i.nu(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.g, i64 noundef 4)
  %i.nv = load i32, ptr %i.g, align 4, !tbaa !110 ; 5 uses
  %i.nw = icmp sgt i32 %i.nv, -1
  %.pre314 = load i32, ptr %i.lz, align 4, !tbaa !97 ; 2 uses
  %.not165 = icmp ult i32 %i.nv, %.pre314
  %or.cond391 = select i1 %i.nw, i1 %.not165, i1 false
  br i1 %or.cond391, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %.lr.ph261
  %i.nx = zext nneg i32 %i.nv to i64              ; 4 uses
  %i.ny = icmp samesign ugt i32 %i.nv, 255
  br i1 %i.ny, label %bb.bo, label %_ZN14llama_kv_cells7seq_addEji.exit

bb.bo:                                            ; preds = %bb.bn
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.91, i64 noundef %i.nx, i64 noundef 256) #29
  unreachable

_ZN14llama_kv_cells7seq_addEji.exit:              ; preds = %bb.bn
  %i.nz = load ptr, ptr %i.ma, align 8, !tbaa !283
  %i.oa = getelementptr inbounds nuw [32 x i8], ptr %i.nz, i64 %indvars.iv298
  %i.ob = and i64 %i.nx, 63
  %i.oc = shl nuw i64 1, %i.ob
  %i.od = lshr i64 %i.nx, 6
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %i.od ; 2 uses
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !180
  %i.og = or i64 %i.of, %i.oc
  store i64 %i.og, ptr %i.oe, align 8, !tbaa !180
  %i.oh = getelementptr inbounds nuw [48 x i8], ptr %i.mb, i64 %i.nx
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.oi = load ptr, ptr %i.kk, align 8, !tbaa !126
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv298
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !110
  store i32 %i.ok, ptr %7, align 4, !tbaa !303
  store i32 %i.nr, ptr %i.mc, align 4, !tbaa !304
  %i.ol = call { ptr, i8 } @_ZNSt8_Rb_treeISt4pairIijES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIS1_EES0_ISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.oh, ptr noundef nonnull align 4 dereferenceable(8) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  %i.om = add nuw i32 %.0135259, 1                ; 2 uses
  %i.on = load i32, ptr %i.f, align 4, !tbaa !110
  %.not166 = icmp ult i32 %i.om, %i.on
  br i1 %.not166, label %.lr.ph261, label %._crit_edge262, !llvm.loop !669

._crit_edge262:                                   ; preds = %_ZN14llama_kv_cells7seq_addEji.exit, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 2 uses
  %exitcond302.not = icmp eq i64 %indvars.iv.next299, %wide.trip.count301
  br i1 %exitcond302.not, label %.critedge189, label %bb.bi, !llvm.loop !670

bb.bp:                                            ; preds = %.lr.ph261
  call void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 4, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__._ZN14llama_kv_cache15state_read_metaER15llama_io_read_ijjRNS_9slot_infoEiPKS2_, i32 noundef %i.nv, i32 noundef %.pre314)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %bb.ch

.critedge189:                                     ; preds = %._crit_edge262, %bb.bh
  store i32 %2, ptr %4, align 8, !tbaa !361
  %i.oo = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %2, ptr %i.oo, align 4, !tbaa !364
  %i.op = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !125 ; 3 uses
  %i.os = load ptr, ptr %i.op, align 8, !tbaa !126 ; 3 uses
  %i.ot = ptrtoint ptr %i.or to i64
  %i.ou = ptrtoint ptr %i.os to i64
  %i.ov = sub i64 %i.ot, %i.ou
  %i.ow = ashr exact i64 %i.ov, 2                 ; 2 uses
  %i.ox = icmp eq ptr %i.or, %i.os
  br i1 %i.ox, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.critedge189
  %i.oy = sub nuw nsw i64 1, %i.ow
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.op, i64 noundef %i.oy)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.br:                                            ; preds = %.critedge189
  %i.oz = icmp ugt i64 %i.ow, 1
  br i1 %i.oz, label %bb.bs, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.bs:                                            ; preds = %bb.br
  %i.pa = getelementptr inbounds nuw i8, ptr %i.os, i64 4 ; 2 uses
  %.not.i.i.i204 = icmp eq ptr %i.or, %i.pa
  br i1 %.not.i.i.i204, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.bs
  store ptr %i.pa, ptr %i.oq, align 8, !tbaa !125
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, %bb.bs, %bb.br, %bb.bq
  %i.pb = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !353 ; 4 uses
  %i.pe = load ptr, ptr %i.pb, align 8, !tbaa !343 ; 3 uses
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = ptrtoint ptr %i.pe to i64
  %i.ph = sub i64 %i.pf, %i.pg
  %i.pi = sdiv exact i64 %i.ph, 24                ; 2 uses
  %i.pj = icmp eq ptr %i.pd, %i.pe
  br i1 %i.pj, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.pk = sub nuw nsw i64 1, %i.pi
  call void @_ZNSt6vectorIS_IjSaIjEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.pb, i64 noundef %i.pk)
  br label %_ZN14llama_kv_cache9slot_info6resizeEm.exit

bb.bu:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.pl = icmp ugt i64 %i.pi, 1
  br i1 %i.pl, label %bb.bv, label %_ZN14llama_kv_cache9slot_info6resizeEm.exit

bb.bv:                                            ; preds = %bb.bu
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pe, i64 24 ; 3 uses
  %.not.i.i2.i = icmp eq ptr %i.pd, %i.pm
  br i1 %.not.i.i2.i, label %_ZN14llama_kv_cache9slot_info6resizeEm.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bv, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.pt, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i.i ], [ %i.pm, %bb.bv ] ; 3 uses
  %i.pn = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.pn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.po = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !275
  %i.pq = ptrtoint ptr %i.pp to i64
  %i.pr = ptrtoint ptr %i.pn to i64
  %i.ps = sub i64 %i.pq, %i.pr
  call void @_ZdlPvm(ptr noundef nonnull %i.pn, i64 noundef %i.ps) #31
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.bw, %.lr.ph.i.i.i.i.i
  %i.pt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.pt, %i.pd
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !26

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i.i
  store ptr %i.pm, ptr %i.pc, align 8, !tbaa !353
  br label %_ZN14llama_kv_cache9slot_info6resizeEm.exit

_ZN14llama_kv_cache9slot_info6resizeEm.exit:      ; preds = %bb.bt, %bb.bu, %bb.bv, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.pu = load ptr, ptr %i.op, align 8, !tbaa !126
  store i32 %2, ptr %i.pu, align 4, !tbaa !110
  %i.pv = load ptr, ptr %i.pb, align 8, !tbaa !343 ; 3 uses
  %i.pw = zext i32 %3 to i64                      ; 7 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 8 ; 2 uses
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !152 ; 2 uses
  %i.pz = load ptr, ptr %i.pv, align 8, !tbaa !120 ; 2 uses
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = ptrtoint ptr %i.pz to i64
  %i.qc = sub i64 %i.qa, %i.qb
  %i.qd = ashr exact i64 %i.qc, 2                 ; 3 uses
  %i.qe = icmp ult i64 %i.qd, %i.pw
  br i1 %i.qe, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %_ZN14llama_kv_cache9slot_info6resizeEm.exit
  %i.qf = sub nuw nsw i64 %i.pw, %i.qd
  call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.pv, i64 noundef %i.qf)
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.by:                                            ; preds = %_ZN14llama_kv_cache9slot_info6resizeEm.exit
  %i.qg = icmp ugt i64 %i.qd, %i.pw
  br i1 %i.qg, label %bb.bz, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.bz:                                            ; preds = %bb.by
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %i.pw ; 2 uses
  %.not.i.i205 = icmp eq ptr %i.py, %i.qh
  br i1 %.not.i.i205, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.bz
  store ptr %i.qh, ptr %i.px, align 8, !tbaa !152
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.bx, %bb.by, %bb.bz, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  br i1 %.not167263.not, label %._crit_edge269, label %.lr.ph268

.lr.ph268:                                        ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.qi = load ptr, ptr %i.pb, align 8, !tbaa !343
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !120 ; 2 uses
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph268
  %n.vec = and i64 %i.pw, 4294967288              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %index ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  store <4 x i32> %vec.ind, ptr %i.qk, align 4, !tbaa !110
  store <4 x i32> %step.add, ptr %i.ql, align 4, !tbaa !110
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.qm = icmp eq i64 %index.next, %n.vec
  br i1 %i.qm, label %middle.block, label %vector.body, !llvm.loop !671

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.pw
  br i1 %cmp.n, label %._crit_edge269, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph268, %middle.block
  %indvars.iv303.ph = phi i64 [ 0, %.lr.ph268 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge269:                                   ; preds = %scalar.ph, %middle.block, %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  store i32 0, ptr %i.o, align 4, !tbaa !110
  br label %bb.ch

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv303 = phi i64 [ %indvars.iv.next304, %scalar.ph ], [ %indvars.iv303.ph, %scalar.ph.preheader ] ; 3 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %indvars.iv303
  %i.qo = trunc nuw i64 %indvars.iv303 to i32
  store i32 %i.qo, ptr %i.qn, align 4, !tbaa !110
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %exitcond307.not = icmp eq i64 %indvars.iv.next304, %i.pw
  br i1 %exitcond307.not, label %._crit_edge269, label %scalar.ph, !llvm.loop !672

.critedge183:                                     ; preds = %bb.ac, %bb.t, %bb.x, %bb.aj
  %.sroa.14.0369 = phi ptr [ %.sroa.14.0366, %bb.ac ], [ %.sroa.14.0376, %bb.t ], [ %.sroa.14.0366, %bb.x ], [ %.sroa.14.0366, %bb.aj ]
  %.sroa.0.1363 = phi ptr [ %.sroa.0.1364, %bb.ac ], [ %.sroa.0.1375, %bb.t ], [ %.sroa.0.1364, %bb.x ], [ %.sroa.0.1364, %bb.aj ] ; 3 uses
  %.not.i.i.i206 = icmp eq ptr %.sroa.0.1363, null
  br i1 %.not.i.i.i206, label %_ZNSt6vectorI17llama_kv_cell_extSaIS0_EED2Ev.exit207, label %bb.ca

bb.ca:                                            ; preds = %.critedge183
  %i.qp = ptrtoint ptr %.sroa.14.0369 to i64
  %i.qq = ptrtoint ptr %.sroa.0.1363 to i64
  %i.qr = sub i64 %i.qp, %i.qq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1363, i64 noundef %i.qr) #31
  br label %_ZNSt6vectorI17llama_kv_cell_extSaIS0_EED2Ev.exit207

_ZNSt6vectorI17llama_kv_cell_extSaIS0_EED2Ev.exit207: ; preds = %.critedge183, %bb.ca
  %i.qs = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !108 ; 8 uses
  %.not.i.i.i208 = icmp eq ptr %i.qt, null
  br i1 %.not.i.i.i208, label %_ZN12llama_ubatchD2Ev.exit212, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorI17llama_kv_cell_extSaIS0_EED2Ev.exit207
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8 ; 4 uses
  %i.qv = load atomic i64, ptr %i.qu acquire, align 8 ; 2 uses
  %i.qw = icmp eq i64 %i.qv, 4294967297
  %i.qx = trunc i64 %i.qv to i32                  ; 2 uses
  br i1 %i.qw, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.qu, align 8, !tbaa !112
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qt, i64 12
  store i32 0, ptr %i.qy, align 4, !tbaa !113
  %i.qz = load ptr, ptr %i.qt, align 8, !tbaa !54
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  %i.rb = load ptr, ptr %i.ra, align 8
  call void %i.rb(ptr noundef nonnull align 8 dereferenceable(16) %i.qt) #30, !inline_history !21
  %i.rc = load ptr, ptr %i.qt, align 8, !tbaa !54
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 24
  %i.re = load ptr, ptr %i.rd, align 8
  call void %i.re(ptr noundef nonnull align 8 dereferenceable(16) %i.qt) #30, !inline_history !21
  br label %_ZN12llama_ubatchD2Ev.exit212

bb.cd:                                            ; preds = %bb.cb
  %i.rf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !109
  %.not.i.i.i.i209 = icmp eq i8 %i.rf, 0
  br i1 %.not.i.i.i.i209, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.rg = add nsw i32 %i.qx, -1
  store i32 %i.rg, ptr %i.qu, align 8, !tbaa !110
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i210

bb.cf:                                            ; preds = %bb.cd
  %i.rh = atomicrmw volatile add ptr %i.qu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i210

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i210: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i.i211 = phi i32 [ %i.qx, %bb.ce ], [ %i.rh, %bb.cf ]
  %i.ri = icmp eq i32 %.0.i.i.i.i.i211, 1
  br i1 %i.ri, label %bb.cg, label %_ZN12llama_ubatchD2Ev.exit212, !prof !193

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i210
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qt) #30
  br label %_ZN12llama_ubatchD2Ev.exit212

_ZN12llama_ubatchD2Ev.exit212:                    ; preds = %_ZNSt6vectorI17llama_kv_cell_extSaIS0_EED2Ev.exit207, %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i210, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @_ZN18llama_batch_allocrD2Ev(ptr noundef nonnull align 8 dead_on_return(444) dereferenceable(444) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.ch

bb.ch:                                            ; preds = %bb.bp, %._crit_edge269, %_ZN12llama_ubatchD2Ev.exit, %_ZN12llama_ubatchD2Ev.exit212, %bb.bg, %bb.bc
  %.13 = phi i1 [ false, %bb.bp ], [ false, %_ZN12llama_ubatchD2Ev.exit212 ], [ false, %bb.bc ], [ false, %bb.bg ], [ true, %_ZN12llama_ubatchD2Ev.exit ], [ true, %._crit_edge269 ]
  ret i1 %.13
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS_9slot_infoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !117, !nonnull !118, !align !119
  %i.l = zext i32 %2 to i64                       ; 4 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !123
  %i.n = getelementptr inbounds nuw [12440 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.loopexit332, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !343
  %i.q = zext i32 %3 to i64                       ; 2 uses
  br label %.preheader331

.preheader331:                                    ; preds = %bb.b, %_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE9push_backEOS6_.exit
  %.0165429 = phi i32 [ 0, %bb.b ], [ %.0164.lcssa, %_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE9push_backEOS6_.exit ] ; 2 uses
  %.sroa.18.0428 = phi ptr [ null, %bb.b ], [ %.sroa.18.3, %_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE9push_backEOS6_.exit ] ; 6 uses
  %.sroa.11.0427 = phi ptr [ null, %bb.b ], [ %.sroa.11.2, %_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE9push_backEOS6_.exit ] ; 3 uses
  %.sroa.0289.0426 = phi ptr [ null, %bb.b ], [ %.sroa.0289.3, %_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE9push_backEOS6_.exit ] ; 8 uses
  %i.r = zext i32 %.0165429 to i64                ; 3 uses
  %i.s = add nuw i32 %.0165429, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %3, i32 %i.s) ; 2 uses
  %i.t = add i32 %umax, -1
  %.pre.pre = load ptr, ptr %i.p, align 8, !tbaa !120 ; 4 uses
  %indvars.iv.next788 = add nuw nsw i64 %i.r, 1   ; 2 uses
  %i.u = icmp samesign ult i64 %indvars.iv.next788, %i.q
  br i1 %i.u, label %.lr.ph791, label %..critedge_crit_edge

bb.c:                                             ; preds = %.lr.ph791
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next790, 1 ; 2 uses
  %i.v = icmp samesign ult i64 %indvars.iv.next, %i.q
  br i1 %i.v, label %.lr.ph791, label %..critedge_crit_edge, !llvm.loop !673

..critedge_crit_edge:                             ; preds = %bb.c, %.preheader331
  %.phi.trans.insert = zext i32 %i.t to i64
  %.phi.trans.insert551 = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre, i64 %.phi.trans.insert
  %.pre552.a = load i32, ptr %.phi.trans.insert551, align 4, !tbaa !110
  %.pre554 = add i32 %.pre552.a, 1
  br label %.critedge

.lr.ph791:                                        ; preds = %.preheader331, %bb.c
  %indvars.iv.next790 = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.next788, %.preheader331 ] ; 4 uses
  %indvars.iv789 = phi i64 [ %indvars.iv.next790, %bb.c ], [ %i.r, %.preheader331 ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre, i64 %indvars.iv.next790
  %i.x = load i32, ptr %i.w, align 4, !tbaa !110
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre, i64 %indvars.iv789
  %i.z = load i32, ptr %i.y, align 4, !tbaa !110
  %i.aa = add i32 %i.z, 1                         ; 2 uses
  %i.ab = icmp eq i32 %i.x, %i.aa
  br i1 %i.ab, label %bb.c, label %.critedge.loopexit, !llvm.loop !673

.critedge.loopexit:                               ; preds = %.lr.ph791
  %i.ac = trunc nuw i64 %indvars.iv.next790 to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %..critedge_crit_edge
  %.pre-phi555 = phi i32 [ %.pre554, %..critedge_crit_edge ], [ %i.aa, %.critedge.loopexit ]
  %.0164.lcssa = phi i32 [ %umax, %..critedge_crit_edge ], [ %i.ac, %.critedge.loopexit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre, i64 %i.r
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !110
  %.sroa.5.0.insert.ext = zext i32 %.pre-phi555 to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0288.0.insert.ext = zext i32 %i.ae to i64
  %.sroa.0288.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0288.0.insert.ext ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.11.0427, %.sroa.18.0428
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge
  store i64 %.sroa.0288.0.insert.insert, ptr %.sroa.11.0427, align 4
  br label %_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE9push_backEOS6_.exit

bb.e:                                             ; preds = %.critedge
  %i.af = ptrtoint ptr %.sroa.18.0428 to i64
  %i.ag = ptrtoint ptr %.sroa.0289.0426 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 6 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.f, label %_ZNKSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #29
          to label %.noexc unwind label %.loopexit.split-lp334

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %i.ak = icmp eq ptr %.sroa.18.0428, %.sroa.0289.0426
  %.sroa.speculated.i.i.i.i = select i1 %i.ak, i64 1, i64 %i.aj
  %i.al = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aj ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.aj
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #28
          to label %.noexc268 unwind label %.loopexit333 ; 4 uses

.noexc268:                                        ; preds = %_ZNKSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ah ; 2 uses
  store i64 %.sroa.0288.0.insert.insert, ptr %i.ar, align 4
  %i.as = icmp sgt i64 %i.ah, 0
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit20.i.i.i

bb.g:                                             ; preds = %.noexc268
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aq, ptr align 4 %.sroa.0289.0426, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit20.i.i.i

_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit20.i.i.i: ; preds = %bb.g, %.noexc268
  %.not.i21.i.i.i = icmp eq ptr %.sroa.0289.0426, null
  br i1 %.not.i21.i.i.i, label %_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit20.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0289.0426, i64 noundef %i.ah) #31
  br label %_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit20.i.i.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  br label %_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.d
  %.sroa.0289.3 = phi ptr [ %i.aq, %_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %.sroa.0289.0426, %bb.d ] ; 2 uses
  %.pn = phi ptr [ %i.ar, %_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %.sroa.11.0427, %bb.d ]
  %.sroa.18.3 = phi ptr [ %i.at, %_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %.sroa.18.0428, %bb.d ] ; 2 uses
  %.sroa.11.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.au = icmp ult i32 %.0164.lcssa, %3
  br i1 %i.au, label %.preheader331, label %.loopexit332, !llvm.loop !674

.loopexit333:                                     ; preds = %_ZNKSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit335 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit.split-lp334:                            ; preds = %bb.f
  %lpad.loopexit.split-lp336 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit332:                                     ; preds = %_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE9push_backEOS6_.exit, %bb.a
  %.sroa.0289.1 = phi ptr [ null, %bb.a ], [ %.sroa.0289.3, %_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE9push_backEOS6_.exit ] ; 10 uses
  %.sroa.11.1 = phi ptr [ null, %bb.a ], [ %.sroa.11.2, %_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE9push_backEOS6_.exit ] ; 6 uses
  %.sroa.18.1 = phi ptr [ null, %bb.a ], [ %.sroa.18.3, %_ZNSt6vectorIZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS0_9slot_infoEE8cell_runSaIS6_EE9push_backEOS6_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.av = load ptr, ptr %1, align 8, !tbaa !54
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 4)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %.loopexit332
  %i.ay = load ptr, ptr %1, align 8, !tbaa !54
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 4)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bb = load i32, ptr %i.b, align 4, !tbaa !110 ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !173 ; 3 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !158 ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 72                ; 2 uses
  %.not204 = icmp eq i64 %i.bk, %i.bc
  br i1 %.not204, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = trunc i64 %i.bk to i32
  br label %.invoke

bb.l:                                             ; preds = %.invoke, %bb.o, %bb.i, %.loopexit332
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.m:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !125
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !126
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = lshr exact i64 %i.bt, 2
  %i.bv = trunc i64 %i.bu to i32                  ; 2 uses
  %i.bw = icmp ugt i32 %3, %i.bv
  br i1 %i.bw, label %.invoke, label %bb.n

.invoke:                                          ; preds = %bb.m, %bb.k
  %i.bx = phi ptr [ @.str.78, %bb.k ], [ @.str.79, %bb.m ]
  %i.by = phi i32 [ %i.bb, %bb.k ], [ %3, %bb.m ]
  %i.bz = phi i32 [ %i.bl, %bb.k ], [ %i.bv, %bb.m ]
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 4, ptr noundef nonnull %i.bx, ptr noundef nonnull @__func__._ZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS_9slot_infoE, i32 noundef %i.by, i32 noundef %i.bz)
          to label %.critedge246 unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !96, !range !200, !noundef !118 ; 2 uses
  %i.cc = load i32, ptr %i.a, align 4, !tbaa !110
  %i.cd = icmp ne i32 %i.cc, 0
  %i.ce = zext i1 %i.cd to i8
  %.not205 = icmp eq i8 %i.cb, %i.ce
  br i1 %.not205, label %.preheader325, label %bb.o

.preheader325:                                    ; preds = %bb.n
  %.not305432 = icmp eq ptr %i.bg, %i.bf
  br i1 %.not305432, label %.critedge244, label %.lr.ph434

.lr.ph434:                                        ; preds = %.preheader325
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not310430 = icmp eq ptr %.sroa.0289.1, %.sroa.11.1
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 4, ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__._ZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS_9slot_infoE)
          to label %.critedge246 unwind label %bb.l

bb.p:                                             ; preds = %.lr.ph434, %._crit_edge
  %.sroa.0285.0433 = phi ptr [ %i.bg, %.lr.ph434 ], [ %i.dq, %._crit_edge ] ; 3 uses
  %i.cg = load i32, ptr %.sroa.0285.0433, align 8, !tbaa !176 ; 3 uses
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !306, !nonnull !118, !align !119
  %i.ci = invoke noundef i32 @_ZNK13llama_hparams12n_embd_k_gqaEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.ch, i32 noundef %i.cg)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0285.0433, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !194
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.l
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !191 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.cn = load ptr, ptr %1, align 8, !tbaa !54
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  invoke void %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 4)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.cq = load i32, ptr %i.cm, align 8, !tbaa !271 ; 2 uses
  %i.cr = load i32, ptr %i.c, align 4, !tbaa !110 ; 2 uses
  %.not206 = icmp eq i32 %i.cq, %i.cr
  br i1 %.not206, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 4, ptr noundef nonnull @.str.81, ptr noundef nonnull @__func__._ZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS_9slot_infoE, i32 noundef %i.cq, i32 noundef %i.cr, i32 noundef %i.cg)
          to label %.critedge242 unwind label %bb.v

bb.t:                                             ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.u:                                             ; preds = %bb.q
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.v:                                             ; preds = %bb.s
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.w:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.cv = load ptr, ptr %1, align 8, !tbaa !54
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  invoke void %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 8)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cy = load i32, ptr %i.cm, align 8, !tbaa !271
  %i.cz = zext i32 %i.ci to i64
  %i.da = invoke i64 @ggml_row_size(i32 noundef %i.cy, i64 noundef %i.cz)
          to label %bb.y unwind label %.loopexit326 ; 4 uses

bb.y:                                             ; preds = %bb.x
  %i.db = load i64, ptr %i.d, align 8, !tbaa !180 ; 2 uses
  %.not207 = icmp eq i64 %i.da, %i.db
  br i1 %.not207, label %.preheader324, label %bb.z

.preheader324:                                    ; preds = %bb.y
  br i1 %.not310430, label %._crit_edge, label %.lr.ph

bb.z:                                             ; preds = %bb.y
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 4, ptr noundef nonnull @.str.82, ptr noundef nonnull @__func__._ZN14llama_kv_cache15state_read_dataER15llama_io_read_ijjRKNS_9slot_infoE, i64 noundef %i.da, i64 noundef %i.db, i32 noundef %i.cg)
          to label %.thread unwind label %.loopexit.split-lp327

.thread:                                          ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %.critedge246

bb.aa:                                            ; preds = %bb.w
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad
end_hunk_2
