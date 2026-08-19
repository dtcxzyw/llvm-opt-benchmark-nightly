inline.NumInlined: 23
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4ojph5local28ojph_encode_codeblock_avx512EPjjjjjjS1_PNS_21mem_elastic_allocatorERPNS_11coded_listsE:bb.a
  store i8 %i.ru, ptr %i.rz, align 1, !tbaa !37
  %i.sa = load ptr, ptr %10, align 8, !tbaa !31
  %i.sb = load i32, ptr %i.s, align 8, !tbaa !35
  %i.sc = zext i32 %i.sb to i64
  %i.sd = sub nsw i64 0, %i.sc
  %i.se = getelementptr inbounds i8, ptr %i.sa, i64 %i.sd
  store i8 %i.qw, ptr %i.se, align 1, !tbaa !37
  %i.sf = load i32, ptr %i.s, align 8, !tbaa !35
  %i.sg = add i32 %i.sf, 1
  store i32 %i.sg, ptr %i.s, align 8, !tbaa !35
  br label %_ZN4ojph5localL17terminate_mel_vlcEPNS0_10mel_structEPNS0_17vlc_struct_avx512E.exit

_ZN4ojph5localL17terminate_mel_vlcEPNS0_10mel_structEPNS0_17vlc_struct_avx512E.exit: ; preds = %bb.an, %bb.ar, %bb.at
  %i.sh = load i32, ptr %i.k, align 8, !tbaa !54
  %i.si = load i32, ptr %i.s, align 8, !tbaa !35
  %i.sj = add i32 %i.sh, %.sroa.9165.2
  %i.sk = add i32 %i.sj, %i.si                    ; 2 uses
  store i32 %i.sk, ptr %6, align 4, !tbaa !8
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef %i.sk, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %i.sl = load ptr, ptr %8, align 8, !tbaa !59
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !61
  %i.so = zext i32 %.sroa.9165.2 to i64           ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sn, ptr nonnull align 16 %i.c, i64 %i.so, i1 false)
  %i.sp = load ptr, ptr %8, align 8, !tbaa !59
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !61
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.so
  %i.st = load ptr, ptr %9, align 8, !tbaa !24
  %i.su = load i32, ptr %i.k, align 8, !tbaa !54
  %i.sv = zext i32 %i.su to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ss, ptr align 1 %i.st, i64 %i.sv, i1 false)
  %i.sw = load ptr, ptr %8, align 8, !tbaa !59
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !61
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 %i.so
  %i.ta = load i32, ptr %i.k, align 8, !tbaa !54
  %i.tb = zext i32 %i.ta to i64
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.tb
  %i.td = load ptr, ptr %10, align 8, !tbaa !31
  %i.te = load i32, ptr %i.s, align 8, !tbaa !35
  %i.tf = zext i32 %i.te to i64                   ; 2 uses
  %i.tg = sub nsw i64 0, %i.tf
  %i.th = getelementptr inbounds i8, ptr %i.td, i64 %i.tg
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tc, ptr nonnull align 1 %i.ti, i64 %i.tf, i1 false)
  %i.tj = load i32, ptr %i.k, align 8, !tbaa !54
  %i.tk = load i32, ptr %i.s, align 8, !tbaa !35
  %i.tl = add i32 %i.tk, %i.tj                    ; 2 uses
  %i.tm = lshr i32 %i.tl, 4
  %i.tn = trunc i32 %i.tm to i8
  %i.to = load ptr, ptr %8, align 8, !tbaa !59
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !61
  %i.tr = load i32, ptr %6, align 4, !tbaa !8
  %i.ts = add i32 %i.tr, -1
  %i.tt = zext i32 %i.ts to i64
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tq, i64 %i.tt
  store i8 %i.tn, ptr %i.tu, align 1, !tbaa !37
  %i.tv = load ptr, ptr %8, align 8, !tbaa !59
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !61
  %i.ty = load i32, ptr %6, align 4, !tbaa !8
  %i.tz = add i32 %i.ty, -2
  %i.ua = zext i32 %i.tz to i64
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.ua ; 2 uses
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !37
  %i.ud = and i8 %i.uc, -16
  store i8 %i.ud, ptr %i.ub, align 1, !tbaa !37
  %i.ue = load ptr, ptr %8, align 8, !tbaa !59
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !61
  %i.uh = load i32, ptr %6, align 4, !tbaa !8
  %i.ui = add i32 %i.uh, -2
  %i.uj = zext i32 %i.ui to i64
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.uj ; 2 uses
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !37
  %i.um = trunc i32 %i.tl to i8
  %i.un = and i8 %i.um, 15
  %i.uo = or i8 %i.ul, %i.un
  store i8 %i.uo, ptr %i.uk, align 1, !tbaa !37
  %i.up = load i32, ptr %6, align 4, !tbaa !8
  %i.uq = load ptr, ptr %8, align 8, !tbaa !59
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 12 ; 2 uses
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !63
  %i.ut = sub i32 %i.us, %i.up
  store i32 %i.ut, ptr %i.ur, align 4, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef <8 x i64> @_ZN4ojph5localL8proc_cq1EjPDv8_xRS1_S1_(i32 %0, ptr nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(64) %2, <8 x i64> %3) unnamed_addr #4 {
