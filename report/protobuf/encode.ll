inline.NumInlined: 202
inline.NumDeleted: 88
begin_hunk_0_@encode_scalar:bb.a
  %.val193 = load i32, ptr %3, align 4, !tbaa !66
  %i.hf = shl i32 %.val193, 3                     ; 2 uses
  %i.hg = or disjoint i32 %i.hf, 2                ; 2 uses
  %i.hh = icmp ult i32 %i.hf, 128
  br i1 %i.hh, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %encode_length_unchecked.exit190
  %i.hi = getelementptr inbounds i8, ptr %.0.i189, i64 -1 ; 2 uses
  %i.hj = trunc nuw i32 %i.hg to i8
  store i8 %i.hj, ptr %i.hi, align 1, !tbaa !15
  br label %encode_tag_unchecked.exit

bb.bo:                                            ; preds = %encode_length_unchecked.exit190
  %i.hk = zext i32 %i.hg to i64
  %i.hl = tail call fastcc ptr @encode_longvarint(ptr noundef nonnull %.0.i189, ptr noundef nonnull %1, i64 noundef %i.hk)
  br label %encode_tag_unchecked.exit

bb.bp:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.hm = load ptr, ptr %2, align 8, !tbaa !86    ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ho = load i16, ptr %i.hn, align 4, !tbaa !85
  %i.hp = zext i16 %i.ho to i64
  %i.hq = shl nuw nsw i64 %i.hp, 2
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 %i.hq
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !15
  %i.ht = icmp eq ptr %i.hm, null
  br i1 %i.ht, label %encode_tag.exit228, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 236 ; 4 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !20
  %i.hw = add nsw i32 %i.hv, -1                   ; 2 uses
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !20
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  tail call fastcc void @encode_err(ptr noundef nonnull %1, i32 noundef 2) #11
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %.val192 = load i32, ptr %3, align 4, !tbaa !66
  %i.hy = shl i32 %.val192, 3                     ; 2 uses
  %i.hz = or disjoint i32 %i.hy, 4                ; 2 uses
  %i.ia = zext i32 %i.hz to i64
  %i.ib = icmp ult i32 %i.hy, 128
  br i1 %i.ib, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !14
  %.not.i.i = icmp eq ptr %0, %i.id
  br i1 %.not.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ie = getelementptr inbounds i8, ptr %0, i64 -1 ; 2 uses
  %i.if = trunc nuw i32 %i.hz to i8
  store i8 %i.if, ptr %i.ie, align 1, !tbaa !15
  br label %encode_tag.exit

bb.bv:                                            ; preds = %bb.bt, %bb.bs
  %i.ig = tail call fastcc ptr @encode_longvarint(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.ia)
  br label %encode_tag.exit

encode_tag.exit:                                  ; preds = %bb.bu, %bb.bv
  %.0.i.i225 = phi ptr [ %i.ie, %bb.bu ], [ %i.ig, %bb.bv ]
  %i.ih = call fastcc ptr @encode_message(ptr noundef nonnull %.0.i.i225, ptr noundef %1, ptr noundef nonnull %i.hm, ptr noundef %i.hs, ptr noundef %i.a) ; 3 uses
  %i.ii = load i32, ptr %i.hu, align 4, !tbaa !20
  %i.ij = add nsw i32 %i.ii, 1
  store i32 %i.ij, ptr %i.hu, align 4, !tbaa !20
  %.val191 = load i32, ptr %3, align 4, !tbaa !66
  %i.ik = shl i32 %.val191, 3                     ; 2 uses
  %i.il = or disjoint i32 %i.ik, 3                ; 2 uses
  %i.im = zext i32 %i.il to i64
  %i.in = icmp ult i32 %i.ik, 128
  br i1 %i.in, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %encode_tag.exit
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !14
  %.not.i.i227 = icmp eq ptr %i.ih, %i.ip
  br i1 %.not.i.i227, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.iq = getelementptr inbounds i8, ptr %i.ih, i64 -1 ; 2 uses
  %i.ir = trunc nuw i32 %i.il to i8
  store i8 %i.ir, ptr %i.iq, align 1, !tbaa !15
  br label %encode_tag.exit228

