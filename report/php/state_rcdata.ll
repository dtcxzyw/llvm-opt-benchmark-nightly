Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/state_rcdata?download=true
inline.NumInlined: 19
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@lexbor_str_res_ansi_replacement_character = external local_unnamed_addr constant [4 x i8], align 1
@lexbor_str_res_alpha_character = external local_unnamed_addr constant [256 x i64], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @lxb_html_tokenizer_state_rcdata_before(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr noundef returned %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.b = load i8, ptr %i.a, align 4, !tbaa !20, !range !21, !noundef !22
  %3 = icmp eq i8 %i.b, 0
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.d, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = load <2 x i64>, ptr %i.h, align 8, !tbaa !29
  store <2 x i64> %i.j, ptr %i.i, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr @lxb_html_tokenizer_state_rcdata, ptr %0, align 8, !tbaa !30
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define internal ptr @lxb_html_tokenizer_state_rcdata(ptr noundef initializes((152, 160)) %0, ptr noundef %1, ptr nofree noundef readnone captures(address, ret: address, provenance) %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 15 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !31
  %.not149 = icmp eq ptr %1, %2
  br i1 %.not149, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ag
  %.079150 = phi ptr [ %1, %.lr.ph ], [ %i.gc, %bb.ag ] ; 13 uses
  %i.g = load i8, ptr %.079150, align 1, !tbaa !32
  switch i8 %i.g, label %bb.ag [
    i8 60, label %bb.c
    i8 38, label %bb.f
    i8 13, label %bb.i
    i8 0, label %bb.p
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.079150, i64 1 ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !24   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %i.p = icmp ugt ptr %i.n, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = add i64 %i.l, 4096
  %i.u = add i64 %i.t, %i.s
  %i.v = sub i64 %i.u, %i.r                       ; 2 uses
  %i.w = tail call ptr @lexbor_realloc(ptr noundef %i.q, i64 noundef %i.v) #6 ; 4 uses
  store ptr %i.w, ptr %i.d, align 8, !tbaa !23
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %lxb_html_tokenizer_temp_append_data.exit, label %lxb_html_tokenizer_temp_realloc.exit.thread.i

lxb_html_tokenizer_temp_realloc.exit.thread.i:    ; preds = %bb.d
  %i.y = ptrtoint ptr %i.m to i64
  %i.z = sub i64 %i.y, %i.r
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z ; 2 uses
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !33
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %bb.e

lxb_html_tokenizer_temp_append_data.exit:         ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 2, ptr %i.ac, align 8, !tbaa !34
  br label %bb.aj

bb.e:                                             ; preds = %bb.c, %lxb_html_tokenizer_temp_realloc.exit.thread.i
  %i.ad = phi ptr [ %.pre.i, %lxb_html_tokenizer_temp_realloc.exit.thread.i ], [ %i.i, %bb.c ]
  %i.ae = phi ptr [ %i.aa, %lxb_html_tokenizer_temp_realloc.exit.thread.i ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.ad, i64 %i.l, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.l
  store ptr %i.af, ptr %i.b, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.079150, ptr %i.ai, align 8, !tbaa !35
  store ptr @lxb_html_tokenizer_state_rcdata_less_than_sign, ptr %0, align 8, !tbaa !30
  br label %bb.aj

bb.f:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %.079150, i64 1 ; 2 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !24  ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !33  ; 2 uses
  %i.ar = icmp ugt ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !23  ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = add i64 %i.an, 4096
  %i.aw = add i64 %i.av, %i.au
  %i.ax = sub i64 %i.aw, %i.at                    ; 2 uses
  %i.ay = tail call ptr @lexbor_realloc(ptr noundef %i.as, i64 noundef %i.ax) #6 ; 4 uses
  store ptr %i.ay, ptr %i.d, align 8, !tbaa !23
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %lxb_html_tokenizer_temp_append_data.exit99, label %lxb_html_tokenizer_temp_realloc.exit.thread.i97

lxb_html_tokenizer_temp_realloc.exit.thread.i97:  ; preds = %bb.g
  %i.ba = ptrtoint ptr %i.ao to i64
  %i.bb = sub i64 %i.ba, %i.at
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bb ; 2 uses
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !33
  %.pre.i98 = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %bb.h

lxb_html_tokenizer_temp_append_data.exit99:       ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 2, ptr %i.be, align 8, !tbaa !34
  br label %bb.aj

bb.h:                                             ; preds = %bb.f, %lxb_html_tokenizer_temp_realloc.exit.thread.i97
  %i.bf = phi ptr [ %.pre.i98, %lxb_html_tokenizer_temp_realloc.exit.thread.i97 ], [ %i.ak, %bb.f ]
  %i.bg = phi ptr [ %i.bc, %lxb_html_tokenizer_temp_realloc.exit.thread.i97 ], [ %i.ao, %bb.f ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.bf, i64 %i.an, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.an
  store ptr %i.bh, ptr %i.b, align 8, !tbaa !24
  store ptr @lxb_html_tokenizer_state_char_ref, ptr %0, align 8, !tbaa !30
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @lxb_html_tokenizer_state_rcdata, ptr %i.bi, align 8, !tbaa !47
  br label %bb.aj

bb.i:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %.079150, i64 1 ; 6 uses
  %.not90 = icmp ult ptr %i.bj, %2
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !31  ; 3 uses
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !24  ; 6 uses
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !33  ; 4 uses
  br i1 %.not90, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = ptrtoint ptr %.079150 to i64
  %i.bp = sub i64 %i.bo, %i.bl                    ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bp
  %i.br = icmp ugt ptr %i.bq, %i.bn
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !23  ; 2 uses
  %i.bt = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bu = ptrtoint ptr %i.bn to i64
  %i.bv = add i64 %i.bp, 4096
  %i.bw = add i64 %i.bv, %i.bu
  %i.bx = sub i64 %i.bw, %i.bt                    ; 2 uses
  %i.by = tail call ptr @lexbor_realloc(ptr noundef %i.bs, i64 noundef %i.bx) #6 ; 4 uses
  store ptr %i.by, ptr %i.d, align 8, !tbaa !23
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %lxb_html_tokenizer_temp_append_data.exit103, label %lxb_html_tokenizer_temp_realloc.exit.thread.i101

lxb_html_tokenizer_temp_realloc.exit.thread.i101: ; preds = %bb.k
  %i.ca = ptrtoint ptr %i.bm to i64
  %i.cb = sub i64 %i.ca, %i.bt
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cb ; 2 uses
  store ptr %i.cc, ptr %i.b, align 8, !tbaa !24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bx
  store ptr %i.cd, ptr %i.c, align 8, !tbaa !33
  %.pre.i102 = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %bb.l

lxb_html_tokenizer_temp_append_data.exit103:      ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 2, ptr %i.ce, align 8, !tbaa !34
  br label %bb.aj

bb.l:                                             ; preds = %bb.j, %lxb_html_tokenizer_temp_realloc.exit.thread.i101
  %i.cf = phi ptr [ %.pre.i102, %lxb_html_tokenizer_temp_realloc.exit.thread.i101 ], [ %i.bk, %bb.j ]
  %i.cg = phi ptr [ %i.cc, %lxb_html_tokenizer_temp_realloc.exit.thread.i101 ], [ %i.bm, %bb.j ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr align 1 %i.cf, i64 %i.bp, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.bp
  store ptr %i.ch, ptr %i.b, align 8, !tbaa !24
  store ptr @lxb_html_tokenizer_state_cr, ptr %0, align 8, !tbaa !30
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @lxb_html_tokenizer_state_rcdata, ptr %i.ci, align 8, !tbaa !47
  br label %bb.aj

bb.m:                                             ; preds = %bb.i
  %i.cj = ptrtoint ptr %i.bj to i64
  %i.ck = sub i64 %i.cj, %i.bl                    ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ck
  %i.cm = icmp ugt ptr %i.cl, %i.bn
  br i1 %i.cm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !23  ; 2 uses
  %i.co = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cp = ptrtoint ptr %i.bn to i64
  %i.cq = add i64 %i.ck, 4096
  %i.cr = add i64 %i.cq, %i.cp
  %i.cs = sub i64 %i.cr, %i.co                    ; 2 uses
  %i.ct = tail call ptr @lexbor_realloc(ptr noundef %i.cn, i64 noundef %i.cs) #6 ; 4 uses
  store ptr %i.ct, ptr %i.d, align 8, !tbaa !23
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %lxb_html_tokenizer_temp_append_data.exit107, label %lxb_html_tokenizer_temp_realloc.exit.thread.i105

lxb_html_tokenizer_temp_realloc.exit.thread.i105: ; preds = %bb.n
  %i.cv = ptrtoint ptr %i.bm to i64
  %i.cw = sub i64 %i.cv, %i.co
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cw ; 2 uses
  store ptr %i.cx, ptr %i.b, align 8, !tbaa !24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cs
  store ptr %i.cy, ptr %i.c, align 8, !tbaa !33
  %.pre.i106 = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %bb.o

lxb_html_tokenizer_temp_append_data.exit107:      ; preds = %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 2, ptr %i.cz, align 8, !tbaa !34
  br label %bb.aj

bb.o:                                             ; preds = %bb.m, %lxb_html_tokenizer_temp_realloc.exit.thread.i105
  %i.da = phi ptr [ %.pre.i106, %lxb_html_tokenizer_temp_realloc.exit.thread.i105 ], [ %i.bk, %bb.m ]
  %i.db = phi ptr [ %i.cx, %lxb_html_tokenizer_temp_realloc.exit.thread.i105 ], [ %i.bm, %bb.m ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %i.da, i64 %i.ck, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ck ; 2 uses
  store ptr %i.dc, ptr %i.b, align 8, !tbaa !24
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -1
  store i8 10, ptr %i.dd, align 1, !tbaa !32
  %i.de = getelementptr inbounds nuw i8, ptr %.079150, i64 2 ; 2 uses
  store ptr %i.de, ptr %i.a, align 8, !tbaa !31
  %i.df = load i8, ptr %i.bj, align 1, !tbaa !32
  %.not92 = icmp eq i8 %i.df, 10                  ; 2 uses
  %spec.store.select = select i1 %.not92, ptr %i.de, ptr %i.bj
  store ptr %spec.store.select, ptr %i.a, align 8, !tbaa !31
  %spec.select = select i1 %.not92, ptr %i.bj, ptr %.079150
  br label %bb.ag

bb.p:                                             ; preds = %bb.b
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.dh = ptrtoint ptr %.079150 to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di                    ; 4 uses
  %i.dk = load ptr, ptr %i.b, align 8, !tbaa !24  ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dj
  %i.dm = load ptr, ptr %i.c, align 8, !tbaa !33  ; 2 uses
  %i.dn = icmp ugt ptr %i.dl, %i.dm
  br i1 %i.dn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.do = load ptr, ptr %i.d, align 8, !tbaa !23  ; 2 uses
  %i.dp = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = add i64 %i.dj, 4096
  %i.ds = add i64 %i.dr, %i.dq
  %i.dt = sub i64 %i.ds, %i.dp                    ; 2 uses
  %i.du = tail call ptr @lexbor_realloc(ptr noundef %i.do, i64 noundef %i.dt) #6 ; 4 uses
  store ptr %i.du, ptr %i.d, align 8, !tbaa !23
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %lxb_html_tokenizer_temp_append_data.exit111, label %lxb_html_tokenizer_temp_realloc.exit.thread.i109

lxb_html_tokenizer_temp_realloc.exit.thread.i109: ; preds = %bb.q
  %i.dw = ptrtoint ptr %i.dk to i64
  %i.dx = sub i64 %i.dw, %i.dp
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dx ; 2 uses
  store ptr %i.dy, ptr %i.b, align 8, !tbaa !24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dt
  store ptr %i.dz, ptr %i.c, align 8, !tbaa !33
  %.pre.i110 = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %bb.r

lxb_html_tokenizer_temp_append_data.exit111:      ; preds = %bb.q
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 2, ptr %i.ea, align 8, !tbaa !34
  br label %bb.aj

bb.r:                                             ; preds = %bb.p, %lxb_html_tokenizer_temp_realloc.exit.thread.i109
  %i.eb = phi ptr [ %.pre.i110, %lxb_html_tokenizer_temp_realloc.exit.thread.i109 ], [ %i.dg, %bb.p ]
  %i.ec = phi ptr [ %i.dy, %lxb_html_tokenizer_temp_realloc.exit.thread.i109 ], [ %i.dk, %bb.p ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ec, ptr align 1 %i.eb, i64 %i.dj, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dj ; 6 uses
  store ptr %i.ed, ptr %i.b, align 8, !tbaa !24
  %i.ee = load i8, ptr %i.e, align 4, !tbaa !20, !range !21, !noundef !22
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %bb.r
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !25 ; 7 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !28
  %.not86 = icmp eq ptr %i.ei, null
  br i1 %.not86, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !48
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !35
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 80
  store i64 2, ptr %i.em, align 8, !tbaa !36
  %i.en = load ptr, ptr %i.d, align 8, !tbaa !23  ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !37
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  store ptr %i.ed, ptr %i.ep, align 8, !tbaa !38
  %.not87 = icmp eq ptr %i.en, %i.ed
  br i1 %.not87, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !39
  %i.es = and i32 %i.er, 16
  %.not88 = icmp eq i32 %i.es, 0
  br i1 %.not88, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @lxb_html_tokenizer_attr_last_duplicate(ptr noundef nonnull %0) #6
  %.pre = load ptr, ptr %i.eg, align 8, !tbaa !25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.et = phi ptr [ %.pre, %bb.w ], [ %i.eh, %bb.v ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 88
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !40
  %3 = and i32 %i.ev, 1
  %.not89 = icmp eq i32 %3, 0
  br i1 %.not89, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lxb_html_tokenizer_validate_close_tag(ptr noundef nonnull %0) #6
  %.pre160 = load ptr, ptr %i.eg, align 8, !tbaa !25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ew = phi ptr [ %.pre160, %bb.y ], [ %i.et, %bb.x ]
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !41
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !42
  %i.fb = tail call ptr %i.ey(ptr noundef nonnull %0, ptr noundef %i.ew, ptr noundef %i.fa) #6 ; 3 uses
  store ptr %i.fb, ptr %i.eg, align 8, !tbaa !25
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !34
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  store i32 1, ptr %i.fd, align 8, !tbaa !34
  br label %bb.aj

bb.ac:                                            ; preds = %bb.z, %bb.u
  %i.fg = phi ptr [ %i.fb, %bb.z ], [ %i.eh, %bb.u ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.fg, i8 0, i64 96, i1 false)
  %i.fh = load ptr, ptr %i.d, align 8, !tbaa !23
  store ptr %i.fh, ptr %i.b, align 8, !tbaa !24
  br label %bb.aj

bb.ad:                                            ; preds = %bb.r
  %i.fi = getelementptr inbounds nuw i8, ptr %.079150, i64 1
  store ptr %i.fi, ptr %i.a, align 8, !tbaa !31
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ed, i64 3
  %i.fk = load ptr, ptr %i.c, align 8, !tbaa !33  ; 2 uses
  %i.fl = icmp ugt ptr %i.fj, %i.fk
  br i1 %i.fl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fm = load ptr, ptr %i.d, align 8, !tbaa !23  ; 2 uses
  %i.fn = ptrtoint ptr %i.fm to i64               ; 2 uses
  %i.fo = ptrtoint ptr %i.fk to i64
  %i.fp = add i64 %i.fo, 4099
  %i.fq = sub i64 %i.fp, %i.fn                    ; 2 uses
  %i.fr = tail call ptr @lexbor_realloc(ptr noundef %i.fm, i64 noundef %i.fq) #6 ; 4 uses
  store ptr %i.fr, ptr %i.d, align 8, !tbaa !23
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %lxb_html_tokenizer_temp_append.exit, label %lxb_html_tokenizer_temp_realloc.exit.thread.i113

lxb_html_tokenizer_temp_realloc.exit.thread.i113: ; preds = %bb.ae
  %i.ft = ptrtoint ptr %i.ed to i64
  %i.fu = sub i64 %i.ft, %i.fn
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fq
  store ptr %i.fw, ptr %i.c, align 8, !tbaa !33
  br label %bb.af

lxb_html_tokenizer_temp_append.exit:              ; preds = %bb.ae
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 2, ptr %i.fx, align 8, !tbaa !34
  br label %bb.aj

bb.af:                                            ; preds = %bb.ad, %lxb_html_tokenizer_temp_realloc.exit.thread.i113
  %i.fy = phi ptr [ %i.fv, %lxb_html_tokenizer_temp_realloc.exit.thread.i113 ], [ %i.ed, %bb.ad ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fy, ptr noundef nonnull align 1 dereferenceable(3) @lexbor_str_res_ansi_replacement_character, i64 3, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 3
  store ptr %i.fz, ptr %i.b, align 8, !tbaa !24
  %i.ga = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.gb = tail call ptr @lxb_html_tokenizer_error_add(ptr noundef %i.ga, ptr noundef nonnull %.079150, i32 noundef 45) #6 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.o, %bb.b, %bb.af
  %.1 = phi ptr [ %.079150, %bb.b ], [ %.079150, %bb.af ], [ %spec.select, %bb.o ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 3 uses
  %.not = icmp eq ptr %i.gc, %2
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !46

._crit_edge.loopexit:                             ; preds = %bb.ag
  %.pre161 = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.gd = phi ptr [ %1, %bb.a ], [ %.pre161, %._crit_edge.loopexit ] ; 2 uses
  %.079.lcssa = phi ptr [ %1, %bb.a ], [ %i.gc, %._crit_edge.loopexit ] ; 2 uses
  %i.ge = ptrtoint ptr %.079.lcssa to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf                    ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !24 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gg
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !33 ; 2 uses
  %i.gm = icmp ugt ptr %i.gj, %i.gl
  br i1 %i.gm, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !23 ; 2 uses
  %i.gp = ptrtoint ptr %i.go to i64               ; 2 uses
  %i.gq = ptrtoint ptr %i.gl to i64
  %i.gr = add i64 %i.gg, 4096
  %i.gs = add i64 %i.gr, %i.gq
  %i.gt = sub i64 %i.gs, %i.gp                    ; 2 uses
  %i.gu = tail call ptr @lexbor_realloc(ptr noundef %i.go, i64 noundef %i.gt) #6 ; 4 uses
  store ptr %i.gu, ptr %i.gn, align 8, !tbaa !23
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %lxb_html_tokenizer_temp_append_data.exit117, label %lxb_html_tokenizer_temp_realloc.exit.thread.i115

lxb_html_tokenizer_temp_realloc.exit.thread.i115: ; preds = %bb.ah
  %i.gw = ptrtoint ptr %i.gi to i64
  %i.gx = sub i64 %i.gw, %i.gp
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gx ; 2 uses
  store ptr %i.gy, ptr %i.gh, align 8, !tbaa !24
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gt
  store ptr %i.gz, ptr %i.gk, align 8, !tbaa !33
  %.pre.i116 = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %bb.ai

lxb_html_tokenizer_temp_append_data.exit117:      ; preds = %bb.ah
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 2, ptr %i.ha, align 8, !tbaa !34
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge, %lxb_html_tokenizer_temp_realloc.exit.thread.i115
  %i.hb = phi ptr [ %.pre.i116, %lxb_html_tokenizer_temp_realloc.exit.thread.i115 ], [ %i.gd, %._crit_edge ]
  %i.hc = phi ptr [ %i.gy, %lxb_html_tokenizer_temp_realloc.exit.thread.i115 ], [ %i.gi, %._crit_edge ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hc, ptr align 1 %i.hb, i64 %i.gg, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.gg
  store ptr %i.hd, ptr %i.gh, align 8, !tbaa !24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %lxb_html_tokenizer_temp_append_data.exit117, %lxb_html_tokenizer_temp_append.exit, %lxb_html_tokenizer_temp_append_data.exit111, %lxb_html_tokenizer_temp_append_data.exit107, %lxb_html_tokenizer_temp_append_data.exit103, %lxb_html_tokenizer_temp_append_data.exit99, %lxb_html_tokenizer_temp_append_data.exit, %bb.aa, %bb.ab, %bb.ac, %bb.l, %bb.h, %bb.e
  %.0 = phi ptr [ %2, %lxb_html_tokenizer_temp_append.exit ], [ %i.h, %bb.e ], [ %2, %lxb_html_tokenizer_temp_append_data.exit ], [ %i.aj, %bb.h ], [ %2, %lxb_html_tokenizer_temp_append_data.exit99 ], [ %i.bj, %bb.l ], [ %2, %lxb_html_tokenizer_temp_append_data.exit103 ], [ %2, %lxb_html_tokenizer_temp_append_data.exit107 ], [ %2, %lxb_html_tokenizer_temp_append_data.exit111 ], [ %2, %bb.ac ], [ %2, %bb.aa ], [ %2, %bb.ab ], [ %.079.lcssa, %bb.ai ], [ %2, %lxb_html_tokenizer_temp_append_data.exit117 ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal ptr @lxb_html_tokenizer_state_rcdata_less_than_sign(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1, ptr nofree readnone captures(none) %2) #2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !32
  %i.b = icmp eq i8 %i.a, 47                      ; 2 uses
  %spec.select = select i1 %i.b, ptr @lxb_html_tokenizer_state_rcdata_end_tag_open, ptr @lxb_html_tokenizer_state_rcdata
  %spec.select6.idx = zext i1 %i.b to i64
  %spec.select6 = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select6.idx
  store ptr %spec.select, ptr %0, align 8, !tbaa !30
  ret ptr %spec.select6
}

declare ptr @lxb_html_tokenizer_state_char_ref(ptr noundef, ptr noundef, ptr noundef) #3

declare ptr @lxb_html_tokenizer_state_cr(ptr noundef, ptr noundef, ptr noundef) #3

declare void @lxb_html_tokenizer_attr_last_duplicate(ptr noundef) local_unnamed_addr #3

declare void @lxb_html_tokenizer_validate_close_tag(ptr noundef) local_unnamed_addr #3

declare ptr @lxb_html_tokenizer_error_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare ptr @lexbor_realloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef ptr @lxb_html_tokenizer_state_rcdata_end_tag_open(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr noundef %1, ptr nofree noundef readnone captures(ret: address, provenance) %2) #1 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !32
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @lexbor_str_res_alpha_character, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29
  %.not = icmp eq i64 %i.d, 255
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !24
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %1, ptr %i.e, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.m, ptr %i.n, align 8, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.o = phi ptr [ %i.g, %bb.b ], [ %.pre, %._crit_edge ] ; 3 uses
  %storemerge = phi ptr [ @lxb_html_tokenizer_state_rcdata_end_tag_name, %bb.b ], [ @lxb_html_tokenizer_state_rcdata, %._crit_edge ]
end_hunk_0
begin_hunk_1_@lxb_html_tokenizer_state_rcdata_end_tag_name:bb.a
  br label %bb.au

bb.f:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.au = load i64, ptr %i.at, align 8, !tbaa !55 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !25 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  store i64 %i.au, ptr %i.ax, align 8, !tbaa !36
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !56
  %.not173 = icmp eq i64 %i.az, %i.au
  br i1 %.not173, label %bb.al, label %bb.ak

bb.g:                                             ; preds = %.lr.ph
  %i.ba = ptrtoint ptr %.0155217 to i64
  %i.bb = ptrtoint ptr %1 to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !24 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !33 ; 2 uses
  %i.bi = icmp ugt ptr %i.bf, %i.bh
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !23 ; 2 uses
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bh to i64
  %i.bn = add i64 %i.bc, 4096
  %i.bo = add i64 %i.bn, %i.bm
  %i.bp = sub i64 %i.bo, %i.bl                    ; 2 uses
  %i.bq = tail call ptr @lexbor_realloc(ptr noundef %i.bk, i64 noundef %i.bp) #6 ; 4 uses
  store ptr %i.bq, ptr %i.bj, align 8, !tbaa !23
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %lxb_html_tokenizer_temp_append_data.exit181, label %lxb_html_tokenizer_temp_realloc.exit.thread.i179

lxb_html_tokenizer_temp_realloc.exit.thread.i179: ; preds = %bb.h
  %i.bs = ptrtoint ptr %i.be to i64
  %i.bt = sub i64 %i.bs, %i.bl
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bt ; 2 uses
  store ptr %i.bu, ptr %i.bd, align 8, !tbaa !24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp
  store ptr %i.bv, ptr %i.bg, align 8, !tbaa !33
  %.pre.i180 = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %bb.i

lxb_html_tokenizer_temp_append_data.exit181:      ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 2, ptr %i.bw, align 8, !tbaa !34
  br label %bb.au

bb.i:                                             ; preds = %bb.g, %lxb_html_tokenizer_temp_realloc.exit.thread.i179
  %i.bx = phi ptr [ %.pre.i180, %lxb_html_tokenizer_temp_realloc.exit.thread.i179 ], [ %1, %bb.g ]
  %i.by = phi ptr [ %i.bu, %lxb_html_tokenizer_temp_realloc.exit.thread.i179 ], [ %i.be, %bb.g ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.bx, i64 %i.bc, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bc ; 2 uses
  store ptr %i.bz, ptr %i.bd, align 8, !tbaa !24
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !51
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !23
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !45
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 2 ; 2 uses
  %i.ci = ptrtoint ptr %i.bz to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = tail call ptr @lxb_tag_append_lower(ptr noundef %i.cb, ptr noundef nonnull %i.ch, i64 noundef %i.ck) #6 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 2, ptr %i.cn, align 8, !tbaa !34
  br label %bb.au

bb.k:                                             ; preds = %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !55 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !25 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 80
  store i64 %i.cp, ptr %i.cs, align 8, !tbaa !36
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !56
  %.not171 = icmp eq i64 %i.cu, %i.cp
  br i1 %.not171, label %bb.al, label %bb.ak

bb.l:                                             ; preds = %.lr.ph
  %i.cv = ptrtoint ptr %.0155217 to i64
  %i.cw = ptrtoint ptr %1 to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !24 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !33 ; 2 uses
  %i.dd = icmp ugt ptr %i.da, %i.dc
  br i1 %i.dd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !23 ; 2 uses
  %i.dg = ptrtoint ptr %i.df to i64               ; 2 uses
  %i.dh = ptrtoint ptr %i.dc to i64
  %i.di = add i64 %i.cx, 4096
  %i.dj = add i64 %i.di, %i.dh
  %i.dk = sub i64 %i.dj, %i.dg                    ; 2 uses
  %i.dl = tail call ptr @lexbor_realloc(ptr noundef %i.df, i64 noundef %i.dk) #6 ; 4 uses
  store ptr %i.dl, ptr %i.de, align 8, !tbaa !23
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %lxb_html_tokenizer_temp_append_data.exit185, label %lxb_html_tokenizer_temp_realloc.exit.thread.i183

lxb_html_tokenizer_temp_realloc.exit.thread.i183: ; preds = %bb.m
  %i.dn = ptrtoint ptr %i.cz to i64
  %i.do = sub i64 %i.dn, %i.dg
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.do ; 2 uses
  store ptr %i.dp, ptr %i.cy, align 8, !tbaa !24
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk
  store ptr %i.dq, ptr %i.db, align 8, !tbaa !33
  %.pre.i184 = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %bb.n

lxb_html_tokenizer_temp_append_data.exit185:      ; preds = %bb.m
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 2, ptr %i.dr, align 8, !tbaa !34
  br label %bb.au

bb.n:                                             ; preds = %bb.l, %lxb_html_tokenizer_temp_realloc.exit.thread.i183
  %i.ds = phi ptr [ %.pre.i184, %lxb_html_tokenizer_temp_realloc.exit.thread.i183 ], [ %1, %bb.l ]
  %i.dt = phi ptr [ %i.dp, %lxb_html_tokenizer_temp_realloc.exit.thread.i183 ], [ %i.cz, %bb.l ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dt, ptr align 1 %i.ds, i64 %i.cx, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.cx ; 2 uses
  store ptr %i.du, ptr %i.cy, align 8, !tbaa !24
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !51
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !23
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !45
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2 ; 2 uses
  %i.ed = ptrtoint ptr %i.du to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = tail call ptr @lxb_tag_append_lower(ptr noundef %i.dw, ptr noundef nonnull %i.ec, i64 noundef %i.ef) #6 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 2, ptr %i.ei, align 8, !tbaa !34
  br label %bb.au

bb.p:                                             ; preds = %bb.n
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !55 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !25 ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 80 ; 2 uses
  store i64 %i.ek, ptr %i.en, align 8, !tbaa !36
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !56
  %.not164 = icmp eq i64 %i.ep, %i.ek
  br i1 %.not164, label %bb.q, label %bb.ak

bb.q:                                             ; preds = %bb.p
  store ptr @lxb_html_tokenizer_state_data_before, ptr %0, align 8, !tbaa !30
  store i64 2, ptr %i.en, align 8, !tbaa !36
  %i.eq = load ptr, ptr %i.dx, align 8, !tbaa !23 ; 2 uses
  %i.er = load i64, ptr %i.dz, align 8, !tbaa !45 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.er ; 2 uses
  store ptr %i.es, ptr %i.cy, align 8, !tbaa !24
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  store ptr %i.eq, ptr %i.et, align 8, !tbaa !37
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  store ptr %i.es, ptr %i.eu, align 8, !tbaa !38
  %.not165 = icmp samesign eq i64 %i.er, 0
  br i1 %.not165, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !39
  %i.ex = and i32 %i.ew, 16
  %.not166 = icmp eq i32 %i.ex, 0
  br i1 %.not166, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @lxb_html_tokenizer_attr_last_duplicate(ptr noundef nonnull %0) #6
  %.pre = load ptr, ptr %i.el, align 8, !tbaa !25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ey = phi ptr [ %.pre, %bb.s ], [ %i.em, %bb.r ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 88
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !40
  %3 = and i32 %i.fa, 1
  %.not167 = icmp eq i32 %3, 0
  br i1 %.not167, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lxb_html_tokenizer_validate_close_tag(ptr noundef nonnull %0) #6
  %.pre224 = load ptr, ptr %i.el, align 8, !tbaa !25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fb = phi ptr [ %.pre224, %bb.u ], [ %i.ey, %bb.t ]
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !41
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !42
  %i.fg = tail call ptr %i.fd(ptr noundef nonnull %0, ptr noundef %i.fb, ptr noundef %i.ff) #6 ; 3 uses
  store ptr %i.fg, ptr %i.el, align 8, !tbaa !25
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !34
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.x, label %bb.au

bb.x:                                             ; preds = %bb.w
  store i32 1, ptr %i.fi, align 8, !tbaa !34
  br label %bb.au

bb.y:                                             ; preds = %bb.v, %bb.q
  %i.fl = phi ptr [ %i.fg, %bb.v ], [ %i.em, %bb.q ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.fl, i8 0, i64 96, i1 false)
  %i.fm = load ptr, ptr %i.dx, align 8, !tbaa !23
  store ptr %i.fm, ptr %i.cy, align 8, !tbaa !24
  %i.fn = load i64, ptr %i.eo, align 8, !tbaa !56
  %i.fo = load ptr, ptr %i.el, align 8, !tbaa !25 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 80
  store i64 %i.fn, ptr %i.fp, align 8, !tbaa !36
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !44
  store ptr %i.fr, ptr %i.fo, align 8, !tbaa !28
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store ptr %.0155217, ptr %i.fs, align 8, !tbaa !35
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 88 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !40
  %i.fv = or i32 %i.fu, 1
  store i32 %i.fv, ptr %i.ft, align 8, !tbaa !40
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !39
  %i.fy = and i32 %i.fx, 16
  %.not168 = icmp eq i32 %i.fy, 0
  br i1 %.not168, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  tail call void @lxb_html_tokenizer_attr_last_duplicate(ptr noundef nonnull %0) #6
  %.pre225 = load ptr, ptr %i.el, align 8, !tbaa !25 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre225, i64 88
  %.pre226 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !40
  %4 = and i32 %.pre226, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %bb.aa, label %.thread

.thread:                                          ; preds = %bb.y, %bb.z
  tail call void @lxb_html_tokenizer_validate_close_tag(ptr noundef nonnull %0) #6
  %.pre227 = load ptr, ptr %i.el, align 8, !tbaa !25
  br label %bb.aa

bb.aa:                                            ; preds = %.thread, %bb.z
  %i.fz = phi ptr [ %.pre227, %.thread ], [ %.pre225, %bb.z ]
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !41
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !42
  %i.ge = tail call ptr %i.gb(ptr noundef nonnull %0, ptr noundef %i.fz, ptr noundef %i.gd) #6 ; 3 uses
  store ptr %i.ge, ptr %i.el, align 8, !tbaa !25
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !34
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.ac, label %bb.au

bb.ac:                                            ; preds = %bb.ab
  store i32 1, ptr %i.gg, align 8, !tbaa !34
  br label %bb.au

bb.ad:                                            ; preds = %bb.aa
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ge, i8 0, i64 96, i1 false)
  %i.gj = load ptr, ptr %i.dx, align 8, !tbaa !23
  store ptr %i.gj, ptr %i.cy, align 8, !tbaa !24
  %i.gk = getelementptr inbounds nuw i8, ptr %.0155217, i64 1
  br label %bb.au

bb.ae:                                            ; preds = %.lr.ph
  %i.gl = zext i8 %i.e to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr @lexbor_str_res_alpha_character, i64 %i.gl
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !29
  %i.go = icmp eq i64 %i.gn, 255
  br i1 %i.go, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.gp = ptrtoint ptr %.0155217 to i64
  %i.gq = ptrtoint ptr %1 to i64
  %i.gr = sub i64 %i.gp, %i.gq                    ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !24 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gr
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !33 ; 2 uses
  %i.gx = icmp ugt ptr %i.gu, %i.gw
  br i1 %i.gx, label %bb.ag, label %lxb_html_tokenizer_temp_append_data.exit189.thread

bb.ag:                                            ; preds = %bb.af
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !23 ; 2 uses
  %i.ha = ptrtoint ptr %i.gz to i64               ; 2 uses
  %i.hb = ptrtoint ptr %i.gw to i64
  %i.hc = add i64 %i.gr, 4096
  %i.hd = add i64 %i.hc, %i.hb
  %i.he = sub i64 %i.hd, %i.ha                    ; 2 uses
  %i.hf = tail call ptr @lexbor_realloc(ptr noundef %i.gz, i64 noundef %i.he) #6 ; 4 uses
  store ptr %i.hf, ptr %i.gy, align 8, !tbaa !23
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %lxb_html_tokenizer_temp_append_data.exit189, label %lxb_html_tokenizer_temp_realloc.exit.thread.i187

lxb_html_tokenizer_temp_realloc.exit.thread.i187: ; preds = %bb.ag
  %i.hh = ptrtoint ptr %i.gt to i64
  %i.hi = sub i64 %i.hh, %i.ha
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hi ; 2 uses
  store ptr %i.hj, ptr %i.gs, align 8, !tbaa !24
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.he
  store ptr %i.hk, ptr %i.gv, align 8, !tbaa !33
  %.pre.i188 = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %lxb_html_tokenizer_temp_append_data.exit189.thread

lxb_html_tokenizer_temp_append_data.exit189.thread: ; preds = %bb.af, %lxb_html_tokenizer_temp_realloc.exit.thread.i187
  %i.hl = phi ptr [ %.pre.i188, %lxb_html_tokenizer_temp_realloc.exit.thread.i187 ], [ %1, %bb.af ]
  %i.hm = phi ptr [ %i.hj, %lxb_html_tokenizer_temp_realloc.exit.thread.i187 ], [ %i.gt, %bb.af ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hm, ptr align 1 %i.hl, i64 %i.gr, i1 false)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.gr
  store ptr %i.hn, ptr %i.gs, align 8, !tbaa !24
  br label %bb.ak

lxb_html_tokenizer_temp_append_data.exit189:      ; preds = %bb.ag
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 2, ptr %i.ho, align 8, !tbaa !34
  br label %bb.au

bb.ah:                                            ; preds = %bb.ae
  %i.hp = getelementptr inbounds nuw i8, ptr %.0155217, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.hp, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.ah, %bb.a
  %.0155.lcssa = phi ptr [ %1, %bb.a ], [ %scevgep, %bb.ah ] ; 2 uses
  %i.hq = ptrtoint ptr %.0155.lcssa to i64
  %i.hr = ptrtoint ptr %1 to i64
  %i.hs = sub i64 %i.hq, %i.hr                    ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !24 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hs
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !33 ; 2 uses
  %i.hy = icmp ugt ptr %i.hv, %i.hx
  br i1 %i.hy, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %._crit_edge
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !23 ; 2 uses
  %i.ib = ptrtoint ptr %i.ia to i64               ; 2 uses
  %i.ic = ptrtoint ptr %i.hx to i64
  %i.id = add i64 %i.hs, 4096
  %i.ie = add i64 %i.id, %i.ic
  %i.if = sub i64 %i.ie, %i.ib                    ; 2 uses
  %i.ig = tail call ptr @lexbor_realloc(ptr noundef %i.ia, i64 noundef %i.if) #6 ; 4 uses
  store ptr %i.ig, ptr %i.hz, align 8, !tbaa !23
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %lxb_html_tokenizer_temp_append_data.exit193, label %lxb_html_tokenizer_temp_realloc.exit.thread.i191

lxb_html_tokenizer_temp_realloc.exit.thread.i191: ; preds = %bb.ai
  %i.ii = ptrtoint ptr %i.hu to i64
  %i.ij = sub i64 %i.ii, %i.ib
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ij ; 2 uses
  store ptr %i.ik, ptr %i.ht, align 8, !tbaa !24
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.if
  store ptr %i.il, ptr %i.hw, align 8, !tbaa !33
  %.pre.i192 = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %bb.aj

lxb_html_tokenizer_temp_append_data.exit193:      ; preds = %bb.ai
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 2, ptr %i.im, align 8, !tbaa !34
  br label %bb.au

bb.aj:                                            ; preds = %._crit_edge, %lxb_html_tokenizer_temp_realloc.exit.thread.i191
  %i.in = phi ptr [ %.pre.i192, %lxb_html_tokenizer_temp_realloc.exit.thread.i191 ], [ %1, %._crit_edge ]
  %i.io = phi ptr [ %i.ik, %lxb_html_tokenizer_temp_realloc.exit.thread.i191 ], [ %i.hu, %._crit_edge ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.io, ptr align 1 %i.in, i64 %i.hs, i1 false)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.hs
  store ptr %i.ip, ptr %i.ht, align 8, !tbaa !24
  br label %bb.au

bb.ak:                                            ; preds = %lxb_html_tokenizer_temp_append_data.exit189.thread, %bb.p, %bb.k, %bb.f
  store ptr @lxb_html_tokenizer_state_rcdata, ptr %0, align 8, !tbaa !30
  br label %bb.au

bb.al:                                            ; preds = %bb.k, %bb.f
  %i.iq = phi ptr [ %i.aw, %bb.f ], [ %i.cr, %bb.k ] ; 5 uses
  %storemerge = phi ptr [ @lxb_html_tokenizer_state_before_attribute_name, %bb.f ], [ @lxb_html_tokenizer_state_self_closing_start_tag, %bb.k ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !30
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 80
  store i64 2, ptr %i.is, align 8, !tbaa !36
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !23 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !45 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.iw ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.ix, ptr %i.iy, align 8, !tbaa !24
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  store ptr %i.iu, ptr %i.iz, align 8, !tbaa !37
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iq, i64 40
  store ptr %i.ix, ptr %i.ja, align 8, !tbaa !38
  %.not174 = icmp samesign eq i64 %i.iw, 0
  br i1 %.not174, label %bb.at, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !39
  %i.jd = and i32 %i.jc, 16
  %.not175 = icmp eq i32 %i.jd, 0
  br i1 %.not175, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call void @lxb_html_tokenizer_attr_last_duplicate(ptr noundef nonnull %0) #6
  %.pre228 = load ptr, ptr %i.ir, align 8, !tbaa !25
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.je = phi ptr [ %.pre228, %bb.an ], [ %i.iq, %bb.am ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 88
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !40
  %6 = and i32 %i.jg, 1
  %.not176 = icmp eq i32 %6, 0
  br i1 %.not176, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @lxb_html_tokenizer_validate_close_tag(ptr noundef nonnull %0) #6
  %.pre229 = load ptr, ptr %i.ir, align 8, !tbaa !25
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.jh = phi ptr [ %.pre229, %bb.ap ], [ %i.je, %bb.ao ]
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !41
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !42
  %i.jm = tail call ptr %i.jj(ptr noundef nonnull %0, ptr noundef %i.jh, ptr noundef %i.jl) #6 ; 3 uses
  store ptr %i.jm, ptr %i.ir, align 8, !tbaa !25
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !34
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  store i32 1, ptr %i.jo, align 8, !tbaa !34
  br label %bb.au

bb.at:                                            ; preds = %bb.aq, %bb.al
  %i.jr = phi ptr [ %i.jm, %bb.aq ], [ %i.iq, %bb.al ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.jr, i8 0, i64 96, i1 false)
  %i.js = load ptr, ptr %i.it, align 8, !tbaa !23
  store ptr %i.js, ptr %i.iy, align 8, !tbaa !24
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !56
  %i.jv = load ptr, ptr %i.ir, align 8, !tbaa !25 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 80
  store i64 %i.ju, ptr %i.jw, align 8, !tbaa !36
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store ptr %.0155217, ptr %i.jx, align 8, !tbaa !35
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 88 ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !40
  %i.ka = or i32 %i.jz, 1
  store i32 %i.ka, ptr %i.jy, align 8, !tbaa !40
  %i.kb = getelementptr inbounds nuw i8, ptr %.0155217, i64 1
  br label %bb.au

bb.au:                                            ; preds = %bb.aj, %lxb_html_tokenizer_temp_append_data.exit193, %lxb_html_tokenizer_temp_append_data.exit189, %bb.o, %lxb_html_tokenizer_temp_append_data.exit185, %bb.j, %lxb_html_tokenizer_temp_append_data.exit181, %bb.e, %lxb_html_tokenizer_temp_append_data.exit, %bb.ar, %bb.as, %bb.ab, %bb.ac, %bb.w, %bb.x, %bb.at, %bb.ak, %bb.ad
  %.3 = phi ptr [ %2, %bb.ab ], [ %.0155217, %bb.ak ], [ %2, %lxb_html_tokenizer_temp_append_data.exit189 ], [ %2, %bb.ac ], [ %i.kb, %bb.at ], [ %2, %bb.e ], [ %2, %lxb_html_tokenizer_temp_append_data.exit ], [ %2, %bb.j ], [ %2, %lxb_html_tokenizer_temp_append_data.exit181 ], [ %2, %lxb_html_tokenizer_temp_append_data.exit185 ], [ %2, %bb.w ], [ %i.gk, %bb.ad ], [ %2, %bb.o ], [ %2, %bb.ar ], [ %2, %bb.x ], [ %2, %bb.as ], [ %.0155.lcssa, %bb.aj ], [ %2, %lxb_html_tokenizer_temp_append_data.exit193 ]
  ret ptr %.3
}

declare ptr @lxb_tag_append_lower(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @lxb_html_tokenizer_state_before_attribute_name(ptr noundef, ptr noundef, ptr noundef) #3

declare ptr @lxb_html_tokenizer_state_self_closing_start_tag(ptr noundef, ptr noundef, ptr noundef) #3

declare ptr @lxb_html_tokenizer_state_data_before(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS11lexbor_hash", !12, i64 0}
!14 = !{!"p1 _ZTS13lxb_html_tree", !12, i64 0}
!15 = !{!"p1 omnipotent char", !12, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!"_Bool", !8, i64 0}
!18 = !{!"p1 _ZTS18lxb_html_tokenizer", !12, i64 0}
!19 = !{!"lxb_html_tokenizer", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !13, i64 32, !13, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !14, i64 96, !15, i64 104, !15, i64 112, !16, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !16, i64 168, !16, i64 176, !12, i64 184, !12, i64 192, !16, i64 200, !16, i64 208, !9, i64 216, !9, i64 220, !17, i64 224, !9, i64 228, !9, i64 232, !17, i64 236, !8, i64 237, !9, i64 244, !18, i64 248, !16, i64 256}
!20 = !{!19, !17, i64 236}
!21 = !{i8 0, i8 2}
!22 = !{}
!23 = !{!19, !15, i64 128}
!24 = !{!19, !15, i64 136}
!25 = !{!19, !12, i64 64}
!26 = !{!"p1 _ZTS19lxb_html_token_attr", !12, i64 0}
!27 = !{!"", !15, i64 0, !15, i64 8, !16, i64 16, !16, i64 24, !15, i64 32, !15, i64 40, !26, i64 48, !26, i64 56, !12, i64 64, !16, i64 72, !16, i64 80, !9, i64 88}
!28 = !{!27, !15, i64 0}
!29 = !{!16, !16, i64 0}
!30 = !{!19, !12, i64 0}
!31 = !{!19, !15, i64 152}
!32 = !{!8, !8, i64 0}
!33 = !{!19, !15, i64 144}
!34 = !{!19, !9, i64 232}
!35 = !{!27, !15, i64 8}
!36 = !{!27, !16, i64 80}
!37 = !{!27, !15, i64 32}
!38 = !{!27, !15, i64 40}
!39 = !{!19, !9, i64 228}
!40 = !{!27, !9, i64 88}
!41 = !{!19, !12, i64 16}
!42 = !{!19, !12, i64 24}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!19, !15, i64 112}
!45 = !{!19, !16, i64 200}
!46 = distinct !{!46, !43}
!47 = !{!19, !12, i64 8}
!48 = !{!19, !15, i64 160}
!49 = !{!19, !12, i64 88}
!50 = distinct !{!50, !43}
!51 = !{!19, !13, i64 32}
!52 = !{!"p1 _ZTS17lexbor_hash_entry", !12, i64 0}
!53 = !{!"lexbor_hash_entry", !8, i64 0, !16, i64 24, !52, i64 32}
!54 = !{!"", !53, i64 0, !16, i64 40, !16, i64 48, !17, i64 56}
!55 = !{!54, !16, i64 40}
!56 = !{!19, !16, i64 120}
end_hunk_1