bb.a:
  %i.a = load <8 x i64>, ptr %2, align 64, !tbaa !37 ; 2 uses
  %i.b = bitcast <8 x i64> %i.a to <16 x i32>
  %i.c = lshr <16 x i32> %i.b, splat (i32 1)
  %i.d = bitcast <16 x i32> %i.c to <8 x i64>
  %i.e = and <8 x i64> %i.a, splat (i64 4294967297)
  %i.f = or <8 x i64> %i.e, %i.d
  ret <8 x i64> %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN4ojph5localL16proc_mel_encode1EPNS0_10mel_structERDv8_xS4_S3_jS3_(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(64) %2, <8 x i64> noundef %3, i32 noundef %4, <8 x i64> noundef %5) unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %4, 1                           ; 2 uses
  %i.b = sub nsw i32 16, %i.a                     ; 2 uses
  %.not37 = icmp eq i32 %i.a, 16
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = bitcast <8 x i64> %3 to <16 x i32>       ; 3 uses
  %i.d = icmp sgt <16 x i32> %i.c, zeroinitializer
  %i.e = bitcast <8 x i64> %5 to <16 x i32>
  %i.f = tail call <16 x i32> @llvm.x86.avx512.permvar.si.512(<16 x i32> %i.c, <16 x i32> %i.e) ; 2 uses
  %i.g = icmp sgt <16 x i32> %i.f, zeroinitializer
  %i.h = and <16 x i1> %i.d, %i.g
  %i.i = bitcast <16 x i1> %i.h to i16
  %i.j = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.c, <16 x i32> %i.f)
  %i.k = icmp sgt <16 x i32> %i.j, splat (i32 2)
  %i.l = bitcast <16 x i1> %i.k to i16
  %i.m = load <16 x i32>, ptr %2, align 64, !tbaa !37
  %i.n = icmp ne <16 x i32> %i.m, zeroinitializer
  %i.o = bitcast <16 x i1> %i.n to i16
  %i.p = load <16 x i32>, ptr %1, align 64, !tbaa !37
  %i.q = icmp eq <16 x i32> %i.p, zeroinitializer
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  %i.t = zext i16 %i.o to i32                     ; 2 uses
  %i.u = zext i16 %i.i to i32
  %i.v = zext i16 %i.l to i32
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.036 = phi i32 [ 0, %.lr.ph ], [ %i.aj, %bb.i ] ; 4 uses
  %i.w = shl nuw i32 1, %.036                     ; 4 uses
  %i.x = and i32 %i.w, %i.s
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = and i32 %i.w, %i.t
  %i.z = icmp ne i32 %i.y, 0
  tail call fastcc void @_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb(ptr noundef %0, i1 noundef zeroext %i.z)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aa = or disjoint i32 %.036, 1
  %i.ab = icmp ult i32 %i.aa, %i.b
  br i1 %i.ab, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ac = shl nuw i32 2, %.036                    ; 2 uses
  %i.ad = and i32 %i.ac, %i.s
  %.not34 = icmp eq i32 %i.ad, 0
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = and i32 %i.ac, %i.t
  %i.af = icmp ne i32 %i.ae, 0
  tail call fastcc void @_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb(ptr noundef %0, i1 noundef zeroext %i.af)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.ag = and i32 %i.w, %i.u
  %.not35 = icmp eq i32 %i.ag, 0
  br i1 %.not35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = and i32 %i.w, %i.v
  %i.ai = icmp ne i32 %i.ah, 0
  tail call fastcc void @_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb(ptr noundef %0, i1 noundef zeroext %i.ai)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = add i32 %.036, 2                        ; 2 uses
  %i.ak = icmp ult i32 %i.aj, %i.b
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN4ojph5localL16proc_vlc_encode1EPNS0_17vlc_struct_avx512EPjS3_j(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = lshr i32 %3, 1                           ; 2 uses
  %.not112 = icmp eq i32 %i.a, 16
  br i1 %.not112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %4 = sub nsw i32 16, %i.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %5 = zext i32 %4 to i64                         ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4ojph5localL10vlc_encodeEPNS0_17vlc_struct_avx512Eji.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4ojph5localL10vlc_encodeEPNS0_17vlc_struct_avx512Eji.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4ojph5localL10vlc_encodeEPNS0_17vlc_struct_avx512Eji.exit ] ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8    ; 2 uses
  %i.h = lshr i32 %i.g, 4                         ; 2 uses
  %i.i = and i32 %i.g, 7                          ; 3 uses
  %6 = or disjoint i64 %indvars.iv, 1             ; 3 uses
  %i.j = icmp samesign ult i64 %6, %5
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %6
  %i.l = load i32, ptr %i.k, align 4, !tbaa !8    ; 2 uses
  %i.m = lshr i32 %i.l, 4
  %i.n = shl i32 %i.m, %i.i
  %i.o = or i32 %i.n, %i.h
  %i.p = and i32 %i.l, 7
  %i.q = add nuw nsw i32 %i.p, %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0102 = phi i32 [ %i.o, %bb.c ], [ %i.h, %bb.b ]
  %.0 = phi i32 [ %i.q, %bb.c ], [ %i.i, %bb.b ]  ; 6 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !8    ; 4 uses
  %i.t = icmp ugt i32 %i.s, 2
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %6
  %i.v = load i32, ptr %i.u, align 4, !tbaa !8    ; 5 uses
  br i1 %i.t, label %bb.e, label %._crit_edge114

