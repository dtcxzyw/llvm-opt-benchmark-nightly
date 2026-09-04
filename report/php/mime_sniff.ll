Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/mime_sniff?download=true
inline.NumInlined: 16
inline.NumDeleted: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"charset\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"content-type:\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @php_libxml_sniff_charset_from_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = icmp ult ptr %0, %1
  br i1 %i.c, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.d
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %is_http_whitespace.exit.thread
  %storemerge113 = phi ptr [ %i.f, %is_http_whitespace.exit.thread ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %i.e = load i8, ptr %storemerge113, align 1, !tbaa !12
  switch i8 %i.e, label %.critedge.loopexit [
    i8 13, label %is_http_whitespace.exit.thread
    i8 10, label %is_http_whitespace.exit.thread
    i8 32, label %is_http_whitespace.exit.thread
    i8 9, label %is_http_whitespace.exit.thread
  ]

is_http_whitespace.exit.thread:                   ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %storemerge113, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.f, %1
  br i1 %exitcond.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !18

.critedge.loopexit:                               ; preds = %.lr.ph, %is_http_whitespace.exit.thread
  %storemerge.lcssa.ph = phi ptr [ %scevgep, %is_http_whitespace.exit.thread ], [ %storemerge113, %.lr.ph ] ; 2 uses
  %.pre = ptrtoaddr ptr %storemerge.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %storemerge.lcssa177.pre-phi = phi i64 [ %.pre, %.critedge.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  %storemerge.lcssa = phi ptr [ %storemerge.lcssa.ph, %.critedge.loopexit ], [ %0, %bb.a ] ; 10 uses
  %i.g = icmp ult ptr %storemerge.lcssa, %1
  br i1 %i.g, label %.lr.ph117.preheader, label %.critedge2

.lr.ph117.preheader:                              ; preds = %.critedge
  %i.h = sub i64 %storemerge.lcssa177.pre-phi, %i.b
  %scevgep178 = getelementptr i8, ptr %1, i64 %i.h
  br label %.lr.ph117

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %.backedge
  %.043116 = phi ptr [ %i.i, %.backedge ], [ %1, %.lr.ph117.preheader ] ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.043116, i64 -1 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !12
  switch i8 %i.j, label %.critedge2.loopexit [
    i8 13, label %.backedge
    i8 10, label %.backedge
    i8 32, label %.backedge
    i8 9, label %.backedge
  ]

.backedge:                                        ; preds = %.lr.ph117, %.lr.ph117, %.lr.ph117, %.lr.ph117
  %i.k = icmp ult ptr %storemerge.lcssa, %i.i
  br i1 %i.k, label %.lr.ph117, label %.critedge2.loopexit, !llvm.loop !19

.critedge2.loopexit:                              ; preds = %.lr.ph117, %.backedge
  %.043.lcssa.ph = phi ptr [ %scevgep178, %.backedge ], [ %.043116, %.lr.ph117 ] ; 2 uses
  %.pre196 = ptrtoaddr ptr %.043.lcssa.ph to i64
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge
  %.043.lcssa179.pre-phi = phi i64 [ %.pre196, %.critedge2.loopexit ], [ %i.b, %.critedge ] ; 5 uses
  %.043.lcssa = phi ptr [ %.043.lcssa.ph, %.critedge2.loopexit ], [ %1, %.critedge ] ; 15 uses
  %i.l = icmp ult ptr %storemerge.lcssa, %.043.lcssa
  br i1 %i.l, label %.lr.ph122.preheader, label %collect_a_sequence_of_code_points.exit63

.lr.ph122.preheader:                              ; preds = %.critedge2
  %i.m = sub i64 %.043.lcssa179.pre-phi, %storemerge.lcssa177.pre-phi
  %scevgep180 = getelementptr i8, ptr %storemerge.lcssa, i64 %i.m ; 2 uses
  br label %.lr.ph122

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %bb.b
  %.0.i62121 = phi ptr [ %i.o, %bb.b ], [ %storemerge.lcssa, %.lr.ph122.preheader ] ; 3 uses
  %i.n = load i8, ptr %.0.i62121, align 1, !tbaa !12
  %.not96 = icmp eq i8 %i.n, 47
  br i1 %.not96, label %collect_a_sequence_of_code_points.exit63, label %bb.b

bb.b:                                             ; preds = %.lr.ph122
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i62121, i64 1 ; 2 uses
  %exitcond181.not = icmp eq ptr %i.o, %scevgep180
  br i1 %exitcond181.not, label %collect_a_sequence_of_code_points.exit63, label %.lr.ph122, !llvm.loop !20

collect_a_sequence_of_code_points.exit63:         ; preds = %.lr.ph122, %bb.b, %.critedge2
  %.0.i62.lcssa = phi ptr [ %storemerge.lcssa, %.critedge2 ], [ %scevgep180, %bb.b ], [ %.0.i62121, %.lr.ph122 ] ; 2 uses
  %i.p = ptrtoint ptr %.0.i62.lcssa to i64
  %i.q = ptrtoint ptr %storemerge.lcssa to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = tail call fastcc zeroext i1 @is_empty_string_or_does_not_solely_contain_http_token_code_points(ptr noundef %storemerge.lcssa, i64 noundef %i.r)
  %.not = icmp uge ptr %.0.i62.lcssa, %.043.lcssa
  %or.cond.not = or i1 %.not, %i.s
  br i1 %or.cond.not, label %zend_string_release_ex.exit.thread92, label %bb.c

bb.c:                                             ; preds = %collect_a_sequence_of_code_points.exit63
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge.lcssa, i64 %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 6 uses
  %i.v = icmp ult ptr %i.u, %.043.lcssa
  br i1 %i.v, label %.lr.ph127.preheader, label %collect_a_sequence_of_code_points.exit61

.lr.ph127.preheader:                              ; preds = %bb.c
  %i.w = sub i64 %.043.lcssa179.pre-phi, %storemerge.lcssa177.pre-phi
  %scevgep182 = getelementptr i8, ptr %storemerge.lcssa, i64 %i.w ; 2 uses
  br label %.lr.ph127

.lr.ph127:                                        ; preds = %.lr.ph127.preheader, %bb.d
  %.0.i60126 = phi ptr [ %i.y, %bb.d ], [ %i.u, %.lr.ph127.preheader ] ; 3 uses
  %i.x = load i8, ptr %.0.i60126, align 1, !tbaa !12
  %.not97 = icmp eq i8 %i.x, 59
  br i1 %.not97, label %collect_a_sequence_of_code_points.exit61, label %bb.d

bb.d:                                             ; preds = %.lr.ph127
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i60126, i64 1 ; 2 uses
  %exitcond183.not = icmp eq ptr %i.y, %scevgep182
  br i1 %exitcond183.not, label %collect_a_sequence_of_code_points.exit61, label %.lr.ph127, !llvm.loop !20

collect_a_sequence_of_code_points.exit61:         ; preds = %.lr.ph127, %bb.d, %bb.c
  %.0.i60.lcssa = phi ptr [ %i.u, %bb.c ], [ %scevgep182, %bb.d ], [ %.0.i60126, %.lr.ph127 ] ; 2 uses
  %i.z = ptrtoint ptr %.0.i60.lcssa to i64
  %i.aa = ptrtoint ptr %i.u to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = tail call fastcc zeroext i1 @is_empty_string_or_does_not_solely_contain_http_token_code_points(ptr noundef nonnull %i.u, i64 noundef %i.ab)
  %i.ad = icmp uge ptr %.0.i60.lcssa, %.043.lcssa
  %or.cond.not243 = or i1 %i.ad, %i.ac
  br i1 %or.cond.not243, label %zend_string_release_ex.exit.thread92, label %.lr.ph158

.lr.ph158:                                        ; preds = %collect_a_sequence_of_code_points.exit61
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ab
  %i.af = ptrtoint ptr %.043.lcssa to i64         ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph158, %zend_string_release_ex.exit
  %.085156 = phi ptr [ %i.ae, %.lr.ph158 ], [ %.286, %zend_string_release_ex.exit ] ; 4 uses
  %.085156185 = ptrtoaddr ptr %.085156 to i64     ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.085156, i64 1 ; 5 uses
  %i.ah = icmp ult ptr %i.ag, %.043.lcssa
  br i1 %i.ah, label %.lr.ph132.preheader, label %collect_a_sequence_of_code_points.exit59

.lr.ph132.preheader:                              ; preds = %bb.e
  %scevgep184 = getelementptr i8, ptr %.085156, i64 %.043.lcssa179.pre-phi
  %i.ai = sub i64 0, %.085156185
  %scevgep186 = getelementptr i8, ptr %scevgep184, i64 %i.ai ; 2 uses
  br label %.lr.ph132

.lr.ph132:                                        ; preds = %.lr.ph132.preheader, %is_http_whitespace.exit67.thread
  %.0.i58131 = phi ptr [ %i.ak, %is_http_whitespace.exit67.thread ], [ %i.ag, %.lr.ph132.preheader ] ; 3 uses
  %i.aj = load i8, ptr %.0.i58131, align 1, !tbaa !12
  switch i8 %i.aj, label %collect_a_sequence_of_code_points.exit59 [
    i8 13, label %is_http_whitespace.exit67.thread
    i8 10, label %is_http_whitespace.exit67.thread
    i8 32, label %is_http_whitespace.exit67.thread
    i8 9, label %is_http_whitespace.exit67.thread
  ]

is_http_whitespace.exit67.thread:                 ; preds = %.lr.ph132, %.lr.ph132, %.lr.ph132, %.lr.ph132
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i58131, i64 1 ; 2 uses
  %exitcond187.not = icmp eq ptr %i.ak, %scevgep186
  br i1 %exitcond187.not, label %collect_a_sequence_of_code_points.exit59, label %.lr.ph132, !llvm.loop !20

collect_a_sequence_of_code_points.exit59:         ; preds = %is_http_whitespace.exit67.thread, %.lr.ph132, %bb.e
  %.0.i58.lcssa = phi ptr [ %i.ag, %bb.e ], [ %.0.i58131, %.lr.ph132 ], [ %scevgep186, %is_http_whitespace.exit67.thread ] ; 2 uses
  %i.al = ptrtoint ptr %.0.i58.lcssa to i64       ; 3 uses
  %i.am = ptrtoint ptr %i.ag to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.an ; 3 uses
  %i.ap = icmp ult ptr %.0.i58.lcssa, %.043.lcssa
  br i1 %i.ap, label %.lr.ph137, label %collect_a_sequence_of_code_points.exit57

.lr.ph137:                                        ; preds = %collect_a_sequence_of_code_points.exit59, %bb.f
  %.0.i56136 = phi ptr [ %i.ar, %bb.f ], [ %i.ao, %collect_a_sequence_of_code_points.exit59 ] ; 4 uses
  %i.aq = load i8, ptr %.0.i56136, align 1, !tbaa !12
  switch i8 %i.aq, label %bb.f [
    i8 61, label %collect_a_sequence_of_code_points.exit57.loopexit
    i8 59, label %collect_a_sequence_of_code_points.exit57.loopexit
  ]

bb.f:                                             ; preds = %.lr.ph137
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i56136, i64 1 ; 3 uses
  %i.as = icmp ult ptr %i.ar, %.043.lcssa
  br i1 %i.as, label %.lr.ph137, label %collect_a_sequence_of_code_points.exit57.loopexit, !llvm.loop !20

collect_a_sequence_of_code_points.exit57.loopexit: ; preds = %.lr.ph137, %.lr.ph137, %bb.f
  %.0.i56.lcssa.ph = phi ptr [ %i.ar, %bb.f ], [ %.0.i56136, %.lr.ph137 ], [ %.0.i56136, %.lr.ph137 ]
  %2 = ptrtoint ptr %.0.i56.lcssa.ph to i64
  br label %collect_a_sequence_of_code_points.exit57

collect_a_sequence_of_code_points.exit57:         ; preds = %collect_a_sequence_of_code_points.exit57.loopexit, %collect_a_sequence_of_code_points.exit59
  %.0.i56.lcssa = phi i64 [ %i.al, %collect_a_sequence_of_code_points.exit59 ], [ %2, %collect_a_sequence_of_code_points.exit57.loopexit ]
  %i.at = sub i64 %.0.i56.lcssa, %i.al            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.at ; 5 uses
  %i.av = icmp ult ptr %i.au, %.043.lcssa
  br i1 %i.av, label %bb.g, label %zend_string_release_ex.exit.thread92

bb.g:                                             ; preds = %collect_a_sequence_of_code_points.exit57
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !12
  %i.ax = icmp eq i8 %i.aw, 59
  br i1 %i.ax, label %zend_string_release_ex.exit, label %bb.h, !llvm.loop !21

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 8 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !12
  %i.ba = icmp eq i8 %i.az, 34
  br i1 %i.ba, label %zend_string_alloc.exit.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.bb = icmp ult ptr %i.ay, %.043.lcssa
  br i1 %i.bb, label %.lr.ph144.preheader, label %collect_a_sequence_of_code_points.exit

.lr.ph144.preheader:                              ; preds = %.preheader
  %scevgep188 = getelementptr i8, ptr %.085156, i64 %.043.lcssa179.pre-phi
  %i.bc = sub i64 0, %.085156185
  %scevgep189 = getelementptr i8, ptr %scevgep188, i64 %i.bc ; 2 uses
  br label %.lr.ph144

zend_string_alloc.exit.i:                         ; preds = %bb.h
  %i.bd = ptrtoint ptr %i.ay to i64
  %i.be = sub i64 %i.af, %i.bd
  %i.bf = and i64 %i.be, -8
  %i.bg = add i64 %i.bf, 32
  %i.bh = tail call noalias ptr @_emalloc(i64 noundef %i.bg) #8 ; 6 uses
  store i32 1, ptr %i.bh, align 4, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 22, ptr %i.bi, align 4, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %zend_string_alloc.exit.i
  %i.bm = phi i64 [ 0, %zend_string_alloc.exit.i ], [ %i.ce, %bb.n ] ; 2 uses
  %.pn = phi ptr [ %i.au, %zend_string_alloc.exit.i ], [ %i.bw, %bb.n ]
  %.036.i = getelementptr inbounds nuw i8, ptr %.pn, i64 2 ; 8 uses
  %i.bn = icmp ult ptr %.036.i, %.043.lcssa
  br i1 %i.bn, label %.lr.ph.preheader.i, label %collect_a_sequence_of_code_points.exit.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %.03677.i = ptrtoaddr ptr %.036.i to i64
  %scevgep.i = getelementptr i8, ptr %.036.i, i64 %i.af
  %i.bo = sub i64 0, %.03677.i
  %scevgep78.i = getelementptr i8, ptr %scevgep.i, i64 %i.bo ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %.0.i60.i = phi ptr [ %i.bq, %bb.j ], [ %.036.i, %.lr.ph.preheader.i ] ; 4 uses
  %i.bp = load i8, ptr %.0.i60.i, align 1, !tbaa !12
  switch i8 %i.bp, label %bb.j [
    i8 92, label %collect_a_sequence_of_code_points.exit.i
    i8 34, label %collect_a_sequence_of_code_points.exit.i
  ]

bb.j:                                             ; preds = %.lr.ph.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i60.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.bq, %scevgep78.i
  br i1 %exitcond.not.i, label %collect_a_sequence_of_code_points.exit.i, label %.lr.ph.i, !llvm.loop !20

collect_a_sequence_of_code_points.exit.i:         ; preds = %bb.j, %.lr.ph.i, %.lr.ph.i, %bb.i
  %.0.i.lcssa.i = phi ptr [ %.036.i, %bb.i ], [ %scevgep78.i, %bb.j ], [ %.0.i60.i, %.lr.ph.i ], [ %.0.i60.i, %.lr.ph.i ] ; 2 uses
  %i.br = ptrtoint ptr %.0.i.lcssa.i to i64
  %i.bs = ptrtoint ptr %.036.i to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr nonnull align 1 %.036.i, i64 %i.bt, i1 false)
  %i.bv = add i64 %i.bt, %i.bm                    ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.036.i, i64 %i.bt ; 4 uses
  %.not.i68 = icmp ult ptr %.0.i.lcssa.i, %.043.lcssa
  br i1 %.not.i68, label %bb.k, label %collect_an_http_quoted_string_with_extract_value.exit

bb.k:                                             ; preds = %collect_a_sequence_of_code_points.exit.i
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !12
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 1 ; 4 uses
  %i.bz = icmp eq i8 %i.bx, 92
  br i1 %i.bz, label %bb.l, label %collect_an_http_quoted_string_with_extract_value.exit

bb.l:                                             ; preds = %bb.k
  %.not44.i = icmp ult ptr %i.by, %.043.lcssa
  br i1 %.not44.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bv
  store i8 92, ptr %i.ca, align 1, !tbaa !12
  %i.cb = add i64 %i.bv, 1
  br label %collect_an_http_quoted_string_with_extract_value.exit

bb.n:                                             ; preds = %bb.l
  %i.cc = load i8, ptr %i.by, align 1, !tbaa !12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bv
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !12
  %i.ce = add i64 %i.bv, 1
  br label %bb.i

collect_an_http_quoted_string_with_extract_value.exit: ; preds = %collect_a_sequence_of_code_points.exit.i, %bb.k, %bb.m
  %.sink = phi i64 [ %i.cb, %bb.m ], [ %i.bv, %bb.k ], [ %i.bv, %collect_a_sequence_of_code_points.exit.i ] ; 3 uses
  %.2.ph.i = phi ptr [ %i.by, %bb.m ], [ %i.bw, %collect_a_sequence_of_code_points.exit.i ], [ %i.by, %bb.k ] ; 7 uses
  store i64 %.sink, ptr %i.bk, align 8, !tbaa !17
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.sink
  store i8 0, ptr %i.cf, align 1, !tbaa !12
  %i.cg = icmp ult ptr %.2.ph.i, %.043.lcssa
  br i1 %i.cg, label %.lr.ph152.preheader, label %collect_a_sequence_of_code_points.exit55

.lr.ph152.preheader:                              ; preds = %collect_an_http_quoted_string_with_extract_value.exit
  %.2.ph.i192 = ptrtoaddr ptr %.2.ph.i to i64
  %scevgep191 = getelementptr i8, ptr %.2.ph.i, i64 %.043.lcssa179.pre-phi
  %i.ch = sub i64 0, %.2.ph.i192
  %scevgep193 = getelementptr i8, ptr %scevgep191, i64 %i.ch ; 2 uses
  br label %.lr.ph152

.lr.ph152:                                        ; preds = %.lr.ph152.preheader, %bb.o
  %.0.i54151 = phi ptr [ %i.cj, %bb.o ], [ %.2.ph.i, %.lr.ph152.preheader ] ; 3 uses
  %i.ci = load i8, ptr %.0.i54151, align 1, !tbaa !12
  %.not99 = icmp eq i8 %i.ci, 59
  br i1 %.not99, label %collect_a_sequence_of_code_points.exit55, label %bb.o

bb.o:                                             ; preds = %.lr.ph152
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i54151, i64 1 ; 2 uses
  %exitcond194.not = icmp eq ptr %i.cj, %scevgep193
  br i1 %exitcond194.not, label %collect_a_sequence_of_code_points.exit55, label %.lr.ph152, !llvm.loop !20

collect_a_sequence_of_code_points.exit55:         ; preds = %.lr.ph152, %bb.o, %collect_an_http_quoted_string_with_extract_value.exit
  %.0.i54.lcssa = phi ptr [ %.2.ph.i, %collect_an_http_quoted_string_with_extract_value.exit ], [ %scevgep193, %bb.o ], [ %.0.i54151, %.lr.ph152 ]
  %i.ck = ptrtoint ptr %.0.i54.lcssa to i64
  %i.cl = ptrtoint ptr %.2.ph.i to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.2.ph.i, i64 %i.cm
  br label %bb.r

.lr.ph144:                                        ; preds = %.lr.ph144.preheader, %bb.p
  %.0.i143 = phi ptr [ %i.cp, %bb.p ], [ %i.ay, %.lr.ph144.preheader ] ; 3 uses
  %i.co = load i8, ptr %.0.i143, align 1, !tbaa !12
  %.not98 = icmp eq i8 %i.co, 59
  br i1 %.not98, label %collect_a_sequence_of_code_points.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph144
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i143, i64 1 ; 2 uses
  %exitcond190.not = icmp eq ptr %i.cp, %scevgep189
  br i1 %exitcond190.not, label %collect_a_sequence_of_code_points.exit, label %.lr.ph144, !llvm.loop !20

collect_a_sequence_of_code_points.exit:           ; preds = %.lr.ph144, %bb.p, %.preheader
  %.0.i.lcssa = phi ptr [ %i.ay, %.preheader ], [ %scevgep189, %bb.p ], [ %.0.i143, %.lr.ph144 ]
  %i.cq = ptrtoint ptr %.0.i.lcssa to i64
  %i.cr = ptrtoint ptr %i.ay to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 7 uses
  %i.ct = and i64 %i.cs, -8
  %i.cu = add i64 %i.ct, 32
  %i.cv = tail call noalias ptr @_emalloc(i64 noundef %i.cu) #8 ; 8 uses
  store i32 1, ptr %i.cv, align 4, !tbaa !24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store i32 22, ptr %i.cw, align 4, !tbaa !12
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 0, ptr %i.cx, align 8, !tbaa !25
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  store i64 %i.cs, ptr %i.cy, align 8, !tbaa !17
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cz, ptr nonnull align 1 %i.ay, i64 %i.cs, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cs
  store i8 0, ptr %i.da, align 1, !tbaa !12
  %i.db = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cs ; 2 uses
  %.not52148 = icmp eq i64 %i.cs, 0
  br i1 %.not52148, label %.loopexit227, label %.lr.ph149

.lr.ph149:                                        ; preds = %collect_a_sequence_of_code_points.exit
  %i.dc = getelementptr i8, ptr %i.cv, i64 23
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph149, %is_http_whitespace.exit69.thread
  %i.dd = phi i64 [ %i.cs, %.lr.ph149 ], [ %i.dg, %is_http_whitespace.exit69.thread ] ; 4 uses
  %i.de = getelementptr i8, ptr %i.dc, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !12
  switch i8 %i.df, label %zend_string_release_ex.exit65 [
    i8 13, label %is_http_whitespace.exit69.thread
    i8 10, label %is_http_whitespace.exit69.thread
    i8 32, label %is_http_whitespace.exit69.thread
    i8 9, label %is_http_whitespace.exit69.thread
  ]

is_http_whitespace.exit69.thread:                 ; preds = %bb.q, %bb.q, %bb.q, %bb.q
  %i.dg = add i64 %i.dd, -1                       ; 3 uses
  store i64 %i.dg, ptr %i.cy, align 8, !tbaa !17
  %.not52 = icmp eq i64 %i.dg, 0
  br i1 %.not52, label %.loopexit227, label %bb.q, !llvm.loop !22

.loopexit227:                                     ; preds = %is_http_whitespace.exit69.thread, %collect_a_sequence_of_code_points.exit
  store i8 0, ptr %i.cz, align 8, !tbaa !12
  br label %zend_string_release_ex.exit.sink.split, !llvm.loop !21

zend_string_release_ex.exit65:                    ; preds = %bb.q
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dd
  store i8 0, ptr %i.dh, align 1, !tbaa !12
  br label %bb.r
end_hunk_0
