Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/lua_debugger_code_editor?download=true
inline.NumInlined: 1741
inline.NumDeleted: 691
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN20LuaSyntaxHighlighter14highlightBlockERK7QString:bb.a
bb.n:                                             ; preds = %bb.l, %bb.i
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %bb.l ], [ %i.ae, %bb.i ]
  call void @_ZN31QRegularExpressionMatchIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.am

bb.o:                                             ; preds = %bb.u, %._crit_edge
  %i.ai = invoke noundef zeroext i1 @_ZNK31QRegularExpressionMatchIterator7hasNextEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %4)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %bb.o
  br i1 %i.ai, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN31QRegularExpressionMatchIterator4nextEv(ptr dead_on_unwind nonnull writable sret(%class.QRegularExpressionMatch) align 8 %5, ptr noundef nonnull align 8 dereferenceable_or_null(8) %4)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.aj = invoke noundef i64 @_ZNK23QRegularExpressionMatch13capturedStartEi(ptr noundef nonnull align 8 dereferenceable_or_null(8) %5, i32 noundef 0)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.ak = invoke noundef i64 @_ZNK23QRegularExpressionMatch14capturedLengthEi(ptr noundef nonnull align 8 dereferenceable_or_null(8) %5, i32 noundef 0)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.al = trunc i64 %i.aj to i32
  %i.am = trunc i64 %i.ak to i32
  invoke void @_ZN18QSyntaxHighlighter9setFormatEiiRK15QTextCharFormat(ptr noundef align 8 dereferenceable_or_null(16) %0, i32 noundef %i.al, i32 noundef %i.am, ptr noundef align 8 dereferenceable(12) %i.x)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @_ZN23QRegularExpressionMatchD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.o, !llvm.loop !14