._crit_edge114:                                   ; preds = %bb.d
  %i.w = zext i32 %i.v to i64
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.x = icmp ugt i32 %i.v, 2
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = add i32 %i.s, -2
  %i.z = zext i32 %i.y to i64                     ; 4 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_preE, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !8
  %i.ac = shl i32 %i.ab, %.0
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_pre_lenE, i64 %i.z
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8
  %i.af = add nsw i32 %i.ae, %.0                  ; 2 uses
  %i.ag = add i32 %i.v, -2
  %i.ah = zext i32 %i.ag to i64                   ; 4 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_preE, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8
  %i.ak = shl i32 %i.aj, %i.af
  %i.al = or i32 %i.ak, %i.ac
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_pre_lenE, i64 %i.ah
  %i.an = load i32, ptr %i.am, align 4, !tbaa !8
  %i.ao = add nsw i32 %i.an, %i.af                ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_sufE, i64 %i.z
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.ar = shl i32 %i.aq, %i.ao
  %i.as = or i32 %i.al, %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_suf_lenE, i64 %i.z
  %i.au = load i32, ptr %i.at, align 4, !tbaa !8
  %i.av = add nsw i32 %i.au, %i.ao                ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_sufE, i64 %i.ah
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !8
  %i.ay = shl i32 %i.ax, %i.av
  %i.az = or i32 %i.as, %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_suf_lenE, i64 %i.ah
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !8
  %i.bc = add nsw i32 %i.bb, %i.av
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = zext i32 %i.s to i64                    ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_preE, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !8
  %i.bg = shl i32 %i.bf, %.0
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_pre_lenE, i64 %i.bd
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !8
  %i.bj = add nsw i32 %i.bi, %.0                  ; 2 uses
  %i.bk = add nsw i32 %i.v, -1
  %i.bl = shl nuw i32 %i.bk, %i.bj
  %i.bm = or i32 %i.bl, %i.bg
  %i.bn = add nsw i32 %i.bj, 1                    ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_sufE, i64 %i.bd
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !8
  %i.bq = shl i32 %i.bp, %i.bn
  %i.br = or i32 %i.bm, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_suf_lenE, i64 %i.bd
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !8
  %i.bu = add nsw i32 %i.bn, %i.bt
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge114, %bb.g
  %i.bv = phi i64 [ %i.w, %._crit_edge114 ], [ 0, %bb.g ] ; 4 uses
  %i.bw = zext i32 %i.s to i64                    ; 4 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_preE, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !8
  %i.bz = shl i32 %i.by, %.0
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_pre_lenE, i64 %i.bw
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !8
  %i.cc = add nsw i32 %i.cb, %.0                  ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_preE, i64 %i.bv
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !8
  %i.cf = shl i32 %i.ce, %i.cc
  %i.cg = or i32 %i.cf, %i.bz
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_pre_lenE, i64 %i.bv
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !8
  %i.cj = add nsw i32 %i.ci, %i.cc                ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_sufE, i64 %i.bw
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !8
  %i.cm = shl i32 %i.cl, %i.cj
  %i.cn = or i32 %i.cg, %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_suf_lenE, i64 %i.bw
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !8
  %i.cq = add nsw i32 %i.cp, %i.cj                ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_sufE, i64 %i.bv
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !8
  %i.ct = shl i32 %i.cs, %i.cq
  %i.cu = or i32 %i.cn, %i.ct
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_suf_lenE, i64 %i.bv
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !8
  %i.cx = add nsw i32 %i.cw, %i.cq
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  %.pn = phi i32 [ %i.az, %bb.f ], [ %i.br, %bb.h ], [ %i.cu, %bb.i ]
  %.1 = phi i32 [ %i.bc, %bb.f ], [ %i.bu, %bb.h ], [ %i.cx, %bb.i ]
  %.1103 = or i32 %.pn, %.0102
  %i.cy = zext i32 %.1103 to i64
  %i.cz = load i32, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = shl i64 %i.cy, %i.da
  %i.dc = load i64, ptr %i.c, align 8, !tbaa !39
  %i.dd = or i64 %i.db, %i.dc                     ; 2 uses
  store i64 %i.dd, ptr %i.c, align 8, !tbaa !39
  %i.de = add nsw i32 %i.cz, %.1                  ; 2 uses
  store i32 %i.de, ptr %i.b, align 8, !tbaa !38
  %i.df = icmp sgt i32 %i.de, 7
  br i1 %i.df, label %.lr.ph.i, label %_ZN4ojph5localL10vlc_encodeEPNS0_17vlc_struct_avx512Eji.exit