bb.by:                                            ; preds = %bb.bw, %encode_tag.exit
  %i.is = tail call fastcc ptr @encode_longvarint(ptr noundef %i.ih, ptr noundef nonnull %1, i64 noundef %i.im)
  br label %encode_tag.exit228

encode_tag.exit228:                               ; preds = %bb.by, %bb.bx, %bb.bp
  %.0 = phi ptr [ %0, %bb.bp ], [ %i.iq, %bb.bx ], [ %i.is, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %encode_tag_unchecked.exit

bb.bz:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.it = load ptr, ptr %2, align 8, !tbaa !86    ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.iv = load i16, ptr %i.iu, align 4, !tbaa !85
  %i.iw = zext i16 %i.iv to i64
  %i.ix = shl nuw nsw i64 %i.iw, 2
  %i.iy = getelementptr inbounds nuw i8, ptr %3, i64 %i.ix
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !15
  %i.ja = icmp eq ptr %i.it, null
  br i1 %i.ja, label %encode_tag_unchecked.exit230, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 236 ; 4 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !20
  %i.jd = add nsw i32 %i.jc, -1                   ; 2 uses
  store i32 %i.jd, ptr %i.jb, align 4, !tbaa !20
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  tail call fastcc void @encode_err(ptr noundef nonnull %1, i32 noundef 2) #11
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.jf = call fastcc ptr @encode_message(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.it, ptr noundef %i.iz, ptr noundef %i.b) ; 3 uses
  %i.jg = load i32, ptr %i.jb, align 4, !tbaa !20
  %i.jh = add nsw i32 %i.jg, 1
  store i32 %i.jh, ptr %i.jb, align 4, !tbaa !20
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !14
  %i.jk = ptrtoint ptr %i.jf to i64
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = sub i64 %i.jk, %i.jl
  %i.jn = icmp ult i64 %i.jm, 10
  br i1 %i.jn, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.jo = tail call fastcc ptr @encode_growbuffer(ptr noundef %i.jf, ptr noundef nonnull %1, i64 noundef 10)
  br label %encode_reserve.exit

bb.ce:                                            ; preds = %bb.cc
  %i.jp = getelementptr inbounds i8, ptr %i.jf, i64 -10
  br label %encode_reserve.exit

encode_reserve.exit:                              ; preds = %bb.cd, %bb.ce
  %.0.i = phi ptr [ %i.jo, %bb.cd ], [ %i.jp, %bb.ce ] ; 2 uses
  %i.jq = load i64, ptr %i.b, align 8, !tbaa !27  ; 3 uses
  %i.jr = icmp ult i64 %i.jq, 128
  br i1 %i.jr, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %encode_reserve.exit
  %i.js = getelementptr inbounds nuw i8, ptr %.0.i, i64 9 ; 2 uses
  %i.jt = trunc nuw nsw i64 %i.jq to i8
  store i8 %i.jt, ptr %i.js, align 1, !tbaa !15
  br label %encode_length_unchecked.exit

bb.cg:                                            ; preds = %encode_reserve.exit
  %i.ju = getelementptr inbounds nuw i8, ptr %.0.i, i64 10
  %i.jv = tail call ptr @encode_longlength(ptr noundef nonnull %i.ju, ptr noundef nonnull %1, i64 noundef %i.jq)
  br label %encode_length_unchecked.exit

encode_length_unchecked.exit:                     ; preds = %bb.cf, %bb.cg
  %.0.i188 = phi ptr [ %i.js, %bb.cf ], [ %i.jv, %bb.cg ] ; 2 uses
  %.val = load i32, ptr %3, align 4, !tbaa !66
  %i.jw = shl i32 %.val, 3                        ; 2 uses
  %i.jx = or disjoint i32 %i.jw, 2                ; 2 uses
  %i.jy = icmp ult i32 %i.jw, 128
  br i1 %i.jy, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %encode_length_unchecked.exit
  %i.jz = getelementptr inbounds i8, ptr %.0.i188, i64 -1 ; 2 uses
  %i.ka = trunc nuw i32 %i.jx to i8
  store i8 %i.ka, ptr %i.jz, align 1, !tbaa !15
  br label %encode_tag_unchecked.exit230

bb.ci:                                            ; preds = %encode_length_unchecked.exit
  %i.kb = zext i32 %i.jx to i64
  %i.kc = tail call fastcc ptr @encode_longvarint(ptr noundef nonnull %.0.i188, ptr noundef nonnull %1, i64 noundef %i.kb)
  br label %encode_tag_unchecked.exit230

encode_tag_unchecked.exit230:                     ; preds = %bb.ci, %bb.ch, %bb.bz
  %.1 = phi ptr [ %0, %bb.bz ], [ %i.jz, %bb.ch ], [ %i.kc, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %encode_tag_unchecked.exit

bb.cj:                                            ; preds = %bb.a
  unreachable

encode_tag_unchecked.exit:                        ; preds = %bb.bo, %bb.bn, %bb.bi, %bb.bh, %bb.bb, %bb.ba, %bb.au, %bb.at, %bb.ap, %bb.ao, %bb.ak, %bb.aj, %bb.af, %bb.ae, %bb.y, %bb.x, %bb.r, %bb.q, %bb.k, %bb.j, %bb.f, %bb.e, %encode_tag_unchecked.exit230, %encode_tag.exit228
  %.2 = phi ptr [ %.1, %encode_tag_unchecked.exit230 ], [ %i.u, %bb.f ], [ %i.al, %bb.k ], [ %i.bf, %bb.r ], [ %i.ca, %bb.y ], [ %i.cv, %bb.af ], [ %i.dm, %bb.ak ], [ %i.ed, %bb.ap ], [ %i.et, %bb.au ], [ %i.fr, %bb.bb ], [ %i.go, %bb.bi ], [ %.0, %encode_tag.exit228 ], [ %i.r, %bb.e ], [ %i.ai, %bb.j ], [ %i.bc, %bb.q ], [ %i.bx, %bb.x ], [ %i.cs, %bb.ae ], [ %i.dj, %bb.aj ], [ %i.ea, %bb.ao ], [ %i.eq, %bb.at ], [ %i.fo, %bb.ba ], [ %i.gl, %bb.bh ], [ %i.hi, %bb.bn ], [ %i.hl, %bb.bo ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @encode_fixedarray(ptr noundef %0, ptr noundef nonnull %1, i64 %.0.val, i64 %.8.val, i64 noundef range(i64 4, 9) %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = mul i64 %2, %.8.val                      ; 6 uses
  %i.c = and i64 %.0.val, -8
  %i.d = inttoptr i64 %i.c to ptr                 ; 6 uses
  %i.e = sub nsw i64 0, %2                        ; 4 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %encode_bytes.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = ptrtoint ptr %0 to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.k, %i.b
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call fastcc ptr @encode_growbuffer(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.b)
  br label %encode_reserve.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.b
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  br label %encode_reserve.exit.i

encode_reserve.exit.i:                            ; preds = %bb.e, %bb.d
  %.0.i.i = phi ptr [ %i.m, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i, ptr readonly align 8 %i.d, i64 %i.b, i1 false)
  br label %encode_bytes.exit

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b ; 4 uses
  %i.q = icmp eq i64 %2, 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 6 uses
  %i.s = zext i32 %3 to i64                       ; 4 uses
  %i.t = icmp ult i32 %3, 128                     ; 2 uses
  %i.u = trunc nuw i32 %3 to i8                   ; 2 uses
  br i1 %i.q, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.f
  br i1 %i.t, label %.split.us.split.us, label %.split.us.split

.split.us.split.us:                               ; preds = %.split.us, %encode_varint.exit.us.us
  %.030.us.us = phi ptr [ %.0.i.us.us, %encode_varint.exit.us.us ], [ %0, %.split.us ] ; 3 uses
  %.pn.us.us = phi ptr [ %.0.us.us, %encode_varint.exit.us.us ], [ %i.p, %.split.us ]
  %.0.us.us = getelementptr inbounds i8, ptr %.pn.us.us, i64 -4 ; 3 uses
  %i.v = load i32, ptr %.0.us.us, align 1
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.x = ptrtoint ptr %.030.us.us to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp ult i64 %i.z, 4
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split.us.split.us
  %i.ab = getelementptr inbounds i8, ptr %.030.us.us, i64 -4
  br label %encode_bytes.exit39.us.us

bb.h:                                             ; preds = %.split.us.split.us
  %i.ac = tail call fastcc ptr @encode_growbuffer(ptr noundef %.030.us.us, ptr noundef nonnull %1, i64 noundef 4)
  br label %encode_bytes.exit39.us.us

encode_bytes.exit39.us.us:                        ; preds = %bb.h, %bb.g
  %.0.i.i37.us.us = phi ptr [ %i.ac, %bb.h ], [ %i.ab, %bb.g ] ; 4 uses
  store i32 %i.v, ptr %.0.i.i37.us.us, align 1
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !14
  %.not.i.us.us = icmp eq ptr %.0.i.i37.us.us, %i.ad
  br i1 %.not.i.us.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %encode_bytes.exit39.us.us
  %i.ae = getelementptr inbounds i8, ptr %.0.i.i37.us.us, i64 -1 ; 2 uses
  store i8 %i.u, ptr %i.ae, align 1, !tbaa !15
  br label %encode_varint.exit.us.us

bb.j:                                             ; preds = %encode_bytes.exit39.us.us
  %i.af = tail call fastcc ptr @encode_longvarint(ptr noundef nonnull %.0.i.i37.us.us, ptr noundef nonnull %1, i64 noundef %i.s)
  br label %encode_varint.exit.us.us

encode_varint.exit.us.us:                         ; preds = %bb.j, %bb.i
  %.0.i.us.us = phi ptr [ %i.ae, %bb.i ], [ %i.af, %bb.j ] ; 2 uses
  %i.ag = icmp eq ptr %.0.us.us, %i.d
  br i1 %i.ag, label %encode_bytes.exit, label %.split.us.split.us

.split.us.split:                                  ; preds = %.split.us, %encode_bytes.exit39.us
  %.030.us = phi ptr [ %i.ap, %encode_bytes.exit39.us ], [ %0, %.split.us ] ; 3 uses
  %.pn.us = phi ptr [ %.0.us, %encode_bytes.exit39.us ], [ %i.p, %.split.us ]
  %.0.us = getelementptr inbounds i8, ptr %.pn.us, i64 -4 ; 3 uses
  %i.ah = load i32, ptr %.0.us, align 1
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.aj = ptrtoint ptr %.030.us to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ult i64 %i.al, 4
  br i1 %i.am, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.split.us.split
  %i.an = getelementptr inbounds i8, ptr %.030.us, i64 -4
  br label %encode_bytes.exit39.us

bb.l:                                             ; preds = %.split.us.split
  %i.ao = tail call fastcc ptr @encode_growbuffer(ptr noundef %.030.us, ptr noundef nonnull %1, i64 noundef 4)
  br label %encode_bytes.exit39.us

encode_bytes.exit39.us:                           ; preds = %bb.l, %bb.k
  %.0.i.i37.us = phi ptr [ %i.ao, %bb.l ], [ %i.an, %bb.k ] ; 2 uses
  store i32 %i.ah, ptr %.0.i.i37.us, align 1
  %i.ap = tail call fastcc ptr @encode_longvarint(ptr noundef nonnull %.0.i.i37.us, ptr noundef nonnull %1, i64 noundef %i.s) ; 2 uses
  %i.aq = icmp eq ptr %.0.us, %i.d
  br i1 %i.aq, label %encode_bytes.exit, label %.split.us.split

.split:                                           ; preds = %bb.f
  br i1 %i.t, label %.split.split.us, label %.split.split

.split.split.us:                                  ; preds = %.split, %encode_varint.exit.us5
  %.030.us1 = phi ptr [ %.0.i.us6, %encode_varint.exit.us5 ], [ %0, %.split ] ; 3 uses
  %.pn.us2 = phi ptr [ %.0.us3, %encode_varint.exit.us5 ], [ %i.p, %.split ]
  %.0.us3 = getelementptr inbounds i8, ptr %.pn.us2, i64 %i.e ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ar = load i64, ptr %.0.us3, align 1
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !27
  %i.as = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.at = ptrtoint ptr %.030.us1 to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp ult i64 %i.av, %2
  br i1 %i.aw, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.split.split.us
  %i.ax = getelementptr inbounds i8, ptr %.030.us1, i64 %i.e
  br label %encode_bytes.exit43.us

bb.n:                                             ; preds = %.split.split.us
  %i.ay = tail call fastcc ptr @encode_growbuffer(ptr noundef %.030.us1, ptr noundef nonnull %1, i64 noundef %2)
  br label %encode_bytes.exit43.us

encode_bytes.exit43.us:                           ; preds = %bb.n, %bb.m
  %.0.i.i41.us = phi ptr [ %i.ay, %bb.n ], [ %i.ax, %bb.m ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i41.us, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.a, i64 %2, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.az = load ptr, ptr %i.r, align 8, !tbaa !14
  %.not.i.us4 = icmp eq ptr %.0.i.i41.us, %i.az
  br i1 %.not.i.us4, label %bb.p, label %bb.o

bb.o:                                             ; preds = %encode_bytes.exit43.us
  %i.ba = getelementptr inbounds i8, ptr %.0.i.i41.us, i64 -1 ; 2 uses
  store i8 %i.u, ptr %i.ba, align 1, !tbaa !15
  br label %encode_varint.exit.us5

bb.p:                                             ; preds = %encode_bytes.exit43.us
  %i.bb = tail call fastcc ptr @encode_longvarint(ptr noundef nonnull %.0.i.i41.us, ptr noundef nonnull %1, i64 noundef %i.s)
  br label %encode_varint.exit.us5

encode_varint.exit.us5:                           ; preds = %bb.p, %bb.o
  %.0.i.us6 = phi ptr [ %i.ba, %bb.o ], [ %i.bb, %bb.p ] ; 2 uses
  %i.bc = icmp eq ptr %.0.us3, %i.d
  br i1 %i.bc, label %encode_bytes.exit, label %.split.split.us

.split.split:                                     ; preds = %.split, %encode_bytes.exit43
  %.030 = phi ptr [ %i.bl, %encode_bytes.exit43 ], [ %0, %.split ] ; 3 uses
  %.pn = phi ptr [ %.0, %encode_bytes.exit43 ], [ %i.p, %.split ]
  %.0 = getelementptr inbounds i8, ptr %.pn, i64 %i.e ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bd = load i64, ptr %.0, align 1
  store i64 %i.bd, ptr %i.a, align 8, !tbaa !27
  %i.be = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.bf = ptrtoint ptr %.030 to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = icmp ult i64 %i.bh, %2
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.split.split
  %i.bj = tail call fastcc ptr @encode_growbuffer(ptr noundef %.030, ptr noundef nonnull %1, i64 noundef %2)
  br label %encode_bytes.exit43

bb.r:                                             ; preds = %.split.split
  %i.bk = getelementptr inbounds i8, ptr %.030, i64 %i.e
  br label %encode_bytes.exit43

encode_bytes.exit43:                              ; preds = %bb.q, %bb.r
  %.0.i.i41 = phi ptr [ %i.bj, %bb.q ], [ %i.bk, %bb.r ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i41, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.a, i64 %2, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = tail call fastcc ptr @encode_longvarint(ptr noundef nonnull %.0.i.i41, ptr noundef nonnull %1, i64 noundef %i.s) ; 2 uses
  %i.bm = icmp eq ptr %.0, %i.d
  br i1 %i.bm, label %encode_bytes.exit, label %.split.split

encode_bytes.exit:                                ; preds = %encode_bytes.exit43, %encode_varint.exit.us5, %encode_bytes.exit39.us, %encode_varint.exit.us.us, %encode_reserve.exit.i, %bb.b
  %.029 = phi ptr [ %0, %bb.b ], [ %.0.i.i, %encode_reserve.exit.i ], [ %.0.i.us6, %encode_varint.exit.us5 ], [ %i.ap, %encode_bytes.exit39.us ], [ %.0.i.us.us, %encode_varint.exit.us.us ], [ %i.bl, %encode_bytes.exit43 ]
  ret ptr %.029
}

declare i64 @upb_Map_Size(ptr noundef) local_unnamed_addr #6

declare zeroext i1 @_upb_mapsorter_pushmap(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i1 @upb_strtable_next2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i1 @upb_inttable_next(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind returns_twice }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"", !4, i64 0, !5, i64 8, !9, i64 208, !11, i64 216, !11, i64 224, !4, i64 232, !4, i64 236, !12, i64 240}
!9 = !{!"p1 _ZTS9upb_Arena", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"", !13, i64 0, !4, i64 8, !4, i64 12}
!13 = !{!"any p2 pointer", !10, i64 0}
!14 = !{!8, !11, i64 216}
!15 = !{!5, !5, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!8, !9, i64 208}
!19 = !{!8, !11, i64 224}
!20 = !{!8, !4, i64 236}
!21 = !{!8, !4, i64 232}
!22 = distinct !{!22, !17}
!23 = !{!24, !11, i64 0}
!24 = !{!"upb_Arena", !11, i64 0, !11, i64 8}
!25 = !{!24, !11, i64 8}
!26 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!27 = !{!28, !28, i64 0}
!28 = !{!"long", !5, i64 0}
!29 = !{!11, !11, i64 0}
!30 = !{!12, !13, i64 0}
!31 = !{!32, !10, i64 0}
!32 = !{!"upb_alloc", !10, i64 0}
!33 = distinct !{null, null, null}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17}
!36 = !{!37, !38, i64 0}
!37 = !{!"", !38, i64 0, !5, i64 8}
!38 = !{!"p1 _ZTS22upb_MiniTableExtension", !10, i64 0}
!39 = !{!40, !5, i64 11}
!40 = !{!"upb_MiniTableField", !4, i64 0, !41, i64 4, !41, i64 6, !41, i64 8, !5, i64 10, !5, i64 11}
!41 = !{!"short", !5, i64 0}
!42 = !{!43, !44, i64 3}
!43 = !{!"upb_Map", !5, i64 0, !5, i64 1, !44, i64 2, !44, i64 3, !5, i64 8}
!44 = !{!"_Bool", !5, i64 0}
!45 = !{i8 0, i8 2}
!46 = !{}
!47 = !{!48, !28, i64 8}
!48 = !{!"upb_Array", !28, i64 0, !28, i64 8, !28, i64 16}
!49 = distinct !{null}
!50 = !{!51, !4, i64 4}
!51 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8}
!52 = !{!51, !4, i64 8}
!53 = !{!10, !10, i64 0}
!54 = distinct !{null, null, null}
end_hunk_0
