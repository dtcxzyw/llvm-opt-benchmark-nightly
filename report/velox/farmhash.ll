Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/farmhash?download=true
inline.NumInlined: 696
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5folly8external8farmhash10farmhashxo6Hash64EPKcm:bb.a
  %.val.i12.i = load i64, ptr %i.dq, align 1
  %i.dr = mul i64 %.val.i12.i, -7286425919675154353
  %i.ds = add i64 %i.dm, %.val23.i10.i            ; 2 uses
  %i.dt = tail call i64 @llvm.fshl.i64(i64 %i.ds, i64 %i.ds, i64 21)
  %i.du = tail call i64 @llvm.fshl.i64(i64 %i.dp, i64 %i.dp, i64 34)
  %i.dv = add i64 %i.du, %i.dt
  %i.dw = add i64 %i.dv, %i.dr
  %i.dx = add i64 %.val23.i10.i, -7286425919675154353 ; 2 uses
  %i.dy = tail call i64 @llvm.fshl.i64(i64 %i.dx, i64 %i.dx, i64 46)
  %i.dz = add i64 %i.dy, %i.dm
  %i.ea = add i64 %i.dz, %i.dp                    ; 2 uses
  %i.eb = xor i64 %i.dw, %i.ea
  %i.ec = mul i64 %i.eb, %i.cm                    ; 2 uses
  %i.ed = lshr i64 %i.ec, 47
  %i.ee = xor i64 %i.ea, %i.ed
  %i.ef = xor i64 %i.ee, %i.ec
  %i.eg = mul i64 %i.ef, %i.cm                    ; 2 uses
  %i.eh = lshr i64 %i.eg, 47
  %i.ei = xor i64 %i.eh, %i.eg
  %i.ej = mul i64 %i.ei, %i.cm
  %i.ek = add i64 %i.ej, %i.dj
  %i.el = mul i64 %i.ek, %i.cm
  br label %_ZN5folly8external8farmhash10farmhashnaL12HashLen0to16EPKcm.exit

bb.l:                                             ; preds = %bb.j
  %i.em = icmp ult i64 %1, 97
  br i1 %i.em, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.en = shl nuw nsw i64 %1, 1
  %i.eo = add nuw nsw i64 %i.en, -7286425919675154467 ; 7 uses
  %.val24.i.i19 = load i64, ptr %0, align 1
  %i.ep = mul i64 %.val24.i.i19, -5435081209227447693 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val23.i.i20 = load i64, ptr %i.eq, align 1    ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val22.i.i21 = load i64, ptr %i.er, align 1
  %i.es = mul i64 %.val22.i.i21, -7286425919675154467 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i22 = load i64, ptr %i.et, align 1
  %i.eu = mul i64 %.val.i.i22, -7286425919675154353
  %i.ev = add i64 %i.ep, %.val23.i.i20            ; 2 uses
  %i.ew = tail call i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.ev, i64 21)
  %i.ex = tail call i64 @llvm.fshl.i64(i64 %i.es, i64 %i.es, i64 34)
  %i.ey = add i64 %i.ex, %i.ew
  %i.ez = add i64 %i.ey, %i.eu
  %i.fa = add i64 %.val23.i.i20, -7286425919675154353 ; 2 uses
  %i.fb = tail call i64 @llvm.fshl.i64(i64 %i.fa, i64 %i.fa, i64 46)
  %i.fc = add i64 %i.fb, %i.ep
  %i.fd = add i64 %i.fc, %i.es                    ; 2 uses
  %i.fe = xor i64 %i.ez, %i.fd
  %i.ff = mul i64 %i.fe, -7286425919675154467     ; 2 uses
  %i.fg = lshr i64 %i.ff, 47
  %i.fh = xor i64 %i.fd, %i.fg
  %i.fi = xor i64 %i.fh, %i.ff
  %i.fj = mul i64 %i.fi, -7286425919675154467     ; 3 uses
  %i.fk = lshr i64 %i.fj, 47
  %i.fl = xor i64 %i.fk, %i.fj
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val24.i13.i = load i64, ptr %i.fm, align 1
  %i.fn = mul i64 %.val24.i13.i, -5435081209227447693 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val23.i14.i = load i64, ptr %i.fo, align 1    ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val22.i15.i = load i64, ptr %i.fp, align 1
  %i.fq = mul i64 %.val22.i15.i, %i.eo            ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i16.i = load i64, ptr %i.fr, align 1
  %i.fs = mul i64 %.val.i16.i, -7286425919675154353
  %i.ft = add i64 %i.fn, %.val23.i14.i            ; 2 uses
  %i.fu = tail call i64 @llvm.fshl.i64(i64 %i.ft, i64 %i.ft, i64 21)
  %i.fv = tail call i64 @llvm.fshl.i64(i64 %i.fq, i64 %i.fq, i64 34)
  %i.fw = add i64 %i.fv, %i.fu
  %i.fx = add i64 %i.fw, %i.fs
  %i.fy = add i64 %.val23.i14.i, -7286425919675154353 ; 2 uses
  %i.fz = tail call i64 @llvm.fshl.i64(i64 %i.fy, i64 %i.fy, i64 46)
  %i.ga = add i64 %i.fz, %i.fn
  %i.gb = add i64 %i.ga, %i.fq                    ; 2 uses
  %i.gc = xor i64 %i.fx, %i.gb
  %i.gd = mul i64 %i.gc, %i.eo                    ; 2 uses
  %i.ge = lshr i64 %i.gd, 47
  %i.gf = xor i64 %i.gb, %i.ge
  %i.gg = xor i64 %i.gf, %i.gd
  %i.gh = mul i64 %i.gg, %i.eo                    ; 3 uses
  %i.gi = lshr i64 %i.gh, 47
  %i.gj = xor i64 %i.gi, %i.gh
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 -32
  %.val24.i17.i = load i64, ptr %i.gl, align 1
  %i.gm = mul i64 %.val24.i17.i, -5435081209227447693 ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %i.gk, i64 -24
  %.val23.i18.i = load i64, ptr %i.gn, align 1    ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %i.gk, i64 -8
  %.val22.i19.i = load i64, ptr %i.go, align 1
  %i.gp = mul i64 %.val22.i19.i, %i.eo            ; 3 uses
  %i.gq = getelementptr inbounds i8, ptr %i.gk, i64 -16
  %.val.i20.i = load i64, ptr %i.gq, align 1
  %i.gr = mul i64 %.val.i20.i, -7286425919675154353
  %i.gs = add i64 %i.gm, %.val23.i18.i            ; 2 uses
  %i.gt = tail call i64 @llvm.fshl.i64(i64 %i.gs, i64 %i.gs, i64 21)
  %i.gu = tail call i64 @llvm.fshl.i64(i64 %i.gp, i64 %i.gp, i64 34)
  %i.gv = add i64 %i.gu, %i.gt
  %i.gw = add i64 %i.gv, %i.gr
  %i.gx = add i64 %i.gw, %i.fl
  %i.gy = add i64 %.val23.i18.i, -7286425919675154353 ; 2 uses
  %i.gz = tail call i64 @llvm.fshl.i64(i64 %i.gy, i64 %i.gy, i64 46)
  %i.ha = add i64 %i.gz, %i.gm
  %i.hb = add i64 %i.ha, %i.gp
  %i.hc = add i64 %i.hb, %i.gj                    ; 2 uses
  %i.hd = xor i64 %i.hc, %i.gx
  %i.he = mul i64 %i.hd, %i.eo                    ; 2 uses
  %i.hf = lshr i64 %i.he, 47
  %i.hg = xor i64 %i.hc, %i.hf
  %i.hh = xor i64 %i.hg, %i.he
  %i.hi = mul i64 %i.hh, %i.eo                    ; 2 uses
  %i.hj = lshr i64 %i.hi, 47
  %i.hk = xor i64 %i.hj, %i.hi
  %i.hl = mul i64 %i.hk, 9
  %i.hm = lshr i64 %i.fj, 17
  %i.hn = lshr i64 %i.gh, 21
  %i.ho = add nuw nsw i64 %i.hn, %i.hm
  %i.hp = add i64 %i.ho, %i.hl
  %i.hq = mul i64 %i.hp, %i.eo
  br label %_ZN5folly8external8farmhash10farmhashnaL12HashLen0to16EPKcm.exit