.lr.ph.i:                                         ; preds = %bb.j
  %.pre.i = load i8, ptr %i.d, align 8, !tbaa !40, !range !55
  %i.dg = trunc nuw i8 %.pre.i to i1
  br label %bb.k

bb.k:                                             ; preds = %bb.p, %.lr.ph.i
  %i.dh = phi i64 [ %i.dd, %.lr.ph.i ], [ %i.ea, %bb.p ] ; 3 uses
  %i.di = phi i1 [ %i.dg, %.lr.ph.i ], [ %.sink.shrunk.i, %bb.p ]
  %i.dj = trunc i64 %i.dh to i8                   ; 3 uses
  br i1 %i.di, label %bb.l, label %bb.o, !prof !65

bb.l:                                             ; preds = %bb.k
  %i.dk = and i8 %i.dj, 127
  %.not.i = icmp eq i8 %i.dk, 127
  %i.dl = load ptr, ptr %0, align 8, !tbaa !31
  %i.dm = load i32, ptr %i.e, align 8, !tbaa !35
  %i.dn = zext i32 %i.dm to i64
  %i.do = sub nsw i64 0, %i.dn
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 %i.do ; 2 uses
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !65

bb.m:                                             ; preds = %bb.l
  store i8 %i.dj, ptr %i.dp, align 1, !tbaa !37
  %i.dq = and i64 %i.dh, 240
  %i.dr = icmp samesign ugt i64 %i.dq, 143
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  store i8 127, ptr %i.dp, align 1, !tbaa !37
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.ds = load ptr, ptr %0, align 8, !tbaa !31
  %i.dt = load i32, ptr %i.e, align 8, !tbaa !35
  %i.du = zext i32 %i.dt to i64
  %i.dv = sub nsw i64 0, %i.du
  %i.dw = getelementptr inbounds i8, ptr %i.ds, i64 %i.dv
  store i8 %i.dj, ptr %i.dw, align 1, !tbaa !37
  %i.dx = and i64 %i.dh, 240
  %i.dy = icmp samesign ugt i64 %i.dx, 143
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.sink.shrunk.i = phi i1 [ %i.dr, %bb.m ], [ false, %bb.n ], [ %i.dy, %bb.o ] ; 2 uses
  %.sink35.i = phi i64 [ 8, %bb.m ], [ 7, %bb.n ], [ 8, %bb.o ]
  %.sink33.i = phi i32 [ -8, %bb.m ], [ -7, %bb.n ], [ -8, %bb.o ]
  %.sink.i = zext i1 %.sink.shrunk.i to i8
  store i8 %.sink.i, ptr %i.d, align 8, !tbaa !40
  %i.dz = load i64, ptr %i.c, align 8, !tbaa !39
  %i.ea = lshr i64 %i.dz, %.sink35.i              ; 2 uses
  store i64 %i.ea, ptr %i.c, align 8, !tbaa !39
  %i.eb = load i32, ptr %i.b, align 8, !tbaa !38
  %i.ec = add nsw i32 %i.eb, %.sink33.i           ; 2 uses
  store i32 %i.ec, ptr %i.b, align 8, !tbaa !38
  %i.ed = load i32, ptr %i.e, align 8, !tbaa !35
  %i.ee = add i32 %i.ed, 1
  store i32 %i.ee, ptr %i.e, align 8, !tbaa !35
  %i.ef = icmp sgt i32 %i.ec, 7
  br i1 %i.ef, label %bb.k, label %_ZN4ojph5localL10vlc_encodeEPNS0_17vlc_struct_avx512Eji.exit, !llvm.loop !66