bb.v:                                             ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.w:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN23QRegularExpressionMatchD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn33 = phi { ptr, i32 } [ %i.ap, %bb.x ], [ %i.ao, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.al

bb.z:                                             ; preds = %bb.p
  %i.aq = invoke noundef i32 @_ZNK18QSyntaxHighlighter18previousBlockStateEv(ptr noundef align 8 dereferenceable_or_null(16) %0)
          to label %bb.aa unwind label %bb.ae     ; 4 uses

bb.aa:                                            ; preds = %bb.z
  %i.ar = and i32 %i.aq, -4096
  %i.as = icmp eq i32 %i.ar, 4096                 ; 2 uses
  %i.at = add nsw i32 %i.aq, -4096
  %i.au = select i1 %i.as, i32 %i.at, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4
  %i.av = invoke noundef zeroext i1 @_ZN20LuaSyntaxHighlighter18highlightLongBlockERK7QStringbbiRi(ptr noundef align 8 dereferenceable_or_null(80) %0, ptr noundef align 8 dereferenceable(24) %1, i1 noundef zeroext false, i1 noundef zeroext %i.as, i32 noundef %i.au, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.aw = icmp sgt i32 %i.aq, 8191
  %i.ax = call i32 @llvm.smax.i32(i32 %i.aq, i32 8192)
  %i.ay = add nsw i32 %i.ax, -8192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4
  %i.az = invoke noundef zeroext i1 @_ZN20LuaSyntaxHighlighter18highlightLongBlockERK7QStringbbiRi(ptr noundef align 8 dereferenceable_or_null(80) %0, ptr noundef align 8 dereferenceable(24) %1, i1 noundef zeroext true, i1 noundef zeroext %i.aw, i32 noundef %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.az, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.ba = load i32, ptr %i.b, align 4
  %i.bb = add i32 %i.ba, 8192
  br label %.invoke

bb.ae:                                            ; preds = %bb.z
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.af:                                            ; preds = %bb.aa
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ag:                                            ; preds = %.invoke, %bb.ab
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ac
  br i1 %i.av, label %bb.ai, label %.invoke

bb.ai:                                            ; preds = %bb.ah
  %i.bf = load i32, ptr %i.a, align 4
  %i.bg = add i32 %i.bf, 4096
  br label %.invoke

.invoke:                                          ; preds = %bb.ah, %bb.ad, %bb.ai
  %i.bh = phi i32 [ %i.bb, %bb.ad ], [ %i.bg, %bb.ai ], [ 0, %bb.ah ]
  invoke void @_ZN18QSyntaxHighlighter20setCurrentBlockStateEi(ptr noundef align 8 dereferenceable_or_null(16) %0, i32 noundef %i.bh)
          to label %bb.aj unwind label %bb.ag

bb.aj:                                            ; preds = %.invoke
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZN31QRegularExpressionMatchIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.ak:                                            ; preds = %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.be, %bb.ag ], [ %i.bd, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.al

bb.al:                                            ; preds = %bb.ae, %bb.ak, %bb.y, %bb.v
  %.pn33.pn = phi { ptr, i32 } [ %.pn33, %bb.y ], [ %i.an, %bb.v ], [ %.pn, %bb.ak ], [ %i.bc, %bb.ae ]
  call void @_ZN31QRegularExpressionMatchIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.n
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %bb.n ], [ %.pn33.pn, %bb.al ]
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZNK18QRegularExpression11globalMatchERK7QStringxNS_9MatchTypeE6QFlagsINS_11MatchOptionEE(ptr dead_on_unwind writable sret(%class.QRegularExpressionMatchIterator) align 8, ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(24), i64 noundef, i32 noundef, i32) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZNK31QRegularExpressionMatchIterator7hasNextEv(ptr noundef align 8 dereferenceable_or_null(8)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN31QRegularExpressionMatchIterator4nextEv(ptr dead_on_unwind writable sret(%class.QRegularExpressionMatch) align 8, ptr noundef align 8 dereferenceable_or_null(8)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN18QSyntaxHighlighter9setFormatEiiRK15QTextCharFormat(ptr noundef align 8 dereferenceable_or_null(16), i32 noundef, i32 noundef, ptr noundef align 8 dereferenceable(12)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare noundef i64 @_ZNK23QRegularExpressionMatch13capturedStartEi(ptr noundef align 8 dereferenceable_or_null(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare noundef i64 @_ZNK23QRegularExpressionMatch14capturedLengthEi(ptr noundef align 8 dereferenceable_or_null(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN23QRegularExpressionMatchD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN31QRegularExpressionMatchIteratorD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK18QSyntaxHighlighter18previousBlockStateEv(ptr noundef align 8 dereferenceable_or_null(16)) local_unnamed_addr #3

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @_ZN20LuaSyntaxHighlighter18highlightLongBlockERK7QStringbbiRi(ptr noundef align 8 dereferenceable_or_null(80) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4, ptr nofree noundef writeonly align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.QTextCharFormat, align 8     ; 8 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %.v = select i1 %2, i64 56, i64 40
  %i.c = getelementptr i8, ptr %0, i64 %.v
  call void @_ZN11QTextFormatC2ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(12) %6, ptr noundef align 8 dereferenceable(12) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 %4, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4
  br i1 %3, label %.lr.ph, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i32 @_ZNK20LuaSyntaxHighlighter18findLongBlockStartERK7QStringibRiS3_(ptr align 8 poison, ptr noundef align 8 dereferenceable(24) %1, i32 noundef 0, i1 noundef zeroext %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %.02962 = phi i32 [ %i.f, %.lr.ph ], [ %i.af, %bb.h ] ; 5 uses
  %.03061 = phi i1 [ %3, %.lr.ph ], [ false, %bb.h ]
  %i.i = load i32, ptr %i.b, align 4
  %i.j = add i32 %i.i, %.02962
  %i.k = select i1 %.03061, i32 0, i32 %i.j       ; 3 uses
  %i.l = load i32, ptr %i.a, align 4              ; 2 uses
  %i.m = load i64, ptr %i.g, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %.not47.i = icmp slt i32 %i.k, %i.n
  br i1 %.not47.i, label %.lr.ph49.i, label %_ZNK20LuaSyntaxHighlighter16findLongBlockEndERK7QStringii.exit.thread

.lr.ph49.i:                                       ; preds = %bb.c
  %i.o = load ptr, ptr %i.h, align 8              ; 2 uses
  %7 = sext i32 %i.k to i64
  %i.p = xor i32 %i.k, -1
  %i.q = add i32 %i.n, %i.p
  %sext.i = shl i64 %i.m, 32
  %i.r = ashr exact i64 %sext.i, 32               ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread.i, %.lr.ph49.i
  %indvars.iv54.i.a = phi i64 [ %7, %.lr.ph49.i ], [ %indvars.iv.next60.i, %.thread.i ] ; 2 uses
  %indvars.iv.i = phi i32 [ %i.q, %.lr.ph49.i ], [ %indvars.iv.next.i, %.thread.i ] ; 2 uses
  %indvars.iv.next60.i = add nsw i64 %indvars.iv54.i.a, 1 ; 4 uses
  %i.s = getelementptr [2 x i8], ptr %i.o, i64 %indvars.iv54.i.a
  %i.t = load i16, ptr %i.s, align 2
  %i.u = icmp eq i16 %i.t, 93
  %i.v = icmp slt i64 %indvars.iv.next60.i, %i.r
  %or.cond.i = and i1 %i.v, %i.u
  br i1 %or.cond.i, label %.lr.ph.i, label %.thread.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %bb.e ], [ %indvars.iv.next60.i, %bb.d ] ; 4 uses
  %.02645.i = phi i32 [ %i.z, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.w = getelementptr [2 x i8], ptr %i.o, i64 %indvars.iv79
  %i.x = load i16, ptr %i.w, align 2              ; 2 uses
  %i.y = icmp eq i16 %i.x, 61
  br i1 %i.y, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.z = add i32 %.02645.i, 1                     ; 2 uses
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, 1
  %exitcond.not.i = icmp eq i32 %i.z, %indvars.iv.i
  br i1 %exitcond.not.i, label %.thread.i, label %.lr.ph.i, !llvm.loop !15

.critedge.i:                                      ; preds = %.lr.ph.i
  %.not41.i = icmp eq i32 %.02645.i, %i.l
  %i.aa = icmp eq i16 %i.x, 93
  %or.cond61.i = and i1 %.not41.i, %i.aa
  br i1 %or.cond61.i, label %_ZNK20LuaSyntaxHighlighter16findLongBlockEndERK7QStringii.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %.critedge.i, %bb.d
  %indvars.iv.next.i = add i32 %indvars.iv.i, -1
  %exitcond57.not.i = icmp eq i64 %indvars.iv.next60.i, %i.r
  br i1 %exitcond57.not.i, label %_ZNK20LuaSyntaxHighlighter16findLongBlockEndERK7QStringii.exit.thread, label %bb.d, !llvm.loop !16

_ZNK20LuaSyntaxHighlighter16findLongBlockEndERK7QStringii.exit: ; preds = %.critedge.i
  %i.ab = trunc nsw i64 %indvars.iv79 to i32      ; 2 uses
  %.not = icmp eq i64 %indvars.iv79, -1
  br i1 %.not, label %_ZNK20LuaSyntaxHighlighter16findLongBlockEndERK7QStringii.exit.thread, label %bb.g

_ZNK20LuaSyntaxHighlighter16findLongBlockEndERK7QStringii.exit.thread: ; preds = %bb.c, %_ZNK20LuaSyntaxHighlighter16findLongBlockEndERK7QStringii.exit, %.thread.i
  %i.ac = sub i32 %i.n, %.02962
  invoke void @_ZN18QSyntaxHighlighter9setFormatEiiRK15QTextCharFormat(ptr noundef align 8 dereferenceable_or_null(16) %0, i32 noundef %.02962, i32 noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %.thread unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %_ZNK20LuaSyntaxHighlighter16findLongBlockEndERK7QStringii.exit.thread
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZN11QTextFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  resume { ptr, i32 } %lpad.phi

bb.g:                                             ; preds = %_ZNK20LuaSyntaxHighlighter16findLongBlockEndERK7QStringii.exit
  %reass.sub = sub i32 %i.ab, %.02962
  %i.ad = add i32 %reass.sub, 1
  invoke void @_ZN18QSyntaxHighlighter9setFormatEiiRK15QTextCharFormat(ptr noundef align 8 dereferenceable_or_null(16) %0, i32 noundef %.02962, i32 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %bb.h unwind label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ae = add nuw i32 %i.ab, 1
  %i.af = call noundef i32 @_ZNK20LuaSyntaxHighlighter18findLongBlockStartERK7QStringibRiS3_(ptr align 8 poison, ptr noundef align 8 dereferenceable(24) %1, i32 noundef %i.ae, i1 noundef zeroext %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 2 uses
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.h, %bb.b, %_ZNK20LuaSyntaxHighlighter16findLongBlockEndERK7QStringii.exit.thread
  %i.ah = phi i1 [ true, %_ZNK20LuaSyntaxHighlighter16findLongBlockEndERK7QStringii.exit.thread ], [ false, %bb.b ], [ false, %bb.h ]
  %storemerge = phi i32 [ %i.l, %_ZNK20LuaSyntaxHighlighter16findLongBlockEndERK7QStringii.exit.thread ], [ 0, %bb.b ], [ 0, %bb.h ]
  store i32 %storemerge, ptr %5, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZN11QTextFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret i1 %i.ah
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN18QSyntaxHighlighter20setCurrentBlockStateEi(ptr noundef align 8 dereferenceable_or_null(16), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK20LuaSyntaxHighlighter18findLongBlockStartERK7QStringibRiS3_(ptr nofree readnone align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i1 noundef zeroext %3, ptr nofree noundef writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef writeonly align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = icmp slt i32 %2, %i.c
  br i1 %i.d, label %.lr.ph119, label %.loopexit

.lr.ph119:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  br i1 %3, label %.lr.ph119.split.us.preheader, label %.lr.ph119.split.preheader

.lr.ph119.split.preheader:                        ; preds = %.lr.ph119
  %i.g = sext i32 %2 to i64
  %sext = shl i64 %i.b, 32
  %i.h = ashr exact i64 %sext, 32                 ; 3 uses
  %invariant.op = add nsw i64 %i.h, -1
  br label %.lr.ph119.split

.lr.ph119.split.us.preheader:                     ; preds = %.lr.ph119
  %i.i = add i32 %2, 3
  %i.j = sext i32 %i.i to i64
  %i.k = add i32 %i.c, -3
  %i.l = sub i32 %i.k, %2
  %i.m = sext i32 %2 to i64
  br label %.lr.ph119.split.us

.lr.ph119.split.us:                               ; preds = %.lr.ph119.split.us.preheader, %.critedge81.thread.us
  %indvars.iv144 = phi i64 [ %i.m, %.lr.ph119.split.us.preheader ], [ %i.r, %.critedge81.thread.us ] ; 4 uses
  %indvars.iv141 = phi i32 [ %i.l, %.lr.ph119.split.us.preheader ], [ %indvars.iv.next142, %.critedge81.thread.us ] ; 2 uses
  %indvars.iv136 = phi i64 [ %i.j, %.lr.ph119.split.us.preheader ], [ %indvars.iv.next137, %.critedge81.thread.us ] ; 2 uses
  %indvars146 = trunc i64 %indvars.iv144 to i32   ; 3 uses
  %i.n = add i32 %indvars146, 3
  %.not.us = icmp slt i32 %i.n, %i.c
  br i1 %.not.us, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph119.split.us
  %i.o = getelementptr [2 x i8], ptr %i.f, i64 %indvars.iv144
  %i.p = load i16, ptr %i.o, align 2
  %i.q = icmp eq i16 %i.p, 45
  %i.r = add nsw i64 %indvars.iv144, 1            ; 3 uses
  br i1 %i.q, label %bb.c, label %.critedge81.thread.us

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr [2 x i8], ptr %i.f, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2
  %i.u = icmp eq i16 %i.t, 45
  br i1 %i.u, label %bb.d, label %.critedge81.thread.us

bb.d:                                             ; preds = %bb.c
  %i.v = shl i64 %indvars.iv144, 32
  %sext150 = add i64 %i.v, 8589934592
  %i.w = ashr exact i64 %sext150, 31
  %i.x = getelementptr i8, ptr %i.f, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2
  %i.z = icmp eq i16 %i.y, 91
  br i1 %i.z, label %.lr.ph113.us, label %.critedge81.thread.us

.lr.ph113.us:                                     ; preds = %bb.d, %bb.e
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %bb.e ], [ %indvars.iv136, %bb.d ] ; 3 uses
  %.078111.us = phi i32 [ %i.ac, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.aa = getelementptr [2 x i8], ptr %i.f, i64 %indvars.iv138
  %i.ab = load i16, ptr %i.aa, align 2
  switch i16 %i.ab, label %.critedge81.thread.us [
    i16 61, label %bb.e
    i16 91, label %.critedge81
  ]

bb.e:                                             ; preds = %.lr.ph113.us
  %i.ac = add i32 %.078111.us, 1                  ; 2 uses
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, 1
  %exitcond143.not = icmp eq i32 %i.ac, %indvars.iv141
  br i1 %exitcond143.not, label %.critedge81.thread.us, label %.lr.ph113.us, !llvm.loop !17

.critedge81.thread.us:                            ; preds = %.lr.ph113.us, %bb.e, %bb.b, %bb.d, %bb.c
  %indvars.iv.next137 = add nsw i64 %indvars.iv136, 1
  %indvars.iv.next142 = add i32 %indvars.iv141, -1
  %lftr.wideiv = trunc i64 %i.r to i32
  %exitcond147.not = icmp eq i32 %lftr.wideiv, %i.c
  br i1 %exitcond147.not, label %.loopexit, label %.lr.ph119.split.us, !llvm.loop !18

.lr.ph119.split:                                  ; preds = %.lr.ph119.split.preheader, %.critedge81.thread
  %indvars.iv = phi i64 [ %i.g, %.lr.ph119.split.preheader ], [ %indvars.iv.next, %.critedge81.thread ] ; 6 uses
  %indvars135 = trunc i64 %indvars.iv to i32      ; 3 uses
  %i.ad = getelementptr [2 x i8], ptr %i.f, i64 %indvars.iv ; 3 uses
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = icmp eq i16 %i.ae, 91
  br i1 %i.af, label %bb.f, label %.critedge81.thread

.critedge81:                                      ; preds = %.lr.ph113.us
  %i.ag = trunc nsw i64 %indvars.iv138 to i32
  store i32 %.078111.us, ptr %4, align 4
  %reass.sub125 = sub i32 %i.ag, %indvars146
  br label %.loopexit.sink.split

bb.f:                                             ; preds = %.lr.ph119.split
  %i.ah = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ah, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr i8, ptr %i.ad, i64 -4
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = icmp eq i16 %i.aj, 45
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr i8, ptr %i.ad, i64 -2
  %i.am = load i16, ptr %i.al, align 2
  %i.an = icmp ne i16 %i.am, 45
  %.072107 = add nuw nsw i32 %indvars135, 1
  %i.ao = icmp slt i64 %indvars.iv, %invariant.op
  %or.cond124 = and i1 %i.an, %i.ao
  br i1 %or.cond124, label %.lr.ph.preheader, label %.critedge81.thread

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ap = add nsw i64 %indvars.iv, 1              ; 2 uses
  %.old = icmp slt i64 %i.ap, %i.h
  %i.aq = trunc nsw i64 %i.ap to i32
  br i1 %.old, label %.lr.ph.preheader, label %.critedge81.thread

.lr.ph.preheader:                                 ; preds = %bb.i, %bb.h
  %.072109.ph = phi i32 [ %i.aq, %bb.i ], [ %.072107, %bb.h ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.072109 = phi i32 [ %.072, %bb.j ], [ %.072109.ph, %.lr.ph.preheader ] ; 3 uses
  %.071108 = phi i32 [ %i.au, %bb.j ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ar = sext i32 %.072109 to i64
  %i.as = getelementptr [2 x i8], ptr %i.f, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2
  switch i16 %i.at, label %.critedge81.thread [
    i16 61, label %bb.j
    i16 91, label %.critedge82
  ]

bb.j:                                             ; preds = %.lr.ph
  %i.au = add i32 %.071108, 1
  %.072 = add i32 %.072109, 1                     ; 2 uses
  %i.av = icmp slt i32 %.072, %i.c
  br i1 %i.av, label %.lr.ph, label %.critedge81.thread, !llvm.loop !19

.critedge82:                                      ; preds = %.lr.ph
  store i32 %.071108, ptr %4, align 4
  %reass.sub = sub i32 %.072109, %indvars135
  br label %.loopexit.sink.split

.critedge81.thread:                               ; preds = %bb.j, %.lr.ph, %bb.i, %.lr.ph119.split, %bb.h
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph119.split, !llvm.loop !18

.loopexit.sink.split:                             ; preds = %.critedge82, %.critedge81
  %reass.sub125.sink = phi i32 [ %reass.sub125, %.critedge81 ], [ %reass.sub, %.critedge82 ]
  %.ph = phi i32 [ %indvars146, %.critedge81 ], [ %indvars135, %.critedge82 ]
  %i.aw = add i32 %reass.sub125.sink, 1
  store i32 %i.aw, ptr %5, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge81.thread, %.critedge81.thread.us, %.lr.ph119.split.us, %.loopexit.sink.split, %bb.a
  %i.ax = phi i32 [ -1, %bb.a ], [ -1, %.critedge81.thread.us ], [ %.ph, %.loopexit.sink.split ], [ -1, %.lr.ph119.split.us ], [ -1, %.critedge81.thread ]
  ret i32 %i.ax
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK20LuaSyntaxHighlighter16findLongBlockEndERK7QStringii(ptr nofree noundef readnone align 8 captures(none) dereferenceable_or_null(80) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %.not47 = icmp slt i32 %2, %i.c
  br i1 %.not47, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %4 = sext i32 %2 to i64                         ; 2 uses
  %i.f = xor i32 %2, -1
  %i.g = add i32 %i.f, %i.c
  %sext = shl i64 %i.b, 32
  %i.h = ashr exact i64 %sext, 32                 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph49, %.thread
  %indvars.iv54.a = phi i64 [ %4, %.lr.ph49 ], [ %indvars.iv.next55.a, %.thread ] ; 2 uses
  %indvars.iv.a = phi i32 [ %i.g, %.lr.ph49 ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %indvars.iv.in = phi i64 [ %4, %.lr.ph49 ], [ %indvars.iv, %.thread ]
  %indvars.iv = add nsw i64 %indvars.iv.in, 1     ; 2 uses
  %i.i = getelementptr [2 x i8], ptr %i.e, i64 %indvars.iv54.a
  %i.j = load i16, ptr %i.i, align 2
  %i.k = icmp eq i16 %i.j, 93
  %indvars.iv.next55.a = add nsw i64 %indvars.iv54.a, 1 ; 3 uses
  %i.l = icmp slt i64 %indvars.iv.next55.a, %i.h
  %or.cond = and i1 %i.k, %i.l
  br i1 %or.cond, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %bb.c ], [ %indvars.iv, %bb.b ] ; 3 uses
  %.02645 = phi i32 [ %i.p, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.m = getelementptr [2 x i8], ptr %i.e, i64 %indvars.iv54
  %i.n = load i16, ptr %i.m, align 2              ; 2 uses
  %i.o = icmp eq i16 %i.n, 61
  br i1 %i.o, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.p = add i32 %.02645, 1                       ; 2 uses
  %indvars.iv.next55 = add nsw i64 %indvars.iv54, 1
  %exitcond.not = icmp eq i32 %i.p, %indvars.iv.a
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !15

.critedge:                                        ; preds = %.lr.ph
  %.not41 = icmp eq i32 %.02645, %3
  %i.q = icmp eq i16 %i.n, 93
  %or.cond61 = and i1 %.not41, %i.q
  br i1 %or.cond61, label %._crit_edge.loopexit.split.loop.exit, label %.thread

.thread:                                          ; preds = %bb.c, %.critedge, %bb.b
  %indvars.iv.next = add i32 %indvars.iv.a, -1
  %exitcond57.not = icmp eq i64 %indvars.iv.next55.a, %i.h
  br i1 %exitcond57.not, label %._crit_edge, label %bb.b, !llvm.loop !16

._crit_edge.loopexit.split.loop.exit:             ; preds = %.critedge
  %5 = trunc nsw i64 %indvars.iv54 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.thread, %._crit_edge.loopexit.split.loop.exit, %bb.a
  %spec.select = phi i32 [ -1, %bb.a ], [ %5, %._crit_edge.loopexit.split.loop.exit ], [ -1, %.thread ]
  ret i32 %spec.select
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN19LuaDebuggerCodeViewC2EP7QWidget(ptr noundef align 8 dereferenceable_or_null(88) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %i.c = alloca { i64, i64 }, align 8             ; 5 uses
  %i.d = alloca { i64, i64 }, align 8             ; 5 uses
  %i.e = alloca { i64, i64 }, align 8             ; 5 uses
  %i.f = alloca { i64, i64 }, align 8             ; 5 uses
  %2 = alloca %class.QString, align 8             ; 9 uses
  %3 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %4 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %5 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %6 = alloca %class.QFont, align 8               ; 10 uses
  %7 = alloca %class.QFont, align 8               ; 8 uses
  tail call void @_ZN14QPlainTextEditC2EP7QWidget(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 496) (i8, ptr @_ZTV19LuaDebuggerCodeView, i64 16), ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV19LuaDebuggerCodeView, i64 528), ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %0, i64 40
  %i.i = invoke noalias noundef dereferenceable_or_null(72) ptr @_Znwm(i64 noundef 72) #24
          to label %bb.b unwind label %bb.u       ; 9 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7QWidgetC2EPS_6QFlagsIN2Qt10WindowTypeEE(ptr noundef align 8 dereferenceable_or_null(68) %i.i, ptr noundef %0, i32 0)
          to label %bb.c unwind label %bb.v

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 416) (i8, ptr @_ZTV14LineNumberArea, i64 16), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV14LineNumberArea, i64 448), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 -1>, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i32 0, ptr %i.m, align 8
  store ptr %i.i, ptr %i.h, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 -1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %i.p, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN19LuaDebuggerCodeView16staticMetaObjectE, ptr noundef nonnull @.str.42, ptr noundef null, i32 noundef -1)
          to label %_ZN19LuaDebuggerCodeView2trEPKcS1_i.exit unwind label %bb.w

_ZN19LuaDebuggerCodeView2trEPKcS1_i.exit:         ; preds = %bb.c
  invoke void @_ZN7QWidget10setToolTipERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.d unwind label %bb.x

bb.d:                                             ; preds = %_ZN19LuaDebuggerCodeView2trEPKcS1_i.exit
  %i.q = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.d
  %i.r = atomicrmw sub ptr %i.q, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.r, 1
  br i1 %.not.i.i, label %bb.e, label %_ZN7QStringD2Ev.exit

bb.e:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.s = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.s, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.d, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.t = invoke noalias noundef dereferenceable_or_null(80) ptr @_Znwm(i64 noundef 80) #24
          to label %bb.f unwind label %bb.z       ; 3 uses

bb.f:                                             ; preds = %_ZN7QStringD2Ev.exit
  %i.u = invoke noundef ptr @_ZNK14QPlainTextEdit8documentEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
          to label %bb.g unwind label %bb.aa

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef zeroext i1 @_ZN12ThemeManager6isDarkEv()
          to label %bb.h unwind label %bb.aa

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN20LuaSyntaxHighlighterC1EP13QTextDocumentb(ptr noundef align 8 dereferenceable_or_null(80) %i.t, ptr noundef %i.u, i1 noundef zeroext %i.v)
          to label %bb.i unwind label %bb.aa

bb.i:                                             ; preds = %bb.h
  store ptr %i.t, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 ptrtoint (ptr @_ZN14QPlainTextEdit17blockCountChangedEi to i64), ptr %i.e, align 8, !noalias !20
  %.fca.1.gep14.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %.fca.1.gep14.i, align 8, !noalias !20
  store i64 ptrtoint (ptr @_ZN19LuaDebuggerCodeView25updateLineNumberAreaWidthEi to i64), ptr %i.f, align 8, !noalias !20
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !noalias !20
  %i.w = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #24
          to label %.noexc unwind label %bb.z     ; 5 uses

.noexc:                                           ; preds = %bb.i
  store i32 1, ptr %i.w, align 4, !noalias !20
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM19LuaDebuggerCodeViewFviENS_4ListIJiEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.x, align 8, !noalias !20
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 ptrtoint (ptr @_ZN19LuaDebuggerCodeView25updateLineNumberAreaWidthEi to i64), ptr %i.y, align 8, !noalias !20
  %.repack7.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 0, ptr %.repack7.i.i, align 8, !noalias !20
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %3, ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef %i.w, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN14QPlainTextEdit16staticMetaObjectE)
          to label %bb.j unwind label %bb.z

bb.j:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 ptrtoint (ptr @_ZN14QPlainTextEdit13updateRequestERK5QRecti to i64), ptr %i.c, align 8, !noalias !23
  %.fca.1.gep12.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.fca.1.gep12.i, align 8, !noalias !23
  store i64 ptrtoint (ptr @_ZN19LuaDebuggerCodeView20updateLineNumberAreaERK5QRecti to i64), ptr %i.d, align 8, !noalias !23
  %.fca.1.gep.i31 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %.fca.1.gep.i31, align 8, !noalias !23
  %i.z = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #24
          to label %.noexc33 unwind label %bb.z   ; 5 uses

.noexc33:                                         ; preds = %bb.j
  store i32 1, ptr %i.z, align 4, !noalias !23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM19LuaDebuggerCodeViewFvRK5QRectiENS_4ListIJS4_iEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.aa, align 8, !noalias !23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 ptrtoint (ptr @_ZN19LuaDebuggerCodeView20updateLineNumberAreaERK5QRecti to i64), ptr %i.ab, align 8, !noalias !23
  %.repack7.i.i32 = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 0, ptr %.repack7.i.i32, align 8, !noalias !23
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %4, ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %i.z, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN14QPlainTextEdit16staticMetaObjectE)
          to label %bb.k unwind label %bb.z

bb.k:                                             ; preds = %.noexc33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 ptrtoint (ptr @_ZN14QPlainTextEdit21cursorPositionChangedEv to i64), ptr %i.a, align 8, !noalias !26
  %.fca.1.gep12.i38 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep12.i38, align 8, !noalias !26
  store i64 ptrtoint (ptr @_ZN19LuaDebuggerCodeView21rebuildLineHighlightsEv to i64), ptr %i.b, align 8, !noalias !26
  %.fca.1.gep.i39 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.fca.1.gep.i39, align 8, !noalias !26
  %i.ac = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #24
          to label %.noexc41 unwind label %bb.z   ; 5 uses

.noexc41:                                         ; preds = %bb.k
  store i32 1, ptr %i.ac, align 4, !noalias !26
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM19LuaDebuggerCodeViewFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.ad, align 8, !noalias !26
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 ptrtoint (ptr @_ZN19LuaDebuggerCodeView21rebuildLineHighlightsEv to i64), ptr %i.ae, align 8, !noalias !26
  %.repack7.i.i40 = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 0, ptr %.repack7.i.i40, align 8, !noalias !26
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %5, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %i.ac, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN14QPlainTextEdit16staticMetaObjectE)
          to label %bb.l unwind label %bb.z

bb.l:                                             ; preds = %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #23
  %i.af = invoke noundef ptr @_ZNK19QAbstractScrollArea8viewportEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
          to label %bb.m unwind label %bb.z

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN7QObject18installEventFilterEPS_(ptr noundef align 8 dereferenceable_or_null(16) %i.af, ptr noundef %0)
          to label %bb.n unwind label %bb.z

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN14QPlainTextEdit11setReadOnlyEb(ptr noundef align 8 dereferenceable_or_null(40) %0, i1 noundef zeroext false)
          to label %bb.o unwind label %bb.z

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN14QPlainTextEdit15setLineWrapModeENS_12LineWrapModeE(ptr noundef align 8 dereferenceable_or_null(40) %0, i32 noundef 0)
          to label %bb.p unwind label %bb.z

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZN5QFontC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(12) %6)
          to label %bb.q unwind label %bb.ab

bb.q:                                             ; preds = %bb.p
  %i.ag = load ptr, ptr @mainApp, align 8         ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.ae, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = getelementptr i8, ptr %i.ag, i64 48
  %i.ai = load i8, ptr %i.ah, align 8, !range !29, !noundef !30
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.s, label %bb.ae

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
end_hunk_0