bb.n:                                             ; preds = %bb.l
  %i.hr = icmp ult i64 %1, 257
  br i1 %i.hr, label %bb.o, label %_ZN5folly8external8farmhash10farmhashuo6Hash64EPKcm.exit

bb.o:                                             ; preds = %bb.n
  %i.hs = tail call noundef i64 @_ZN5folly8external8farmhash10farmhashna6Hash64EPKcm(ptr noundef %0, i64 noundef %1)
  br label %_ZN5folly8external8farmhash10farmhashnaL12HashLen0to16EPKcm.exit

_ZN5folly8external8farmhash10farmhashuo6Hash64EPKcm.exit: ; preds = %bb.n
  %i.ht = tail call noundef i64 @_ZN5folly8external8farmhash10farmhashuo15Hash64WithSeedsEPKcmmm(ptr noundef readonly %0, i64 noundef %1, i64 noundef 81, i64 noundef 0)
  br label %_ZN5folly8external8farmhash10farmhashnaL12HashLen0to16EPKcm.exit

_ZN5folly8external8farmhash10farmhashnaL12HashLen0to16EPKcm.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %_ZN5folly8external8farmhash10farmhashuo6Hash64EPKcm.exit, %bb.o, %bb.m, %bb.k, %bb.i
  %.0 = phi i64 [ %i.ht, %_ZN5folly8external8farmhash10farmhashuo6Hash64EPKcm.exit ], [ %i.cj, %bb.i ], [ %i.el, %bb.k ], [ %i.hq, %bb.m ], [ %i.hs, %bb.o ], [ %i.w, %bb.d ], [ %i.ao, %bb.f ], [ %i.bi, %bb.h ], [ -7286425919675154353, %bb.g ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN5folly8external8farmhash10farmhashxo15Hash64WithSeedsEPKcmmm(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN5folly8external8farmhash10farmhashuo15Hash64WithSeedsEPKcmmm(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN5folly8external8farmhash10farmhashxo14Hash64WithSeedEPKcmm(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 65
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i64 @_ZN5folly8external8farmhash10farmhashna6Hash64EPKcm(ptr noundef readonly %0, i64 noundef %1)
  %i.c = add i64 %i.b, 7286425919675154353
  %i.d = xor i64 %i.c, %2
  %i.e = mul i64 %i.d, -7070675565921424023       ; 2 uses
  %i.f = lshr i64 %i.e, 47
  %i.g = xor i64 %2, %i.f
  %i.h = xor i64 %i.g, %i.e
  %i.i = mul i64 %i.h, -7070675565921424023       ; 2 uses
  %i.j = lshr i64 %i.i, 47
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -7070675565921424023
  br label %_ZN5folly8external8farmhash10farmhashuo14Hash64WithSeedEPKcmm.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef i64 @_ZN5folly8external8farmhash10farmhashuo15Hash64WithSeedsEPKcmmm(ptr noundef readonly %0, i64 noundef %1, i64 noundef 0, i64 noundef %2)
  br label %_ZN5folly8external8farmhash10farmhashuo14Hash64WithSeedEPKcmm.exit

_ZN5folly8external8farmhash10farmhashuo14Hash64WithSeedEPKcmm.exit: ; preds = %bb.b, %bb.c
  %i.n = phi i64 [ %i.l, %bb.b ], [ %i.m, %bb.c ]
  ret i64 %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN5folly8external8farmhash10farmhashte6Hash64EPKcm(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %1, 511
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef i64 @_ZN5folly8external8farmhash10farmhashteL10Hash64LongEPKcmmm(ptr noundef %0, i64 noundef %1, i64 noundef -7286425919675154353, i64 noundef -5435081209227447693)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @_ZN5folly8external8farmhash10farmhashxo6Hash64EPKcm(ptr noundef %0, i64 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret i64 %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef i64 @_ZN5folly8external8farmhash10farmhashteL10Hash64LongEPKcmmm(ptr nofree noundef readonly captures(address) %0, i64 noundef range(i64 512, 0) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x <2 x i64>], align 16         ; 11 uses
  %i.b = add i64 %2, 113
  %i.c = add i64 %3, 9
  %i.d = mul i64 %i.c, %i.b                       ; 2 uses
  %i.e = tail call i64 @llvm.fshl.i64(i64 %2, i64 %2, i64 41)
  %i.f = add i64 %i.e, 27
  %i.g = tail call i64 @llvm.fshl.i64(i64 %3, i64 %3, i64 34)
  %i.h = add i64 %i.g, 111
  %i.i = mul i64 %i.h, %i.f                       ; 2 uses
  %i.j = insertelement <2 x i64> <i64 poison, i64 0>, i64 %2, i64 0 ; 3 uses
  %i.k = insertelement <2 x i64> <i64 poison, i64 0>, i64 %3, i64 0 ; 3 uses
  %i.l = bitcast <2 x i64> %i.j to <16 x i8>
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4> ; 2 uses
  %i.n = bitcast <16 x i8> %i.m to <2 x i64>      ; 4 uses
  %i.o = bitcast <2 x i64> %i.k to <16 x i8>      ; 2 uses
  %i.p = shufflevector <16 x i8> %i.o, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.q = bitcast <16 x i8> %i.p to <2 x i64>
  %i.r = xor <2 x i64> %i.k, %i.j                 ; 2 uses
  %i.s = xor <2 x i64> %i.k, %i.n
  %i.t = xor <2 x i64> %i.r, %i.n
  %i.u = lshr i64 %i.d, 32
  %i.v = trunc nuw i64 %i.u to i32
  %i.w = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %i.x = shufflevector <4 x i32> %i.w, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.y = bitcast <4 x i32> %i.x to <2 x i64>
  %i.z = bitcast <16 x i8> %i.m to <4 x i32>
  %i.aa = mul <4 x i32> %i.z, <i32 -862048943, i32 876491757, i32 1163196931, i32 -1110035655>
  %i.ab = lshr i64 %i.i, 32
  %i.ac = trunc nuw i64 %i.ab to i32
  %i.ad = insertelement <4 x i32> poison, i32 %i.ac, i64 0
  %i.ae = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.af = bitcast <4 x i32> %i.ae to <2 x i64>
  %i.ag = trunc i64 %i.i to i32
  %i.ah = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %i.ai = shufflevector <4 x i32> %i.ah, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aj = bitcast <4 x i32> %i.ai to <2 x i64>
  %i.ak = trunc i64 %i.d to i32
  %i.al = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %i.am = shufflevector <4 x i32> %i.al, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.an = bitcast <4 x i32> %i.am to <2 x i64>
  %i.ao = add <2 x i64> %i.an, %i.n
  %i.ap = and i64 %1, -256
  %i.aq = getelementptr i8, ptr %0, i64 %i.ap     ; 2 uses
  %i.ar = bitcast <4 x i32> %i.aa to <16 x i8>
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0268 = phi <2 x i64> [ %i.j, %bb.a ], [ %i.gf, %bb.b ]
  %.0267 = phi <16 x i8> [ %i.o, %bb.a ], [ %i.ge, %bb.b ]
  %.0266 = phi <2 x i64> [ %i.n, %bb.a ], [ %i.gh, %bb.b ]
  %.0265 = phi <2 x i64> [ %i.q, %bb.a ], [ %.0258, %bb.b ]
  %.0264 = phi <2 x i64> [ %i.r, %bb.a ], [ %i.gm, %bb.b ]
  %.0263 = phi <2 x i64> [ %i.s, %bb.a ], [ %i.gt, %bb.b ]
  %.0262 = phi <2 x i64> [ %i.t, %bb.a ], [ %i.gp, %bb.b ]
  %.0260 = phi <2 x i64> [ %i.y, %bb.a ], [ %i.gv, %bb.b ]
  %.0259 = phi <16 x i8> [ %i.ar, %bb.a ], [ %i.gb, %bb.b ]
  %.0258 = phi <2 x i64> [ %i.af, %bb.a ], [ %i.gj, %bb.b ] ; 3 uses
  %.0257 = phi <2 x i64> [ %i.aj, %bb.a ], [ %i.fv, %bb.b ]
  %.0256 = phi <2 x i64> [ %i.ao, %bb.a ], [ %i.fu, %bb.b ]
  %.0 = phi ptr [ %0, %bb.a ], [ %i.gw, %bb.b ]   ; 17 uses
  %.0.val = load <2 x i64>, ptr %.0, align 1, !tbaa !12 ; 2 uses
  %i.as = add <2 x i64> %.0.val, %.0268           ; 2 uses
  %i.at = shufflevector <16 x i8> %.0267, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.au = bitcast <16 x i8> %i.at to <2 x i64>    ; 2 uses
  %i.av = xor <2 x i64> %i.as, %.0266
  %i.aw = xor <2 x i64> %.0264, %i.au
  %i.ax = xor <2 x i64> %i.aw, %.0.val
  %i.ay = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %.val81 = load <2 x i64>, ptr %i.ay, align 1, !tbaa !12 ; 2 uses
  %i.az = add <2 x i64> %.val81, %.0263           ; 4 uses
  %i.ba = bitcast <2 x i64> %i.as to <16 x i8>
  %i.bb = shufflevector <16 x i8> %i.ba, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.bc = bitcast <16 x i8> %i.bb to <2 x i64>    ; 2 uses
  %i.bd = shufflevector <16 x i8> %.0259, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.be = bitcast <16 x i8> %i.bd to <2 x i64>
  %i.bf = xor <2 x i64> %i.az, %.0260
  %i.bg = xor <2 x i64> %.val81, %.0262
  %i.bh = xor <2 x i64> %i.bg, %i.bc
  %i.bi = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %.val80 = load <2 x i64>, ptr %i.bi, align 1, !tbaa !12 ; 2 uses
  %i.bj = add <2 x i64> %.val80, %i.au
  %i.bk = bitcast <2 x i64> %i.av to <16 x i8>
  %i.bl = shufflevector <16 x i8> %i.bk, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.bm = bitcast <16 x i8> %i.bl to <2 x i64>    ; 2 uses
  %i.bn = bitcast <2 x i64> %i.ax to <16 x i8>
  %i.bo = shufflevector <16 x i8> %i.bn, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.bp = bitcast <16 x i8> %i.bo to <2 x i64>
  %i.bq = xor <2 x i64> %.val80, %.0256
  %i.br = xor <2 x i64> %i.bq, %i.bm
  %i.bs = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %.val79 = load <2 x i64>, ptr %i.bs, align 1, !tbaa !12 ; 2 uses
  %i.bt = add <2 x i64> %.val79, %i.bc            ; 2 uses
  %i.bu = bitcast <2 x i64> %i.bf to <16 x i8>
  %i.bv = shufflevector <16 x i8> %i.bu, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.bw = bitcast <16 x i8> %i.bv to <2 x i64>    ; 2 uses
  %i.bx = bitcast <2 x i64> %i.bh to <16 x i8>
  %i.by = shufflevector <16 x i8> %i.bx, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.bz = bitcast <16 x i8> %i.by to <2 x i64>
  %i.ca = xor <2 x i64> %i.bt, %i.be
  %i.cb = xor <2 x i64> %.val79, %i.bj
  %i.cc = add <2 x i64> %i.cb, %i.bw
  %i.cd = getelementptr inbounds nuw i8, ptr %.0, i64 64
  %.val78 = load <2 x i64>, ptr %i.cd, align 1, !tbaa !12 ; 2 uses
  %i.ce = add <2 x i64> %.val78, %i.bm            ; 2 uses
  %i.cf = bitcast <2 x i64> %i.br to <16 x i8>
  %i.cg = shufflevector <16 x i8> %i.cf, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.ch = bitcast <16 x i8> %i.cg to <2 x i64>
  %i.ci = add <2 x i64> %i.ce, %.0257
  %i.cj = xor <2 x i64> %.val78, %i.az
  %i.ck = xor <2 x i64> %i.cj, %i.bt
  %i.cl = getelementptr inbounds nuw i8, ptr %.0, i64 80
  %.val77 = load <2 x i64>, ptr %i.cl, align 1, !tbaa !12 ; 2 uses
  %i.cm = xor <2 x i64> %.val77, %i.bw            ; 2 uses
  %i.cn = bitcast <2 x i64> %i.ce to <16 x i8>
  %i.co = shufflevector <16 x i8> %i.cn, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4> ; 2 uses
  %i.cp = bitcast <16 x i8> %i.co to <2 x i64>
  %i.cq = bitcast <2 x i64> %i.cc to <16 x i8>
  %i.cr = shufflevector <16 x i8> %i.cq, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.cs = bitcast <16 x i8> %i.cr to <2 x i64>
  %i.ct = add <2 x i64> %i.cm, %i.bz
  %i.cu = add <2 x i64> %i.ca, %.val77
  %i.cv = add <2 x i64> %i.cu, %i.cp
  %i.cw = getelementptr inbounds nuw i8, ptr %.0, i64 96
  %.val76 = load <2 x i64>, ptr %i.cw, align 1, !tbaa !12
  %i.cx = bitcast <2 x i64> %i.ci to <16 x i8>
  %i.cy = shufflevector <16 x i8> %i.cx, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.cz = bitcast <16 x i8> %i.cy to <2 x i64>    ; 2 uses
  %i.da = bitcast <2 x i64> %i.ck to <16 x i8>
  %i.db = bitcast <16 x i8> %i.co to <4 x i32>
  %i.dc = mul <4 x i32> %i.db, <i32 -862048943, i32 876491757, i32 1163196931, i32 -1110035655>
  %i.dd = bitcast <4 x i32> %i.dc to <2 x i64>
  %i.de = xor <2 x i64> %i.az, %i.ch
  %i.df = xor <2 x i64> %.val76, %i.cs
  %i.dg = add <2 x i64> %i.df, %i.cz
  %i.dh = getelementptr inbounds nuw i8, ptr %.0, i64 112
  %.val75 = load <2 x i64>, ptr %i.dh, align 1, !tbaa !12 ; 2 uses
  %i.di = add <2 x i64> %.val75, %i.dd            ; 2 uses
  %i.dj = shufflevector <16 x i8> %i.da, <16 x i8> poison, <16 x i32> <i32 3, i32 0, i32 12, i32 1, i32 10, i32 11, i32 7, i32 5, i32 6, i32 2, i32 4, i32 9, i32 14, i32 15, i32 8, i32 13>
  %i.dk = bitcast <16 x i8> %i.dj to <2 x i64>    ; 2 uses
  %i.dl = bitcast <2 x i64> %i.cv to <16 x i8>
  %i.dm = shufflevector <16 x i8> %i.dl, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.dn = bitcast <16 x i8> %i.dm to <2 x i64>
  %i.do = xor <2 x i64> %i.di, %i.cm
  %i.dp = xor <2 x i64> %.val75, %i.bp
  %i.dq = getelementptr inbounds nuw i8, ptr %.0, i64 128
  %.val74 = load <2 x i64>, ptr %i.dq, align 1, !tbaa !12 ; 2 uses
  %i.dr = add <2 x i64> %.val74, %i.cz            ; 2 uses
  %i.ds = bitcast <2 x i64> %i.az to <16 x i8>
  %i.dt = shufflevector <16 x i8> %i.ds, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.du = bitcast <16 x i8> %i.dt to <2 x i64>    ; 2 uses
  %i.dv = bitcast <2 x i64> %i.dg to <16 x i8>
  %i.dw = shufflevector <16 x i8> %i.dv, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.dx = bitcast <16 x i8> %i.dw to <2 x i64>
  %i.dy = add <2 x i64> %i.ct, %i.dr
  %i.dz = xor <2 x i64> %.val74, %i.du
  %i.ea = xor <2 x i64> %i.dz, %i.di
  %i.eb = getelementptr inbounds nuw i8, ptr %.0, i64 144
  %.val73 = load <2 x i64>, ptr %i.eb, align 1, !tbaa !12 ; 2 uses
  %i.ec = add <2 x i64> %.val73, %i.dk            ; 2 uses
  %i.ed = bitcast <2 x i64> %i.do to <16 x i8>
  %i.ee = shufflevector <16 x i8> %i.ed, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.ef = bitcast <16 x i8> %i.ee to <2 x i64>    ; 2 uses
  %i.eg = add <2 x i64> %i.ec, %i.dn
  %i.eh = xor <2 x i64> %i.dp, %.val73
  %i.ei = xor <2 x i64> %i.eh, %i.dk
  %i.ej = xor <2 x i64> %i.ei, %i.ef
  %i.ek = getelementptr inbounds nuw i8, ptr %.0, i64 160
  %.val72 = load <2 x i64>, ptr %i.ek, align 1, !tbaa !12 ; 2 uses
  %i.el = add <2 x i64> %.val72, %i.du            ; 2 uses
  %i.em = bitcast <2 x i64> %i.dy to <16 x i8>
  %i.en = shufflevector <16 x i8> %i.em, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.eo = bitcast <16 x i8> %i.en to <2 x i64>    ; 2 uses
  %i.ep = bitcast <2 x i64> %i.ea to <16 x i8>
  %i.eq = xor <2 x i64> %i.ec, %.val72
  %i.er = xor <2 x i64> %i.eq, %i.eo
  %i.es = getelementptr inbounds nuw i8, ptr %.0, i64 176
  %.val71 = load <2 x i64>, ptr %i.es, align 1, !tbaa !12 ; 2 uses
  %i.et = add <2 x i64> %.val71, %i.ef
  %i.eu = shufflevector <16 x i8> %i.ep, <16 x i8> poison, <16 x i32> <i32 3, i32 0, i32 12, i32 1, i32 10, i32 11, i32 7, i32 5, i32 6, i32 2, i32 4, i32 9, i32 14, i32 15, i32 8, i32 13>
  %i.ev = bitcast <16 x i8> %i.eu to <2 x i64>    ; 2 uses
  %i.ew = bitcast <2 x i64> %i.ej to <16 x i8>
  %i.ex = shufflevector <16 x i8> %i.ew, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.ey = bitcast <16 x i8> %i.ex to <2 x i64>
  %i.ez = bitcast <2 x i64> %i.el to <4 x i32>
  %i.fa = mul <4 x i32> %i.ez, <i32 -862048943, i32 876491757, i32 1163196931, i32 -1110035655>
  %i.fb = bitcast <4 x i32> %i.fa to <2 x i64>
  %i.fc = xor <2 x i64> %.val71, %i.fb
  %i.fd = xor <2 x i64> %i.fc, %i.ev
  %i.fe = getelementptr inbounds nuw i8, ptr %.0, i64 192
  %.val70 = load <2 x i64>, ptr %i.fe, align 1, !tbaa !12 ; 2 uses
  %i.ff = add <2 x i64> %.val70, %i.eo            ; 2 uses
  %i.fg = bitcast <2 x i64> %i.et to <16 x i8>
  %i.fh = shufflevector <16 x i8> %i.fg, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.fi = bitcast <16 x i8> %i.fh to <2 x i64>    ; 2 uses
  %i.fj = bitcast <2 x i64> %i.er to <16 x i8>
  %i.fk = shufflevector <16 x i8> %i.fj, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.fl = bitcast <16 x i8> %i.fk to <2 x i64>
  %i.fm = add <2 x i64> %i.eg, %i.ff
  %i.fn = xor <2 x i64> %i.el, %i.dx
  %i.fo = xor <2 x i64> %i.fn, %.val70
  %i.fp = xor <2 x i64> %i.fo, %i.fi
  %i.fq = getelementptr inbounds nuw i8, ptr %.0, i64 208
  %.val69 = load <2 x i64>, ptr %i.fq, align 1, !tbaa !12 ; 2 uses
  %i.fr = add <2 x i64> %.val69, %i.ev            ; 2 uses
  %i.fs = bitcast <2 x i64> %i.fd to <16 x i8>
  %i.ft = shufflevector <16 x i8> %i.fs, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.fu = bitcast <16 x i8> %i.ft to <2 x i64>    ; 2 uses
  %i.fv = xor <2 x i64> %i.fr, %i.ey              ; 2 uses
  %i.fw = xor <2 x i64> %.0258, %i.fl
  %i.fx = xor <2 x i64> %i.fw, %.val69
  %i.fy = getelementptr inbounds nuw i8, ptr %.0, i64 224
  %.val68 = load <2 x i64>, ptr %i.fy, align 1, !tbaa !12 ; 2 uses
  %i.fz = add <2 x i64> %.val68, %i.fi            ; 2 uses
  %i.ga = bitcast <2 x i64> %i.fm to <16 x i8>
  %i.gb = shufflevector <16 x i8> %i.ga, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4> ; 3 uses
  %i.gc = bitcast <16 x i8> %i.gb to <2 x i64>    ; 2 uses
  %i.gd = bitcast <2 x i64> %i.fp to <16 x i8>
  %i.ge = shufflevector <16 x i8> %i.gd, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4> ; 2 uses
  %i.gf = xor <2 x i64> %i.fz, %i.ff              ; 2 uses
  %i.gg = xor <2 x i64> %i.fr, %.val68
  %i.gh = xor <2 x i64> %i.gg, %i.gc              ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0, i64 240
  %.val = load <2 x i64>, ptr %i.gi, align 1, !tbaa !12 ; 2 uses
  %i.gj = add <2 x i64> %.val, %.0265             ; 3 uses
  %i.gk = bitcast <2 x i64> %i.dr to <16 x i8>
  %i.gl = shufflevector <16 x i8> %i.gk, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.gm = bitcast <16 x i8> %i.gl to <2 x i64>    ; 3 uses
  %i.gn = bitcast <2 x i64> %i.fx to <16 x i8>
  %i.go = shufflevector <16 x i8> %i.gn, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4> ; 2 uses
  %i.gp = bitcast <16 x i8> %i.go to <2 x i64>
  %i.gq = bitcast <2 x i64> %i.fz to <4 x i32>
  %i.gr = mul <4 x i32> %i.gq, <i32 -862048943, i32 876491757, i32 1163196931, i32 -1110035655>
  %i.gs = bitcast <4 x i32> %i.gr to <2 x i64>
  %i.gt = add <2 x i64> %i.gj, %i.de              ; 2 uses
  %i.gu = xor <2 x i64> %i.gm, %i.gs
  %i.gv = xor <2 x i64> %i.gu, %.val              ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.0, i64 256 ; 2 uses
  %.not = icmp eq ptr %i.gw, %i.aq
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !20

bb.c:                                             ; preds = %bb.b
  %i.gx = and i64 %1, 255                         ; 2 uses
  %.not67 = icmp eq i64 %i.gx, 0
  br i1 %.not67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.gy = bitcast <16 x i8> %i.gb to <4 x i32>    ; 2 uses
  %i.gz = shufflevector <4 x i32> %i.gy, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ha = bitcast <4 x i32> %i.gz to <2 x i64>
  %i.hb = add <2 x i64> %i.gv, %i.ha
  %i.hc = mul <4 x i32> %i.gy, <i32 -862048943, i32 876491757, i32 1163196931, i32 -1110035655>
  %i.hd = bitcast <4 x i32> %i.hc to <2 x i64>
  %i.he = tail call noundef i64 @_ZN5folly8external8farmhash10farmhashxo6Hash64EPKcm(ptr noundef nonnull %i.aq, i64 noundef %i.gx)
  %i.hf = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.he, i64 0
  %i.hg = add <2 x i64> %i.hf, %i.hd
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1261 = phi <2 x i64> [ %i.gv, %bb.c ], [ %i.hb, %bb.d ]
  %.1 = phi <2 x i64> [ %i.gc, %bb.c ], [ %i.hg, %bb.d ]
  %i.hh = insertelement <2 x i64> <i64 poison, i64 0>, i64 %1, i64 0
  %i.hi = bitcast <16 x i8> %i.go to <4 x i32>
  %i.hj = mul <4 x i32> %i.hi, <i32 -862048943, i32 876491757, i32 1163196931, i32 -1110035655>
  %i.hk = bitcast <4 x i32> %i.hj to <2 x i64>
  %i.hl = add <2 x i64> %i.hh, %i.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.hm = bitcast <2 x i64> %i.gf to <4 x i32>
  %i.hn = mul <4 x i32> %i.hm, <i32 -862048943, i32 876491757, i32 1163196931, i32 -1110035655>
  %i.ho = bitcast <4 x i32> %i.hn to <16 x i8>
  %i.hp = shufflevector <16 x i8> %i.ho, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.hq = bitcast <16 x i8> %i.hp to <4 x i32>
  %i.hr = mul <4 x i32> %i.hq, <i32 -862048943, i32 876491757, i32 1163196931, i32 -1110035655>
  %i.hs = bitcast <4 x i32> %i.hr to <2 x i64>
  %i.ht = bitcast <2 x i64> %.0258 to <4 x i32>
  %i.hu = mul <4 x i32> %i.ht, <i32 -862048943, i32 876491757, i32 1163196931, i32 -1110035655>
  %i.hv = bitcast <4 x i32> %i.hu to <16 x i8>
  %i.hw = shufflevector <16 x i8> %i.hv, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.hx = bitcast <16 x i8> %i.hw to <4 x i32>
  %i.hy = mul <4 x i32> %i.hx, <i32 -862048943, i32 876491757, i32 1163196931, i32 -1110035655>
  %i.hz = bitcast <4 x i32> %i.hy to <2 x i64>
  %i.ia = bitcast <2 x i64> %i.gj to <4 x i32>
  %i.ib = mul <4 x i32> %i.ia, <i32 -862048943, i32 876491757, i32 1163196931, i32 -1110035655>
  %i.ic = bitcast <4 x i32> %i.ib to <16 x i8>
  %i.id = shufflevector <16 x i8> %i.ic, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.ie = bitcast <16 x i8> %i.id to <4 x i32>
  %i.if = mul <4 x i32> %i.ie, <i32 -862048943, i32 876491757, i32 1163196931, i32 -1110035655>
  %i.ig = bitcast <4 x i32> %i.if to <2 x i64>
  %i.ih = bitcast <16 x i8> %i.ge to <4 x i32>
  %i.ii = mul <4 x i32> %i.ih, <i32 -862048943, i32 876491757, i32 1163196931, i32 -1110035655>
  %i.ij = bitcast <4 x i32> %i.ii to <16 x i8>
  %i.ik = shufflevector <16 x i8> %i.ij, <16 x i8> poison, <16 x i32> <i32 1, i32 3, i32 7, i32 0, i32 13, i32 14, i32 2, i32 12, i32 9, i32 6, i32 15, i32 8, i32 5, i32 10, i32 11, i32 4>
  %i.il = bitcast <16 x i8> %i.ik to <4 x i32>
  %i.im = mul <4 x i32> %i.il, <i32 -862048943, i32 876491757, i32 1163196931, i32 -1110035655>
  %i.in = bitcast <4 x i32> %i.im to <2 x i64>
  %i.io = add <2 x i64> %i.hs, %i.fu              ; 2 uses
  %i.ip = xor <2 x i64> %.1261, %i.hz             ; 2 uses
  %i.iq = add <2 x i64> %.1, %i.ig                ; 2 uses
  %i.ir = add <2 x i64> %i.fv, %i.in              ; 2 uses
  %i.is = add <2 x i64> %i.ip, %i.gm
  %i.it = add <2 x i64> %i.iq, %i.gt
  %i.iu = xor <2 x i64> %i.ir, %i.hl
  %i.iv = add <2 x i64> %i.io, %i.gh
  store <2 x i64> %i.io, ptr %i.a, align 16, !tbaa !12
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x i64> %i.ip, ptr %4, align 16, !tbaa !12
  %i.iw = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <2 x i64> %i.iq, ptr %i.iw, align 16, !tbaa !12
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <2 x i64> %i.ir, ptr %5, align 16, !tbaa !12
  %i.ix = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <2 x i64> %i.is, ptr %i.ix, align 16, !tbaa !12
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <2 x i64> %i.it, ptr %6, align 16, !tbaa !12
  %i.iy = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <2 x i64> %i.iu, ptr %i.iy, align 16, !tbaa !12
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <2 x i64> %i.iv, ptr %7, align 16, !tbaa !12
  %i.iz = call noundef i64 @_ZN5folly8external8farmhash10farmhashna6Hash64EPKcm(ptr noundef nonnull readonly %i.a, i64 noundef 128)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %i.iz
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN5folly8external8farmhash10farmhashte14Hash64WithSeedEPKcmm(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %1, 511
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef i64 @_ZN5folly8external8farmhash10farmhashteL10Hash64LongEPKcmmm(ptr noundef %0, i64 noundef %1, i64 noundef -5435081209227447693, i64 noundef %2)
  br label %_ZN5folly8external8farmhash10farmhashxo14Hash64WithSeedEPKcmm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i64 %1, 65
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef i64 @_ZN5folly8external8farmhash10farmhashna6Hash64EPKcm(ptr noundef readonly %0, i64 noundef %1)
  %i.e = add i64 %i.d, 7286425919675154353
  %i.f = xor i64 %i.e, %2
  %i.g = mul i64 %i.f, -7070675565921424023       ; 2 uses
  %i.h = lshr i64 %i.g, 47
  %i.i = xor i64 %2, %i.h
  %i.j = xor i64 %i.i, %i.g
  %i.k = mul i64 %i.j, -7070675565921424023       ; 2 uses
  %i.l = lshr i64 %i.k, 47
  %i.m = xor i64 %i.l, %i.k
  %i.n = mul i64 %i.m, -7070675565921424023
  br label %_ZN5folly8external8farmhash10farmhashxo14Hash64WithSeedEPKcmm.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call noundef i64 @_ZN5folly8external8farmhash10farmhashuo15Hash64WithSeedsEPKcmmm(ptr noundef readonly %0, i64 noundef %1, i64 noundef 0, i64 noundef %2)
  br label %_ZN5folly8external8farmhash10farmhashxo14Hash64WithSeedEPKcmm.exit

_ZN5folly8external8farmhash10farmhashxo14Hash64WithSeedEPKcmm.exit: ; preds = %bb.e, %bb.d, %bb.b
  %i.p = phi i64 [ %i.b, %bb.b ], [ %i.n, %bb.d ], [ %i.o, %bb.e ]
  ret i64 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN5folly8external8farmhash10farmhashte15Hash64WithSeedsEPKcmmm(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %1, 511
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef i64 @_ZN5folly8external8farmhash10farmhashteL10Hash64LongEPKcmmm(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @_ZN5folly8external8farmhash10farmhashuo15Hash64WithSeedsEPKcmmm(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, i64 noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN5folly8external8farmhash10farmhashnt6Hash32EPKcm(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %1, 511
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef i64 @_ZN5folly8external8farmhash10farmhashteL10Hash64LongEPKcmmm(ptr noundef readonly %0, i64 noundef %1, i64 noundef -7286425919675154353, i64 noundef -5435081209227447693)
  br label %_ZN5folly8external8farmhash10farmhashte6Hash64EPKcm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @_ZN5folly8external8farmhash10farmhashxo6Hash64EPKcm(ptr noundef readonly %0, i64 noundef %1)
  br label %_ZN5folly8external8farmhash10farmhashte6Hash64EPKcm.exit

_ZN5folly8external8farmhash10farmhashte6Hash64EPKcm.exit: ; preds = %bb.b, %bb.c
  %i.d = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  %i.e = trunc i64 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN5folly8external8farmhash10farmhashnt14Hash32WithSeedEPKcmj(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 4 uses
  %i.b = icmp ugt i64 %1, 511
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef i64 @_ZN5folly8external8farmhash10farmhashteL10Hash64LongEPKcmmm(ptr noundef readonly %0, i64 noundef %1, i64 noundef -5435081209227447693, i64 noundef %i.a)
  br label %_ZN5folly8external8farmhash10farmhashte14Hash64WithSeedEPKcmm.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i64 %1, 65
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef i64 @_ZN5folly8external8farmhash10farmhashna6Hash64EPKcm(ptr noundef readonly %0, i64 noundef %1)
  %i.f = add i64 %i.e, 7286425919675154353
  %i.g = xor i64 %i.f, %i.a
  %i.h = mul i64 %i.g, -7070675565921424023       ; 2 uses
  %i.i = lshr i64 %i.h, 47
  %i.j = xor i64 %i.i, %i.a
  %i.k = xor i64 %i.j, %i.h
  %i.l = mul i64 %i.k, -7070675565921424023       ; 2 uses
  %i.m = lshr i64 %i.l, 47
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, -7070675565921424023
  br label %_ZN5folly8external8farmhash10farmhashte14Hash64WithSeedEPKcmm.exit

bb.e:                                             ; preds = %bb.c
  %i.p = tail call noundef i64 @_ZN5folly8external8farmhash10farmhashuo15Hash64WithSeedsEPKcmmm(ptr noundef readonly %0, i64 noundef %1, i64 noundef 0, i64 noundef %i.a)
  br label %_ZN5folly8external8farmhash10farmhashte14Hash64WithSeedEPKcmm.exit

_ZN5folly8external8farmhash10farmhashte14Hash64WithSeedEPKcmm.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.q = phi i64 [ %i.c, %bb.b ], [ %i.o, %bb.d ], [ %i.p, %bb.e ]
  %i.r = trunc i64 %i.q to i32
  ret i32 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN5folly8external8farmhash10farmhashmk6Hash32EPKcm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 25
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %1, 13
  br i1 %i.b, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i64 %1, 5
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN5folly8external8farmhash10farmhashmkL13Hash32Len0to4EPKcmj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.d = load i8, ptr %0, align 1, !tbaa !12
  %i.e = sext i8 %i.d to i32                      ; 3 uses
  %i.f = xor i32 %i.e, 9                          ; 2 uses
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_ZN5folly8external8farmhash10farmhashmkL13Hash32Len0to4EPKcmj.exit.loopexit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !12
  %i.i = mul i32 %i.e, -862048943
  %i.j = sext i8 %i.h to i32
  %i.k = add i32 %i.i, %i.j                       ; 3 uses
  %i.l = xor i32 %i.k, %i.f                       ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_ZN5folly8external8farmhash10farmhashmkL13Hash32Len0to4EPKcmj.exit.loopexit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !12
  %i.o = mul i32 %i.k, -862048943
  %i.p = sext i8 %i.n to i32
  %i.q = add i32 %i.o, %i.p                       ; 3 uses
  %i.r = xor i32 %i.q, %i.l                       ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_ZN5folly8external8farmhash10farmhashmkL13Hash32Len0to4EPKcmj.exit.loopexit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.t = load i8, ptr %i.s, align 1, !tbaa !12
  %i.u = mul i32 %i.q, -862048943
  %i.v = sext i8 %i.t to i32
  %i.w = add i32 %i.u, %i.v                       ; 2 uses
  %i.x = xor i32 %i.w, %i.r
  br label %_ZN5folly8external8farmhash10farmhashmkL13Hash32Len0to4EPKcmj.exit.loopexit

_ZN5folly8external8farmhash10farmhashmkL13Hash32Len0to4EPKcmj.exit.loopexit: ; preds = %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i
  %.lcssa114 = phi i32 [ %i.e, %.lr.ph.i ], [ %i.k, %.lr.ph.i.1 ], [ %i.q, %.lr.ph.i.2 ], [ %i.w, %.lr.ph.i.3 ]
  %.lcssa = phi i32 [ %i.f, %.lr.ph.i ], [ %i.l, %.lr.ph.i.1 ], [ %i.r, %.lr.ph.i.2 ], [ %i.x, %.lr.ph.i.3 ]
  %i.y = mul i32 %.lcssa114, -862048943           ; 2 uses
  %i.z = tail call i32 @llvm.fshl.i32(i32 %i.y, i32 %i.y, i32 15)
  %i.aa = mul i32 %i.z, 461845907
  br label %_ZN5folly8external8farmhash10farmhashmkL13Hash32Len0to4EPKcmj.exit

_ZN5folly8external8farmhash10farmhashmkL13Hash32Len0to4EPKcmj.exit: ; preds = %_ZN5folly8external8farmhash10farmhashmkL13Hash32Len0to4EPKcmj.exit.loopexit, %bb.d
  %.013.lcssa.i = phi i32 [ 9, %bb.d ], [ %.lcssa, %_ZN5folly8external8farmhash10farmhashmkL13Hash32Len0to4EPKcmj.exit.loopexit ]
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.aa, %_ZN5folly8external8farmhash10farmhashmkL13Hash32Len0to4EPKcmj.exit.loopexit ]
  %i.ab = trunc nuw nsw i64 %1 to i32
  %i.ac = mul i32 %i.ab, -862048943               ; 2 uses
  %i.ad = tail call i32 @llvm.fshl.i32(i32 %i.ac, i32 %i.ac, i32 15)
  %i.ae = mul i32 %i.ad, 461845907
  %i.af = xor i32 %.013.lcssa.i, %i.ae            ; 2 uses
  %i.ag = tail call i32 @llvm.fshl.i32(i32 %i.af, i32 %i.af, i32 13)
  %i.ah = mul i32 %i.ag, 5
  %i.ai = add i32 %i.ah, -430675100
  %i.aj = xor i32 %.0.lcssa.i, %i.ai              ; 2 uses
  %i.ak = tail call i32 @llvm.fshl.i32(i32 %i.aj, i32 %i.aj, i32 13)
  %i.al = mul i32 %i.ak, 5
  %i.am = add i32 %i.al, -430675100               ; 2 uses
end_hunk_0