_ZN4ojph5localL10vlc_encodeEPNS0_17vlc_struct_avx512Eji.exit: ; preds = %bb.p, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.eg = icmp samesign ult i64 %indvars.iv.next, %5
  br i1 %i.eg, label %bb.b, label %._crit_edge, !llvm.loop !67
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef <8 x i64> @_ZN4ojph5localL8proc_cq2EjPDv8_xRS1_S1_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(64) %2, <8 x i64> noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %i.a
  %i.c = load <16 x i32>, ptr %i.b, align 64, !tbaa !37
  %i.d = bitcast <8 x i64> %3 to <16 x i32>       ; 4 uses
  %i.e = tail call <16 x i32> @llvm.x86.avx512.permvar.si.512(<16 x i32> %i.c, <16 x i32> %i.d) ; 2 uses
  %i.f = add i32 %0, 1
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %i.g
  %i.i = load <16 x i32>, ptr %i.h, align 64, !tbaa !37
  %i.j = tail call <16 x i32> @llvm.x86.avx512.permvar.si.512(<16 x i32> %i.i, <16 x i32> %i.d) ; 2 uses
  %i.k = tail call <16 x i32> @llvm.x86.avx512.permvar.si.512(<16 x i32> %i.e, <16 x i32> %i.d)
  %i.l = tail call <16 x i32> @llvm.x86.avx512.permvar.si.512(<16 x i32> %i.j, <16 x i32> %i.d)
  %i.m = shufflevector <16 x i32> %i.k, <16 x i32> %i.l, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 30, i32 31>
  %i.n = shl <16 x i32> %i.m, splat (i32 2)
  %i.o = shufflevector <16 x i32> %i.e, <16 x i32> %i.j, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 31>
  %i.p = add <16 x i32> %i.n, %i.o
  %i.q = load <16 x i32>, ptr %2, align 64, !tbaa !37 ; 2 uses
  %i.r = lshr <16 x i32> %i.q, splat (i32 1)
  %i.s = lshr <16 x i32> %i.q, splat (i32 2)
  %i.t = or <16 x i32> %i.r, %i.s
  %.inner = and <16 x i32> %i.t, splat (i32 2)
  %.inner23 = or <16 x i32> %.inner, %i.p
  %i.u = bitcast <16 x i32> %.inner23 to <8 x i64>
  ret <8 x i64> %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN4ojph5localL16proc_mel_encode2EPNS0_10mel_structERDv8_xS4_S3_jS3_(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(64) %2, <8 x i64> %3, i32 noundef %4, <8 x i64> %5) unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %4, 1                           ; 2 uses
  %i.b = sub nsw i32 16, %i.a
  %.not12 = icmp eq i32 %i.a, 16
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load <16 x i32>, ptr %2, align 64, !tbaa !37
  %i.d = icmp ne <16 x i32> %i.c, zeroinitializer
  %i.e = bitcast <16 x i1> %i.d to i16
  %i.f = load <16 x i32>, ptr %1, align 64, !tbaa !37
  %i.g = icmp eq <16 x i32> %i.f, zeroinitializer
  %i.h = bitcast <16 x i1> %i.g to i16
  %i.i = zext i16 %i.h to i32
  %i.j = zext i16 %i.e to i32
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.011 = phi i32 [ 0, %.lr.ph ], [ %i.o, %bb.d ] ; 2 uses
  %i.k = shl nuw i32 1, %.011                     ; 2 uses
  %i.l = and i32 %i.k, %i.i
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = and i32 %i.k, %i.j
  %i.n = icmp ne i32 %i.m, 0
  tail call fastcc void @_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb(ptr noundef %0, i1 noundef zeroext %i.n)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = add nuw i32 %.011, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !68
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN4ojph5localL16proc_vlc_encode2EPNS0_17vlc_struct_avx512EPjS3_j(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = lshr i32 %3, 1                           ; 2 uses
  %.not = icmp eq i32 %i.a, 16
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %4 = sub nsw i32 16, %i.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %5 = zext i32 %4 to i64                         ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4ojph5localL10vlc_encodeEPNS0_17vlc_struct_avx512Eji.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4ojph5localL10vlc_encodeEPNS0_17vlc_struct_avx512Eji.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4ojph5localL10vlc_encodeEPNS0_17vlc_struct_avx512Eji.exit ] ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8    ; 2 uses
  %i.h = lshr i32 %i.g, 4                         ; 2 uses
  %i.i = and i32 %i.g, 7                          ; 3 uses
  %6 = or disjoint i64 %indvars.iv, 1             ; 3 uses
  %i.j = icmp samesign ult i64 %6, %5
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %6
  %i.l = load i32, ptr %i.k, align 4, !tbaa !8    ; 2 uses
  %i.m = lshr i32 %i.l, 4
  %i.n = shl i32 %i.m, %i.i
  %i.o = or i32 %i.n, %i.h
  %i.p = and i32 %i.l, 7
  %i.q = add nuw nsw i32 %i.p, %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.047 = phi i32 [ %i.o, %bb.c ], [ %i.h, %bb.b ]
  %.0 = phi i32 [ %i.q, %bb.c ], [ %i.i, %bb.b ]  ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !8
  %i.t = zext i32 %i.s to i64                     ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_preE, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !8
  %i.w = shl i32 %i.v, %.0
  %i.x = or i32 %i.w, %.047
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_pre_lenE, i64 %i.t
  %i.z = load i32, ptr %i.y, align 4, !tbaa !8
  %i.aa = add nsw i32 %i.z, %.0                   ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %6
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !8
  %i.ad = zext i32 %i.ac to i64                   ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_preE, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.ag = shl i32 %i.af, %i.aa
  %i.ah = or i32 %i.x, %i.ag
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_pre_lenE, i64 %i.ad
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8
  %i.ak = add nsw i32 %i.aj, %i.aa                ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_sufE, i64 %i.t
  %i.am = load i32, ptr %i.al, align 4, !tbaa !8
  %i.an = shl i32 %i.am, %i.ak
  %i.ao = or i32 %i.ah, %i.an
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_suf_lenE, i64 %i.t
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.ar = add nsw i32 %i.aq, %i.ak                ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_sufE, i64 %i.ad
  %i.at = load i32, ptr %i.as, align 4, !tbaa !8
  %i.au = shl i32 %i.at, %i.ar
  %i.av = or i32 %i.ao, %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_suf_lenE, i64 %i.ad
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !8
  %i.ay = add nsw i32 %i.ax, %i.ar
  %i.az = zext i32 %i.av to i64
  %i.ba = load i32, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl i64 %i.az, %i.bb
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !39
  %i.be = or i64 %i.bc, %i.bd                     ; 2 uses
  store i64 %i.be, ptr %i.c, align 8, !tbaa !39
  %i.bf = add nsw i32 %i.ay, %i.ba                ; 2 uses
  store i32 %i.bf, ptr %i.b, align 8, !tbaa !38
  %i.bg = icmp sgt i32 %i.bf, 7
  br i1 %i.bg, label %.lr.ph.i, label %_ZN4ojph5localL10vlc_encodeEPNS0_17vlc_struct_avx512Eji.exit

.lr.ph.i:                                         ; preds = %bb.d
  %.pre.i = load i8, ptr %i.d, align 8, !tbaa !40, !range !55
  %i.bh = trunc nuw i8 %.pre.i to i1
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.bi = phi i64 [ %i.be, %.lr.ph.i ], [ %i.cb, %bb.j ] ; 3 uses
  %i.bj = phi i1 [ %i.bh, %.lr.ph.i ], [ %.sink.shrunk.i, %bb.j ]
  %i.bk = trunc i64 %i.bi to i8                   ; 3 uses
  br i1 %i.bj, label %bb.f, label %bb.i, !prof !65

bb.f:                                             ; preds = %bb.e
  %i.bl = and i8 %i.bk, 127
  %.not.i = icmp eq i8 %i.bl, 127
  %i.bm = load ptr, ptr %0, align 8, !tbaa !31
  %i.bn = load i32, ptr %i.e, align 8, !tbaa !35
  %i.bo = zext i32 %i.bn to i64
  %i.bp = sub nsw i64 0, %i.bo
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 %i.bp ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !65

bb.g:                                             ; preds = %bb.f
  store i8 %i.bk, ptr %i.bq, align 1, !tbaa !37
  %i.br = and i64 %i.bi, 240
  %i.bs = icmp samesign ugt i64 %i.br, 143
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  store i8 127, ptr %i.bq, align 1, !tbaa !37
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.bt = load ptr, ptr %0, align 8, !tbaa !31
  %i.bu = load i32, ptr %i.e, align 8, !tbaa !35
  %i.bv = zext i32 %i.bu to i64
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = getelementptr inbounds i8, ptr %i.bt, i64 %i.bw
  store i8 %i.bk, ptr %i.bx, align 1, !tbaa !37
  %i.by = and i64 %i.bi, 240
  %i.bz = icmp samesign ugt i64 %i.by, 143
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sink.shrunk.i = phi i1 [ %i.bs, %bb.g ], [ false, %bb.h ], [ %i.bz, %bb.i ] ; 2 uses
  %.sink35.i = phi i64 [ 8, %bb.g ], [ 7, %bb.h ], [ 8, %bb.i ]
  %.sink33.i = phi i32 [ -8, %bb.g ], [ -7, %bb.h ], [ -8, %bb.i ]
  %.sink.i = zext i1 %.sink.shrunk.i to i8
  store i8 %.sink.i, ptr %i.d, align 8, !tbaa !40
  %i.ca = load i64, ptr %i.c, align 8, !tbaa !39
  %i.cb = lshr i64 %i.ca, %.sink35.i              ; 2 uses
  store i64 %i.cb, ptr %i.c, align 8, !tbaa !39
  %i.cc = load i32, ptr %i.b, align 8, !tbaa !38
  %i.cd = add nsw i32 %i.cc, %.sink33.i           ; 2 uses
  store i32 %i.cd, ptr %i.b, align 8, !tbaa !38
  %i.ce = load i32, ptr %i.e, align 8, !tbaa !35
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.e, align 8, !tbaa !35
  %i.cg = icmp sgt i32 %i.cd, 7
  br i1 %i.cg, label %bb.e, label %_ZN4ojph5localL10vlc_encodeEPNS0_17vlc_struct_avx512Eji.exit, !llvm.loop !66

_ZN4ojph5localL10vlc_encodeEPNS0_17vlc_struct_avx512Eji.exit: ; preds = %bb.j, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ch = icmp samesign ult i64 %indvars.iv.next, %5
  br i1 %i.ch, label %bb.b, label %._crit_edge, !llvm.loop !69
}

declare void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) unnamed_addr #8 {
bb.a:
  br i1 %1, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30
  %.not = icmp slt i32 %i.c, %i.e
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !52
  %i.h = shl i32 %i.g, 1
  %i.i = or disjoint i32 %i.h, 1                  ; 2 uses
  store i32 %i.i, ptr %i.f, align 4, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !53
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.j, align 8, !tbaa !53
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit

bb.d:                                             ; preds = %bb.c
  %i.n = trunc i32 %i.i to i8
  %i.o = load ptr, ptr %0, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !54   ; 2 uses
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !54
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.s
  store i8 %i.n, ptr %i.t, align 1, !tbaa !37
  %i.u = load i32, ptr %i.f, align 4, !tbaa !52
  %i.v = icmp eq i32 %i.u, 255
  %i.w = select i1 %i.v, i32 7, i32 8
  store i32 %i.w, ptr %i.j, align 8, !tbaa !53
  store i32 0, ptr %i.f, align 4, !tbaa !52
  br label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit

_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit: ; preds = %bb.c, %bb.d
  store i32 0, ptr %i.a, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !29
  %i.z = tail call i32 @llvm.smin.i32(i32 %i.y, i32 11)
  %spec.select = add nsw i32 %i.z, 1              ; 2 uses
  store i32 %spec.select, ptr %i.x, align 4, !tbaa !29
  %i.aa = sext i32 %spec.select to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr @_ZZN4ojph5localL10mel_encodeEPNS0_10mel_structEbE7mel_exp, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !8
  %i.ad = shl nuw i32 1, %i.ac
  store i32 %i.ad, ptr %i.d, align 8, !tbaa !30
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 7 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !52
  %i.ag = shl i32 %i.af, 1                        ; 3 uses
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !53
  %i.aj = add nsw i32 %i.ai, -1                   ; 3 uses
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !53
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.f, label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit25

bb.f:                                             ; preds = %bb.e
  %i.al = trunc i32 %i.ag to i8
  %i.am = load ptr, ptr %0, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !54 ; 2 uses
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !54
  %i.aq = zext i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aq
  store i8 %i.al, ptr %i.ar, align 1, !tbaa !37
  %i.as = load i32, ptr %i.ae, align 4, !tbaa !52
  %i.at = icmp eq i32 %i.as, 255
  %i.au = select i1 %i.at, i32 7, i32 8           ; 2 uses
  store i32 %i.au, ptr %i.ah, align 8, !tbaa !53
  store i32 0, ptr %i.ae, align 4, !tbaa !52
  br label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit25

_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit25: ; preds = %bb.e, %bb.f
  %i.av = phi i32 [ %i.aj, %bb.e ], [ %i.au, %bb.f ]
  %i.aw = phi i32 [ %i.ag, %bb.e ], [ 0, %bb.f ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !29 ; 2 uses
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = add nsw i64 %i.az, -3
  %i.bb = icmp ult i64 %i.ba, 10
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit25
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr @_ZZN4ojph5localL10mel_encodeEPNS0_10mel_structEbE7mel_exp, i64 %i.az
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26
  %i.bg = phi i32 [ %i.av, %.lr.ph ], [ %i.bz, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26 ]
  %i.bh = phi i32 [ %i.aw, %.lr.ph ], [ %i.ca, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26 ]
  %.027 = phi i32 [ %i.bd, %.lr.ph ], [ %i.bj, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26 ] ; 2 uses
  %i.bi = load i32, ptr %i.be, align 8, !tbaa !28
  %i.bj = add nsw i32 %.027, -1                   ; 2 uses
  %i.bk = lshr i32 %i.bi, %i.bj
  %i.bl = and i32 %i.bk, 1
  %i.bm = shl i32 %i.bh, 1
  %i.bn = or disjoint i32 %i.bm, %i.bl            ; 3 uses
  store i32 %i.bn, ptr %i.ae, align 4, !tbaa !52
  %i.bo = add nsw i32 %i.bg, -1                   ; 3 uses
  store i32 %i.bo, ptr %i.ah, align 8, !tbaa !53
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.h, label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26

bb.h:                                             ; preds = %bb.g
  %i.bq = trunc i32 %i.bn to i8
  %i.br = load ptr, ptr %0, align 8, !tbaa !24
  %i.bs = load i32, ptr %i.bf, align 8, !tbaa !54 ; 2 uses
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.bf, align 8, !tbaa !54
  %i.bu = zext i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bu
  store i8 %i.bq, ptr %i.bv, align 1, !tbaa !37
  %i.bw = load i32, ptr %i.ae, align 4, !tbaa !52
  %i.bx = icmp eq i32 %i.bw, 255
  %i.by = select i1 %i.bx, i32 7, i32 8           ; 2 uses
  store i32 %i.by, ptr %i.ah, align 8, !tbaa !53
  store i32 0, ptr %i.ae, align 4, !tbaa !52
  br label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26

_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26: ; preds = %bb.g, %bb.h
  %i.bz = phi i32 [ %i.bo, %bb.g ], [ %i.by, %bb.h ]
  %i.ca = phi i32 [ %i.bn, %bb.g ], [ 0, %bb.h ]
  %i.cb = icmp sgt i32 %.027, 1
  br i1 %i.cb, label %bb.g, label %._crit_edge.loopexit, !llvm.loop !70

._crit_edge.loopexit:                             ; preds = %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26
  %.pre = load i32, ptr %i.ax, align 4, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit25
  %i.cc = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ay, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit25 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.cd, align 8, !tbaa !28
  %i.ce = tail call i32 @llvm.smax.i32(i32 %i.cc, i32 1)
  %spec.select24 = add nsw i32 %i.ce, -1          ; 2 uses
  store i32 %spec.select24, ptr %i.ax, align 4, !tbaa !29
  %i.cf = zext nneg i32 %spec.select24 to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @_ZZN4ojph5localL10mel_encodeEPNS0_10mel_structEbE7mel_exp, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !8
  %i.ci = shl nuw i32 1, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit, %._crit_edge
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smin.v16i32(<16 x i32>, <16 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.psrli.d.512(<16 x i32>, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <16 x i32> @llvm.masked.load.v16i32.p0(ptr captures(none), <16 x i1>, <16 x i32>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.ctlz.v16i32(<16 x i32>, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.permvar.si.512(<16 x i32>, <16 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32>, ptr, <16 x i32>, <16 x i1>, i32 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.psllv.d.512(<16 x i32>, <16 x i32>) #10

declare noundef ptr @_ZN4ojph9get_errorEv() local_unnamed_addr #7

end_hunk_0
